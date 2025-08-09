// updowncounter.v- test bench for 4 bit updown counter 
`timescale 1ns/ 1ps 
module updowncountertb;
reg clk, rst, updown;
wire [3:0] count;
//instantiate  the counter 
updowncounter uut (
.clk(clk), .rst(rst), .updown(updown), .count(count)
);

//clock generation toggle in every 5ns(period = 10ns)
always #5 clk = ~clk;

initial begin 
$dumpfile("updowncounter.vcd");

$dumpvars(0, updowncountertb);

clk = 0; rst = 1; updown = 1;

#10 rst = 0;
// count up for 5 clocks
updown = 1;
#50;
// now count down for 5 clocks
updown = 0;
#50;
// countup again 
updown = 1;
#30;
$finish;
end 
endmodule 

