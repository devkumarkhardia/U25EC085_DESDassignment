`timescale 1ns / 1ps

//====================================================
// 2x1 MUX
//====================================================

module MUX_2X1(
    input I0,
    input I1,
    input S,
    output Y
);

assign Y = (~S & I0) | (S & I1);

endmodule


//====================================================
// Basic Logic Gates Using Only 2x1 MUX
//====================================================

module Basiclogic_MUX(
    input A,
    input B,

    output NOT_OUT,
    output AND_OUT,
    output OR_OUT,
    output NAND_OUT,
    output NOR_OUT,
    output XOR_OUT,
    output XNOR_OUT
);

    // NOT Gate
    MUX_2X1 M1(
        .I0(1'b1),
        .I1(1'b0),
        .S(A),
        .Y(NOT_OUT)
    );

    // AND Gate
    MUX_2X1 M2(
        .I0(1'b0),
        .I1(B),
        .S(A),
        .Y(AND_OUT)
    );

    // OR Gate
    MUX_2X1 M3(
        .I0(B),
        .I1(1'b1),
        .S(A),
        .Y(OR_OUT)
    );

    // NAND Gate
    MUX_2X1 M4(
        .I0(1'b1),
        .I1(~B),
        .S(A),
        .Y(NAND_OUT)
    );

    // NOR Gate
    MUX_2X1 M5(
        .I0(~B),
        .I1(1'b0),
        .S(A),
        .Y(NOR_OUT)
    );

    // XOR Gate
    MUX_2X1 M6(
        .I0(B),
        .I1(~B),
        .S(A),
        .Y(XOR_OUT)
    );

    // XNOR Gate
    MUX_2X1 M7(
        .I0(~B),
        .I1(B),
        .S(A),
        .Y(XNOR_OUT)
    );

endmodule
