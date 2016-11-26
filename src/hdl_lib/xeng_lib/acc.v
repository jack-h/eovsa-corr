`ifndef acc
`define acc

`timescale 1ns / 1ps

module acc(
    clk,
    rst,
    din,
    acc_in,
    valid_in,
    valid_out,
    acc_out
    );
    
    parameter BITWIDTH_IN = 9;      //Bit width of a single input sample 
    parameter ACC_LEN_BITS = 7;     //Accumulation length (2^?)
    parameter UNSIGNED = 1;         //Input samples are unsigned (i.e, don't sign extend them)
    parameter MULTIPLEX_DELAY = 2;  //Delay of output multiplexers on valid and acc_out lines
    
    localparam BITWIDTH_OUT = ACC_LEN_BITS+BITWIDTH_IN; //bit width of accumulator output
    
    input clk;                          //clock input
    input rst;                          // reset -- ouput last accumulation and begin new one
    input valid_in;                     // currently receiving a valid accumulation on the acc_in line
    input [BITWIDTH_OUT-1:0] acc_in;    //input for accumulations from other blocks
    input [BITWIDTH_IN-1:0] din;        //input for data samples to be accumulated
    output valid_out;                   //accumulation valid out signal
    output [BITWIDTH_OUT-1:0] acc_out;  //Accumulator output
    
    // A wire for the accumulator input, sign extended
    wire [BITWIDTH_OUT-1:0] acc_input;
    generate
        if (UNSIGNED==0) begin : acc_input_gen
            assign acc_input = {{ACC_LEN_BITS{din[BITWIDTH_IN-1]}},din};
        end else begin
            assign acc_input = {{ACC_LEN_BITS{1'b0}},din};
        end //acc_input_gen
    endgenerate

    
    // Accumulator logic
    reg [ACC_LEN_BITS + BITWIDTH_IN -1:0] acc_reg = 0;
    always @(posedge(clk)) begin
        if (rst==1'b1) begin
            acc_reg <= acc_input;
        end else begin
            acc_reg <= acc_reg + acc_input;
        end
    end
    
    // Output multiplexors
    wire [BITWIDTH_OUT-1:0] acc_out_mux;
    wire valid_out_mux;
   
    assign acc_out_mux = (rst==1'b1) ? acc_reg : acc_in;
    assign valid_out_mux = (rst==1'b1) ? 1'b1 : valid_in;

    
    // Multiplexor latency
    delay #(
    .WIDTH(BITWIDTH_OUT),
    .DELAY(MULTIPLEX_DELAY)
    ) acc_delay (
    .clk(clk), 
    .din(acc_out_mux), 
    .dout(acc_out)
    );
    
    delay #(
    .WIDTH(1),
    .DELAY(MULTIPLEX_DELAY)
    ) vld_delay (
    .clk(clk), 
    .din(valid_out_mux), 
    .dout(valid_out)
    );

endmodule

`endif
