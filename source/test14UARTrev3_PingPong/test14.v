module test14(
input clk,
input PinRX,
output PinTX
);

	reg ActionDataTransmitToUART;
	reg [7:0] DataBusToUART;
	
	wire [7:0] DataBusFromUART;
	
	always @(posedge clk) begin
		if (ActionDataReciveFromUART) begin
			ActionDataTransmitToUART<=1;
			DataBusToUART<=DataBusFromUART;
		end
		if (ActionDataTransmitToUART) begin
			ActionDataTransmitToUART<=0;
		end
	end
	
	myUARTrev3(
		.PinRX(PinRX),
		.clk(clk),
		.flagIN_DataRedy(ActionDataTransmitToUART),
		.dataOUT(DataBusToUART),								//8bit data transmitted with UART
		.PinTX(PinTX),
		.dataIN(DataBusFromUART),								//8bit data resived from UART
		.flagOUT_DataResive(ActionDataReciveFromUART)
	);
endmodule 