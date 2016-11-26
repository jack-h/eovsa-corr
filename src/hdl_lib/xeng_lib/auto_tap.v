`ifndef auto_tap
`define auto_tap

`timescale 1ns / 1ps

module auto_tap(
    clk,
    ce,
    a_del,
    sync_in,
    a_ndel,
    acc_in,
    valid_in,
    a_loop,
    a_del_out,
    acc_out,
    valid_out,
    rst_out,
    sync_out,
    a_ndel_out,
    a_end_out
    );

   
    parameter SERIAL_ACC_LEN_BITS = 7;  //Serial accumulation length (2^?)
    parameter P_FACTOR_BITS = 2;        //Number of samples to accumulate in parallel (2^?)
    parameter BITWIDTH = 4;             //bitwidth of each real/imag part of a single sample
    parameter ACC_MUX_LATENCY = 2;      //Latency of the mux to place the accumulation result on the xeng shift reg
    parameter FIRST_DSP_REGISTERS = 2;  //number of registers on the input of the first DSP slice in the chain
    parameter DSP_REGISTERS = 2;        //number of registers on the input of all others DSP slices in the chain
    parameter N_ANTS = 32;              //number of (dual pol) antenna inputs
    parameter BRAM_LATENCY = 2;         //Latency of brams in delay chain
    parameter N_POLS = 2;		//Number of polarizations
    
    localparam MULT_LATENCY = ((1<<P_FACTOR_BITS)-1 + (FIRST_DSP_REGISTERS+2));      //Multiplier Latency (= latency of first DSP + 1 for every additional DSP)
    localparam ADD_LATENCY = 1;                                                     //Adder latency (currently hardcoded to 1)
    localparam P_FACTOR = 1<<P_FACTOR_BITS;                                         //number of parallel cmults
    localparam INPUT_WIDTH = 2*BITWIDTH*N_POLS*(1<<P_FACTOR_BITS);                       //width of complex in/out bus 
    localparam N_STOKES = N_POLS*N_POLS;					    //Number of stokes parameters
    localparam ACC_WIDTH = N_STOKES*2*((2*BITWIDTH+1)+P_FACTOR_BITS+SERIAL_ACC_LEN_BITS);  //width of complex acc in/out bus
    localparam SERIAL_ACC_LEN = 1<<SERIAL_ACC_LEN_BITS;
    
    input clk;                                                  //clock input
    input ce;                                                   //simulink needs a ce port
    input sync_in;                                              // sync input
    input [INPUT_WIDTH-1:0] a_del;                              // delayed antenna signal
    input [INPUT_WIDTH-1:0] a_ndel;                             // not delayed antenna signal
    input [INPUT_WIDTH-1:0] a_loop;                             // loop input from last baseline tap in series
    input [ACC_WIDTH-1:0] acc_in;                               // accumulation input
    input valid_in;                                             // accumulation input valid flag
    output rst_out;                                             // reset passthough
    output [INPUT_WIDTH-1:0] a_ndel_out;                        // not delayed antenna passthrough
    output [INPUT_WIDTH-1:0] a_del_out;                         // delayed antenna passthrough
    output [INPUT_WIDTH-1:0] a_end_out;                         // "last triangle" antenna passthrough
    output sync_out;                                            // sync passthrough
    output [ACC_WIDTH-1:0] acc_out;                             // accumulation output
    output valid_out;                                           // accumulation output valid flag
    
    
    //Connect up the transparent passthroughs
    assign a_del_out = a_del;
    assign rst_out = sync_in;
    assign a_ndel_out = a_ndel;
    
    //Connect up the sync output with appropriate sync delay
    sync_delay #(
        .DELAY_LENGTH(ADD_LATENCY + MULT_LATENCY + SERIAL_ACC_LEN + (N_ANTS>>1) +1 +1)
        ) sync_delay_inst (
        .clk(clk),
        .ce(ce),
        .din(sync_in),
        .dout(sync_out)
    );

    // Instantiate the antenna_loop passthrough, with bram delay
    //delay length:
    localparam DELAY_LEN = (SERIAL_ACC_LEN-1)*
        (N_ANTS-(N_ANTS>>1)) + //ceil(N_ANTS/2)
        (N_ANTS-(N_ANTS>>1)) - //ceil(N_ANTS/2)
        (N_ANTS>>1);           //floor(N_ANTS/2)

    /*
    bram_delay_top2 #(
        .WIDTH(INPUT_WIDTH),
        .DELAY(DELAY_LEN),
        .LATENCY(BRAM_LATENCY)
        ) bram_delay_inst (
        .clk(clk),
        .din(a_loop),
        .dout(a_end_out)
    );
    */
    bram_delay_behave #(
        .WIDTH(INPUT_WIDTH),
        .DELAY(DELAY_LEN),
        .LATENCY(BRAM_LATENCY)
        ) bram_delay_inst (
        .clk(clk),
        .din(a_loop),
        .dout(a_end_out)
    );

    
    //Instantiate eith a single or dual-pol cmac depending on the xengine type
    generate
    if (N_POLS==1) begin : sp_cmacs
        single_pol_cmac #(
            .BITWIDTH(BITWIDTH),
            .P_FACTOR_BITS(P_FACTOR_BITS),
            .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
            .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
            .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
            .DSP_REGISTERS(DSP_REGISTERS)
        ) single_pol_cmac_inst (
            .clk(clk),
            .a(a_del),
            .b(a_ndel),
            .acc_in(acc_in),
            .valid_in(valid_in),
            .sync(sync_in),
            .acc_out(acc_out),
            .valid_out(valid_out)
        );
    end else if(N_POLS==2) begin : dp_cmacs
        dual_pol_cmac #(
            .BITWIDTH(BITWIDTH),
            .P_FACTOR_BITS(P_FACTOR_BITS),
            .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
            .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
            .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
            .DSP_REGISTERS(DSP_REGISTERS)
        ) dual_pol_cmac_inst (
            .clk(clk),
            .a(a_del),
            .b(a_ndel),
            .acc_in(acc_in),
            .valid_in(valid_in),
            .sync(sync_in),
            .acc_out(acc_out),
            .valid_out(valid_out)
        );
	 end
    endgenerate


endmodule

`endif
