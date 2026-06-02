`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dev Kumar Khardia
// 
// Create Date: 01.06.2026 23:06:56
// Design Name: 
// Module Name: decoder2x4_dataflow
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


module decoder2x4_dataflow(
input x,
input y,
output y0,
output y1,
output y2,
output y3
);
wire w1,w2;
assign w1 = ~x;
assign w2 = ~y;
assign y0 = w1&w2;
assign y1 = w1&y;
assign y2 = x&w2;
assign y3 = x&y;
endmodule
