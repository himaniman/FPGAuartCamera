module test11(
input clk,
input PinRX,
output PinTX,

input PCLK,
input HREF,
input VSYNC,
input [7:0] ImageBus,
output XCLK,

output reg GND,
output reg VCC,

output reg debug,
output [3:0] debug2
);

	wire [7:0] DataBusWithUART;
	wire [7:0] DataBusWithRAM;
	wire ActionReciveByteWithUART;
	
	reg ActionTransmitByteUART;
	reg ActionWritenToBuffer;
	reg [3:0] State;
	reg [14:0] AddressForRAM;
	reg [15:0] ReciveDoubleWord;
	reg [7:0] RedPixcel;
	reg [7:0] GreenPixcel;
	reg [7:0] BluePixcel;
	reg [1:0] QuadroPicxel;
	reg [19:0] PauseTransitionUART;
	reg [7:0] Buffer;
	
	initial debug=0;
	initial GND=0;
	initial VCC=1;
	initial State=0;
	initial AddressForRAM=0;
	initial ActionWritenToBuffer=0;
	
	assign debug2=State;
	
	always @(posedge PCLK) begin
		if (State==0 && ActionReciveByteWithUART && DataBusWithUART==8'hff) begin
			ActionTransmitByteUART<=1;
			AddressForRAM<=0;
			QuadroPicxel<=0;
			debug<=~debug;
			State<=1;
		end
		if (ActionTransmitByteUART) begin
			ActionTransmitByteUART<=0;
		end
		if (State==1 && VSYNC==1) begin
			State<=2;
		end
		if (State==2 && VSYNC==0) begin
			State<=3;
		end
		if (State==3 && HREF==1 && VSYNC==0) begin
			ReciveDoubleWord<=(ReciveDoubleWord<<8) & ImageBus;
			State<=4;
			RedPixcel<=ImageBus;
			if (AddressForRAM<19200) begin
				AddressForRAM<=AddressForRAM+1;
				ActionWritenToBuffer<=1;
			end
//			if (QuadroPicxel==0) begin
//				RedPixcel<=ImageBus;//{3'b000, ReciveDoubleWord[15:11]};
//				ActionWritenToBuffer<=0;
//				QuadroPicxel<=QuadroPicxel+1;
//			end
//			if (QuadroPicxel<3 && QuadroPicxel>0) begin
//				//RedPixcel<=RedPixcel+{3'b000, ReciveDoubleWord[15:11]};
//				QuadroPicxel<=QuadroPicxel+1;
//			end
//			if (QuadroPicxel==3) begin
//				//RedPixcel<=RedPixcel+{3'b000, ReciveDoubleWord[15:11]};
//				ActionWritenToBuffer<=1;
//				AddressForRAM<=AddressForRAM+1;
//				QuadroPicxel<=0;
//			end
		end
		if (State==4 && HREF==1 && VSYNC==0) begin
			ReciveDoubleWord<=(ReciveDoubleWord<<8) & ImageBus;
			State<=3;
		end
		if ((State==3 || State==4) && VSYNC==1) begin
			State<=0;
			ActionWritenToBuffer<=0;
		end
		
		if (State==0 && ActionReciveByteWithUART && DataBusWithUART==8'h55) begin
			//ActionTransmitByteUART<=1;
			AddressForRAM<=0;
			//PauseTransitionUART<=0;
			debug<=1;
			State<=7;
		end
		if (State==7 && ActionReciveByteWithUART && DataBusWithUART==8'h33) begin
			AddressForRAM<=AddressForRAM+1;
			Buffer<=DataBusWithRAM;
			ActionTransmitByteUART<=1;
		end
		if (State==7 && ActionReciveByteWithUART && DataBusWithUART==8'h88) begin
			Buffer<=AddressForRAM[7:0];
			ActionTransmitByteUART<=1;
		end
		if (State==7 && ActionReciveByteWithUART && DataBusWithUART==8'h77) begin
			AddressForRAM<=0;
			State<=0;
			debug<=0;
		end
		
//		if (State==5) begin
////			ActionTransmitByteUART<=0;
//			if (PauseTransitionUART!=0) begin
//				PauseTransitionUART<=PauseTransitionUART+1;
//			end
//			if (PauseTransitionUART==0) begin
//				PauseTransitionUART<=PauseTransitionUART+1;
//				State<=6;
//			end
//		end
//		if (State==6) begin
//			ActionTransmitByteUART<=1;
//			AddressForRAM<=AddressForRAM+1;
//			State<=5;
//			if (AddressForRAM>100) begin
//				State<=0;
//				debug<=0;
//			end
//		end
	end
	
	myUARTup(
	.PinRX(PinRX),
	.clk(clk),
	.flagIN_DataRedy(ActionTransmitByteUART),
	.dataOUT(Buffer),
	.PinTX(PinTX),
	.dataIN(DataBusWithUART),
	.flagOUT_DataResive(ActionReciveByteWithUART)
	);
	
	MyPll24Mhz(
	.refclk(clk),
	.outclk_0(XCLK)
	);
	
	RAM_VideoBuffer(
	.address(AddressForRAM),
	.clock(clk),
	.data(RedPixcel),
	.wren(ActionWritenToBuffer),
	.q(DataBusWithRAM)
	);
endmodule 