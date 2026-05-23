timescale 1ns / 1ps
module xor_gate(input a,input b,output reg y);
always @(*)
begin
if(a==b)
y =0;
else
y =1;
end
endmodule
