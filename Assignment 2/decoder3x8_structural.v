`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dev Kumar Khardia
// 
// Create Date: 29.05.2026 22:53:12
// Design Name: 
// Module Name: decoder3x8
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


module decoder3x8(
input a,
input b,
input c,
output [7:0] y
    );

 wire w1,w2,w3;

 not(w1,a);
 not(w2,b);
 not(w3,c);
 and(y[0],w1,w2,w3);
 and(y[1],w1,w2,c);
 and(y[2],w1,b,w3);
 and(y[3],w1,b,c);
 and(y[4],a,w2,w3);
 and(y[5],a,w2,c);
 and(y[6],a,b,w3);
 and(y[7],a,b,c);
endmodule
