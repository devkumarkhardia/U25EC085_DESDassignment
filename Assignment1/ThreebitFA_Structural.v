`timescale 1ns / 1ps
module halfadder(input a, input b, output s ,output cout);
xor(s,a,b);
and(cout,a,b);
endmodule
module fulladder(input c, input d, input cin, output sum,output cout1);
wire n1,n2,n3;
halfadder h1(.a(c),.b(d),.s(n1),.cout(n2));
halfadder h2(.a(n1),.b(cin),.s(sum),.cout(n3));
or(cout1,n2,n3);
endmodule
module threebitadder(
    input [2:0] a,
    input [2:0] b,
    input cin,
    output [2:0] sum,
    output cout
);
wire c1, c2;
fulladder f1(
    .c(a[0]),
    .d(b[0]),
    .cin(cin),
    .sum(sum[0]),
    .cout1(c1)
);
fulladder f2(
    .c(a[1]),
    .d(b[1]),
    .cin(c1),
    .sum(sum[1]),
    .cout1(c2)
);
fulladder f3(
    .c(a[2]),
    .d(b[2]),
    .cin(c2),
    .sum(sum[2]),
    .cout1(cout)
);
endmodule
