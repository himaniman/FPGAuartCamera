module myUARTup(
input PinRX,
input clk,
input flagIN_DataRedy,
input [7:0] dataOUT,
output reg PinTX,
output reg [7:0] dataIN,
output reg flagOUT_DataResive
);

	reg [3:0] dataCounter;
	reg [4:0] clok2048MbodCounterRX;
	
	reg [3:0] dataCounterTX;
	reg [4:0] clok2048MbodCounterTX;
	reg [7:0] shiftRegTX;
	
	initial PinTX=1;
	
	always @(posedge clk) begin
		if (clok2048MbodCounterRX < 24) begin
			if (dataCounter==0 && PinRX==0) begin
				clok2048MbodCounterRX<=18;
				dataCounter=11;
			end
			else begin
				clok2048MbodCounterRX<=clok2048MbodCounterRX+1;
				if (dataCounter==1) begin
					dataCounter<=dataCounter-1;
				end
				if (dataCounter==0) begin
					flagOUT_DataResive<=0;
				end
			end
		end
		else if (clok2048MbodCounterRX==24) begin
			clok2048MbodCounterRX<=0;
			if (dataCounter==11) begin
				dataCounter<=dataCounter-1;
			end
			if (dataCounter>2 && dataCounter<11) begin
				dataIN<={PinRX, dataIN[7:1]};
				dataCounter<=dataCounter-1;
			end
			if (dataCounter==2) begin
				flagOUT_DataResive<=1;
				dataCounter<=dataCounter-1;
			end
		end
		
		if (clok2048MbodCounterTX < 24) begin
			clok2048MbodCounterTX<=clok2048MbodCounterTX+1;
			if (dataCounterTX==0 && flagIN_DataRedy==1) begin
				dataCounterTX<=11;
				shiftRegTX<=dataOUT;
			end
		end
		if (clok2048MbodCounterTX == 24) begin
			clok2048MbodCounterTX<=0;
			if (dataCounterTX>2 && dataCounterTX<11) begin
				dataCounterTX<=dataCounterTX-1;
				PinTX<=shiftRegTX[0];
				shiftRegTX<={1'b0, shiftRegTX[7:1]};
			end
			if (dataCounterTX==11) begin
				dataCounterTX<=dataCounterTX-1;
				PinTX<=0;
			end
			if (dataCounterTX==2) begin
				dataCounterTX<=dataCounterTX-1;
				PinTX<=1;
			end
			if (dataCounterTX==1 && flagIN_DataRedy==0) begin
				dataCounterTX<=dataCounterTX-1;
				PinTX<=1;
			end
			if (dataCounterTX==1 && flagIN_DataRedy==1) begin
				dataCounterTX<=10;
				PinTX<=0;
				shiftRegTX<=dataOUT;
			end
		end
	end

endmodule 