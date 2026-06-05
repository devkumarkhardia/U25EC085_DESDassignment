`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 23:23:11
// Design Name: 
// Module Name: DEMUX_1XN
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


module DEMUX_1XN #(
parameter N = 8
    )(
    input f,
    input [$clog2(N)-1:0] S,
    output reg [N-1:0] y
    );
    always @(*) begin
    y = 0;
    y[S]=f;
    end
endmodule
