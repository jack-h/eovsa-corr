`timescale 1ns / 1ps

module tb_qdr_vacc_ctrl();

  localparam QDR_LATENCY = 12;
  localparam ADD_LATENCY = 0;
  localparam VEC_LEN = 100;
  localparam VEC_LEN_BITS = 7;

  //inputs
  reg clk=0;
  reg ce;
  reg rst;
  reg vld;
  reg sync;
  reg [31:0] acc_len_mi;
  reg [31:0] rb_burst_len_mi;
  //outputs
  wire qdr_we;
  wire qdr_re;
  wire [VEC_LEN_BITS+1-1-1:0] qdr_addr;
  wire dout_vld;
  wire first_vec;
  
  //instantiate the UUT
  qdr_vacc_ctrl #(
   .QDR_LATENCY(QDR_LATENCY),
   .ADD_LATENCY(ADD_LATENCY),
   .VEC_LEN(VEC_LEN),
   .VEC_LEN_BITS(VEC_LEN_BITS)
  ) uut (
  .clk(clk),
  .ce(ce),
  .rst(rst),
  .vld(vld),
  .sync(sync),
  .acc_len_mi(acc_len_mi),
  .qdr_we(qdr_we),
  .qdr_re(qdr_re),
  .qdr_addr(qdr_addr),
  .dout_vld(dout_vld),
  .rb_burst_len_mi(rb_burst_len_mi)
  );

  initial begin
    #10   rst = 1;
          ce = 1;
          acc_len_mi = 39;
          rb_burst_len_mi = 3;
    #1000 rst = 0;
    $display("reset going low");
    #1000000 $finish;
  end

  //make the clock
  always #5 clk = !clk;

  reg [5:0] counter=0;
  reg [31:0] clk_counter=0;
  reg [7:0] vec_ctr=0;
  always @(posedge clk) begin
    counter <= counter + 1'b1;
    clk_counter <= clk_counter + 1'b1;
  end

  always @(posedge clk) begin
    sync <= 0; //single cycle strobe
    if (counter == 6'b0) begin
      vld <= 1'b1;
    end else if (counter == 6'd20) begin
      vld <= 1'b0;
    end
    if ((counter == 6'b111111 ) && (vec_ctr == 0)) begin
      sync <= 1;
    end
  end

  always @(posedge clk) begin
    if (vld) begin
      vec_ctr <= vec_ctr==VEC_LEN-1 ? 0 : vec_ctr + 1'b1;
    end
  end

  initial begin
    $monitor("At time %d, sync=%d, input_vld=%d \t we=%d, re=%d, addr=%d, rb_vld=%d",
                      clk_counter, sync, vld, qdr_we, qdr_re, qdr_addr, dout_vld);
  end

endmodule
