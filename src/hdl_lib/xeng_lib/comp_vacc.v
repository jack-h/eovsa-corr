`ifndef comp_vacc
`define comp_vacc

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

module comp_vacc(
    clk,
    ant_sel_a,
    ant_sel_b,
    buf_sel,
    din,
    dout_a,
    dout_b,
    sync 
    
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
    
    parameter INPUT_WIDTH = 4;
    parameter ACC_LEN_BITS = 8;
    parameter VECTOR_LENGTH = 32;
    
    localparam ACC_LEN = 1<<ACC_LEN_BITS;
    localparam VECTOR_LEN_BITS = `log2(VECTOR_LENGTH);
    localparam ACC_WIDTH = ACC_LEN_BITS + INPUT_WIDTH;
    
    input clk;                                          //clock input
    input [VECTOR_LEN_BITS-1:0] ant_sel_a;              //bram read address signal for ram A
    input [VECTOR_LEN_BITS-1:0] ant_sel_b;              //bram read address signal for ram B
    input buf_sel;                                      //1 bit buffer read index (because reading/writing is not always from same buffer)
    input sync;                                      //reset input indicating new accumulation on next clock
    input [INPUT_WIDTH-1:0] din;                        //data in
    output [INPUT_WIDTH+ACC_LEN_BITS-1:0] dout_a;         //accumulated data out for ram A
    output [INPUT_WIDTH+ACC_LEN_BITS-1:0] dout_b;         //accumulated data out for ram B
    
    reg [ACC_LEN_BITS + VECTOR_LEN_BITS-1:0] comp_ctr = 0;
    reg active_ram = 0;
    always @(posedge(clk)) begin
        if (sync) begin
            comp_ctr <= 0;
            active_ram <= 1'b0;
        end else begin
            comp_ctr <= comp_ctr == ACC_LEN*VECTOR_LENGTH-1 ? 0 : comp_ctr + 1'b1;
            active_ram <= comp_ctr == ACC_LEN*VECTOR_LENGTH-1 ? ~active_ram : active_ram; //change ram at the next round of antennas
        end 
    end

    wire [ACC_LEN_BITS + VECTOR_LEN_BITS - 1:0] acc_ctr = comp_ctr;
    
    //sign extended input for summing
    wire din_sign_bit = din[INPUT_WIDTH-1];
    wire [ACC_WIDTH-1:0] din_ext = {{ACC_WIDTH-INPUT_WIDTH{din_sign_bit}}, din};
    
    //vector index line for bram
    wire [VECTOR_LEN_BITS-1:0] vec_index = acc_ctr[ACC_LEN_BITS + VECTOR_LEN_BITS-1: ACC_LEN_BITS];
    //accumulation sample counter
    wire [ACC_LEN_BITS-1:0] sample_index = acc_ctr[ACC_LEN_BITS-1:0];
    
    wire last_sample = ((sample_index == ACC_LEN-1) || sync);
    wire acc_valid;
    wire [INPUT_WIDTH + ACC_LEN_BITS - 1 : 0] acc_dout;

    dsp_acc #(
        .IN_WIDTH(INPUT_WIDTH),
        .OUT_WIDTH(INPUT_WIDTH+ACC_LEN_BITS),
        .IS_SIGNED("TRUE")
    ) acc_inst (
        .clk(clk),
        .ce(1'b1),
        .din(din),
        .end_of_acc(last_sample),
        .dout(acc_dout),
        .dout_vld(acc_valid)
    );

    // the dsp acc has 2 cycles latency. Add a stage of
    // registers below, and match this total delay of 3
    // latency on the other ram control signals

    wire [INPUT_WIDTH + ACC_LEN_BITS - 1 : 0] acc_doutR;
    delay #(
        .WIDTH(INPUT_WIDTH + ACC_LEN_BITS),
        .DELAY(1),
        .ALLOW_SRL("NO")
    ) acc_dout_delay (
        .clk(clk),
        .ce(1'b1),
        .din(acc_dout),
        .dout(acc_doutR)
    );

    wire acc_validR;
    delay #(
        .WIDTH(1),
        .DELAY(1),
        .ALLOW_SRL("NO")
    ) acc_valid_delay (
        .clk(clk),
        .ce(1'b1),
        .din(acc_valid),
        .dout(acc_validR)
    );

    wire active_ram_dsp_del;
    delay #(
        .WIDTH(1),
        .DELAY(3),
        .ALLOW_SRL("YES")
    ) active_ram_delay_comp (
        .clk(clk),
        .ce(1'b1),
        .din(active_ram),
        .dout(active_ram_dsp_del)
    );

    wire [VECTOR_LEN_BITS - 1 : 0] vec_index_dsp_del;
    delay #(
        .WIDTH(VECTOR_LEN_BITS),
        .DELAY(3),
        .ALLOW_SRL("YES")
    ) vec_index_delay_comp (
        .clk(clk),
        .ce(1'b1),
        .din(vec_index),
        .dout(vec_index_dsp_del)
    );

    wire [ACC_WIDTH-1:0] UNUSED0;
    wire [ACC_WIDTH-1:0] UNUSED1;
    wire [ACC_WIDTH-1:0] dout_a_int;
    wire [ACC_WIDTH-1:0] dout_b_int;
    
//`ifdef DEBUG    
    always @(posedge(clk)) begin
        if(acc_validR) begin
            $display("ACC_VALID: writing %d for antenna %d in ram %d", acc_doutR, vec_index_dsp_del, active_ram_dsp_del);
        end
    end
//`endif

    bram_tdp #(
        .DATA(ACC_WIDTH),
        .ADDR(VECTOR_LEN_BITS+1)
    ) bram_tdp_inst [1:0] (
        .a_clk(clk),
        .a_wr(acc_validR),
        .a_addr({active_ram_dsp_del, vec_index_dsp_del}),
        .a_din(acc_doutR),
        //.a_din(acc_wire),
        .a_dout({UNUSED0, UNUSED1}),
        .b_clk(clk),
        .b_wr(1'b0),
        .b_addr({buf_sel, ant_sel_a, buf_sel, ant_sel_b}),
        .b_din({ACC_WIDTH{1'b0}}),
        .b_dout({dout_a_int,dout_b_int})
    );

    //add another clock latency
    reg [ACC_WIDTH-1:0] dout_a_intZ= 0;
    reg [ACC_WIDTH-1:0] dout_b_intZ = 0;
    always @(posedge(clk)) begin
        dout_a_intZ <= dout_a_int;
        dout_b_intZ <= dout_b_int;
    end

    assign dout_a = dout_a_intZ;
    assign dout_b = dout_b_intZ;


endmodule

`endif
