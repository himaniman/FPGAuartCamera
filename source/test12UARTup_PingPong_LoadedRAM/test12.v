module test12(
input clk,
input PinRX,
output PinTX,

output reg debugLED
);

	wire ActionDataReciveFromUART;
	reg ActionDataTransmitToUART;
	reg [3:0] PauseCounter;
	reg [3:0] State;
	
	wire [7:0] DataBusForPingPong;
	

	always @(posedge clk) begin
		if (ActionDataReciveFromUART) begin
			ActionDataTransmitToUART<=1;
			//State<=1;
			//debugLED<=~debugLED;
		end
		if (ActionDataTransmitToUART) begin
			ActionDataTransmitToUART<=0;
		end
//		if (State==1) begin
//			if (PauseCounter<2) begin
//				PauseCounter<=PauseCounter+1;
//			end
//			if (PauseCounter>=2) begin
//				PauseCounter<=0;
//				ActionDataTransmitToUART<=0;
//				State<=0;
//			end
//		end
	end
	
	myUARTup(
		.PinRX(PinRX),
		.clk(clk),
		.flagIN_DataRedy(ActionDataTransmitToUART),
		.dataOUT(DataBusForPingPong),					//8bit data transmitted with UART
		.PinTX(PinTX),
		.dataIN(DataBusForPingPong),					//8bit data resived from UART
		.flagOUT_DataResive(ActionDataReciveFromUART)
	);
endmodule 