module myUARTrev3(
input PinRX,
input clk,
input flagIN_DataRedy,
input [7:0] dataOUT,
output reg PinTX,
output reg [7:0] dataIN,
output reg flagOUT_DataResive
);

	reg [7:0] clok2048MbodCounterRX;
	reg [7:0] clok2048MbodCounterTX;
	reg [7:0] shiftRegTX;
	
	initial PinTX=1;
	
	always @(posedge clk) begin
		// -----------------------------------------------------Блок приема байта
		if (PinRX==0 && clok2048MbodCounterRX==0) begin			//Пришел старт бит
			clok2048MbodCounterRX<=clok2048MbodCounterRX+1;
		end
		if (clok2048MbodCounterRX>0) begin							//Работа счетчика, прием байта
			clok2048MbodCounterRX<=clok2048MbodCounterRX+1;		//Байт это 244 цикла этого счетчика
		end
		if (clok2048MbodCounterRX==12 && PinRX==1) begin		//Проверка на ошибочный старт-бит
			clok2048MbodCounterRX<=0;
		end
		if (	clok2048MbodCounterRX==38 ||							//Времена центров принимаемых битов
				clok2048MbodCounterRX==62 ||							//в эти времена происходит чтение из RX
				clok2048MbodCounterRX==86 ||
				clok2048MbodCounterRX==111 ||
				clok2048MbodCounterRX==135 ||
				clok2048MbodCounterRX==160 ||
				clok2048MbodCounterRX==184 ||
				clok2048MbodCounterRX==208		) begin
			dataIN<={PinRX, dataIN[7:1]};
		end
		if (clok2048MbodCounterRX==233 && PinRX==0) begin		//Проверка на ошибочный стоп-бит
			clok2048MbodCounterRX<=0;
		end
		if (clok2048MbodCounterRX==241) begin						//Почти конец стоп-бита,
			flagOUT_DataResive<=1;										//Генерация сообщения об принятом байте
		end
		if (clok2048MbodCounterRX==242) begin						//Конец генерации сообщения
			flagOUT_DataResive<=0;
		end
		if (clok2048MbodCounterRX==244) begin						//Конец принимаемого байта, стоп машина
			clok2048MbodCounterRX<=0;
		end
		
		// -----------------------------------------------------Блок отправки байта
		if (flagIN_DataRedy==1 && clok2048MbodCounterTX==0) begin
			clok2048MbodCounterTX<=clok2048MbodCounterTX+1;
			shiftRegTX<=dataOUT;
		end
		if (clok2048MbodCounterTX>0) begin
			clok2048MbodCounterTX<=clok2048MbodCounterTX+1;
		end
		if (clok2048MbodCounterTX>0 && clok2048MbodCounterTX<25) begin
			PinTX<=0;
		end
		if (	clok2048MbodCounterTX==25 ||
				clok2048MbodCounterTX==50 ||
				clok2048MbodCounterTX==74 ||
				clok2048MbodCounterTX==99 ||
				clok2048MbodCounterTX==123 ||
				clok2048MbodCounterTX==147 ||
				clok2048MbodCounterTX==172 ||
				clok2048MbodCounterTX==196		) begin
			PinTX<=shiftRegTX[0];
			shiftRegTX<={1'b0, shiftRegTX[7:1]};
		end
		if (clok2048MbodCounterTX==221) begin
			PinTX<=1;
			clok2048MbodCounterTX<=0;
		end
		
	end

endmodule 