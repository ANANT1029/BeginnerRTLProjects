// updowncounter.v
module updowncounter(
input clk, rst, updown,
output reg [3:0] count  
);

always @(posedge clk or posedge rst) begin 
if (rst)
count <= 4'b0000;
else if (updown)
count <= count +1;
else 
count <= count -1;
end 
endmodule 

