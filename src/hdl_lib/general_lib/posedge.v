`ifndef edgepos
`define edgepos

`timescale 1ns / 1ps

module edgepos(
    input clk,
    input din,
    output dout
    );
    
    reg din_z=0;
    always @(posedge(clk)) begin
        din_z <= din;
    end
    
    assign dout = (~din_z) && (din); //Output is high if din was low and is now high (i.e. posedge)


endmodule

`endif
