`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dev Kumar Khardia
// 
// Create Date: 01.06.2026 22:38:52
// Design Name: 
// Module Name: decoder2x4_structural
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


module decoder2x4_structural(
input x,
input y,
output y0,
output y1,
output y2,
output y3
    );
    wire w1,w2;
 not(w1,x);
 not(w2,y);
 and(y0,w1,w2);
 and(y1,w1,y);
 and(y2,x,w2);
 and(y3,x,y);
endmodule
