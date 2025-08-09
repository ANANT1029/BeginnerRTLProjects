//file: tflipfloptb.v
`timescale 1ns/1ps
module tflipfloptb;
reg clk, rst, T;
 
wire Q;
//instantiate the t flipflop 
tflipflop uut (
.clk(clk), 
.rst(rst), 
.T(T), 
.Q(Q)
);
//CLOCK GENERtion
always #5 clk = ~clk; //10ns clock period 

initial begin 
$dumpfile("tflipflop.vcd");
$dumpvars(0, tflipfloptb);
// initialiuze
clk = 0; rst = 1; T = 0;
#10 rst = 0; // release reset 
T = 1;

#20 T = 0; 
#20 T = 1;
#40 T = 1;
#20 T = 0;
#30 

$finish;
end
endmodule
