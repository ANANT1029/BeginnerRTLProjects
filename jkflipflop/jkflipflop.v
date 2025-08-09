//file : jk flipflop.v- positive edge triggered jk flipflop
module jkflipflop(
input clk, rst, J, K, 
output reg Q
);

always @(posedge clk or posedge rst) begin
if(rst)
Q <= 0; //rst
else begin
case({J,K})
  2'b00: Q<= Q; //No chnage
  2'b01: Q<= 0; //RESET
2'b10: Q<= 1; //set
2'b11: Q<= ~Q;// Toggle
endcase
end
end
endmodule