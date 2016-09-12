module test16(
input clk,
input PinRX,
output PinTX,

input [7:0] DataBusFromCamera,
input PCLK,
input HREF,
input VSYNC,
output XCLK,
output reg PWDN,
output reg RESET,

output reg debug
);
	reg [3:0] State;
	
	reg ActionDataTransmitToUART;
	reg [7:0] DataBusToUART;
	wire [7:0] DataBusFromUART;
	
	reg [7:0] DataBusToRAM;
	wire [7:0] DataBusFromRAM;
	reg [14:0] AddressPoint;
	reg ActionWriteToRAM;
	
	reg [7:0] CounterPauseForTransmitUART;
	reg [14:0] CounterNededByte;
	
	initial PWDN=0;
	initial RESET=1;
	
	reg clk25Mgz;
	reg [9:0] CounterByteFromCameraPixcel;
	reg [9:0] CounterByteFromCameraRows;
	reg [7:0] FirstByteFromCamera;
	//reg [7:0] SecondByteFromCamera;
	
	assign XCLK=clk25Mgz;
	
	always @(posedge clk) begin
		clk25Mgz<=~clk25Mgz;
		
		if (clk25Mgz==0) begin
			if (State==3 && VSYNC==1) begin
				State<=4;//Жду нового кадра
				AddressPoint<=0;
			end
			if (State==4 && VSYNC==0) begin
				CounterByteFromCameraPixcel<=0;
				CounterByteFromCameraRows<=0;
				State<=5;//Жду новой строки
			end
			if ((State==5 || State==7) && HREF==1) begin
				FirstByteFromCamera<=DataBusFromCamera;
				State<=6;
			end
			if (State==6 && HREF==1) begin
				if (CounterByteFromCameraPixcel[1:0]==2'b00) begin
					AddressPoint<=AddressPoint+1;
					ActionWriteToRAM<=1;
					//FirstByteFromCamera & 8'b11111000
					//(FirstByteFromCamera & 8'b00000111) & (DataBusFromCamera & 8'b11100000)
					//DataBusFromCamera & 8'b00011111
					DataBusToRAM<=DataBusFromCamera;//((DataBusFromCamera & 8'b00011111)+((FirstByteFromCamera & 8'b11111000)>>3)+(((FirstByteFromCamera & 8'b00000111)<<3) & ((DataBusFromCamera & 8'b11100000)>>5)))*2;//FirstByteFromCamera & 8'b00011111;
				end
				CounterByteFromCameraPixcel<=CounterByteFromCameraPixcel+1;
				State<=5;
			end
			//Че то не приходят опопвещения о строчках
			if ((State==5 || State==6 || State==9) && HREF==0) begin
				CounterByteFromCameraPixcel<=0;
				//DataBusToUART<=CounterByteFromCameraPixcel[9:2];
				//ActionDataTransmitToUART<=1;
				debug<=1;
				if (CounterByteFromCameraRows[1:0]==2'b00) begin
					State<=7;
					CounterByteFromCameraRows<=CounterByteFromCameraRows+1;
				end
				else begin
					State<=8;
					CounterByteFromCameraRows<=CounterByteFromCameraRows+1;
				end
			end
			if (State==8 && HREF==1) begin
				State<=9;
			end
			if (State>4 && State<10 && VSYNC==1) begin
				State<=0;
			end
		end
		
		if (ActionDataReciveFromUART) begin
			if (DataBusFromUART==8'hff && State==0) begin
				DataBusToUART<=AddressPoint[7:0];
				ActionDataTransmitToUART<=1;
				CounterPauseForTransmitUART<=255;
				State<=15;
				debug<=0;
			end
			if (DataBusFromUART==8'hbb && State==0) begin
				AddressPoint<=AddressPoint+1;
			end
			if (DataBusFromUART==8'h00 && State==0) begin
				AddressPoint<=0;
			end
			if (DataBusFromUART==8'hdd && State==0) begin
				State<=1;
			end
			if (DataBusFromUART==8'h88 && State==0) begin
				AddressPoint<=0;
				State<=3;
			end
			if (DataBusFromUART==8'haa && State==0) begin
				DataBusToUART<=DataBusFromRAM;
				ActionDataTransmitToUART<=1;
			end
			if (DataBusFromUART==8'hcc && State==0) begin
				CounterPauseForTransmitUART<=255;
				CounterNededByte<=99;
				State<=2;
			end
			if (DataBusFromUART==8'h33 && State==0) begin
				AddressPoint<=0;
				CounterPauseForTransmitUART<=255;
				CounterNededByte<=19199;
				State<=2;
			end
			
			if (State==1) begin
				ActionWriteToRAM<=1;
				DataBusToRAM<=DataBusFromUART;
				State<=0;
			end
			
			if (DataBusFromUART==8'h55) begin
				State<=0;
			end
		end
		
		if (State==2) begin
			if (CounterPauseForTransmitUART) begin
				CounterPauseForTransmitUART<=CounterPauseForTransmitUART-1;
			end
			else begin
				CounterPauseForTransmitUART<=255;
				AddressPoint<=AddressPoint+1;
				CounterNededByte<=CounterNededByte-1;
				DataBusToUART<=DataBusFromRAM;
				ActionDataTransmitToUART<=1;
				if (CounterNededByte==0) begin
					State<=0;
				end
			end
		end
		
		if (State==15) begin
			if (CounterPauseForTransmitUART) begin
				CounterPauseForTransmitUART<=CounterPauseForTransmitUART-1;
			end
			else begin
				State<=0;
				DataBusToUART<={2'b00,AddressPoint[14:7]};
				ActionDataTransmitToUART<=1;
			end
		end
		
		if (ActionDataTransmitToUART) begin
			ActionDataTransmitToUART<=0;
		end
		if (ActionWriteToRAM) begin
			ActionWriteToRAM<=0;
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
	
	MyVideoBuffer (
		.address(AddressPoint),
		.clock(clk),
		.data(DataBusToRAM),
		.wren(ActionWriteToRAM),
		.q(DataBusFromRAM)
	);
endmodule 