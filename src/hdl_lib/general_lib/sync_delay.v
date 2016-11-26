`ifndef sync_delay
`define sync_delay

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

module sync_delay(
    input clk,
    input ce,
    input din,
    output dout
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

    parameter DELAY_LENGTH = 256; //Delay to apply to sync pulse in clocks
    localparam DELAY_BITS = `log2(DELAY_LENGTH+1);
    
    reg [DELAY_BITS-1:0] ctr_reg = 0;
    wire ctr_enable;
    
    always@(posedge(clk)) begin
        if(din) begin                    //load the counter on a new sync
            ctr_reg <= DELAY_LENGTH;
        end else if (ctr_enable) begin
            ctr_reg <= ctr_reg - 1'b1;     //decrement counter on each clock
        end
    end
    
    assign ctr_enable = (ctr_reg != 0); //Only allow decrement until ctr_reg==0
    assign dout = (ctr_reg == 1);       //Output sync after appropriate delay
    
endmodule

`endif
