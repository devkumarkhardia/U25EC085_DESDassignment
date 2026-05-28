`timescale 1ns / 1ps
module or_gate(
input a,
input b,
input c,
input d,
output f
    );
    assign f = a|b|c|d;
endmodule
