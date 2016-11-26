`timescale 1ns / 1ps

module cmac_tb;
    
    parameter BITWIDTH = 4;             //bitwidth of each real/imag part of a single sample
    parameter P_FACTOR_BITS = 0;        // number of samples to be multiplied in parallel (2^?)
    parameter SERIAL_ACC_LEN_BITS = 7;  //number of samples to be accumulated in serial (2^?)
    parameter ACC_MUX_LATENCY = 2;      //Latency of the mux to place the accumulation result on the xeng shift reg
    parameter FIRST_DSP_REGISTERS = 2;  //number of registers on the input of the first DSP slice in the chain
    parameter DSP_REGISTERS = 2;        //number of registers on the input of all others DSP slices 

   
    //internal parameters
    localparam P_FACTOR = 1<<P_FACTOR_BITS;
    localparam MULT_LATENCY = ((P_FACTOR-1)*DSP_REGISTERS)+FIRST_DSP_REGISTERS+2; //latency of the multiplier chain
    localparam ADD_LATENCY = 1; //NB: this parameter is not passed down to subblocks.
    localparam MULT_BITS_OUT = 2*BITWIDTH+1+P_FACTOR_BITS; //Number of bits out of parallel cmult block (for each r/i part)
    localparam ACC_BITS_OUT = MULT_BITS_OUT+SERIAL_ACC_LEN_BITS; //Number of bits after accumulation (for each r/i part)


	// Inputs
	reg clk;
	reg sync;
	reg [2*BITWIDTH*P_FACTOR-1:0] a;
	reg [2*BITWIDTH*P_FACTOR-1:0] b;
	reg [2*ACC_BITS_OUT-1:0] acc_in;
	reg valid_in;

	// Outputs
	wire [2*ACC_BITS_OUT-1:0] acc_out;
	wire valid_out;

	// Instantiate the Unit Under Test (UUT)
	cmac #(
        .BITWIDTH(BITWIDTH),
        .P_FACTOR_BITS(P_FACTOR_BITS),
        .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
        .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
        .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
        .DSP_REGISTERS(DSP_REGISTERS)
        ) uut (
		.clk(clk), 
		.sync(sync), 
		.a(a), 
		.b(b), 
		.acc_in(acc_in), 
		.valid_in(valid_in), 
		.acc_out(acc_out), 
		.valid_out(valid_out)
	);

    wire [ACC_BITS_OUT-1:0] acc_out_real = acc_out[2*ACC_BITS_OUT-1:ACC_BITS_OUT];
    wire [ACC_BITS_OUT-1:0] acc_out_imag = acc_out[ACC_BITS_OUT-1:0];

	initial begin
		// Initialize Inputs
		clk = 0;
		sync = 0;
		a = 0;
		b = 0;
		acc_in = 0;
		valid_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        #1000;
        sync = 1'b1;
        #200;
        sync = 1'b0;

	end
    
    initial begin
        forever #100 clk <= !clk;
    end
    
    reg [SERIAL_ACC_LEN_BITS-1:0] rst_ctr=0;
    reg [32:0] sync_ctr=0;
    
    always@(posedge(clk)) begin
        sync <= (sync_ctr == 32'd128);
        sync_ctr <= sync_ctr + 1;
    end

    always@(posedge(clk)) begin
        if (sync) begin
            rst_ctr <= 0;
        end else begin
            rst_ctr <= rst_ctr + 1;
        end
    end
    
    
    reg [2:0] ctr = 0;
    always@(posedge(clk)) begin
        ctr <= ctr+1;
        a = 8'b1;
        b = {5'b0, ctr};
    end
      
endmodule

