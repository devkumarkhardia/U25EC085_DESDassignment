`timescale 1ns / 1ps
module tb_or_gate;
reg a,b,c,d;
wire f;
or_gate O1(
.a(a),
.b(b),
.c(c),
.d(d),
.f(f)
);
integer i,j,k,l;
initial begin
$monitor("a=%b b =%b c=%b d=%b f= %b",a,b,c,d,f);
    for(i=0;i<2;i=i+1) begin
        for(j=0;j<2;j=j+1) begin
            for(k=0;k<2;k=k+1) begin
                for(l=0;l<2;l=l+1) begin
                    a=i;
                    b=j;
                    c=k;
                    d=l;
                    #10;
                end
            end
        end
    end
    $finish;
end
endmodule
