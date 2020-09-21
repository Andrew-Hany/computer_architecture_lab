// file: testbench_tb.v
// author: @andrewhany
// Testbench testbench_tb

`timescale 1ns/1ns

module testbench_tb;
 reg [3:0] x;
 reg [3:0] y;
wire  [4:0] res;
CLA  cla (  x , y , res );

initial
begin
x[3:0]=4'b0010;
y[3:0]=4'b0010;
#100
x[3:0]=4'b0011;
y[3:0]=4'b0010;
#100
x[3:0]=4'b0011;
y[3:0]=4'b0110;
end
endmodule