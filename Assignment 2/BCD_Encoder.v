`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 08:48:41
// Design Name: 
// Module Name: BCD_encoder
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


module BCD_Encoder(
    input [9:0] D,
    output [3:0] B
);

assign B[3] = D[8] | D[9];

assign B[2] = D[4] | D[5] | D[6] | D[7];

assign B[1] = D[2] | D[3] | D[6] | D[7];

assign B[0] = D[1] | D[3] | D[5] | D[7] | D[9];

endmodule
