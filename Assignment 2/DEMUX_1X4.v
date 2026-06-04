`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 13:51:20
// Design Name: 
// Module Name: DEMUX_1X4
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


module DEMUX_1X4(
    input f,
    input [1:0] s,
    output [3:0] y
);

    wire w1, w2;

    DEMUX_1X2 D1(
        .f(f),
        .s(s[1]),
        .y({w2, w1})
    );

    DEMUX_1X2 D2(
        .f(w1),
        .s(s[0]),
        .y({y[1], y[0]})
    );

    DEMUX_1X2 D3(
        .f(w2),
        .s(s[0]),
        .y({y[3], y[2]})
    );

endmodule
