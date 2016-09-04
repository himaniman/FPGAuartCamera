module myUARTSetUp(
input PinRX,
input clk,
input flagIN_DataRedy,
input [7:0] dataOUT,
output reg PinTX,
output reg [7:0] dataIN,
output reg flagOUT_DataResive
);

	reg [3:0] dataCounter;
	reg [5:0] clok2048MbodCounterRX;
	
	reg [3:0] dataCounterTX;
	reg [5:0] clok2048MbodCounterTX;
	reg [7:0] shiftRegTX;
	
	initial PinTX=1;
	
	always @(posedge clk) begin
		if (dataCounter==0 && PinRX==0) begin
				clok2048MbodCounterRX<=35;
				dataCounter<=12;
		end
		if (flagOUT_DataResive==1) begin
			flagOUT_DataResive<=0;
		end
		if (clok2048MbodCounterRX < 49 && dataCounter!=0) begin
//				if (dataCounter==3 && clok2048MbodCounterRX<20) begin
//					clok2048MbodCounterRX<=clok2048MbodCounterRX+1;
//				end
//				if (dataCounter==3 && clok2048MbodCounterRX==20) begin
//					dataCounter<=dataCounter-1;
//					flagOUT_DataResive<=1;
//					clok2048MbodCounterRX<=0;
//				end
//				if (dataCounter==2) begin
//					clok2048MbodCounterRX<=clok2048MbodCounterRX+1;
//				end
				if (dataCounter>1) begin
					clok2048MbodCounterRX<=clok2048MbodCounterRX+1;
				end
//				if (dataCounter==3) begin
//					flagOUT_DataResive<=0;
//					dataCounter<=0;
//				end
				if (dataCounter==12) begin
					if (PinRX==1) begin
						dataCounter<=0;
					end
				end
		end
		if (clok2048MbodCounterRX==49  && dataCounter!=0) begin
			clok2048MbodCounterRX<=0;
			if (dataCounter==12) begin
				dataCounter<=dataCounter-1;
			end
			if (dataCounter>3 && dataCounter<12) begin
				dataIN<={PinRX, dataIN[7:1]};
				dataCounter<=dataCounter-1;
			end
			if (dataCounter==3) begin
				flagOUT_DataResive<=1;
				dataCounter<=0;
			end
//			if (dataCounter==2) begin
//				flagOUT_DataResive<=1;
//				dataCounter<=0;
//			end
		end
		
		if (dataCounterTX==0 && flagIN_DataRedy==1) begin
				dataCounterTX<=10;
				shiftRegTX<=dataOUT;
				clok2048MbodCounterTX<=49;
		end		
		if (clok2048MbodCounterTX < 49 && flagIN_DataRedy==0) begin
			clok2048MbodCounterTX<=clok2048MbodCounterTX+1;
		end
		if (clok2048MbodCounterTX == 49 && flagIN_DataRedy==0) begin
			clok2048MbodCounterTX<=0;
			if (dataCounterTX>1 && dataCounterTX<10) begin
				dataCounterTX<=dataCounterTX-1;
				PinTX<=shiftRegTX[0];
				shiftRegTX<={1'b0, shiftRegTX[7:1]};
			end
			if (dataCounterTX==10) begin
				dataCounterTX<=dataCounterTX-1;
				PinTX<=0;
			end
			if (dataCounterTX==1) begin
				dataCounterTX<=dataCounterTX-1;
				PinTX<=1;
			end
//			if (dataCounterTX==0 && flagIN_DataRedy==0) begin
//				dataCounterTX<=dataCounterTX-1;
//				PinTX<=1;
//			end
//			if (dataCounterTX==1 && flagIN_DataRedy==1) begin
//				dataCounterTX<=10;
//				PinTX<=0;
//				shiftRegTX<=dataOUT;
//			end
//			if (dataCounterTX==0 && flagIN_DataRedy==1) begin
//				dataCounterTX<=11;
//				shiftRegTX<=dataOUT;
//			end
		end
	end

endmodule 