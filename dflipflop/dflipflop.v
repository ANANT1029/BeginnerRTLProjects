//file: dflipflop.v
// description :positive-edge triggered d flipflop with async reset 

module dflipflop(
input clk, rst, D,   //slk signal asynchronous reset data input 
output reg Q       //output
);
  
always @(posedge clk or posedge rst) begin
if (rst)
Q <= 1'b0; // reset output to q
else
Q <= D; // update q with d at rising clock edge 
end 
endmodule 
 