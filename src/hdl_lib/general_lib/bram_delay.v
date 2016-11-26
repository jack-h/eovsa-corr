`ifndef bram_delay
`define bram_delay

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

module bram_delay(
    clk,
    ce,
    din,
    dout
    );

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

    parameter WIDTH = 32;                //interface width (<37 for 18Kb bram, <73 for 36Kb)
    parameter DELAY = 512;               //Delay to implement in clocks.
    parameter TARGET_BRAM = "36Kb";      //Target bram block size. Either "18Kb" or "36Kb"
    parameter TARGET_DEVICE = "VIRTEX5"; //VIRTEX5, VIRTEX6 or SPARTAN6
    parameter LATENCY = 2;               //Can be either 2 or 1
    
    localparam ADDR_BITS = `log2(DELAY) < 9 ? 9 : `log2(DELAY);
     
    //Inputs/Outputs
    input clk;                //clock input
    input ce;                 // clock enable (for simulink)
    input [WIDTH-1:0] din;    //data input
    output [WIDTH-1:0] dout;  //delayed data output
    
    localparam WE_WIDTH = (WIDTH+8)/9; //ceiling(width/9) -- number of bytes per input sample
    localparam WE = {WE_WIDTH{1'b1}};
   
    // Counter for controlling RAM address
    reg [ADDR_BITS-1:0] ctr = 0;
   
    always @(posedge(clk)) begin
        ctr <= ctr+1;
    end
    
    wire [ADDR_BITS-1:0] wr_addr = ctr;
    wire [ADDR_BITS-1:0] rd_addr = ctr-(DELAY-LATENCY);
  
   BRAM_SDP_MACRO #(
      .BRAM_SIZE(TARGET_BRAM),      // Target BRAM, "18Kb" or "36Kb" 
      .DEVICE(TARGET_DEVICE),       // Target device: "VIRTEX5", "VIRTEX6", "SPARTAN6" 
      .WRITE_WIDTH(WIDTH),          // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      .READ_WIDTH(WIDTH),           // Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      .DO_REG(LATENCY-1),           // Optional output register (0 or 1)
      .INIT_FILE ("NONE"),
      .SIM_COLLISION_CHECK ("ALL"), // Collision check enable "ALL", "WARNING_ONLY", 
                                    //   "GENERATE_X_ONLY" or "NONE" 
      .SIM_MODE("SAFE"),            // Simulation: "SAFE" vs. "FAST", see "Synthesis and Simulation Design Guide" for details
      .SRVAL(72'h0000000000DEADBEEF)// Set/Reset value for port output
   ) BRAM_SDP_MACRO_inst (
      .DO(dout),                    // Output read data port
      .DI(din),                     // Input write data port
      .RDADDR(rd_addr),             // Input read address
      .RDCLK(clk),                  // Input read clock
      .RDEN(1'b1),                  // Input read port enable
      .REGCE(1'b1),                 // Input read output register enable
      .RST(1'b0),                   // Input reset      
      .WE(WE),                      // Input write enable
      .WRADDR(wr_addr),             // Input write address
      .WRCLK(clk),                  // Input write clock
      .WREN(1'b1)                   // Input write port enable
   );

  
endmodule

`endif
