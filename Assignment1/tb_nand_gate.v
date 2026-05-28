`timescale 1ns / 1ps
module tb_nand_gate;
reg a,b;
wire f;
nand_gate n1(
.a(a),
.b(b),
.f(f)
);
integer i,j;
initial begin
$monitor("a=%b b=%b f=%b",a,b,f);
    for(i=0;i<2;i=i+1)begin
        for(j=0;j<2;j=j+1)begin
            a=i;
            b=j;
            #10;
        end
    end
$finish;
end
endmodule
