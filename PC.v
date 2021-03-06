module pc(newpc,clk,rst,w,oldpc);
parameter delay = 100;
input [63:0]newpc;
input clk,w,rst;
output reg[63:0] oldpc;
always@(posedge clk )

	begin 
		#delay;
		if (w==1&& rst==0)
			oldpc=newpc;
		if (rst==1)
			oldpc=64'd0;
	end
//$time(delay);
endmodule