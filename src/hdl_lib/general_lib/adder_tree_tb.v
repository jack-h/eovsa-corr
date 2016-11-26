
`timescale 1ns / 1ps

module adder_tree_tb;

    parameter PARALLEL_SAMPLE_BITS = 0; //Number of parallel inputs to tree (2^?)
    parameter INPUT_WIDTH = 4;          //Input width of single sample
    parameter REGISTER_OUTPUTS = "TRUE";
    parameter IS_SIGNED = "TRUE";

    localparam PARALLEL_SAMPLES = 1<<PARALLEL_SAMPLE_BITS;
    localparam PERIOD = 10;

	// Inputs
	reg clk;
	reg sync;
    reg [PARALLEL_SAMPLES*INPUT_WIDTH-1:0] din;
    reg [INPUT_WIDTH-1:0] test_val;

	// Outputs
	wire [3:0] dout;
	wire sync_out;

	// Instantiate the Unit Under Test (UUT)
	adder_tree #(
        .PARALLEL_SAMPLE_BITS(PARALLEL_SAMPLE_BITS),
        .INPUT_WIDTH(INPUT_WIDTH),
        .IS_SIGNED(IS_SIGNED),
        .REGISTER_OUTPUTS(REGISTER_OUTPUTS)
    ) uut (
		.clk(clk), 
		.sync(sync), 
		.din(din), 
		.dout(dout), 
		.sync_out(sync_out)
	);

	initial begin
		// Initialize Inputs
        test_val = 0;
		clk = 0;
		sync = 0;
		din = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        #1000 $finish;

	end

    initial begin
        clk = 0;
        forever #PERIOD clk = !clk;        
    end
    
    always @(posedge(clk)) begin
        test_val <= test_val + 1;
        $display("input: %d, \toutput: %d", din,dout);
    end


    always@(test_val) begin
        din = {PARALLEL_SAMPLES{test_val}};
    end

      
    initial begin
        $dumpfile("adder_tree.vcd");
        $dumpvars;
    end


endmodule

