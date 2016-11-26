`ifndef dual_pol_cmac
`define dual_pol_cmac

`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// This module instantiates 4 cmac blocks, each performing one part of an
// AxBx AxBy AyBx AyBy cross multiply
//////////////////////////////////////////////////////////////////////////////////

module dual_pol_cmac(
    clk,
    a,
    b,
    acc_in,
    valid_in,
    sync,
    acc_out,
    valid_out
    );
    
    parameter BITWIDTH = 4;             //bitwidth of each real/imag part of a single sample
    parameter P_FACTOR_BITS = 3;        // number of samples to be multiplied in parallel (2^?)
    parameter SERIAL_ACC_LEN_BITS = 7;  //number of samples to be accumulated in serial (2^?)
    parameter ACC_MUX_LATENCY = 2;      //Latency of the mux to place the accumulation result on the xeng shift reg
    parameter FIRST_DSP_REGISTERS = 2;  //number of registers on the input of the first DSP slice in the chain
    parameter DSP_REGISTERS = 2;        //number of registers on the input of all others DSP slices in the chain
    
    //Internal parameters
    localparam P_FACTOR = 1<<P_FACTOR_BITS;
    localparam SINGLE_POL_IN_BITS = 2*BITWIDTH*P_FACTOR;                 //Number of bits of input for each ant-pol
    localparam ACC_IN_BITS = 2*BITWIDTH+1+P_FACTOR_BITS+SERIAL_ACC_LEN_BITS;  //Number of bits in each XX,YY,XY,YX acc input (for each r/i part)
    
    //Inputs/outputs
    input clk;                              //clk input
    input [2*SINGLE_POL_IN_BITS-1:0] a;   //complex a input with P_FACTOR parallel samples
    input [2*SINGLE_POL_IN_BITS-1:0] b;   //complex b input with P_FACTOR parallel samples
    input [2*4*ACC_IN_BITS-1:0] acc_in;     //complex accumulator input with r/i * XX/YY/XY/YX samples
    input valid_in;                         //acc_in valid signal
    input sync;                             //accumulator reset signal
    output[2*4*ACC_IN_BITS-1:0] acc_out;    //complex accumulator output with r/i * XX/YY/XY/YX samples
    output valid_out;                       //acc_out valid signal
    
    
    //separate out the X and Y pols of the inputs
    wire [SINGLE_POL_IN_BITS-1:0] ax = a[2*SINGLE_POL_IN_BITS-1:1*SINGLE_POL_IN_BITS];
    wire [SINGLE_POL_IN_BITS-1:0] ay = a[1*SINGLE_POL_IN_BITS-1:0];
    wire [SINGLE_POL_IN_BITS-1:0] bx = b[2*SINGLE_POL_IN_BITS-1:1*SINGLE_POL_IN_BITS];
    wire [SINGLE_POL_IN_BITS-1:0] by = b[1*SINGLE_POL_IN_BITS-1:0];
    
    //separate out the XX, YY, XY and YX cross products of the acc input
    //2*ACC_IN_BITS in each chunk because all signals are complex and ACC_IN_BITS only represents
    //the width of one half of a complex number
    wire [2*ACC_IN_BITS-1:0] ax_bx_acc_in = acc_in[8*ACC_IN_BITS-1:6*ACC_IN_BITS];
    wire [2*ACC_IN_BITS-1:0] ay_by_acc_in = acc_in[6*ACC_IN_BITS-1:4*ACC_IN_BITS];
    wire [2*ACC_IN_BITS-1:0] ax_by_acc_in = acc_in[4*ACC_IN_BITS-1:2*ACC_IN_BITS];
    wire [2*ACC_IN_BITS-1:0] ay_bx_acc_in = acc_in[2*ACC_IN_BITS-1:0*ACC_IN_BITS];
    wire [2*ACC_IN_BITS-1:0] ax_bx_acc_out;
    wire [2*ACC_IN_BITS-1:0] ay_by_acc_out;
    wire [2*ACC_IN_BITS-1:0] ax_by_acc_out;
    wire [2*ACC_IN_BITS-1:0] ay_bx_acc_out;
    
    cmac #(
        .BITWIDTH(BITWIDTH),
        .P_FACTOR_BITS(P_FACTOR_BITS),
        .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
        .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
        .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
        .DSP_REGISTERS(DSP_REGISTERS)
        ) ax_bx_cmac (
        .clk(clk),
        .sync(sync),
        .a(ax),
        .b(bx),
        .acc_in(ax_bx_acc_in),
        .valid_in(valid_in),
        .acc_out(ax_bx_acc_out),
        .valid_out(valid_out)
        );
        
    cmac #(
        .BITWIDTH(BITWIDTH),
        .P_FACTOR_BITS(P_FACTOR_BITS),
        .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
        .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
        .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
        .DSP_REGISTERS(DSP_REGISTERS)
        ) ay_by_cmac (
        .clk(clk),
        .sync(sync),
        .a(ay),
        .b(by),
        .acc_in(ay_by_acc_in),
        .valid_in(valid_in),
        .acc_out(ay_by_acc_out),
        .valid_out()
        );
    
    cmac #(
        .BITWIDTH(BITWIDTH),
        .P_FACTOR_BITS(P_FACTOR_BITS),
        .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
        .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
        .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
        .DSP_REGISTERS(DSP_REGISTERS)
        ) ax_by_cmac (
        .clk(clk),
        .sync(sync),
        .a(ax),
        .b(by),
        .acc_in(ax_by_acc_in),
        .valid_in(valid_in),
        .acc_out(ax_by_acc_out),
        .valid_out()
        );
    
    cmac #(
        .BITWIDTH(BITWIDTH),
        .P_FACTOR_BITS(P_FACTOR_BITS),
        .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
        .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
        .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
        .DSP_REGISTERS(DSP_REGISTERS)
        ) ay_bx_cmac (
        .clk(clk),
        .sync(sync),
        .a(ay),
        .b(bx),
        .acc_in(ay_bx_acc_in),
        .valid_in(valid_in),
        .acc_out(ay_bx_acc_out),
        .valid_out()
        );
        
    assign acc_out = {ax_bx_acc_out, ay_by_acc_out, ax_by_acc_out, ay_bx_acc_out};

endmodule

`endif
