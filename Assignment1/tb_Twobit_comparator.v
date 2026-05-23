`timescale 1ns / 1ps
module tb_Twobit_comparator;
reg [1:0] a;
reg [1:0] b;
wire x;
wire y;
wire z;
integer i,j;
Twobit_comparator uut(
    .a(a),
    .b(b),
    .x(x),
    .y(y),
    .z(z)
);
initial begin
    for(i=0; i<4; i=i+1)
    begin
        for(j=0; j<4; j=j+1)
        begin
            a = i;
            b = j;
            #10;
        end
    end
    $finish;
end
endmodule
