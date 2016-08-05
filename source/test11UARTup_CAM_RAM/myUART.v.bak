module myUART(
input PinRX,
input clk,
input flagIN_DataRedy,
input flagIN_DataGetsEnd,
input [7:0] dataOUT,
output reg PinTX,
output reg [7:0] dataIN,
output reg flagOUT_DataResive,
output reg flagOUT_InWork
);

	reg [3:0] dataCounter;
	reg [4:0] clok1024000Counter;
	//wire flagIN_DataGetsEndNOT;
	
	initial flagOUT_DataResive=0;
	initial flagOUT_InWork=0;
	initial dataCounter=0;
	initial clok1024000Counter=0;
	
	//assign flagIN_DataGetsEndNOT=!flagIN_DataGetsEnd;
	
	always @(posedge clk) begin
		if (clok1024000Counter>=0 && clok1024000Counter<24) begin
			if (flagOUT_InWork==0 && PinRX==0) begin
				clok1024000Counter<=25/2;
				flagOUT_InWork<=1;
				flagOUT_DataResive<=0;
			end
			else begin
				clok1024000Counter<=clok1024000Counter+1;
				if (flagIN_DataGetsEnd==1) begin
					flagOUT_DataResive<=0;
				end
			end
		end
		else if (clok1024000Counter==24 && flagIN_DataGetsEnd==0) begin
			clok1024000Counter<=0;
			if (flagOUT_InWork==1 && dataCounter==0) begin
				dataCounter<=9;
			end
			if (flagOUT_InWork==1 && dataCounter>1) begin
				dataIN<={PinRX, dataIN[7:1]};
				dataCounter<=dataCounter-1;
			end
			if (flagOUT_InWork==1 && dataCounter==1) begin
				flagOUT_DataResive<=1;
				flagOUT_InWork<=0;
				dataCounter<=0;
			end
		end
		else if (clok1024000Counter==24 && flagIN_DataGetsEnd==1) begin
			clok1024000Counter<=0;
			flagOUT_DataResive<=0;
		end
	end

endmodule 