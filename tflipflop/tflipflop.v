//tflipflop.v- positive edge trigger flipflop
module tflipflop(

input clk, rst, T, 
output reg Q);

always @(posedge clk or posedge rst) begin
if (rst)
Q <= 0;   // reset output
else if (T)
Q <= ~Q;  // Toggle output
else 
Q <= Q;  // no chnage 
end 
endmodule 