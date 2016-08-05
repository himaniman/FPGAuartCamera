module test11(
input clk,
input PinRX,
output PinTX
);

	reg [1:0] counterDataTransmitOff;
	reg ActionTransmitByte;
	
	wire ActionInputByte;
	wire [7:0] DataBus;
	
	always @(posedge clk) begin
		if (ActionInputByte) begin
			ActionTransmitByte<=1;
			counterDataTransmitOff<=counterDataTransmitOff+1;
		end
		if (counterDataTransmitOff>0 && counterDataTransmitOff<3) begin
			counterDataTransmitOff<=counterDataTransmitOff+1;
		end
		if (counterDataTransmitOff==3) begin
			counterDataTransmitOff<=0;
			ActionTransmitByte<=0;
		end
	end
	
	myUARTup(
	.PinRX(PinRX),
	.clk(clk),
	.flagIN_DataRedy(ActionTransmitByte),
	.dataOUT(DataBus),
	.PinTX(PinTX),
	.dataIN(DataBus),
	.flagOUT_DataResive(ActionInputByte)
	);
endmodule 