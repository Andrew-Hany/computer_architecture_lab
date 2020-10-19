`timescale 1ns / 1ps
module DataMem_tb();


reg clk;
 reg MemRead;
  reg MemWrite;
reg [5:0] addr;
 reg [31:0] data_in;
  wire [31:0] data_out;

DataMem  datamem( clk,  MemRead,  MemWrite,
 addr,   data_in,   data_out);

initial 
begin 
clk = 0;
forever #50 clk = ~clk; 
end

initial
begin
$display("test 1 ");
MemWrite=1;
MemRead=0;
data_in=0;
addr=0;
#100
MemWrite=1;
data_in=10;
addr=1;
#100
MemWrite=1;
MemRead=0;
data_in=88;
addr=2;
#100
MemWrite=1;
MemRead=0;
data_in=987;
addr=3;
#100
MemWrite=1;
MemRead=0;
data_in=327;
addr=4;
#100
MemWrite=0;
MemRead=1;
addr=0;
#100
MemWrite=0;
MemRead=1;
addr=1;
#100
MemWrite=0;
MemRead=1;
addr=2;
#100
MemWrite=0;
MemRead=1;
addr=3;
#100
MemWrite=0;
MemRead=1;
addr=4;


end
endmodule
