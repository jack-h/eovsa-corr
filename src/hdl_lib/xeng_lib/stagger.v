`ifndef stagger
`define stagger

`timescale 1ns / 1ps

module stagger(
    clk,
    din,
    dout
    );

    parameter N_STAGES = 1;      //number of different blocks
    parameter BLOCK_SIZE = 8;   //size of each block in bits
    parameter STAGGER_OFFSET = 0;//Offset in number of stages before beginning to stagger

    input clk;                               //clock input
    input  [N_STAGES*BLOCK_SIZE-1:0] din;    //data input
    output [N_STAGES*BLOCK_SIZE-1:0] dout;   // data output
    
    generate //generate a series of delayed signals
    genvar p;
    for(p=0; p<N_STAGES; p=p+1) begin : stagger_gen
        if((p-STAGGER_OFFSET)<1) begin
            //All blocks up to (and including) the stagger offset get no delay
            assign dout[(p+1)*BLOCK_SIZE-1:p*BLOCK_SIZE] = din[(p+1)*BLOCK_SIZE-1:p*BLOCK_SIZE]; 
        end else begin
            // The other blocks are delayed by block_index (p) - STAGGER_OFFSET
            delay #(
                .WIDTH(BLOCK_SIZE),
                .DELAY(p-STAGGER_OFFSET)
            ) stagger_gen_delay_inst (
                .clk(clk),
                .din(din[(p+1)*BLOCK_SIZE-1:p*BLOCK_SIZE]),
                .dout(dout[(p+1)*BLOCK_SIZE-1:p*BLOCK_SIZE])
            );
        end
    end //stagger_gen
    endgenerate
    
endmodule

`endif
