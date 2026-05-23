`timescale 1ns / 1ps
module tb_xor_with_nandgate;
reg a;
reg b;
wire y;
xor_with_nandgate uut(.a(a),.b(b),.y(y));
initial begin
    a = 0; b = 0;
    #10;
    a = 0; b = 1;
    #10;
    a = 1; b = 0;
    #10;
    a = 1; b = 1;
    #10;
    $finish;
end
endmodule
