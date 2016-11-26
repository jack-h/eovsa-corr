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

module tb_comp_vacc();
    
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

    parameter INPUT_WIDTH = 4;
    parameter ACC_LEN_BITS = 8;
    parameter VECTOR_LENGTH = 32;
    parameter PLATFORM = "VIRTEX5";
    
    localparam ACC_LEN = 1<<ACC_LEN_BITS;
    localparam VECTOR_LEN_BITS = `log2(VECTOR_LENGTH);
    localparam ACC_WIDTH = ACC_LEN_BITS + INPUT_WIDTH;
    
    reg clk;                                          //clock input
    reg [VECTOR_LEN_BITS-1:0] ant_sel_a=1;              //bram read address signal for ram A
    reg [VECTOR_LEN_BITS-1:0] ant_sel_b=1;              //bram read address signal for ram B
    reg buf_sel=0;                                      //1 bit buffer read index (because reading/writing is not always from same buffer)
    reg new_acc=0;                                      //reset input indicating new accumulation on next clock
    reg [INPUT_WIDTH-1:0] din = 4'b1111;                        //data in
    wire [INPUT_WIDTH+ACC_LEN_BITS-1:0] dout_a;         //accumulated data out for ram A
    wire [INPUT_WIDTH+ACC_LEN_BITS-1:0] dout_b;         //accumulated data out for ram B
    
    always begin
        clk = 1;
        #5 clk = 0;
        #5;
    end

    initial begin
        $dumpfile("dptest.vcd");
        $dumpvars;
    end

    reg [9:0] ctr=0;
    always @(posedge(clk)) begin
        ctr <= ctr+1;
    end
    
   wire [17:0] doutA;
   wire [17:0] doutB;

 RAMB18 #(
      .SIM_MODE("SAFE"),  // Simulation: "SAFE" vs. "FAST", see "Synthesis and Simulation Design Guide" for details
      .DOA_REG(1),  // Optional output registers on A port (0 or 1)
      .DOB_REG(1),  // Optional output registers on B port (0 or 1)
      .INIT_A(18'h0AAAA),  // Initial values on A output port
      .INIT_B(18'h0AAAA),  // Initial values on B output port
      .READ_WIDTH_A(18),  // Valid values are 1, 2, 4, 9 or 18
      .READ_WIDTH_B(18),  // Valid values are 1, 2, 4, 9 or 18
      .SIM_COLLISION_CHECK("ALL"),  // Collision check enable "ALL", "WARNING_ONLY", 
                                    //   "GENERATE_X_ONLY" or "NONE" 
      .SRVAL_A(18'h00000),  // Set/Reset value for A port output
      .SRVAL_B(18'h00000),  // Set/Reset value for B port output
      .WRITE_MODE_A("WRITE_FIRST"),  // "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
      .WRITE_MODE_B("WRITE_FIRST"),  // "WRITE_FIRST", "READ_FIRST", or "NO_CHANGE" 
      .WRITE_WIDTH_A(18),  // Valid values are 1, 2, 4, 9 or 18
      .WRITE_WIDTH_B(18)  // Valid values are 1, 2, 4, 9 or 18
      
   ) RAMB18_inst (
      .DOA(doutA[15:0]),       // 16-bit A port data output
      .DOB(doutB[15:0]),       // 16-bit B port data output
      .DOPA(doutA[17:16]),     // 2-bit A port parity data output
      .DOPB(doutB[17:16]),     // 2-bit B port parity data output
      .ADDRA({ctr, {4{1'b0}}}),   // 14-bit A port address input
      .ADDRB(14'b0),   // 14-bit B port address input
      .CLKA(clk),     // 1-bit A port clock input
      .CLKB(clk),     // 1-bit B port clock input
      .DIA({{6{1'b0}},ctr}),       // 16-bit A port data input
      .DIB(16'hBEEF),       // 16-bit B port data input
      .DIPA(2'b00),     // 2-bit A port parity data input
      .DIPB(2'b00),     // 2-bit B port parity data input
      .ENA(1'b1),       // 1-bit A port enable input
      .ENB(1'b1),       // 1-bit B port enable input
      .REGCEA(1'b1), // 1-bit A port register enable input
      .REGCEB(1'b1), // 1-bit B port register enable input
      .SSRA(1'b0),     // 1-bit A port set/reset input
      .SSRB(1'b0),     // 1-bit B port set/reset input
      .WEA(2'b11),       // 2-bit A port write enable input
      .WEB(2'b00)        // 2-bit B port write enable input
   );



endmodule

