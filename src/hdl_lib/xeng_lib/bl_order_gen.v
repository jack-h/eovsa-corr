`ifndef bl_order_gen
`define bl_order_gen

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

module bl_order_gen(
    clk,
    sync,
    en,
    ant_a,
    ant_b,
    buf_sel,
    last_triangle
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

    parameter N_ANTS = 16;
    localparam ANT_BITS = `log2(N_ANTS);
    
    input clk;
    input sync;
    input en;
    output [ANT_BITS-1:0] ant_a;
    output [ANT_BITS-1:0] ant_b;
    output buf_sel;
    output last_triangle;
    
    reg [ANT_BITS-1:0] a=0;
    reg [ANT_BITS-1:0] b=0;
    reg [ANT_BITS-1:0] offset=0;
    reg buf_sel_reg=0;

    always @(posedge(clk)) begin
        if (sync) begin
            buf_sel_reg <= 1'b0;
        end else if(a==N_ANTS-1 && b==N_ANTS-1 && en) begin
            buf_sel_reg <= ~buf_sel_reg;
        end
    end
    
    always @(posedge(clk)) begin
        if (sync) begin
            b <= 0;
            a <= N_ANTS/2;
            offset <= N_ANTS/2+1;
        end else if (en) begin
            if(a==b) begin
                b <= b == N_ANTS - 1 ? 0 : b + 1'b1;
                a <= offset;
                offset <= offset == N_ANTS - 1 ? 0 : offset + 1'b1;
            end else begin
                a <= a == N_ANTS - 1 ? 0 : a + 1'b1;
            end 
        end
    end

    // register everything
    reg [ANT_BITS-1:0] ant_aR = 0;
    reg [ANT_BITS-1:0] ant_bR = 0;
    reg buf_selR = 0;
    reg last_triangleR = 0;
    
    always @(posedge (clk)) begin
        ant_aR <= a;
        ant_bR <= b;
        if (a <= b) begin
            buf_selR <= buf_sel_reg;
            last_triangleR <= 1'b0;
        end else begin
            buf_selR <= ~buf_sel_reg;
            last_triangleR <= 1'b1;
        end
    end
    
    assign ant_a = ant_aR;
    assign ant_b = ant_bR;
    assign buf_sel = buf_selR;
    assign last_triangle = last_triangleR;

endmodule

`endif
