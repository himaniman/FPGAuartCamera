module test13(
input clk,
input PinRX,
output PinTX,

output reg debugLED
);

	wire ActionDataReciveFromUART;
	reg ActionDataTransmitToUART;
	reg ActionWriteToRAM;
	reg [7:0] DataBusToUART;
	reg [7:0] DataBusToRAM;
	//reg [3:0] PauseCounter;
	reg [3:0] State;
	reg [14:0] AddressBusToRAM;
	reg [14:0] CounterStopWriteRAM;
	reg [7:0] CounterPause;
	
	wire [7:0] DataBusFromUART;
	wire [7:0] DataBusFromRAM;
	
	//wire Clk24Mhz;
	
	always @(posedge clk) begin
//		if (ActionDataReciveFromUART && DataBusFromUART==8'hff && State==0) begin
//			State<=1;
//			CounterStopWriteRAM<=102;
//		end
//		if (ActionDataReciveFromUART && DataBusFromUART==8'hbb && State==0) begin
//			AddressBusToRAM<=0;
//		end
//		if (ActionDataReciveFromUART && DataBusFromUART==8'hdd && State==0) begin
//			AddressBusToRAM<=AddressBusToRAM+1;
//		end
//		if (ActionDataReciveFromUART && DataBusFromUART==8'haa && State==0 && ~ActionDataTransmitToUART[0]) begin
//			ActionDataTransmitToUART<=3'b111;
//			DataBusToUART<=AddressBusToRAM;
//		end
//		if (ActionDataReciveFromUART && DataBusFromUART==8'hcc && State==0 && ~ActionDataTransmitToUART[0]) begin
//			ActionDataTransmitToUART<=3'b111;
//			DataBusToUART<=DataBusFromRAM;
//		end
//		if (ActionDataReciveFromUART && DataBusFromUART==8'h55 && State==0 && ~ActionDataTransmitToUART[0]) begin
//			ActionDataTransmitToUART<=3'b111;
//			DataBusToUART<=8'h44;
//		end
//		if (ActionDataTransmitToUART[0]) begin
//			ActionDataTransmitToUART<=ActionDataTransmitToUART>>1;
//		end
//		if (ActionDataReciveFromUART && State==1) begin
//			DataBusToRAM<=DataBusFromUART;
//			ActionWriteToRAM<=1;
//			CounterStopWriteRAM<=CounterStopWriteRAM-1;
//			State<=2;
//		end
//		if (State==2) begin
//			ActionWriteToRAM<=0;
//			if (CounterStopWriteRAM==1) begin
//				State<=0;
//				CounterStopWriteRAM<=0;
//			end
//			if (CounterStopWriteRAM>1) begin
//				AddressBusToRAM<=AddressBusToRAM+1;
//				State<=1;
//			end
//		end
		if (ActionDataReciveFromUART) begin
			//CounterPause<=255;
			ActionDataTransmitToUART<=1;
			DataBusToUART<=DataBusFromUART;
		end
//		if (CounterPause>0) begin
//			CounterPause<=CounterPause-1;
//		end
//		if (CounterPause==1) begin
//			ActionDataTransmitToUART<=1;
//			DataBusToUART<=DataBusFromUART;
//		end
		if (ActionDataTransmitToUART) begin
			ActionDataTransmitToUART<=0;
		end
	end
	
	myUARTSetUp(
		.PinRX(PinRX),
		.clk(clk),
		.flagIN_DataRedy(ActionDataTransmitToUART),
		.dataOUT(DataBusToUART),								//8bit data transmitted with UART
		.PinTX(PinTX),
		.dataIN(DataBusFromUART),								//8bit data resived from UART
		.flagOUT_DataResive(ActionDataReciveFromUART)
	);
	
//	PLL24Mhz(
//	.refclk(clk),
//	.outclk_0(Clk24Mhz)
//	);
	
	BufferFrameRAM(
	.address(AddressBusToRAM),
	.clock(clk),
	.data(DataBusToRAM),
	.wren(ActionWriteToRAM),
	.q(DataBusFromRAM)
	);
endmodule 