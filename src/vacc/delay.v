`timescale 1ns / 1ps
`ifndef delay
`define delay

module delay(
    clk,
    ce,
    din,
    dout
    );

    parameter WIDTH = 1;
    parameter DELAY = 3;
    parameter ALLOW_SRL = "YES"; //set to "NO" to disable SRL inference


    // Clock input
    input clk;
    input ce;

    // Data input and output
    input [WIDTH-1:0] din;
    output [WIDTH-1:0] dout;

    genvar i; // shift register index
    generate
        if (DELAY==0) begin : delay_bypass
            assign dout = din;
        end else begin : delay_chain

            // Instantiate registers for delay chain, setting SRL inference condition
            (* SHREG_EXTRACT = ALLOW_SRL *) reg [WIDTH-1:0] din_reg [DELAY-1:0];
            
            // Initialise register values to 0
            integer k;
            initial begin
                for (k=0; k<DELAY; k=k+1) begin
                    din_reg[k] <= 0;
                end
            end


            // Hook up input to first register
            always @(posedge(clk)) begin
                din_reg[0] <= din;
            end

            // Generate intermediate register chain
            for (i=0; i<DELAY-1; i=i+1) begin : reg_chain_gen
                always @(posedge(clk)) begin
                    din_reg[i+1] <= din_reg[i];
                end
            end
        assign dout = din_reg[DELAY-1];
        end
    endgenerate

endmodule

`endif
