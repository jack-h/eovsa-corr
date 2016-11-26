`timescale 1ns / 1ps

module dsp48_mac_chain_tb;

	// Inputs
	reg clk;
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [17:0] ab;

	// Instantiate the Unit Under Test (UUT)
	dsp48e_mac_chain #(
        .N_INPUT_BITS(0)
        ) uut (
		.clk(clk), 
		.a(a), 
		.b(b), 
		.ab(ab)
	);

    wire [8:0] ab_real = ab[17:9];
    wire [8:0] ab_imag = ab[8:0];

    initial begin
        clk = 0;
        forever #100 clk = !clk;
    end

    reg [2:0] ctr;
    
	initial begin
		// Initialize Inputs
		clk = 0;
		a = 0;
		b = 0;
        ctr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
    
        
    always@(posedge(clk)) begin
        ctr <= ctr+1;
        a <= {5'b0,ctr};
        b <= {8'b1};
    end    
           
        
        
        
//    reg [3:0] ctr_z;
//    reg [3:0] ctr_2z;
//    reg [3:0] ctr_3z;
//    reg [3:0] ctr_4z;    
//    reg [3:0] ctr_5z;
//    reg [3:0] ctr_6z;
//    reg [3:0] ctr_7z;
//    
//    always @(posedge(clk)) begin
//        ctr <= ctr + 1;
//        ctr_z <= ctr;
//        ctr_2z <= ctr_z;
//        ctr_3z <= ctr_2z;
//        ctr_4z <= ctr_3z;
//        ctr_5z <= ctr_4z;
//        ctr_6z <= ctr_5z;
//        ctr_7z <= ctr_6z;
//        
//        a <= {ctr_7z,4'b0,ctr_6z,4'b0,ctr_5z,4'b0,ctr_4z,4'b0,ctr_3z,4'b0,ctr_2z,4'b0,ctr_z,4'b0,ctr,4'b0};
//        b <= {ctr_7z,4'b0,ctr_6z,4'b0,ctr_5z,4'b0,ctr_4z,4'b0,ctr_3z,4'b0,ctr_2z,4'b0,ctr_z,4'b0,ctr,4'b0};
//        //a <= {40'b0,ctr_2z,4'b0,ctr_z,4'b0,ctr,4'b0};
//        //b <= {40'b0,ctr_2z,4'b0,ctr_z,4'b0,ctr,4'b0};
//    end
    

      
endmodule

