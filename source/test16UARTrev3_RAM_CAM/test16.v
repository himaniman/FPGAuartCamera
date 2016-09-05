module test16(
input clk,
input PinRX,
output PinTX
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
	
	always @(posedge clk) begin
		if (ActionDataReciveFromUART) begin
			if (DataBusFromUART==8'hff && State==0) begin
				DataBusToUART<=AddressPoint[7:0];
				ActionDataTransmitToUART<=1;
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