module test12(
input clk,
input PinRX,
output PinTX,

output reg debugLED
);

	wire ActionDataReciveFromUART;
	reg [2:0] ActionDataTransmitToUART;
	//reg [3:0] PauseCounter;
	//reg [3:0] State;
	
	wire [7:0] DataBusForPingPong;
	
	wire Clk24Mhz;
	
	always @(posedge clk) begin
		if (ActionDataReciveFromUART && ~ActionDataTransmitToUART[0]) begin
			ActionDataTransmitToUART<=3'b111;
		end
		if (ActionDataTransmitToUART[0]) begin
			ActionDataTransmitToUART<=ActionDataTransmitToUART>>1;
		end
	end
	
	myUARTup(
		.PinRX(PinRX),
		.clk(clk),
		.flagIN_DataRedy(ActionDataTransmitToUART[0]),
		.dataOUT(DataBusForPingPong),					//8bit data transmitted with UART
		.PinTX(PinTX),
		.dataIN(DataBusForPingPong),					//8bit data resived from UART
		.flagOUT_DataResive(ActionDataReciveFromUART)
	);
	
	PLL24Mhz(
	.refclk(clk),
	.outclk_0(Clk24Mhz)
	);
endmodule 