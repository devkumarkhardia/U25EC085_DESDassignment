`timescale 1ns / 1ps
module halfadder1(
input a,
input b,
output sum,
output cout
);
xor(sum,a,b);
and(cout,a,b);
endmodule

module fulladder1(
input a,
input b,
input cin,
output sum,
output cout
);
wire n1,n2,n3;
halfadder1 h1(
.a(a),
.b(b),
.sum(n1),
.cout(n2)
);

halfadder1 h2(
.a(n1),
.b(cin),
.sum(sum),
.cout(n3)
);
or(cout,n2,n3);
endmodule

module Fourbit_RCA(
input [3:0] a,
input [3:0] b,
input cin,
output [3:0] sum,
output cout
);
wire c1,c2,c3;
fulladder1 f1(
.a(a[0]),
.b(b[0]),
.cin(cin),
.sum(sum[0]),
.cout(c1)
);    

fulladder1 f2(
.a(a[1]),
.b(b[1]),
.cin(c1),
.sum(sum[1]),
.cout(c2)
);    

fulladder1 f3(
.a(a[2]),
.b(b[2]),
.cin(c2),
.sum(sum[2]),
.cout(c3)
);    

fulladder1 f4(
.a(a[3]),
.b(b[3]),
.cin(c3),
.sum(sum[3]),
.cout(cout)
);    
endmodule
