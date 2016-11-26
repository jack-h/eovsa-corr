`ifndef dsp48e_uint_cmult
`define dsp48e_uint_cmult

`timescale 1ns / 1ps

// This module calculates the cross products of two complex numbers.
// I.e. if a0,b0 are complex numbers, the output will be (a0* x b0)
//      with the result requiring extraction from the 48 bits of output.
//      Complex numbers of BITWIDTH = N have 2N bits, with N MSBs = real, and N LSBs = imag

module dsp48e_uint_cmult(
    clk,
    a0,
    b0,
    pcin,
    pout,
    pcout
    );
    
// Bitwidth parameters
parameter BITWIDTH = 4;         //width of one part (real/imag) of the complex inputs
parameter DSP_A_WIDTH = 30;     //width of A input to DSP slice
parameter DSP_B_WIDTH = 18;     //width of B input to DSP slice
parameter PADDING_WIDTH = DSP_B_WIDTH - 1 - (2*BITWIDTH); //number of zero padding bits between real and imag parts in DSP inputs
parameter DSP_INPUT_REGISTERS=2;  //Number of input registers of DSP slice to use (registers 'A' and 'B')
//THE ALUMODE/OPMODE values should probably be inputs....
parameter ALUMODE = 4'b0;       //DSP slice ALUMODE control value
parameter OPMODE = 7'b0;        //DSP slice OPMODE control value

input clk;
input [2*BITWIDTH-1:0] a0; // a0 is a complex number
input [2*BITWIDTH-1:0] b0; // b0 is a complex number to be multiplied by a0
input [47:0] pcin;         // pcin is the carry in from neighbouring DSP
output [47:0] pout;        // pout is the result bit vector 
output [47:0] pcout;       // pcout is the result vector but can only be used as the input to another DSP slice

//Slice up the real and imaginary parts of each complex number
wire[BITWIDTH-1:0] a0_real = a0[2*BITWIDTH-1:BITWIDTH];
wire[BITWIDTH-1:0] b0_real = b0[2*BITWIDTH-1:BITWIDTH];

wire[BITWIDTH-1:0] a0_imag = a0[BITWIDTH-1:0];
wire[BITWIDTH-1:0] b0_imag = b0[BITWIDTH-1:0];

//Construct the DSP slice inputs
wire [DSP_A_WIDTH-1:0] dsp_in_A = {{(DSP_A_WIDTH-(2*BITWIDTH)-PADDING_WIDTH){1'b0}}, a0_real, {PADDING_WIDTH{1'b0}}, a0_imag};
wire [DSP_B_WIDTH-1:0] dsp_in_B = {{(DSP_B_WIDTH-(2*BITWIDTH)-PADDING_WIDTH){1'b0}}, b0_imag, {PADDING_WIDTH{1'b0}}, b0_real};



//Instantiate the DSP48E
// DSP48E: DSP Function Block
//         Virtex-5
// Xilinx HDL Language Template, version 11.4

DSP48E #(
   .SIM_MODE("SAFE"),  // Simulation: "SAFE" vs. "FAST", see "Synthesis and Simulation Design Guide" for details
   .ACASCREG(1),       // Number of pipeline registers between A/ACIN input and ACOUT output, 0, 1, or 2
   .ALUMODEREG(1),     // Number of pipeline registers on ALUMODE input, 0 or 1
   .AREG(DSP_INPUT_REGISTERS),           // Number of pipeline registers on the A input, 0, 1 or 2
   .AUTORESET_PATTERN_DETECT("FALSE"), // Auto-reset upon pattern detect, "TRUE" or "FALSE" 
   .AUTORESET_PATTERN_DETECT_OPTINV("MATCH"), // Reset if "MATCH" or "NOMATCH" 
   .A_INPUT("DIRECT"), // Selects A input used, "DIRECT" (A port) or "CASCADE" (ACIN port)
   .BCASCREG(1),       // Number of pipeline registers between B/BCIN input and BCOUT output, 0, 1, or 2
   .BREG(DSP_INPUT_REGISTERS),           // Number of pipeline registers on the B input, 0, 1 or 2
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
   .USE_MULT("MULT_S"), // Select multiplier usage, "MULT" (MREG => 0), "MULT_S" (MREG => 1), "NONE" (no multiplier)
   .USE_PATTERN_DETECT("NO_PATDET"), // Enable pattern detect, "PATDET", "NO_PATDET" 
   .USE_SIMD("ONE48")  // SIMD selection, "ONE48", "TWO24", "FOUR12" 
) DSP48E_inst (
   .ACOUT(),  // 30-bit A port cascade output 
   .BCOUT(),  // 18-bit B port cascade output
   .CARRYCASCOUT(), // 1-bit cascade carry output
   .CARRYOUT(), // 4-bit carry output
   .MULTSIGNOUT(), // 1-bit multiplier sign cascade output
   .OVERFLOW(), // 1-bit overflow in add/acc output
   .P(pout),               // 48-bit output
   .PATTERNBDETECT(), // 1-bit active high pattern bar detect output
   .PATTERNDETECT(),   //  1-bit active high pattern detect output
   .PCOUT(pcout),  // 48-bit cascade output
   .UNDERFLOW(), // 1-bit active high underflow in add/acc output
   .A(dsp_in_A),          // 30-bit A data input
   .ACIN(30'b0),    // 30-bit A cascade data input
   .ALUMODE(ALUMODE), // 4-bit ALU control input
   .B(dsp_in_B),          // 18-bit B data input
   .BCIN(18'b0),    // 18-bit B cascade input
   .C(48'b0),          // 48-bit C data input
   .CARRYCASCIN(1'b0), // 1-bit cascade carry input
   .CARRYIN(1'b0),         // 1-bit carry input signal
   .CARRYINSEL(3'b0),   // 3-bit carry select input
   .CEA1(1'b1), // 1-bit active high clock enable input for 1st stage A registers
   .CEA2(1'b1), // 1-bit active high clock enable input for 2nd stage A registers
   .CEALUMODE(1'b1), // 1-bit active high clock enable input for ALUMODE registers
   .CEB1(1'b1), // 1-bit active high clock enable input for 1st stage B registers
   .CEB2(1'b1), // 1-bit active high clock enable input for 2nd stage B registers
   .CEC(1'b1),   // 1-bit active high clock enable input for C registers
   .CECARRYIN(1'b1), // 1-bit active high clock enable input for CARRYIN register
   .CECTRL(1'b1), // 1-bit active high clock enable input for OPMODE and carry registers
   .CEM(1'b1),   // 1-bit active high clock enable input for multiplier registers
   .CEMULTCARRYIN(1'b1), // 1-bit active high clock enable for multiplier carry in register
   .CEP(1'b1),   // 1-bit active high clock enable input for P registers
   .CLK(clk),   // Clock input
   .MULTSIGNIN(1'b0), // 1-bit multiplier sign input
   .OPMODE(OPMODE), // 7-bit operation mode input
   .PCIN(pcin),     // 48-bit P cascade input 
   .RSTA(1'b0),     // 1-bit reset input for A pipeline registers
   .RSTALLCARRYIN(1'b0), // 1-bit reset input for carry pipeline registers
   .RSTALUMODE(1'b0), // 1-bit reset input for ALUMODE pipeline registers
   .RSTB(1'b0), // 1-bit reset input for B pipeline registers
   .RSTC(1'b0),  // 1-bit reset input for C pipeline registers
   .RSTCTRL(1'b0), // 1-bit reset input for OPMODE pipeline registers
   .RSTM(1'b0), // 1-bit reset input for multiplier registers
   .RSTP(1'b0)  // 1-bit reset input for P pipeline registers
);

   // End of DSP48E_inst instantiation

endmodule

`endif
