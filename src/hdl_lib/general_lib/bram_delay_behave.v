`ifndef bram_delay_behave
`define bram_delay_behave

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

module bram_delay_behave(
    clk,
    ce,
    din,
    dout
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

    parameter WIDTH = 32;
    parameter DELAY = 512;               //Delay to implement in clocks.
    parameter LATENCY = 2;               //Can be either 2 or 1
    
    localparam ADDR_BITS = `log2(DELAY-LATENCY);
     
    //Inputs/Outputs
    input clk;                //clock input
    input ce;                 // clock enable (for simulink)
    input [WIDTH-1:0] din;    //data input
    output [WIDTH-1:0] dout;  //delayed data output
    
    // Counter for controlling RAM address
    reg [ADDR_BITS-1:0] ctr = 0;
   
    always @(posedge(clk)) begin
        ctr <= ctr ==  (DELAY-LATENCY-1) ? 0 : ctr + 1'b1;
    end
    
    // Compiler doesn't seem to figure out that it can use simple dual port
    // rams. Explicitly instruct it here.
    

    /*

    localparam USE_DP = ((WIDTH<=36)&&(WIDTH>18)&&(ADDR_BITS<=9)) ? 1'b1 : 1'b0;

    generate
        wire [17:0] dout_b_padded;
        wire [17:0] dout_a_padded;

        if (USE_DP) begin : use_dp_ram
            bram_tdp #(
                .ADDR(ADDR_BITS+1),
                .DATA(18),
                .LATENCY(LATENCY)
            ) ram_delay_inst (
                .a_clk(clk),
                .a_wr(1'b1),
                .a_addr({1'b1,ctr}),
                .a_din(din[17:0]),
                .a_dout(dout_a_padded[17:0]),
                .b_clk(clk),
                .b_wr(1'b1),
                .b_addr({1'b0,ctr}),
                .b_din({{(36-WIDTH){1'b0}},din[WIDTH-1:18]}),
                .b_dout(dout_b_padded[17:0])
            );
            assign dout[17:0] = dout_a_padded;
            assign dout[WIDTH-1:18] = dout_b_padded[WIDTH-1-18:0];

        end else begin : use_sp_ram
            sp_ram #(
                .A_WIDTH(ADDR_BITS),
                .D_WIDTH(WIDTH),
                .LATENCY(LATENCY)
            ) ram_delay_inst (
                .clk(clk),
                .we(1'b1),
                .addr(ctr),
                .din(din),
                .dout(dout)
            );
        end
    endgenerate

    */
    sdp_ram #(
        .A_WIDTH(ADDR_BITS),
        .D_WIDTH(WIDTH),
        .LATENCY(LATENCY)
    ) ram_delay_inst (
        .clk(clk),
        .we(1'b1),
        .r_addr(ctr),
        .w_addr(ctr),
        .din(din),
        .dout(dout)
    );

  
endmodule

`endif
