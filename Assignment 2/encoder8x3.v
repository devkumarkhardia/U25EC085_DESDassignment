`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 08:12:10
// Design Name: 
// Module Name: encoder8x3
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


module encoder8x3(
input [7:0]y,
output a,
output b,
output c
    );
    assign a = y[7]|y[6]|y[5]|y[4];
    assign b = y[7]|y[6]|y[3]|y[2];
    assign c = y[7]|y[5]|y[3]|y[1];
endmodule
