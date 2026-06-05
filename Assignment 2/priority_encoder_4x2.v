`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 23:47:05
// Design Name: 
// Module Name: priority_encoder_4x2
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


module priority_encoder_4x2(
input [3:0]y,
output a,
output b
    );
    wire w1;
    assign w1 = ~y[2];
    assign a = y[3]| y[2];
    assign b = y[3]| (w1&y[1]);
    
endmodule
