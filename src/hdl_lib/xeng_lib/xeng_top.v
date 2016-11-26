`timescale 1ns / 1ps
`ifndef xeng_top
`define xeng_top

module xeng_top(
    clk,
    ce,
    sync_in,
    din,
    vld,
    mcnt,
    
    dout,
    dout_uncorr,
    sync_out,
    vld_out,
    window_vld_out,
    mcnt_out,
    last_triangle,
    buf_sel_out
    );

    parameter SERIAL_ACC_LEN_BITS = 7;  //Serial accumulation length (2^?)
    parameter P_FACTOR_BITS = 2;        //Number of samples to accumulate in parallel (2^?)
    parameter BITWIDTH = 4;             //bitwidth of each real/imag part of a single sample
    parameter ACC_MUX_LATENCY = 2;      //Latency of the mux to place the accumulation result on the xeng shift reg
    parameter FIRST_DSP_REGISTERS = 2;  //number of registers on the input of the first DSP slice in the chain
    parameter DSP_REGISTERS = 2;        //number of registers on the input of all others DSP slices in the chain
    parameter N_ANTS = 64;              //number of (dual pol) antenna inputs
    parameter BRAM_LATENCY = 2;         //Latency of brams in delay chain
    //parameter DEMUX_FACTOR = 1;         //Demux Factor -- NOT YET IMPLEMENTED
    parameter MCNT_WIDTH = 48;          //MCNT bus width
    
    localparam MULT_LATENCY = ((1<<P_FACTOR_BITS)-1 + (FIRST_DSP_REGISTERS+2));         //Multiplier Latency (= latency of first DSP + 1 for every additional DSP)
    localparam ADD_LATENCY = 1;                                                         //Adder latency (currently hardcoded to 1)
    localparam P_FACTOR = 1<<P_FACTOR_BITS;                                             //number of parallel cmults
    localparam INPUT_WIDTH = 2*BITWIDTH*2*(1<<P_FACTOR_BITS);                           //width of complex in/out bus (dual pol)
    localparam ACC_WIDTH = 4*2*((2*BITWIDTH+1)+P_FACTOR_BITS+SERIAL_ACC_LEN_BITS);      //width of complex acc in/out bus (4 stokes)
    localparam N_TAPS = N_ANTS/2 + 1;                                                   //number of taps (including auto)
    localparam CORRECTION_ACC_WIDTH = P_FACTOR_BITS+SERIAL_ACC_LEN_BITS+BITWIDTH+1+1+1; //width of correlation correction factors -- see the component_tracker block for reasoning
    localparam SERIAL_ACC_LEN = (1<<SERIAL_ACC_LEN_BITS);                               //Serial accumulation length
    
    input clk;                          //clock input
    input ce;                           //clock enable input (not used -- for simulink compatibility only)
    input sync_in;                      //sync input
    input [INPUT_WIDTH-1:0] din;        //data input should be {{X_real, X_imag}*parallel samples, {Y_real, Y_imag}*parallel samples} 
    input vld;                          //data in valid flag -- should be held high for whole window
    input [MCNT_WIDTH-1:0] mcnt;        //mcnt timestamp
    output [ACC_WIDTH-1:0] dout;      //accumulation output (all 4 stokes) 
    output [ACC_WIDTH-1:0] dout_uncorr;      //accumulation output (all 4 stokes) with uint convert uncorrected
    output sync_out;                    //sync output
    output vld_out;                     //data output valid flag
    output window_vld_out;              //data output window valid flag
    output [MCNT_WIDTH-1:0] mcnt_out;   //mcnt of data being output
    output last_triangle;
    output buf_sel_out;
    
    /////////////////////////////// MCNT and valid sync logic
    // Window delay on valid in to sync with final tap acc output
    // TODO: make sure this delay is right
    localparam VALID_WIN_DELAY = MULT_LATENCY + ADD_LATENCY + SERIAL_ACC_LEN + N_TAPS + 1;
    wire window_vld_del;
    window_delay #(
        .DELAY(VALID_WIN_DELAY)
    ) window_delay_inst (
        .clk(clk),
        .in(vld),
        .out(window_vld_del)
    );
    
    //MCNT sample and hold
    localparam MCNT_SAMPLE_PERIOD = N_ANTS * SERIAL_ACC_LEN;
    wire [MCNT_WIDTH-1:0] mcnt_s_a_h_out;
    
    sample_and_hold #(
        .WIDTH(MCNT_WIDTH),
        .PERIOD(MCNT_SAMPLE_PERIOD)
    ) mcnt_s_a_h_inst0 (
        .clk(clk),
        .sync(sync_in),
        .din(mcnt),
        .dout(mcnt_s_a_h_out)
    );
    
    wire mcnt_s_a_h2_sync_in;
    
    sample_and_hold #(
        .WIDTH(MCNT_WIDTH),
        .PERIOD(MCNT_SAMPLE_PERIOD)
    ) mcnt_s_a_h_inst1 (
        .clk(clk),
        .sync(mcnt_s_a_h2_sync_in),
        .din(mcnt_s_a_h_out),
        .dout(mcnt_out)
    );
    
    
    // X-engine preprocessing -- Convert to offset binary, stagger parallel samples
    wire [INPUT_WIDTH-1:0] dout_uint;       //offset binary data
    wire [INPUT_WIDTH-1:0] dout_uint_stag;  //offset binary and staggered data

    wire sync_out_preproc;
    xeng_preproc #(
        .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
        .P_FACTOR_BITS(P_FACTOR_BITS),
        .BITWIDTH(BITWIDTH),
        .BRAM_LATENCY(BRAM_LATENCY),
        .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
        .DSP_REGISTERS(DSP_REGISTERS)
    ) xeng_preproc_inst (
        .clk(clk),
        .ce(ce),
        .sync(sync_in),
        .din(din),
        .dout_uint(dout_uint),
        .dout_uint_stag(dout_uint_stag),
        .sync_out(sync_out_preproc)
    );
    
    // tap connection wires
    wire [N_TAPS*INPUT_WIDTH-1:0] a_del_out_int;
    wire [N_TAPS*INPUT_WIDTH-1:0] a_ndel_out_int;
    wire [N_TAPS*INPUT_WIDTH-1:0] a_end_out_int;
    wire [N_TAPS*ACC_WIDTH-1:0] acc_out_int;
    wire [N_TAPS-1:0] valid_out_int;
    wire [N_TAPS-1:0] rst_out_int;
    wire [N_TAPS-1:0] sync_out_int;
    
    
    //auto tap instantiation
    auto_tap # (
        .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
        .P_FACTOR_BITS(P_FACTOR_BITS),
        .BITWIDTH(BITWIDTH),
        .BRAM_LATENCY(BRAM_LATENCY),
        .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
        .DSP_REGISTERS(DSP_REGISTERS),
        .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
        .N_ANTS(N_ANTS)
    ) auto_tap_inst (
        .clk(clk),
        .ce(ce),
        .a_del(dout_uint_stag),
        .sync_in(sync_out_preproc),
        .a_ndel(dout_uint_stag),
        .acc_in({ACC_WIDTH{1'b0}}),
        .valid_in(1'b0),
        .a_loop(a_del_out_int[N_TAPS*INPUT_WIDTH-1:(N_TAPS-1)*INPUT_WIDTH]),
        .a_del_out(a_del_out_int[INPUT_WIDTH-1:0]),
        .acc_out(acc_out_int[ACC_WIDTH-1:0]),
        .valid_out(valid_out_int[0]),
        .rst_out(rst_out_int[0]),
        .sync_out(sync_out_int[0]),
        .a_ndel_out(a_ndel_out_int[INPUT_WIDTH-1:0]),
        .a_end_out(a_end_out_int[INPUT_WIDTH-1:0])
    );

    //baseline tap instantiation
    genvar t;
    generate
        for (t=1; t<N_TAPS; t=t+1) begin : baseline_tap_gen
            baseline_tap #(
                .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
                .P_FACTOR_BITS(P_FACTOR_BITS),
                .BITWIDTH(BITWIDTH),
                .BRAM_LATENCY(BRAM_LATENCY),
                .FIRST_DSP_REGISTERS(FIRST_DSP_REGISTERS),
                .DSP_REGISTERS(DSP_REGISTERS),
                .ACC_MUX_LATENCY(ACC_MUX_LATENCY),
                .N_ANTS(N_ANTS),
                .TAP_SEPARATION(t)
            ) bl_tap_inst (
                .clk(clk), 
                .ce(ce), 
                .rst(rst_out_int[t-1]), 
                .sync1(sync_out_int[t-1]), 
                .a_del(a_del_out_int[t*INPUT_WIDTH-1:(t-1)*INPUT_WIDTH]), 
                .a_ndel(a_ndel_out_int[t*INPUT_WIDTH-1:(t-1)*INPUT_WIDTH]), 
                .a_end(a_end_out_int[t*INPUT_WIDTH-1:(t-1)*INPUT_WIDTH]), 
                .acc_in(acc_out_int[t*ACC_WIDTH-1:(t-1)*ACC_WIDTH]), 
                .valid_in(valid_out_int[t-1]), 
                .acc_out(acc_out_int[(t+1)*ACC_WIDTH-1:t*ACC_WIDTH]), 
                .valid_out(valid_out_int[t]), 
                .sync_out(sync_out_int[t]), 
                .rst_out(rst_out_int[t]), 
                .a_del_out(a_del_out_int[(t+1)*INPUT_WIDTH-1:t*INPUT_WIDTH]), 
                .a_ndel_out(a_ndel_out_int[(t+1)*INPUT_WIDTH-1:t*INPUT_WIDTH]), 
                .a_end_out(a_end_out_int[(t+1)*INPUT_WIDTH-1:t*INPUT_WIDTH])
            );
        end //baseline_tap_gen
    endgenerate
    
    assign sync_out = sync_out_int[N_TAPS-1];
    assign mcnt_s_a_h2_sync_in = sync_out_int[N_TAPS-1];
    assign vld_out = valid_out_int[N_TAPS-1];
    assign window_vld_out = window_vld_del;

    //the corrections need to be scaled up by the number of NBITS-1 before being
    //applied
    wire [CORRECTION_ACC_WIDTH + (BITWIDTH-1) -1 :0] re_c_xx;
    wire [CORRECTION_ACC_WIDTH + (BITWIDTH-1) -1 :0] re_c_xy;
    wire [CORRECTION_ACC_WIDTH + (BITWIDTH-1) -1 :0] re_c_yx;
    wire [CORRECTION_ACC_WIDTH + (BITWIDTH-1) -1 :0] re_c_yy;
    wire [CORRECTION_ACC_WIDTH + (BITWIDTH-1) -1 :0] im_c_xx;
    wire [CORRECTION_ACC_WIDTH + (BITWIDTH-1) -1 :0] im_c_xy;
    wire [CORRECTION_ACC_WIDTH + (BITWIDTH-1) -1 :0] im_c_yx;
    wire [CORRECTION_ACC_WIDTH + (BITWIDTH-1) -1 :0] im_c_yy;
    assign re_c_xx[BITWIDTH-1-1:0] = {(BITWIDTH-1){1'b0}};
    assign re_c_xy[BITWIDTH-1-1:0] = {(BITWIDTH-1){1'b0}};
    assign re_c_yx[BITWIDTH-1-1:0] = {(BITWIDTH-1){1'b0}};
    assign re_c_yy[BITWIDTH-1-1:0] = {(BITWIDTH-1){1'b0}};
    assign im_c_xx[BITWIDTH-1-1:0] = {(BITWIDTH-1){1'b0}};
    assign im_c_xy[BITWIDTH-1-1:0] = {(BITWIDTH-1){1'b0}};
    assign im_c_yx[BITWIDTH-1-1:0] = {(BITWIDTH-1){1'b0}};
    assign im_c_yy[BITWIDTH-1-1:0] = {(BITWIDTH-1){1'b0}};

    component_tracker #(
        .BITWIDTH(BITWIDTH),
        .SERIAL_ACC_LEN_BITS(SERIAL_ACC_LEN_BITS),
        .P_FACTOR_BITS(P_FACTOR_BITS),
        .N_ANTS(N_ANTS),
        .VALID_DELAY(VALID_WIN_DELAY)
        ) comp_tracker_inst (
        .clk(clk),
        .din(din),
        .din_uint(dout_uint),
        .sync(sync_out_preproc),
        .acc_vld(valid_out_int[N_TAPS-1]),
        .re_correction_xx(re_c_xx[CORRECTION_ACC_WIDTH+BITWIDTH-1-1:BITWIDTH-1]),
        .re_correction_xy(re_c_xy[CORRECTION_ACC_WIDTH+BITWIDTH-1-1:BITWIDTH-1]),
        .re_correction_yx(re_c_yx[CORRECTION_ACC_WIDTH+BITWIDTH-1-1:BITWIDTH-1]),
        .re_correction_yy(re_c_yy[CORRECTION_ACC_WIDTH+BITWIDTH-1-1:BITWIDTH-1]),
        .im_correction_xx(im_c_xx[CORRECTION_ACC_WIDTH+BITWIDTH-1-1:BITWIDTH-1]),
        .im_correction_xy(im_c_xy[CORRECTION_ACC_WIDTH+BITWIDTH-1-1:BITWIDTH-1]),
        .im_correction_yx(im_c_yx[CORRECTION_ACC_WIDTH+BITWIDTH-1-1:BITWIDTH-1]),
        .im_correction_yy(im_c_yy[CORRECTION_ACC_WIDTH+BITWIDTH-1-1:BITWIDTH-1]),
        .last_triangle(last_triangle),
        .buf_sel_out(buf_sel_out)
        );
    

    //correction
    // Slice out the correlator accumulation values
    wire [ACC_WIDTH-1:0] acc_out_uint = acc_out_int[N_TAPS*ACC_WIDTH-1:(N_TAPS-1)*ACC_WIDTH];
    
    wire [ACC_WIDTH/8 -1 : 0] acc_out_xx_r = acc_out_uint[8*(ACC_WIDTH/8)-1:7*(ACC_WIDTH/8)];
    wire [ACC_WIDTH/8 -1 : 0] acc_out_xx_i = acc_out_uint[7*(ACC_WIDTH/8)-1:6*(ACC_WIDTH/8)];
    wire [ACC_WIDTH/8 -1 : 0] acc_out_yy_r = acc_out_uint[6*(ACC_WIDTH/8)-1:5*(ACC_WIDTH/8)];
    wire [ACC_WIDTH/8 -1 : 0] acc_out_yy_i = acc_out_uint[5*(ACC_WIDTH/8)-1:4*(ACC_WIDTH/8)];
    wire [ACC_WIDTH/8 -1 : 0] acc_out_xy_r = acc_out_uint[4*(ACC_WIDTH/8)-1:3*(ACC_WIDTH/8)];
    wire [ACC_WIDTH/8 -1 : 0] acc_out_xy_i = acc_out_uint[3*(ACC_WIDTH/8)-1:2*(ACC_WIDTH/8)];
    wire [ACC_WIDTH/8 -1 : 0] acc_out_yx_r = acc_out_uint[2*(ACC_WIDTH/8)-1:1*(ACC_WIDTH/8)];
    wire [ACC_WIDTH/8 -1 : 0] acc_out_yx_i = acc_out_uint[1*(ACC_WIDTH/8)-1:0*(ACC_WIDTH/8)];
    
    wire [ACC_WIDTH/8+2-1:0] dout_corr_xx_r;
    wire [ACC_WIDTH/8+2-1:0] dout_corr_xx_i;
    wire [ACC_WIDTH/8+2-1:0] dout_corr_xy_r;
    wire [ACC_WIDTH/8+2-1:0] dout_corr_xy_i;
    wire [ACC_WIDTH/8+2-1:0] dout_corr_yx_r;
    wire [ACC_WIDTH/8+2-1:0] dout_corr_yx_i;
    wire [ACC_WIDTH/8+2-1:0] dout_corr_yy_r;
    wire [ACC_WIDTH/8+2-1:0] dout_corr_yy_i;
    subtractor #(
        .A_WIDTH(ACC_WIDTH/8),
        .B_WIDTH(CORRECTION_ACC_WIDTH+BITWIDTH-1),
        .REGISTER_OUTPUT("FALSE")
    ) re_im_sub_inst [7:0] (
        .clk(clk),
        .a({acc_out_xx_r, acc_out_xx_i, acc_out_xy_r, acc_out_xy_i, acc_out_yx_r, acc_out_yx_i, acc_out_yy_r, acc_out_yy_i}),
        .b({re_c_xx, im_c_xx, re_c_xy, im_c_xy, re_c_yx, im_c_yx, re_c_yy, im_c_yy}),
        .c({dout_corr_xx_r,dout_corr_xx_i,dout_corr_xy_r,dout_corr_xy_i,dout_corr_yx_r,dout_corr_yx_i,dout_corr_yy_r,dout_corr_yy_i})
    );

    // The bitwidth out of the subtractor is greater than it needs to be.
    // Slice off the useful bits
    assign dout = {dout_corr_xx_r[ACC_WIDTH/8 - 1:0],
                   dout_corr_xx_i[ACC_WIDTH/8 - 1:0],
                   dout_corr_yy_r[ACC_WIDTH/8 - 1:0],
                   dout_corr_yy_i[ACC_WIDTH/8 - 1:0],
                   dout_corr_xy_r[ACC_WIDTH/8 - 1:0],
                   dout_corr_xy_i[ACC_WIDTH/8 - 1:0],
                   dout_corr_yx_r[ACC_WIDTH/8 - 1:0],
                   dout_corr_yx_i[ACC_WIDTH/8 - 1:0]};
    
    
    assign dout_uncorr = {acc_out_xx_r[ACC_WIDTH/8 - 1:0],
                          acc_out_xx_i[ACC_WIDTH/8 - 1:0],
                          acc_out_yy_r[ACC_WIDTH/8 - 1:0],
                          acc_out_yy_i[ACC_WIDTH/8 - 1:0],
                          acc_out_xy_r[ACC_WIDTH/8 - 1:0],
                          acc_out_xy_i[ACC_WIDTH/8 - 1:0],
                          acc_out_yx_r[ACC_WIDTH/8 - 1:0],
                          acc_out_yx_i[ACC_WIDTH/8 - 1:0]};
    
endmodule

`endif
