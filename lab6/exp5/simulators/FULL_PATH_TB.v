`timescale 1ns / 1ps



module FULL_PATH_TB( );

reg clk;
 reg rst;

Full_dataPath  fb(  clk,  rst );
initial
begin
clk = 0;
forever #50 clk=~clk;
end
initial
begin
rst=1;
#100;
rst=0;
end

endmodule
