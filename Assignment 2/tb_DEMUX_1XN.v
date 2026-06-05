`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 23:31:12
// Design Name: 
// Module Name: tb_DEMUX_1XN
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_DEMUX_1XN;
parameter N = 8;
reg f;
reg [$clog2(N)-1:0] S;
wire [N-1:0] y;

DEMUX_1XN #(N) D1(
    .f(f),
    .S(S),
    .y(y)
);
integer i;

initial begin

    f = 1;

    $monitor("S=%b y=%b", S, y);

    for(i = 0; i < N; i = i + 1) begin
        S = i;
        #10;
    end

    $finish;

end
endmodule
