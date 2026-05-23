`timescale 1ns / 1ps
module xor_with_nandgate(input a, input b, output wire y);
wire n1,n2,n3,n4;
nand(n1,a,a);
nand(n3,n1,b);
nand(n2,b,b);
nand(n4,a,n2);
nand(y,n3,n4);
endmodule
