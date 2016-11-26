`ifndef edgeneg
`define edgeneg

`timescale 1ns / 1ps

module edgeneg(
    input clk,
    input din,
    output dout
    );
    
    reg din_z=0;
    always @(posedge(clk)) begin
        din_z <= din;
    end
    
    assign dout = (din_z) && (~din); //Output is high if din was high and is now low (i.e. negedge)


endmodule

`endif
