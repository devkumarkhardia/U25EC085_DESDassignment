`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2026 20:06:03
// Design Name: 
// Module Name: MUX_4x1
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



module MUX_4x1(
    input [3:0] I,
    input x,
    input y,
    output f
    );

    wire w1, w2;

    MUX_2x1 M1(
        .I(I[1:0]),
        .x(x),
        .f(w1)
    );

    MUX_2x1 M2(
        .I(I[3:2]),
        .x(x),
        .f(w2)
    );

    MUX_2x1 M3(
        .I({w2, w1}),
        .x(y),
        .f(f)
    );

endmodule
