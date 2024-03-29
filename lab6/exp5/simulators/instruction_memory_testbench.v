`timescale 1ns / 1ps
module instruction_memory_testbench();
reg [5:0] addr;
wire [31:0] data_out;
InstMem mem ( addr, data_out);


initial
begin
$display("test 1 ");
addr = 0;
#1
if ( data_out ==17)
$display ("passed");
else
$display ("failed");
#100
$display("test 2 ");
addr = 1;
#1
if ( data_out ==9)
$display ("passed");
else
$display ("failed");
#100
$display("test 3 ");
addr = 2;
#1
if ( data_out ==25)
$display ("passed");
else
$display ("failed");
#100
$display("test 4 ");
addr = 3;
#1
if ( data_out ==55)
$display ("passed");
else
$display ("failed");
#100
$display("test 5 ");
addr = 4;
#1
if ( data_out ==40)
$display ("passed");
else
$display ("failed");

end
endmodule
