// A parameterized, inferable (hopefully) simple dual-port block RAM in Verilog.
////`include "/home/jack/physics_svn/gmrt_beamformer/trunk/projects/xeng_opt/hdl/iverilog_xeng/general_lib/delay.v"

module sdp_ram #(
    parameter D_WIDTH = 72,
    parameter A_WIDTH = 10,
    parameter LATENCY = 2
) (
    input                 clk,

    input                 we,
    input  [A_WIDTH-1:0]  w_addr,
    input  [D_WIDTH-1:0]  din,
    input  [A_WIDTH-1:0]  r_addr,
    output [D_WIDTH-1:0]  dout
);

// memory
reg [D_WIDTH-1:0] mem [(2**A_WIDTH)-1:0];

//Don't bother initialising -- this seems to take ages when the ram is deep
////Initialise ram contents
//integer k;
//initial begin
//    for(k=0; k<(2**A_WIDTH); k=k+1) begin
//        mem[k][D_WIDTH-1:0] = {D_WIDTH{1'b0}};
//    end
//end


// write
always @(posedge clk) begin
    if (we) begin
        mem[w_addr] <= din;
    end
end

//read
reg [D_WIDTH-1:0] dout_int = 0;
// Inherent latency of 1
// read before write
always @(posedge clk) begin
    dout_int      <= mem[r_addr];
end

//Additional latency
delay #(
    .WIDTH(D_WIDTH),
    .DELAY(LATENCY-1)
) bram_delay_inst (
    .clk(clk),
    .din(dout_int),
    .dout(dout)
);

endmodule

