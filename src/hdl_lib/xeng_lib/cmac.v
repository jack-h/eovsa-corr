`ifndef cmac
`define cmac

`timescale 1ns / 1ps

module cmac(
    clk,
    sync,
    a,
    b,
    acc_in,
    valid_in,
    acc_out,
    valid_out
    );
    
    parameter BITWIDTH = 4;             //bitwidth of each real/imag part of a single sample
    parameter P_FACTOR_BITS = 3;        // number of samples to be multiplied in parallel (2^?)
    parameter SERIAL_ACC_LEN_BITS = 7;  //number of samples to be accumulated in serial (2^?)
    parameter ACC_MUX_LATENCY = 2;      //Latency of the mux to place the accumulation result on the xeng shift reg
    parameter FIRST_DSP_REGISTERS = 2;  //number of registers on the input of the first DSP slice in the chain
    parameter DSP_REGISTERS = 2;        //number of registers on the input of all others DSP slices in the chain
    
    //internal parameters
    localparam P_FACTOR = 1<<P_FACTOR_BITS;
    localparam MULT_LATENCY = (P_FACTOR-1)+FIRST_DSP_REGISTERS+2;  //latency of the multiplier chain
    localparam ADD_LATENCY = 1;                                     //NB: this parameter is not passed down to subblocks.
    
    localparam MULT_BITS_OUT = 2*BITWIDTH+1+P_FACTOR_BITS;          //Number of bits out of parallel cmult block (for each r/i part)
    localparam ACC_BITS_OUT = MULT_BITS_OUT+SERIAL_ACC_LEN_BITS;    //Number of bits after accumulation (for each r/i part)

    input clk;                              //clock input
    input sync;                             //sync input, which determines when accumulators reset
    //input for samples from each antenna (with 2*BITWIDTH bits per samples, and P_FACTOR parallel samples per clock
    input [2*BITWIDTH*P_FACTOR-1:0] a;
    input [2*BITWIDTH*P_FACTOR-1:0] b;
    input [2*ACC_BITS_OUT-1:0] acc_in;      //input from accumulator earlier in the antenna tap chain
    output [2*ACC_BITS_OUT-1:0] acc_out;    //accumulator output
    input valid_in;                         //signal indicating validity of accumulator input
    output valid_out;                       //signal indicating validity of accumulator output
    
    //Instantiate the parallel multiplier chain
    wire [2*MULT_BITS_OUT-1:0] ab;
    
    dsp48e_mac_chain #(
        .BITWIDTH(BITWIDTH),
        .N_INPUT_BITS(P_FACTOR_BITS),
        .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
        .DSP_REGISTERS(DSP_REGISTERS)
    ) cmult (
		.clk(clk), 
		.a(a), 
		.b(b), 
		.ab(ab)
	);
    
    //Split the real and imaginary parts of the complex product
    wire [MULT_BITS_OUT-1:0] ab_real = ab[2*MULT_BITS_OUT-1:MULT_BITS_OUT]; 
    wire [MULT_BITS_OUT-1:0] ab_imag = ab[MULT_BITS_OUT-1:0];
    
    //Split the real and imaginary parts of the accumulation input
    wire [ACC_BITS_OUT-1:0] acc_in_real = acc_in[2*ACC_BITS_OUT-1:ACC_BITS_OUT];
    wire [ACC_BITS_OUT-1:0] acc_in_imag = acc_in[ACC_BITS_OUT-1:0];
    
    //Build the logic to generate reset pulses for the accumulators
    wire sync_delay_cmult_int; //The sync input, delayed by the cmult latency - 2
    wire sync_delay_cmult; //The sync input, delayed by the cmult latency - 1

    delay # (
        .WIDTH(1),
        .DELAY(MULT_LATENCY+ADD_LATENCY-2),
        .ALLOW_SRL("YES")
    ) cmult_delay_comp (
        .clk(clk),
        .ce(1'b1),
        .din(sync),
        .dout(sync_delay_cmult_int)
    );

    delay # (
        .WIDTH(1),
        .DELAY(1),
        .ALLOW_SRL("NO")
    ) cmult_delay_comp_last (
        .clk(clk),
        .ce(1'b1),
        .din(sync_delay_cmult_int),
        .dout(sync_delay_cmult)
    );

    // A counter which counts out complete integrations
    reg [SERIAL_ACC_LEN_BITS-1:0] acc_ctr = 0;
    reg acc_rst = 0;
    // Generate the accumulator reset signal by comparing the counter to zero
    always @(posedge(clk)) begin
        if (sync_delay_cmult==1'b1) begin
            acc_ctr <= {(SERIAL_ACC_LEN_BITS){1'b0}};
        end else begin
            acc_ctr <= acc_ctr + 1'b1;
        end
        if (acc_ctr == {(SERIAL_ACC_LEN_BITS){1'b0}}) begin
            acc_rst <= 1'b1;
        end else begin
            acc_rst <= 1'b0;
        end
    end
    
    // Now instantiate the accumulators for the real and imaginary parts of the cmult output
    wire [ACC_BITS_OUT-1:0] acc_real_out;
    wire [ACC_BITS_OUT-1:0] acc_imag_out;
    
    acc #(
        .BITWIDTH_IN(MULT_BITS_OUT),
        .ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
        .UNSIGNED(1),
        .MULTIPLEX_DELAY(ACC_MUX_LATENCY)
    ) acc_real (
        .clk(clk),
        .rst(acc_rst),
        .valid_in(valid_in),
        .acc_in(acc_in_real),
        .din(ab_real),
        .valid_out(valid_out),
        .acc_out(acc_real_out)
    );
    
    acc #(
        .BITWIDTH_IN(MULT_BITS_OUT),
        .ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
        .UNSIGNED(0),
        .MULTIPLEX_DELAY(ACC_MUX_LATENCY)
    ) acc_imag (
        .clk(clk),
        .rst(acc_rst),
        .valid_in(valid_in),
        .acc_in(acc_in_imag),
        .din(ab_imag),
        .valid_out(),
        .acc_out(acc_imag_out)
    );
    
    assign acc_out = {acc_real_out,acc_imag_out};

endmodule

`endif
