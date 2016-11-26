`ifndef adder_tree
`define adder_tree

`timescale 1ns / 1ps

module adder_tree(
    clk,
    sync,
    din,
    dout,
    sync_out
    );
    
    parameter PARALLEL_SAMPLE_BITS = 3; //Number of parallel inputs to tree (2^?)
    parameter INPUT_WIDTH = 4;          //Input width of single sample
    parameter REGISTER_OUTPUTS = "TRUE";
    parameter IS_SIGNED = "TRUE";
    
    localparam PARALLEL_SAMPLES = 1<<PARALLEL_SAMPLE_BITS;
    localparam OUTPUT_WIDTH = INPUT_WIDTH+PARALLEL_SAMPLE_BITS;

    input clk;
    input sync;
    input [PARALLEL_SAMPLES*INPUT_WIDTH-1:0] din;
    output sync_out;
    output [INPUT_WIDTH+PARALLEL_SAMPLE_BITS-1:0] dout;
       
    wire [PARALLEL_SAMPLES*INPUT_WIDTH-1 : 0] branches_int[PARALLEL_SAMPLE_BITS+1 - 1 : 0]; //create a 2D vector for interconnect of branches

    assign branches_int[0][PARALLEL_SAMPLES*INPUT_WIDTH-1:0] = din[PARALLEL_SAMPLES*INPUT_WIDTH-1:0]; //first input
    genvar level;
    generate
        for(level=0; level<PARALLEL_SAMPLE_BITS; level=level+1) begin : row_gen
            
            adder #(
                .A_WIDTH(INPUT_WIDTH+level),
                .B_WIDTH(INPUT_WIDTH+level),
                .A_IS_SIGNED(IS_SIGNED),
                .B_IS_SIGNED(IS_SIGNED),
                .REGISTER_OUTPUT(REGISTER_OUTPUTS)
            ) adder_inst [(PARALLEL_SAMPLES>>(level+1))-1:0](       //Number of adders at each level is Parallel_Samples / 2^(level+1)
                .clk(clk),
                .a(branches_int[level][(PARALLEL_SAMPLES>>(level+1))*(INPUT_WIDTH+level)-1:0]), //bottom half of vector
                .b(branches_int[level][(PARALLEL_SAMPLES>>(level))*(INPUT_WIDTH+level)-1 : (PARALLEL_SAMPLES>>(level+1))*(INPUT_WIDTH+level)]), //top half of vector
                .c(branches_int[level+1][(PARALLEL_SAMPLES>>(level+1))*(INPUT_WIDTH+level+1)-1:0])
            );
        end //row_gen
    endgenerate
    
    // assign the output of the last tree level to the module dout port
    assign dout[OUTPUT_WIDTH-1:0] = branches_int[PARALLEL_SAMPLE_BITS][OUTPUT_WIDTH-1:0];

    // Assign sync pulse output with appropriate delay
    generate
        if (REGISTER_OUTPUTS == "TRUE") begin : output_reg_gen
            delay # (
                .WIDTH(1),
                .DELAY(PARALLEL_SAMPLE_BITS),
                .ALLOW_SRL("NO")
            ) sync_delay (
                .clk(clk),
                .ce(1'b1),
                .din(sync),
                .dout(sync_out)
            );

        end else begin
            assign sync_out = sync;
        end
    endgenerate


endmodule

`endif
