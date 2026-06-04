`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 13:19:18
// Design Name: 
// Module Name: DEMUX_1X2
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


module DEMUX_1X2(
input f,
input s,
output [1:0]y
    );
    wire w1;
    not(w1,s);
    and(y[0],f,w1);
    and(y[1],f,s);
endmodule
