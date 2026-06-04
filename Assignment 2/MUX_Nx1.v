`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 21:06:26
// Design Name: 
// Module Name: MUX_Nx1
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


module MUX_Nx1 #(
parameter N =8
    )(
    input [N-1:0]I,
    input [$clog2(N)-1:0] S,
    output reg f
    );
    always @(*) begin
     f = I[S];
    end
endmodule
