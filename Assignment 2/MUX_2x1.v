`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 08:39:46
// Design Name: 
// Module Name: MUX_2x1
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


module MUX_2x1(
input [1:0]I,
input x,
output f
    );
wire w1,w2,w3;
assign w1 = ~x;
and(w2,I[0],w1);
and(w3,I[1],x);
or(f,w2,w3);
endmodule
