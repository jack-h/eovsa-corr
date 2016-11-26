`timescale 1ns / 1ps

/* Currently, Xilinx doesn't support $clog2, but iverilog doesn't support
 * constant user functions. Decide which to use here
 */
`ifndef log2
`ifdef USE_CLOG2
`define log2(p) $clog2(p)
`else
`define log2(p) log2_func(p)
`endif
`endif

module bl_order_gen_tb;

    function integer log2_func;
      input integer value;
      integer loop_cnt;
      begin
        value = value-1;
        for (loop_cnt=0; value>0; loop_cnt=loop_cnt+1)
          value = value>>1;
        log2_func = loop_cnt;
      end
    endfunction

    localparam N_ANTS = 8;
    localparam ANT_BITS = log2(N_ANTS);
    
	// Inputs
	reg clk;
	reg sync;
	reg en;

	// Outputs
	wire [ANT_BITS-1:0] ant_a;
	wire [ANT_BITS-1:0] ant_b;
    wire buf_sel;

	// Instantiate the Unit Under Test (UUT)
	bl_order_gen #(
        .N_ANTS(N_ANTS)
    ) uut (
		.clk(clk), 
		.sync(sync), 
		.en(en), 
		.ant_a(ant_a), 
		.ant_b(ant_b),
        .buf_sel(buf_sel)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		sync = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   
    parameter PERIOD = 10;

    always begin
       clk = 1'b0;
       #(PERIOD/2) clk = 1'b1;
       #(PERIOD/2);
    end  
    
    initial begin
        sync = 1;
        #PERIOD;
        sync = 0;
        en = 1'b1;
    end
    
endmodule

