# FPGAuartCamera
Trying connect 8bit Camera to FPGA with translate data on UART

Карта подключения камеры и UART модуля
FPGA - модуль:
Vcc3.3 	- UART 		- Vcc	Белый
GND 	- UART 		- GND	Черный
P18 	- UART		- TX	Феолетовый
K19 	- UART		- RX	Серый
Vcc3.3	- OV7670 	- VDD	Красный
GND	- OV7670	- GND	Черный
K16	- OV7670	- XCLK	Коричневый
J17	- OV7670	- PCLK	Серый
G12	- OV7670	- HREF	Феолетовый
G13	- OV7670	- VSYNC	Белый
E16	- OV7670	- D0	Оранжевый
E15	- OV7670	- D1	Оранжевый
E14	- OV7670	- D2	Желтый
C15	- OV7670	- D3	Желтый
B15	- OV7670	- D4	Зеленый
A14	- OV7670	- D5	Зеленый
L8	- OV7670	- D6	Синий
J13	- OV7670	- D7	Синий
