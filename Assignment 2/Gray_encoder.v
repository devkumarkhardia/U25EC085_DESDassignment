`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 06:07:25
// Design Name: 
// Module Name: Gray_encoder
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


module Gray_encoder(
input [3:0] B,
output [3:0] G
    );
    assign G[3] = B[3];
    assign G[2] = B[2]^B[3];
    assign G[1] = B[1]^B[2];
    assign G[0] = B[0]^B[1];
endmodule
