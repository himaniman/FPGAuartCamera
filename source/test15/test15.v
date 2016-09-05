module test15(
input clk,
output reg debug
);

reg [7:0] counter;

always @(posedge clk) begin

	counter<=counter+1;
	
	if (counter==4 || counter==150 || counter==30 || counter==200) debug<=1;
	else debug<=0;

end

endmodule 