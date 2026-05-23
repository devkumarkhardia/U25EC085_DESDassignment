`timescale 1ns / 1ps
module Twobit_comparator(
    input [1:0] a,
    input [1:0] b,
    output reg x,
    output reg y,
    output reg z
);
always @(*)
begin
x = 0;
y = 0;    
z = 0;
if(a == b)
x = 1;
else if(a > b)
y = 1;
else
z = 1;
end
endmodule
