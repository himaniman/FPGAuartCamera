# FPGAuartCamera
Trying connect 8bit Camera to FPGA with translate data on UART

Карта подключения камеры и UART модуля
FPGA - модуль:
Vcc3.3 	- UART 		- Vcc	Белый
GND 	- UART 		- GND	Черный
K19 	- UART		- TX	Феолетовый
P18 	- UART		- RX	Серый
Vcc3.3	- OV7670 	- VDD	Красный
GND	- OV7670	- GND	Черный
K16	- OV7670	- XCLK	Коричневый    	((вход) главный тактовый импульс для работы OV7670)
J17	- OV7670	- PCLK	Серый		((выход) тактовый импульс выдачи байта с параллельного порта  D7 — D0)
G12	- OV7670	- HREF	Феолетовый  	((выход) импульс строчной синхронизации)    640Tp=51.2us     3*Txline=188us
G13	- OV7670	- VSYNC	Белый		((выход) импульс кадровой синхронизации)       510Tline=32ms
E16	- OV7670	- D0	Оранжевый
E15	- OV7670	- D1	Оранжевый
E14	- OV7670	- D2	Желтый
C15	- OV7670	- D3	Желтый
B15	- OV7670	- D4	Зеленый
A14	- OV7670	- D5	Зеленый
L8	- OV7670	- D6	Синий
J13	- OV7670	- D7	Синий
F15	- OV7670	- PWDN	Коричневый	(Для работы подтянуть на 0)
F14	- OV7670	- RESET	Красный		(Для работы подтянуть на 1)

Команды управления FPGA:
0xff	Начать процесс записи 100 байт в память с UART. Ожидается посылка следующих 100 байт
0xbb	Обнуление шины адреса
0xdd	Добавление а шине адреса 1
0xaa	Отправка по UART текущих младших 8 битов шины адреса
0xcc	Отправка по UART байта с RAM, на который сейчас указывает шина адреса

Состояния конечного автомата:
0	Исходное. Ожидает команд управления от UART
1	Состояние передачи принимаемого байта в RAM по текущему положению шины адреса ->2
2	Состояние окончания записи принимаемого байта. Если счетчик передаваемых данных кончился то сброс стостояния до 0

~80нс на передачу 1 пикселя
~40нс на передачу 1 байта - это пол пикселя для RGB565

 4.88 us - передача 1 байта через UART

