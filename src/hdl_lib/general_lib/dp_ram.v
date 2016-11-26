// A parameterized, inferable, true dual-port, dual-clock block RAM in Verilog.

module bram_tdp #(
    parameter DATA = 72,
    parameter ADDR = 10,
    parameter LATENCY = 1
) (
    // Port A
    input   a_clk,
    input   a_wr,
    input   [ADDR-1:0]  a_addr,
    input   [DATA-1:0]  a_din,
    output  [DATA-1:0]  a_dout,
    
    // Port B
    input   b_clk,
    input   b_wr,
    input   [ADDR-1:0]  b_addr,
    input   [DATA-1:0]  b_din,
    output  [DATA-1:0]  b_dout
);

reg [DATA-1:0] a_dout_reg = 0;
reg [DATA-1:0] b_dout_reg = 0;

// Shared memory
reg [DATA-1:0] mem [(2**ADDR)-1:0];

//Initialise ram contents
integer k;
initial begin
    for(k=0; k<(2**ADDR); k=k+1) begin
        mem[k][DATA-1:0] = {DATA{1'b0}};
    end
end

// Port A
// read before write
always @(posedge a_clk) begin
    a_dout_reg      <= mem[a_addr];
    if(a_wr) begin
        mem[a_addr] <= a_din;
    end
end

// Port B
// read before write
always @(posedge b_clk) begin
    b_dout_reg      <= mem[b_addr];
    if(b_wr) begin
        mem[b_addr] <= b_din;
    end
end

//Additional latency
delay #(
    .WIDTH(DATA),
    .DELAY(LATENCY-1)
) a_bram_delay_inst(
    .clk(a_clk),
    .din(a_dout_reg),
    .dout(a_dout)
);

delay #(
    .WIDTH(DATA),
    .DELAY(LATENCY-1)
) b_bram_delay_inst(
    .clk(b_clk),
    .din(b_dout_reg),
    .dout(b_dout)
);

endmodule

