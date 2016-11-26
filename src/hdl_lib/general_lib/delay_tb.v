`timescale 1ns / 1ps

module delay_tb;

	// Inputs
	reg clk;
	reg [31:0] in;

	// Outputs
	wire [31:0] out;
    
    //Counter signal
    reg [4:0] ctr;

	// Instantiate the Unit Under Test (UUT)
	delay uut (
		.clk(clk), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		in = 0;
        ctr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
    
    initial begin
        clk = 0;
        forever #10 clk = !clk;        
    end
    
    always @(posedge(clk)) begin
        ctr <= ctr+1;
        in = ctr;
    end  
    
      
endmodule

