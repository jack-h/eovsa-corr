`ifndef dsp48e_mac_chan
`define dsp48e_mac_chain

`timescale 1ns / 1ps

// This module sums the resulting complex cross products from a series of DSP
// slices


module dsp48e_mac_chain(
    clk,
    a,
    b,
    ab
    );
    
    // Bitwidth parameters
    parameter BITWIDTH = 4;    //bitwidth of each complex number (for each of the R/I parts)
    parameter N_INPUT_BITS = 3;    //Number of simultanous complex multiplies (= number of DSP slices used) 2^?
    
    parameter N_INPUTS = 1<<N_INPUT_BITS;
    parameter OUTPUT_WIDTH = 2*BITWIDTH+1 + N_INPUT_BITS; //Bitwith of R/I parts of output
    parameter DSP_WIDTH = 18; //size in bits of narrowest multiplier input (assuming signed)
    parameter FIRST_DSP_REGISTERS = 2; //number of registers on the input of the first DSP slice in the chain
    parameter DSP_REGISTERS = 2; //number of registers on the input of all others DSP slices in the chain

    
    input clk;
    input [2*BITWIDTH*N_INPUTS-1:0] a; // a is a series of complex numbers, with form {(Real,Imag)(N-1), (Real,Imag)(N-2), ..., (Real,Imag)(0)} 
    input [2*BITWIDTH*N_INPUTS-1:0] b; // as a, above.
    output [2*OUTPUT_WIDTH-1:0] ab; //The output complex number, calculated by multiplying and summing N samples of inputs a and b
    
    //Generate the chain of DSP slices
    wire [48-1:0] dsp_chain_output;
    wire [48*(N_INPUTS-1)-1:0] dsp_link_wire;
    
    generate
    // gen_first_dsp
        if (N_INPUTS!=1) begin : single_dsp_chain
            dsp48e_uint_cmult #(
                .BITWIDTH(BITWIDTH),
                .DSP_INPUT_REGISTERS(FIRST_DSP_REGISTERS),
                .OPMODE(7'd5)) //multiply and pass up the chain
                dsp_chain_first_el (
                .clk(clk),
                .a0(a[(2*BITWIDTH)-1:0]),
                .b0(b[(2*BITWIDTH)-1:0]),
                .pcin(48'b0),
                .pcout(dsp_link_wire[48-1:0]));
            // gen_last_dsp
            dsp48e_uint_cmult #(
                .BITWIDTH(BITWIDTH),
                .DSP_INPUT_REGISTERS(DSP_REGISTERS),
                .OPMODE(7'd21)) //add and output
                dsp_chain_last_el (
                .clk(clk),
                .a0(a[(N_INPUTS)*(2*BITWIDTH)-1:(N_INPUTS-1)*(2*BITWIDTH)]),
                .b0(b[(N_INPUTS)*(2*BITWIDTH)-1:(N_INPUTS-1)*(2*BITWIDTH)]),
                .pcin(dsp_link_wire[(N_INPUTS-1)*48-1:(N_INPUTS-2)*48]),
                .pout(dsp_chain_output));
        end else begin : multiple_dsp_chain   
            dsp48e_uint_cmult #(
                .BITWIDTH(BITWIDTH),
                .DSP_INPUT_REGISTERS(FIRST_DSP_REGISTERS),
                .OPMODE(7'd5)) //multiply and pass up the chain
                dsp_chain_first_el (
                .clk(clk),
                .a0(a[(2*BITWIDTH)-1:0]),
                .b0(b[(2*BITWIDTH)-1:0]),
                .pcin(48'b0),
                .pout(dsp_chain_output));
        end
    endgenerate
        
    genvar n;
    generate
        if (N_INPUTS!=1) begin : dsp_chain_en
            for (n=1; n<(N_INPUTS-1); n=n+1) begin : gen_dsp_chain
                dsp48e_uint_cmult #(
                    .BITWIDTH(BITWIDTH),
                    .DSP_INPUT_REGISTERS(DSP_REGISTERS),
                    .OPMODE(7'd21) //add and output
                ) dsp_chain_el (
                    .clk(clk),
                    .a0(a[(n+1)*(2*BITWIDTH)-1:n*(2*BITWIDTH)]),
                    .b0(b[(n+1)*(2*BITWIDTH)-1:n*(2*BITWIDTH)]),
                    .pcin(dsp_link_wire[n*48-1:(n-1)*48]),
                    .pcout(dsp_link_wire[(n+1)*48-1:n*(48)])
                );
            end // gen_dsp_chain        
        end //dsp_chain_en
    endgenerate
    
    //Carve up the output of the last dsp slice.
    //for complex multiply (a+ib)x(c-id) = (ac+bd) + i(bc-ad)


    wire [OUTPUT_WIDTH-2:0] bc = dsp_chain_output[OUTPUT_WIDTH-2:0];
    wire [OUTPUT_WIDTH-1:0] ac_plus_bd = dsp_chain_output[(DSP_WIDTH-BITWIDTH-1)+(OUTPUT_WIDTH-1):DSP_WIDTH-BITWIDTH-1];
    wire [OUTPUT_WIDTH-2:0] ad = dsp_chain_output[2*(DSP_WIDTH-BITWIDTH-1)+(OUTPUT_WIDTH-1):2*(DSP_WIDTH-BITWIDTH-1)];

    reg [OUTPUT_WIDTH-1:0] ab_real = 0;
    reg [OUTPUT_WIDTH-1:0] ab_imag = 0;

    always @(posedge clk) begin
        ab_real <= ac_plus_bd;
        ab_imag <= bc - ad;
    end

    
    

   assign ab = {ab_real,ab_imag};


endmodule

`endif
