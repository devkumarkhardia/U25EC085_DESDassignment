`timescale 1ns / 1ps
module tb_not_gate;
reg a;
wire f;
not_gate n1(
.a(a),
.f(f)
);
initial begin
a = 0;
#10;
a=1;
#10;
$finish;
end
endmodule
