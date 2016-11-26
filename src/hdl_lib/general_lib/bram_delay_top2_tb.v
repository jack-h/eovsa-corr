`timescale 1ns / 1ps

module bram_delay_top2_tb;

    localparam WIDTH = 32;
    localparam DELAY = 128;
    localparam LATENCY = 2;

	// Inputs
	reg clk;
	wire [31:0] in;

	// Outputs
	wire [31:0] out;
    
    //Counter signal
    reg [31:0] ctr;

	// Instantiate the Unit Under Test (UUT)
	bram_delay_top2 #(
        .WIDTH(WIDTH),
        .DELAY(DELAY),
        .LATENCY(LATENCY)
        ) uut (
		.clk(clk), 
        .ce(1'b1),
		.din(in), 
		.dout(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
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
        $display("CLOCK: %d, IN: %d, OUT: %d", ctr,in,out);
    end  
    assign in = ctr;
    
    initial begin
        $dumpfile("test.vcd");
        $dumpvars;
    end
      
endmodule

