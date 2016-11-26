`timescale 1ns / 1ps
`define USE_CLOG2
//`define DEBUG

module qdr_vacc_ctrl(
  clk,
  ce,
  rst,
  vld,
  sync,
  acc_len_mi,
  qdr_we,
  qdr_re,
  qdr_addr,
  dout_vld,
  first_vec,
  rb_burst_len_mi
  );

  parameter QDR_LATENCY = 12;
  parameter ADD_LATENCY = 3;
  parameter VEC_LEN = 4000;
  parameter VEC_LEN_BITS = 12;
  parameter ACC_BITS = 16;
  parameter RB_BURST_BITS = 16;

  input clk;
  input ce;
  input rst;
  // The number of words to readback for each valid window input to the vacc minus 1
  input [RB_BURST_BITS-1:0] rb_burst_len_mi;
  // Signals pertaining to incoming stream which needs accumulating
  input vld;
  input sync;
  // Accumulation length maximum index (i.e. accumulation length - 1)
  input [ACC_BITS-1:0] acc_len_mi;
  // Flag indicating that output from qdr is currently a valid acc sample
  output dout_vld;
  // A flag indicating the incoming data is the first of it's accumulation, and should not be added to the vector in ram
  output first_vec;
  // Signals to QDR
  output qdr_we;
  output qdr_re;
  output [VEC_LEN_BITS+1-1-1:0] qdr_addr; //+1 for double buffing -1 because one address takes two words



  // read and write addresses of vector indices.
  // The bottom bit will not be used to
  // address the qdr because
  // qdr addresses are for two DATA_WIDTH words
  reg [VEC_LEN_BITS-1:0] vacc_wr_addr = 0;
  reg [VEC_LEN_BITS-1:0] vacc_rd_addr = 0;

  // On a sync, the next clock cycle we will receive data for
  // vector entry 0. The below logic takes a clock to get the addr / rd_en
  // signals in order. Therefore you must delay the data input by one clock cycle relative
  // to the sync / vld signals.
  // On sync, the next clock cycle read address goes to zero.
  // and rd_en goes to zero. After one further clock cycle, the rd_en and address
  // go. 
  // Read enables will toggle on every valid clock and two words
  // will be read. You must have input data valid in bursts of two

  reg vacc_re_reg = 0; //a qdr read request for vacc data

  always @(posedge clk) begin
    if (rst) begin
      vacc_rd_addr <= VEC_LEN-1;
      vacc_re_reg <= 1'b0;
    end else if (ce) begin
      if (sync) begin
`ifdef DEBUG $display("time %t: SYNC received by read address process",$time); `endif
        vacc_rd_addr <= VEC_LEN-1;
        vacc_re_reg <= 1'b0;
      end else if (vld) begin
`ifdef DEBUG $display("time %t: INPUT VALID vacc_rd_addr=%d, vacc_re_reg=%d",$time,vacc_rd_addr,vacc_re_reg); `endif
        vacc_rd_addr <= vacc_rd_addr == VEC_LEN-1 ? 0 : vacc_rd_addr + 1'b1;
        vacc_re_reg <= ~vacc_re_reg;
      end
    end
  end

  // Two clocks after a sync a read is issued. it takes QDR_LATENCY+1 clocks
  // to retrieve the data from the QDR, (+1 because of registering
  // of the address outputs in this module), then ADD_LATENCY clocks to perform
  // the addition before the data is ready to be written back to the QDR.
  // Therefore we should delay the sync by 1+QDR_LATENCY+ADD_LATENCY+1.
  // Delay the sync by this latency, and use the delayed version to reset the
  // write address counter (similarly to the read). Since the read and write
  // enables may not clash, 1 + QDR_LATENCY + ADD_LATENCY + 1 must be odd.

  wire sync_delayed; // The sync signal, delayed by 1+QDR_LATENCY+ADD_LATENCY+1 clock cycles
  sync_delay #(
    .DELAY_LENGTH(1+QDR_LATENCY+ADD_LATENCY+1)
  ) sync_delay_inst (
    .clk(clk),
    .ce(ce),
    .din(sync),
    .dout(sync_delayed)
  );

  // The delay here may be tens of clocks, maybe it would be better to manipulate the write
  // address by subtraction rather than whacking a large delay on the vld line, but it's
  // only one bit wide, so not a big deal.

  wire vld_delayed; // The vld signal, delayed by 1+QDR_LATENCY+ADD_LATENCY+1 clock cycles
  delay #(
    .DELAY(1+QDR_LATENCY+ADD_LATENCY+1)
  ) vld_delay (
    .clk(clk),
    .ce(ce),
    .din(vld),
    .dout(vld_delayed)
  );

  reg vacc_we_reg = 0; //QDR write request for the vacc

  always @(posedge clk) begin
    if (rst) begin
      vacc_wr_addr <= VEC_LEN-1;
      vacc_we_reg <= 1'b0;
    end else if (ce) begin
      if (sync_delayed) begin
`ifdef DEBUG $display("time %t: SYNC received by WRITE address process",$time); `endif
        vacc_wr_addr <= VEC_LEN-1;
        vacc_we_reg <= 1'b0; // 2+QDR_LATENCY+ADD_LATENCY must be odd, or this will clash with vacc_re_reg
      end else if (vld_delayed) begin
`ifdef DEBUG $display("time %t: WRITE VALID vacc_wr_addr=%d, vacc_we_reg=%d",$time,vacc_wr_addr,vacc_we_reg); `endif
        vacc_wr_addr <= vacc_wr_addr == VEC_LEN-1 ? 0 : vacc_wr_addr + 1'b1;
        vacc_we_reg <= ~vacc_we_reg;
      end
    end
  end

  // Some checking for errors on we/re manipulations
  reg vacc_we_zz = 0;
  reg vacc_re_zz = 0;
  always @(posedge clk) begin
    vacc_we_zz <= vacc_we_reg;
    vacc_re_zz <= vacc_re_reg;
  end
  wire write_overrun = vacc_we_zz & vacc_we_reg;
  wire read_overrun = vacc_re_zz & vacc_re_reg;
  wire read_write_clash = vacc_we_zz & vacc_re_zz;

  // Some more error checking -- a sync should come with each complete vector. Check that here
  reg vector_err_wrong_addr = 0;
  always @(posedge clk) begin
    // on a sync the re_addr should be one before it's last value 
    if (sync) begin
      vector_err_wrong_addr <= vacc_rd_addr != VEC_LEN-2;
    end
  end


  // Now we have the basic vector accumulator logic. (i.e., a delay block)
  // Now implement the double buffering and new accumulation signals.

  reg wr_buf = 0;                  // The current half of the QDR to be written to
  wire rd_buf = ~wr_buf;           // The buffer to readout from
  reg [ACC_BITS-1:0] acc_ctr = 0;  // Number of samples in current accumulation
  reg new_acc = 0;                 // A one clock strobe marking a new accumulation ready

  // Mark the first vector in an accumulation with the first_vec flag. This
  // needs delaying so that it is in sync with the point at which new incoming
  // data would be added to the stored vector.
  // wire first_vec_int = acc_ctr==0;
  // May as well make this a register and pulse it off the same conditions as
  // the acc_ctr reset. (I hope this reduces the logic path)
  reg first_vec_int = 1;
  delay #(
    .DELAY(QDR_LATENCY+2),
    .ALLOW_SRL("NO")
  ) first_vec_delay (
    .clk(clk),
    .ce(ce),
    .din(first_vec_int),
    .dout(first_vec)
  );

  
  // A process to keep track of the number of samples being accumulated
  // Count samples on each sync, toggle the wr_buf when a full accumulation
  // is obtained
  always @(posedge clk) begin
    if (rst) begin
      acc_ctr <= 0;
      first_vec_int <= 1'b1;
      wr_buf <= 0;
      new_acc <= 1'b0;
    end else if (ce) begin
      //if (sync_delayed) begin
      //    acc_ctr <= 0;
      //    first_vec_int <= 1'b1;
      //end else begin
      //TODO: Is this right? We don't reset the acc_ctr on a sync, because syncs come every vector, not every accumulation

          new_acc <= 1'b0; //default value
          if ((vacc_wr_addr == VEC_LEN-2) && vld_delayed) begin
`ifdef     DEBUG $display("time %t: FIRST OF LAST PAIR OF ELEMENT ENTERED! acc_ctr:%d",$time,acc_ctr); `endif
            // This happens as the wr_en cmd for the last pair of vectors is written to the QDR
            if (acc_ctr == acc_len_mi) begin
              // The last vector has been written in
              acc_ctr <= 0;
              first_vec_int <= 1'b1;
              wr_buf <= ~wr_buf;
              new_acc <= 1'b1;
`ifdef     DEBUG $display("time %t: NEW ACCUMULATION! new_acc goes high next clock",$time); `endif
            end else begin
              acc_ctr <= acc_ctr + 1'b1;
              first_vec_int <= 1'b0;
            end
          end
       //end
    end
  end

  // Construct the accumulation readout address and re circuitry
  reg [VEC_LEN_BITS-1:0] readback_addr = 0; //the address being read out of the qdr
  // A flag indicating qdr read request is for readout of the previous accumulation
  reg readback_en = 0;
  // A flag to indicate readback is in progress (like readback_en, but doesn't toggle every
  // other clock cycle)
  reg reading = 0;
  //A counter to track the number of words readback in this burst
  reg [RB_BURST_BITS-1:0] rb_burst_ctr = 0;

  // The address for the readback is reset on a new accumulation, and otherwise
  // increments whenever readback_en is high. readback_en is triggered by the falling edge of
  // incoming valid data
  always @(posedge clk) begin
    if (rst) begin
      readback_addr <= 0;
    end else if (ce) begin
      if (new_acc) begin
        readback_addr <= 0;
      end else if (reading) begin
        readback_addr <= readback_addr == VEC_LEN-1 ? 0 : readback_addr + 1'b1; 
      end
    end
  end

  // We need to register the incoming vld signal, so that we can catch a falling edge.
  // This is used to trigger readback
  reg vld_z = 0;
  reg [RB_BURST_BITS-1:0] rb_burst_cnt = 0;
  always @(posedge clk) begin
    if (rst | new_acc) begin
      readback_en <= 1'b0;
      reading <= 1'b0;
      rb_burst_cnt <= 0;
      vld_z <= 0;
    end else if (ce) begin
      vld_z <= vld;
      rb_burst_ctr <= rb_burst_ctr + 1'b1; // count every clock unless reset below
      if (vld_z & ~vld) begin //negedge on vld
`ifdef DEBUG $display("time %t: DETECTED input negedge! readback_addr:%d, readback_re_req:%d ",$time,readback_addr,readback_re_req); `endif
        readback_en <= 1'b1;
        reading <= 1'b1;
        rb_burst_ctr <= 0;
      end else begin
        readback_en <= ~readback_en;
        if (rb_burst_ctr == rb_burst_len_mi) begin
          reading <= 1'b0;
        end
      end
    end
  end

`ifdef DEBUG
  always @(posedge clk) begin
    if (reading) begin
      $display("time %t: READING! readback_addr:%d, readback_re_req:%d ",$time,readback_addr,readback_re_req);
    end
  end
`endif


  // So far the readback will continue after every input block forever, even if the
  // last accumulation has been completely read out.
  // Rather than control this, just mask the output valid signals

  // We need to have the delayed rb complete signal because after a read
  // command the qdr output is valid for two clocks
  reg rb_complete = 1;
  reg rb_completeR = 1;
  always @(posedge clk) begin
    if (rst) begin
      rb_complete <= 1'b1;
      rb_completeR <= 1'b1;
    end else begin
      rb_completeR <= rb_complete;
      if (new_acc) begin
        rb_complete <= 1'b0;
      end else if ((readback_addr == VEC_LEN-2) && readback_en && reading) begin
        rb_complete <= 1'b1;
      end
    end
  end

  wire rb_valid = reading & ~rb_completeR;
  wire readback_re_req = readback_en & reading;

  // Delay the rb_valid signal by the QDR_LATENCY+1 clocks it takes to retrieve the data
  wire rb_valid_delayed;
  delay #(
    .DELAY(QDR_LATENCY+1)
  ) rbvld_delay (
    .clk(clk),
    .ce(ce),
    .din(rb_valid),
    .dout(rb_valid_delayed)
  );
  assign dout_vld = rb_valid_delayed;

  // Assign the QDR address outputs
  // Register all the signals to the QDR. This effectively increases the QDR LATENCY by 1
  reg qdr_re_reg=0;
  reg qdr_we_reg=0;
  reg [VEC_LEN_BITS+1-1-1:0] qdr_addr_reg=0;
  always @(posedge clk) begin
    if (ce) begin
      qdr_re_reg <= vacc_re_reg | readback_re_req;
      qdr_we_reg <= vacc_we_reg;
      if (vacc_we_reg) begin
        qdr_addr_reg <= {wr_buf, vacc_wr_addr[VEC_LEN_BITS-1:1]};
      end else begin
        if (vacc_re_reg) begin
          qdr_addr_reg <= {wr_buf, vacc_rd_addr[VEC_LEN_BITS-1:1]};
        end else begin
          qdr_addr_reg <= {rd_buf, readback_addr[VEC_LEN_BITS-1:1]};
        end
      end
    end
  end

  assign qdr_we = qdr_we_reg;
  assign qdr_re = qdr_re_reg;
  assign qdr_addr = qdr_addr_reg;

endmodule
