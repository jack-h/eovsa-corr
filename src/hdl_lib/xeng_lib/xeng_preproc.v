`ifndef xeng_preproc
`define xeng_preproc

`timescale 1ns / 1ps

module xeng_preproc(
    clk,
    ce,
    sync,
    din,
    dout_uint,
    dout_uint_stag,
    sync_out
    );

  
    parameter SERIAL_ACC_LEN_BITS = 7;  //Serial accumulation length (2^?)
    parameter P_FACTOR_BITS = 2;        //Number of samples to accumulate in parallel (2^?)
    parameter BITWIDTH = 4;             //bitwidth of each real/imag part of a single sample
    parameter BRAM_LATENCY = 2;         //Latency of brams in delay chain
    parameter FIRST_DSP_REGISTERS = 2;  //number of registers on the input of the first DSP slice in the chain
    parameter DSP_REGISTERS = 2;        //number of registers on the input of all others DSP slices in the chain
	 parameter N_POLS = 2;					 //number of polarisations
    
    localparam P_FACTOR = 1<<P_FACTOR_BITS;                          //number of parallel cmults
    localparam INPUT_WIDTH = N_POLS*BITWIDTH*2*(1<<P_FACTOR_BITS);   //width of complex in/out bus
    localparam N_COMPONENTS = P_FACTOR*2*N_POLS;                     //number of components to accumulate
   
    input clk;                                  //clock input
    input ce;                                   //dummy clock enable (exists only for simulink)
    input sync;                                 //sync input (triggers new accumulation)
    input [INPUT_WIDTH-1:0] din;                //parallel data input stream
    output [INPUT_WIDTH-1:0] dout_uint;         //parallel data output stream (with all components uints)
    output [INPUT_WIDTH-1:0] dout_uint_stag;    //parallel data output stream (with all components uints and staggered)

    output sync_out;
    
    assign sync_out = sync;
    
    wire [INPUT_WIDTH-1:0] dout_uint_wire; //internal wire for uint data stream
    
    conv_uint #(
        .BITWIDTH(BITWIDTH)
        ) conv_uint_inst [N_COMPONENTS-1:0] (
        .din(din),
        .dout(dout_uint_wire)
        );
       
    //Stagger simultaneous samples
    stagger # (
        .N_STAGES(P_FACTOR),
        .BLOCK_SIZE(BITWIDTH*2),
        .STAGGER_OFFSET(DSP_REGISTERS-FIRST_DSP_REGISTERS)
        ) stagger_inst[N_POLS-1:0] (
        .clk(clk),
        .din(dout_uint_wire),
        .dout(dout_uint_stag)
        );
    
    assign dout_uint = dout_uint_wire;
       
endmodule

`endif
