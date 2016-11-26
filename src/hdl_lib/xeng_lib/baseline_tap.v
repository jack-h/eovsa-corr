`ifndef baseline_tap
`define baseline_tap

`timescale 1ns / 1ps

/* Currently, Xilinx doesn't support $clog2, but iverilog doesn't support
 * constant user functions. Decide which to use here
 */
`ifndef log2
`ifdef USE_CLOG2
`define log2(p) $clog2(p)
`else
`define log2(p) log2_func(p)
`endif
`endif

module baseline_tap(
    clk,
    ce,
    rst,
    sync1,
    a_del,
    a_ndel,
    a_end,
    acc_in,
    valid_in,
    acc_out,
    valid_out,
    sync_out,
    rst_out,
    a_del_out,
    a_ndel_out,
    a_end_out
    );

    function integer log2_func;
      input integer value;
      integer loop_cnt;
      begin
        value = value-1;
        for (loop_cnt=0; value>0; loop_cnt=loop_cnt+1)
          value = value>>1;
        log2_func = loop_cnt;
      end
    endfunction

    parameter SERIAL_ACC_LEN_BITS = 7;  //Serial accumulation length (2^?)
    parameter P_FACTOR_BITS = 0;        //Number of samples to accumulate in parallel (2^?)
    parameter BITWIDTH = 4;             //bitwidth of each real/imag part of a single sample
    parameter ACC_MUX_LATENCY = 2;      //Latency of the mux to place the accumulation result on the xeng shift reg
    parameter FIRST_DSP_REGISTERS = 2;  //number of registers on the input of the first DSP slice in the chain
    parameter DSP_REGISTERS = 2;        //number of registers on the input of all others DSP slices in the chain
    parameter N_ANTS = 8;               //number of antenna inputs
    parameter N_POLS = 2;	        //number of polarizations per antenna
    parameter TAP_SEPARATION = 1;       //Separationg number of antenna tap
    parameter BRAM_LATENCY = 2;         //Latency of brams in delay chain
    
    localparam P_FACTOR = 1<<P_FACTOR_BITS;                                         //number of parallel cmults
    localparam INPUT_WIDTH = 2*BITWIDTH*N_POLS*(1<<P_FACTOR_BITS);                       //width of complex in/out bus (dual pol)
    localparam N_STOKES = N_POLS*N_POLS;
    localparam ACC_WIDTH = N_STOKES*2*((2*BITWIDTH+1)+P_FACTOR_BITS+SERIAL_ACC_LEN_BITS);  //width of complex acc in/out bus (4 stokes)
    localparam SERIAL_ACC_LEN = 1<<SERIAL_ACC_LEN_BITS;
    
    input clk;                                                  //clock input
    input ce;                                                   //clock enable (for simulink)
    input rst;                                                  //reset / accumulator sync
    input sync1;                                                // sync input
    input [INPUT_WIDTH-1:0] a_del;                              // delayed antenna signal
    input [INPUT_WIDTH-1:0] a_ndel;                             // not delayed antenna signal
    input [INPUT_WIDTH-1:0] a_end;                              // "last triangle" antenna input
    input [ACC_WIDTH-1:0] acc_in;                               // accumulation input
    input valid_in;                                             // accumulation input valid flag
    output rst_out;                                             // reset passthough
    output [INPUT_WIDTH-1:0] a_ndel_out;                        // not delayed antenna passthrough
    output [INPUT_WIDTH-1:0] a_del_out;                         // delayed antenna passthrough
    output [INPUT_WIDTH-1:0] a_end_out;                         // "last triangle" antenna passthrough
    output sync_out;                                            // sync passthrough
    output [ACC_WIDTH-1:0] acc_out;                             // accumulation output
    output valid_out;                                           // accumulation output valid flag
    
    ////// Connect up the simple passthrough ports, with registers where appropriate
    assign sync_out = sync1;
    (* KEEP = "TRUE" *) reg [INPUT_WIDTH-1:0] a_end_reg = 0;
    (* KEEP = "TRUE" *) reg [INPUT_WIDTH-1:0] a_ndel_reg = 0;
    (* KEEP = "TRUE" *) reg rst_reg = 0;
    always @(posedge(clk)) begin
        a_ndel_reg <= a_ndel;
        a_end_reg <= a_end;
        rst_reg <= rst;
    end
    assign a_end_out = a_end_reg;
    assign a_ndel_out = a_ndel_reg;
    assign rst_out = rst_reg;
    
    ////// Instantiate the antenna passthrough, with bram delay
    wire[INPUT_WIDTH-1:0] a_del_delay;
    /*
    bram_delay_top2 #(
        .WIDTH(INPUT_WIDTH),
        .DELAY(SERIAL_ACC_LEN),
        .LATENCY(BRAM_LATENCY)
        ) bram_delay_inst (
        .clk(clk),
        .din(a_del),
        .dout(a_del_delay)
    );
    wire[INPUT_WIDTH-1:0] a_del_delay_debug;
    */

    bram_delay_behave #(
        .WIDTH(INPUT_WIDTH),
        .DELAY(SERIAL_ACC_LEN),
        .LATENCY(BRAM_LATENCY)
        ) bram_delay_inst (
        .clk(clk),
        .din(a_del),
        .dout(a_del_delay)
    );

    
    // one extra register for good measure
    reg [INPUT_WIDTH-1:0] a_del_delay_reg = 0;
    always @(posedge(clk)) begin
        a_del_delay_reg <= a_del_delay;
    end
    assign a_del_out = a_del_delay_reg;
    
    
    ////// Instantiate counter to control a_ndel/a_end mux
    localparam ANT_BITS = `log2(N_ANTS);
    reg [ANT_BITS+SERIAL_ACC_LEN_BITS-1:0] mux_ctrl_ctr = 0;
    always @(posedge(clk)) begin
        if(rst) begin
            mux_ctrl_ctr <= 0;
        end else begin
            mux_ctrl_ctr <= (mux_ctrl_ctr == ((N_ANTS*SERIAL_ACC_LEN)-1)) ? 0 : mux_ctrl_ctr + 1'b1;
        end
    end
    
    // Switch condition
    wire [P_FACTOR-1:0] mux_ctrl;
    assign mux_ctrl[0] = (mux_ctrl_ctr < (TAP_SEPARATION*SERIAL_ACC_LEN));

    //////TODO -- make sure the latencies are applied to the muxes in the same way latencies are applied in the
    //////parallel mac block.

    reg [(INPUT_WIDTH>>(N_POLS-1))-1:0] ant_mux_x = 0; //width of all parallel bits of a single polarisation
    reg [(INPUT_WIDTH>>(N_POLS-1))-1:0] ant_mux_y = 0;
    
    generate //generate a series of delayed mux ctrl_signals
    genvar p;
    for(p=1; p<P_FACTOR; p=p+1) begin : mux_ctrl_gen
        if((DSP_REGISTERS-FIRST_DSP_REGISTERS==1)&&(p==1)) begin
            //if we are using DSP registers to allow the
            //first multiplier to compensate for it's multiplier latency, then the first
            //two multiplexers switch together
            assign mux_ctrl[1] = mux_ctrl[0]; 
        end else begin
            // This code updates mux_ctrl[0] first, and mux_ctrl[p] after p clocks
            delay #(
                .WIDTH(1),
                .DELAY(1)
            ) mux_ctrl_delay_inst (
                .clk(clk),
                .din(mux_ctrl[p-1]),
                .dout(mux_ctrl[p])
            );
        end
    end //mux_ctrl_gen
    endgenerate
    
    generate
    if (N_POLS==1) begin
        for(p=0; p<P_FACTOR; p=p+1) begin : split_mux_gen
            always@(posedge(clk)) begin
                if(mux_ctrl[p]==1'b1) begin
                    ant_mux_x[(p+1)*2*BITWIDTH-1:p*2*BITWIDTH] <= a_end[(p+1)*2*BITWIDTH-1:p*2*BITWIDTH];
                end else begin
                    ant_mux_x[(p+1)*2*BITWIDTH-1:p*2*BITWIDTH] <= a_ndel[(p+1)*2*BITWIDTH-1:p*2*BITWIDTH];
                end
            end //@posedge(clk)
        end //split_mux_gen
    end else if (N_POLS==2) begin
        for(p=0; p<P_FACTOR; p=p+1) begin : split_mux_gen
            always@(posedge(clk)) begin
                if(mux_ctrl[p]==1'b1) begin
                    ant_mux_x[(p+1)*2*BITWIDTH-1:p*2*BITWIDTH] <= a_end[(P_FACTOR+p+1)*2*BITWIDTH-1:(P_FACTOR+p)*2*BITWIDTH];
                    ant_mux_y[(p+1)*2*BITWIDTH-1:p*2*BITWIDTH] <= a_end[(p+1)*2*BITWIDTH-1:p*2*BITWIDTH];
                end else begin
                    ant_mux_x[(p+1)*2*BITWIDTH-1:p*2*BITWIDTH] <= a_ndel[(P_FACTOR+p+1)*2*BITWIDTH-1:(P_FACTOR+p)*2*BITWIDTH];
                    ant_mux_y[(p+1)*2*BITWIDTH-1:p*2*BITWIDTH] <= a_ndel[(p+1)*2*BITWIDTH-1:p*2*BITWIDTH];
                end
            end //@posedge(clk)
        end //split_mux_gen
    end
    endgenerate
      
    ////// Instantiate the cmac
    generate
    if (N_POLS==1) begin :sp_cmac
        single_pol_cmac #(
            .BITWIDTH(BITWIDTH),
            .P_FACTOR_BITS(P_FACTOR_BITS),
            .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
            .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
            .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
            .DSP_REGISTERS(DSP_REGISTERS)
        ) single_pol_cmac_inst (
            .clk(clk),
            .a(a_del_delay_reg),
            .b(ant_mux_x),
            .acc_in(acc_in),
            .valid_in(valid_in),
            .sync(rst_reg),
            .acc_out(acc_out),
            .valid_out(valid_out)
        );
    end else begin : dp_cmac 
        dual_pol_cmac #(
            .BITWIDTH(BITWIDTH),
            .P_FACTOR_BITS(P_FACTOR_BITS),
            .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
            .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
            .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
            .DSP_REGISTERS(DSP_REGISTERS)
        ) dual_pol_cmac_inst (
            .clk(clk),
            .a(a_del_delay_reg),
            .b({ant_mux_x,ant_mux_y}),
            .acc_in(acc_in),
            .valid_in(valid_in),
            .sync(rst_reg),
            .acc_out(acc_out),
            .valid_out(valid_out)
        );
    end
    endgenerate


endmodule

`endif
