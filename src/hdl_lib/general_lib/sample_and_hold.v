`ifndef sample_and_hold
`define sample_and_hold

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

module sample_and_hold(
    clk,
    sync,
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

    parameter WIDTH = 1;    //data bus width
    parameter PERIOD = 128; //sampling period in clocks
    
    localparam PERIOD_BITS = `log2(PERIOD);
    
    input clk;
    input sync;
    input  [WIDTH-1:0] din;
    output [WIDTH-1:0] dout;
    
    // couting logic
    reg [PERIOD_BITS-1:0] ctr = 0;
    always @(posedge(clk)) begin
        if(sync || ctr == (PERIOD-1)) begin
            ctr <= {PERIOD_BITS{1'b0}};
        end else begin
            ctr <= ctr + 1'b1;
        end
    end
    
    //sampling logic
    reg [WIDTH-1:0] dout_reg = {WIDTH{1'b0}};
    wire dout_reg_enable;
    delay #(
        .DELAY(1),
        .WIDTH(1)
    ) dout_reg_enable_delay_inst (
        .clk(clk),
        .din((sync || ctr == (PERIOD-1))),
        .dout(dout_reg_enable)
    );
    
    always @(posedge(clk)) begin
        if(dout_reg_enable) begin
            dout_reg <= din;
        end
    end

    assign dout = dout_reg;
    
endmodule

`endif
