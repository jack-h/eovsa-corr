`ifndef dsp_acc
`define dsp_acc

`timescale 1ns / 1ps

module dsp_acc(
    clk,
    ce,
    din,
    end_of_acc,
    dout,
    dout_vld
    );

    parameter IN_WIDTH = 16;
    parameter OUT_WIDTH = 32;
    parameter IS_SIGNED = "TRUE";

    input clk;
    input ce;
    input [IN_WIDTH-1:0] din;
    input end_of_acc;
    output [OUT_WIDTH-1:0] dout;
    output dout_vld;

    wire [47:0] dsp_in;
    wire [47:0] dsp_out;
    
    generate
        if (IS_SIGNED == "TRUE") begin
            assign dsp_in = {{(48-IN_WIDTH){din[IN_WIDTH-1]}}, din};
        end else begin
            assign dsp_in = {{(48-IN_WIDTH){1'b0}}, din};
        end
    endgenerate

    assign dout = dsp_out[OUT_WIDTH-1:0];

    // the end_of_acc signal comes on the last value in an accumulation.
    // i.e., the next value should be added to a new accumulation.
    // delay the end_of_acc signal by one here and use it to drive opmode
    // for a new accumulation.
    // The dsp accumulator has a latency of 2 (one register on inputs,
    // one on outputs, so also generate a end_of_acc signal delayed by 2
    // clocks to serve as the valid out flag

    reg end_of_accR;
    reg end_of_accRR;
    always @(posedge(clk)) begin
        if (ce) begin
            end_of_accR <= end_of_acc;
            end_of_accRR <= end_of_accR;
        end
    end

    wire [6:0] opmode;
    assign opmode = {1'b0, ~end_of_accR, 3'b0, 2'b11};
    assign dout_vld = end_of_accRR;

   
    // Instantiate the dsp

    DSP48E #(
        .SIM_MODE("SAFE"),  // Simulation: "SAFE" vs. "FAST", see "Synthesis and Simulation Design Guide" for details
        .ACASCREG(1),       // Number of pipeline registers between A/ACIN input and ACOUT output, 0, 1, or 2
        .ALUMODEREG(1),     // Number of pipeline registers on ALUMODE input, 0 or 1
        .AREG(1),           // Number of pipeline registers on the A input, 0, 1 or 2
        .AUTORESET_PATTERN_DETECT("FALSE"), // Auto-reset upon pattern detect, "TRUE" or "FALSE" 
        .AUTORESET_PATTERN_DETECT_OPTINV("MATCH"), // Reset if "MATCH" or "NOMATCH" 
        .A_INPUT("DIRECT"), // Selects A input used, "DIRECT" (A port) or "CASCADE" (ACIN port)
        .BCASCREG(1),       // Number of pipeline registers between B/BCIN input and BCOUT output, 0, 1, or 2
        .BREG(1),           // Number of pipeline registers on the B input, 0, 1 or 2
        .B_INPUT("DIRECT"), // Selects B input used, "DIRECT" (B port) or "CASCADE" (BCIN port)
        .CARRYINREG(1),     // Number of pipeline registers for the CARRYIN input, 0 or 1
        .CARRYINSELREG(1),  // Number of pipeline registers for the CARRYINSEL input, 0 or 1
        .CREG(1),           // Number of pipeline registers on the C input, 0 or 1
        .MASK(48'h3fffffffffff), // 48-bit Mask value for pattern detect
        .MREG(1),           // Number of multiplier pipeline registers, 0 or 1
        .MULTCARRYINREG(1), // Number of pipeline registers for multiplier carry in bit, 0 or 1
        .OPMODEREG(1),      // Number of pipeline registers on OPMODE input, 0 or 1
        .PATTERN(48'h000000000000), // 48-bit Pattern match for pattern detect
        .PREG(1),           // Number of pipeline registers on the P output, 0 or 1
        .SEL_MASK("MASK"),  // Select mask value between the "MASK" value or the value on the "C" port
        .SEL_PATTERN("PATTERN"), // Select pattern value between the "PATTERN" value or the value on the "C" port
        .SEL_ROUNDING_MASK("SEL_MASK"), // "SEL_MASK", "MODE1", "MODE2" 
        .USE_MULT("NONE"), // Select multiplier usage, "MULT" (MREG => 0), "MULT_S" (MREG => 1), "NONE" (no multiplier)
        .USE_PATTERN_DETECT("NO_PATDET"), // Enable pattern detect, "PATDET", "NO_PATDET" 
        .USE_SIMD("ONE48")  // SIMD selection, "ONE48", "TWO24", "FOUR12" 
    ) DSP48E_inst (
        .ACOUT(),  // 30-bit A port cascade output 
        .BCOUT(),  // 18-bit B port cascade output
        .CARRYCASCOUT(), // 1-bit cascade carry output
        .CARRYOUT(), // 4-bit carry output
        .MULTSIGNOUT(), // 1-bit multiplier sign cascade output
        .OVERFLOW(), // 1-bit overflow in add/acc output
        .P(dsp_out),               // 48-bit output
        .PATTERNBDETECT(), // 1-bit active high pattern bar detect output
        .PATTERNDETECT(),   //  1-bit active high pattern detect output
        .PCOUT(),  // 48-bit cascade output
        .UNDERFLOW(), // 1-bit active high underflow in add/acc output
        .A(dsp_in[47:18]),          // 30-bit A data input
        .ACIN(30'b0),    // 30-bit A cascade data input
        .ALUMODE(4'b0), // 4-bit ALU control input
        .B(dsp_in[17:0]),          // 18-bit B data input
        .BCIN(18'b0),    // 18-bit B cascade input
        .C(48'b0),          // 48-bit C data input
        .CARRYCASCIN(1'b0), // 1-bit cascade carry input
        .CARRYIN(1'b0),         // 1-bit carry input signal
        .CARRYINSEL(3'b0),   // 3-bit carry select input
        .CEA1(ce), // 1-bit active high clock enable input for 1st stage A registers
        .CEA2(ce), // 1-bit active high clock enable input for 2nd stage A registers
        .CEALUMODE(ce), // 1-bit active high clock enable input for ALUMODE registers
        .CEB1(ce), // 1-bit active high clock enable input for 1st stage B registers
        .CEB2(ce), // 1-bit active high clock enable input for 2nd stage B registers
        .CEC(ce),   // 1-bit active high clock enable input for C registers
        .CECARRYIN(ce), // 1-bit active high clock enable input for CARRYIN register
        .CECTRL(ce), // 1-bit active high clock enable input for OPMODE and carry registers
        .CEM(ce),   // 1-bit active high clock enable input for multiplier registers
        .CEMULTCARRYIN(ce), // 1-bit active high clock enable for multiplier carry in register
        .CEP(ce),   // 1-bit active high clock enable input for P registers
        .CLK(clk),   // Clock input
        .MULTSIGNIN(ce), // 1-bit multiplier sign input
        .OPMODE(opmode), // 7-bit operation mode input
        .PCIN(48'b0),     // 48-bit P cascade input 
        .RSTA(1'b0),     // 1-bit reset input for A pipeline registers
        .RSTALLCARRYIN(1'b0), // 1-bit reset input for carry pipeline registers
        .RSTALUMODE(1'b0), // 1-bit reset input for ALUMODE pipeline registers
        .RSTB(1'b0), // 1-bit reset input for B pipeline registers
        .RSTC(1'b0),  // 1-bit reset input for C pipeline registers
        .RSTCTRL(1'b0), // 1-bit reset input for OPMODE pipeline registers
        .RSTM(1'b0), // 1-bit reset input for multiplier registers
        .RSTP(1'b0)  // 1-bit reset input for P pipeline registers
    ); 

endmodule

`endif
