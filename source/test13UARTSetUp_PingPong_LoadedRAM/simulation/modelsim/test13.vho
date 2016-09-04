-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "09/03/2016 16:15:10"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test13 IS
    PORT (
	clk : IN std_logic;
	PinRX : IN std_logic;
	PinTX : BUFFER std_logic;
	debugLED : BUFFER std_logic
	);
END test13;

-- Design Ports Information
-- PinTX	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- debugLED	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PinRX	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF test13 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_PinRX : std_logic;
SIGNAL ww_PinTX : std_logic;
SIGNAL ww_debugLED : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ActionDataTransmitToUART~q\ : std_logic;
SIGNAL \comb_32|dataCounter~5_combout\ : std_logic;
SIGNAL \comb_32|dataCounter~4_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterRX~0_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterRX~2_combout\ : std_logic;
SIGNAL \PinRX~input_o\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterRX[0]~1_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterRX[1]~3_combout\ : std_logic;
SIGNAL \comb_32|Add0~0_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterRX[2]~4_combout\ : std_logic;
SIGNAL \comb_32|Add0~2_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterRX[4]~6_combout\ : std_logic;
SIGNAL \comb_32|Add0~3_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterRX[5]~7_combout\ : std_logic;
SIGNAL \comb_32|LessThan0~0_combout\ : std_logic;
SIGNAL \comb_32|dataCounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|dataCounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|Equal0~1_combout\ : std_logic;
SIGNAL \comb_32|dataCounter~3_combout\ : std_logic;
SIGNAL \comb_32|flagOUT_DataResive~0_combout\ : std_logic;
SIGNAL \comb_32|dataCounter~1_combout\ : std_logic;
SIGNAL \comb_32|Equal0~0_combout\ : std_logic;
SIGNAL \comb_32|dataCounter~0_combout\ : std_logic;
SIGNAL \comb_32|dataCounter~2_combout\ : std_logic;
SIGNAL \comb_32|Equal2~0_combout\ : std_logic;
SIGNAL \comb_32|Add0~1_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterRX[3]~5_combout\ : std_logic;
SIGNAL \comb_32|always0~6_combout\ : std_logic;
SIGNAL \comb_32|flagOUT_DataResive~1_combout\ : std_logic;
SIGNAL \comb_32|flagOUT_DataResive~q\ : std_logic;
SIGNAL \ActionDataTransmitToUART~0_combout\ : std_logic;
SIGNAL \ActionDataTransmitToUART~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|dataCounterTX[0]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|always0~4_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[2]~6_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[2]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[3]~7_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|Add2~0_combout\ : std_logic;
SIGNAL \comb_32|dataCounterTX[2]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[5]~1_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[5]~2_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[5]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|always0~3_combout\ : std_logic;
SIGNAL \comb_32|Add2~1_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[4]~3_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[4]~4_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|always0~1_combout\ : std_logic;
SIGNAL \comb_32|dataCounterTX~4_combout\ : std_logic;
SIGNAL \comb_32|dataCounterTX[2]~0_combout\ : std_logic;
SIGNAL \comb_32|always0~2_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[0]~0_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[1]~5_combout\ : std_logic;
SIGNAL \comb_32|clok2048MbodCounterTX[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|always0~0_combout\ : std_logic;
SIGNAL \comb_32|dataCounterTX~2_combout\ : std_logic;
SIGNAL \comb_32|dataCounterTX[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|dataCounterTX~1_combout\ : std_logic;
SIGNAL \comb_32|dataCounterTX[0]~3_combout\ : std_logic;
SIGNAL \comb_32|always0~5_combout\ : std_logic;
SIGNAL \comb_32|always0~7_combout\ : std_logic;
SIGNAL \comb_32|dataIN[0]~0_combout\ : std_logic;
SIGNAL \comb_32|dataIN[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|shiftRegTX~8_combout\ : std_logic;
SIGNAL \comb_32|shiftRegTX~7_combout\ : std_logic;
SIGNAL \comb_32|shiftRegTX[0]~1_combout\ : std_logic;
SIGNAL \comb_32|shiftRegTX~6_combout\ : std_logic;
SIGNAL \comb_32|shiftRegTX~5_combout\ : std_logic;
SIGNAL \comb_32|shiftRegTX~4_combout\ : std_logic;
SIGNAL \comb_32|shiftRegTX~3_combout\ : std_logic;
SIGNAL \comb_32|shiftRegTX~2_combout\ : std_logic;
SIGNAL \comb_32|shiftRegTX~0_combout\ : std_logic;
SIGNAL \comb_32|PinTX~1_combout\ : std_logic;
SIGNAL \comb_32|PinTX~0_combout\ : std_logic;
SIGNAL \comb_32|PinTX~2_combout\ : std_logic;
SIGNAL \comb_32|PinTX~q\ : std_logic;
SIGNAL \comb_32|dataCounterTX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_32|clok2048MbodCounterTX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_32|shiftRegTX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_32|dataCounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL DataBusToUART : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_32|clok2048MbodCounterRX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_32|dataIN\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_32|ALT_INV_dataCounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|ALT_INV_dataCounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterTX[4]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterTX[5]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterTX[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ActionDataTransmitToUART~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterTX[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterTX[2]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|ALT_INV_dataCounterTX[0]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|ALT_INV_dataCounterTX[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_32|ALT_INV_dataCounterTX[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_PinRX~input_o\ : std_logic;
SIGNAL ALT_INV_DataBusToUART : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_32|ALT_INV_shiftRegTX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_32|ALT_INV_Add0~3_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterRX~2_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterRX~0_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_always0~7_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_dataCounter~1_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_dataCounter~0_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_flagOUT_DataResive~0_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_always0~6_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterRX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_32|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_dataCounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_32|ALT_INV_always0~5_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterTX[4]~3_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterTX[5]~1_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_flagOUT_DataResive~q\ : std_logic;
SIGNAL \comb_32|ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_dataCounterTX~1_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_PinTX~1_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_always0~1_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_clok2048MbodCounterTX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_ActionDataTransmitToUART~q\ : std_logic;
SIGNAL \comb_32|ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_PinTX~0_combout\ : std_logic;
SIGNAL \comb_32|ALT_INV_dataCounterTX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_32|ALT_INV_PinTX~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_PinRX <= PinRX;
PinTX <= ww_PinTX;
debugLED <= ww_debugLED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\comb_32|ALT_INV_dataCounter[1]~DUPLICATE_q\ <= NOT \comb_32|dataCounter[1]~DUPLICATE_q\;
\comb_32|ALT_INV_dataCounter[0]~DUPLICATE_q\ <= NOT \comb_32|dataCounter[0]~DUPLICATE_q\;
\comb_32|ALT_INV_clok2048MbodCounterTX[4]~DUPLICATE_q\ <= NOT \comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\;
\comb_32|ALT_INV_clok2048MbodCounterTX[5]~DUPLICATE_q\ <= NOT \comb_32|clok2048MbodCounterTX[5]~DUPLICATE_q\;
\comb_32|ALT_INV_clok2048MbodCounterTX[0]~DUPLICATE_q\ <= NOT \comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\;
\ALT_INV_ActionDataTransmitToUART~DUPLICATE_q\ <= NOT \ActionDataTransmitToUART~DUPLICATE_q\;
\comb_32|ALT_INV_clok2048MbodCounterTX[1]~DUPLICATE_q\ <= NOT \comb_32|clok2048MbodCounterTX[1]~DUPLICATE_q\;
\comb_32|ALT_INV_clok2048MbodCounterTX[2]~DUPLICATE_q\ <= NOT \comb_32|clok2048MbodCounterTX[2]~DUPLICATE_q\;
\comb_32|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\ <= NOT \comb_32|clok2048MbodCounterTX[3]~DUPLICATE_q\;
\comb_32|ALT_INV_dataCounterTX[0]~DUPLICATE_q\ <= NOT \comb_32|dataCounterTX[0]~DUPLICATE_q\;
\comb_32|ALT_INV_dataCounterTX[1]~DUPLICATE_q\ <= NOT \comb_32|dataCounterTX[1]~DUPLICATE_q\;
\comb_32|ALT_INV_dataCounterTX[2]~DUPLICATE_q\ <= NOT \comb_32|dataCounterTX[2]~DUPLICATE_q\;
\ALT_INV_PinRX~input_o\ <= NOT \PinRX~input_o\;
ALT_INV_DataBusToUART(7) <= NOT DataBusToUART(7);
ALT_INV_DataBusToUART(6) <= NOT DataBusToUART(6);
\comb_32|ALT_INV_shiftRegTX\(7) <= NOT \comb_32|shiftRegTX\(7);
ALT_INV_DataBusToUART(5) <= NOT DataBusToUART(5);
\comb_32|ALT_INV_shiftRegTX\(6) <= NOT \comb_32|shiftRegTX\(6);
ALT_INV_DataBusToUART(4) <= NOT DataBusToUART(4);
\comb_32|ALT_INV_shiftRegTX\(5) <= NOT \comb_32|shiftRegTX\(5);
ALT_INV_DataBusToUART(3) <= NOT DataBusToUART(3);
\comb_32|ALT_INV_shiftRegTX\(4) <= NOT \comb_32|shiftRegTX\(4);
ALT_INV_DataBusToUART(2) <= NOT DataBusToUART(2);
\comb_32|ALT_INV_shiftRegTX\(3) <= NOT \comb_32|shiftRegTX\(3);
\comb_32|ALT_INV_Add0~3_combout\ <= NOT \comb_32|Add0~3_combout\;
\comb_32|ALT_INV_Add0~2_combout\ <= NOT \comb_32|Add0~2_combout\;
\comb_32|ALT_INV_Add0~1_combout\ <= NOT \comb_32|Add0~1_combout\;
\comb_32|ALT_INV_Add0~0_combout\ <= NOT \comb_32|Add0~0_combout\;
\comb_32|ALT_INV_clok2048MbodCounterRX~2_combout\ <= NOT \comb_32|clok2048MbodCounterRX~2_combout\;
\comb_32|ALT_INV_clok2048MbodCounterRX~0_combout\ <= NOT \comb_32|clok2048MbodCounterRX~0_combout\;
\comb_32|ALT_INV_Equal0~1_combout\ <= NOT \comb_32|Equal0~1_combout\;
\comb_32|ALT_INV_always0~7_combout\ <= NOT \comb_32|always0~7_combout\;
\comb_32|ALT_INV_dataCounter~1_combout\ <= NOT \comb_32|dataCounter~1_combout\;
\comb_32|ALT_INV_dataCounter~0_combout\ <= NOT \comb_32|dataCounter~0_combout\;
\comb_32|ALT_INV_Equal0~0_combout\ <= NOT \comb_32|Equal0~0_combout\;
\comb_32|ALT_INV_LessThan0~0_combout\ <= NOT \comb_32|LessThan0~0_combout\;
ALT_INV_DataBusToUART(1) <= NOT DataBusToUART(1);
\comb_32|ALT_INV_shiftRegTX\(2) <= NOT \comb_32|shiftRegTX\(2);
\comb_32|ALT_INV_flagOUT_DataResive~0_combout\ <= NOT \comb_32|flagOUT_DataResive~0_combout\;
\comb_32|ALT_INV_always0~6_combout\ <= NOT \comb_32|always0~6_combout\;
\comb_32|ALT_INV_clok2048MbodCounterRX\(5) <= NOT \comb_32|clok2048MbodCounterRX\(5);
\comb_32|ALT_INV_clok2048MbodCounterRX\(4) <= NOT \comb_32|clok2048MbodCounterRX\(4);
\comb_32|ALT_INV_clok2048MbodCounterRX\(3) <= NOT \comb_32|clok2048MbodCounterRX\(3);
\comb_32|ALT_INV_clok2048MbodCounterRX\(2) <= NOT \comb_32|clok2048MbodCounterRX\(2);
\comb_32|ALT_INV_clok2048MbodCounterRX\(1) <= NOT \comb_32|clok2048MbodCounterRX\(1);
\comb_32|ALT_INV_clok2048MbodCounterRX\(0) <= NOT \comb_32|clok2048MbodCounterRX\(0);
\comb_32|ALT_INV_Equal2~0_combout\ <= NOT \comb_32|Equal2~0_combout\;
\comb_32|ALT_INV_dataCounter\(3) <= NOT \comb_32|dataCounter\(3);
\comb_32|ALT_INV_dataCounter\(2) <= NOT \comb_32|dataCounter\(2);
\comb_32|ALT_INV_dataCounter\(1) <= NOT \comb_32|dataCounter\(1);
\comb_32|ALT_INV_dataCounter\(0) <= NOT \comb_32|dataCounter\(0);
ALT_INV_DataBusToUART(0) <= NOT DataBusToUART(0);
\comb_32|ALT_INV_shiftRegTX\(1) <= NOT \comb_32|shiftRegTX\(1);
\comb_32|ALT_INV_always0~5_combout\ <= NOT \comb_32|always0~5_combout\;
\comb_32|ALT_INV_clok2048MbodCounterTX[4]~3_combout\ <= NOT \comb_32|clok2048MbodCounterTX[4]~3_combout\;
\comb_32|ALT_INV_Add2~1_combout\ <= NOT \comb_32|Add2~1_combout\;
\comb_32|ALT_INV_clok2048MbodCounterTX[5]~1_combout\ <= NOT \comb_32|clok2048MbodCounterTX[5]~1_combout\;
\comb_32|ALT_INV_Add2~0_combout\ <= NOT \comb_32|Add2~0_combout\;
\comb_32|ALT_INV_flagOUT_DataResive~q\ <= NOT \comb_32|flagOUT_DataResive~q\;
\comb_32|ALT_INV_always0~4_combout\ <= NOT \comb_32|always0~4_combout\;
\comb_32|ALT_INV_always0~3_combout\ <= NOT \comb_32|always0~3_combout\;
\comb_32|ALT_INV_dataCounterTX~1_combout\ <= NOT \comb_32|dataCounterTX~1_combout\;
\comb_32|ALT_INV_always0~2_combout\ <= NOT \comb_32|always0~2_combout\;
\comb_32|ALT_INV_PinTX~1_combout\ <= NOT \comb_32|PinTX~1_combout\;
\comb_32|ALT_INV_shiftRegTX\(0) <= NOT \comb_32|shiftRegTX\(0);
\comb_32|ALT_INV_always0~1_combout\ <= NOT \comb_32|always0~1_combout\;
\comb_32|ALT_INV_clok2048MbodCounterTX\(4) <= NOT \comb_32|clok2048MbodCounterTX\(4);
\comb_32|ALT_INV_clok2048MbodCounterTX\(5) <= NOT \comb_32|clok2048MbodCounterTX\(5);
\comb_32|ALT_INV_clok2048MbodCounterTX\(0) <= NOT \comb_32|clok2048MbodCounterTX\(0);
\ALT_INV_ActionDataTransmitToUART~q\ <= NOT \ActionDataTransmitToUART~q\;
\comb_32|ALT_INV_always0~0_combout\ <= NOT \comb_32|always0~0_combout\;
\comb_32|ALT_INV_clok2048MbodCounterTX\(1) <= NOT \comb_32|clok2048MbodCounterTX\(1);
\comb_32|ALT_INV_clok2048MbodCounterTX\(2) <= NOT \comb_32|clok2048MbodCounterTX\(2);
\comb_32|ALT_INV_clok2048MbodCounterTX\(3) <= NOT \comb_32|clok2048MbodCounterTX\(3);
\comb_32|ALT_INV_PinTX~0_combout\ <= NOT \comb_32|PinTX~0_combout\;
\comb_32|ALT_INV_dataCounterTX\(3) <= NOT \comb_32|dataCounterTX\(3);
\comb_32|ALT_INV_dataCounterTX\(0) <= NOT \comb_32|dataCounterTX\(0);
\comb_32|ALT_INV_dataCounterTX\(1) <= NOT \comb_32|dataCounterTX\(1);
\comb_32|ALT_INV_dataCounterTX\(2) <= NOT \comb_32|dataCounterTX\(2);
\comb_32|ALT_INV_PinTX~q\ <= NOT \comb_32|PinTX~q\;

-- Location: IOOBUF_X52_Y45_N19
\PinTX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_32|ALT_INV_PinTX~q\,
	devoe => ww_devoe,
	o => ww_PinTX);

-- Location: IOOBUF_X0_Y18_N79
\debugLED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_debugLED);

-- Location: IOIBUF_X22_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: FF_X52_Y23_N34
ActionDataTransmitToUART : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ActionDataTransmitToUART~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ActionDataTransmitToUART~q\);

-- Location: MLABCELL_X49_Y20_N15
\comb_32|dataCounter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounter~5_combout\ = ( \comb_32|dataCounter\(3) & ( (!\comb_32|dataCounter\(2) & (!\comb_32|always0~6_combout\ $ (((!\comb_32|dataCounter\(0)))))) # (\comb_32|dataCounter\(2) & (((\comb_32|always0~6_combout\ & !\comb_32|dataCounter\(1))) # 
-- (\comb_32|dataCounter\(0)))) ) ) # ( !\comb_32|dataCounter\(3) & ( (!\comb_32|dataCounter\(2) & (\comb_32|dataCounter\(0) & ((!\comb_32|always0~6_combout\) # (!\comb_32|dataCounter\(1))))) # (\comb_32|dataCounter\(2) & (!\comb_32|always0~6_combout\ $ 
-- (((!\comb_32|dataCounter\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101100000100011110110000110010110111010011001011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounter\(2),
	datab => \comb_32|ALT_INV_always0~6_combout\,
	datac => \comb_32|ALT_INV_dataCounter\(1),
	datad => \comb_32|ALT_INV_dataCounter\(0),
	dataf => \comb_32|ALT_INV_dataCounter\(3),
	combout => \comb_32|dataCounter~5_combout\);

-- Location: FF_X49_Y20_N16
\comb_32|dataCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounter\(0));

-- Location: LABCELL_X50_Y20_N24
\comb_32|dataCounter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounter~4_combout\ = ( \comb_32|always0~6_combout\ & ( (!\comb_32|dataCounter\(0) & ((!\comb_32|dataCounter\(2) & (!\comb_32|dataCounter\(3) $ (!\comb_32|dataCounter\(1)))) # (\comb_32|dataCounter\(2) & ((!\comb_32|dataCounter\(1)) # 
-- (\comb_32|dataCounter\(3)))))) # (\comb_32|dataCounter\(0) & (\comb_32|dataCounter\(1) & ((\comb_32|dataCounter\(3)) # (\comb_32|dataCounter\(2))))) ) ) # ( !\comb_32|always0~6_combout\ & ( \comb_32|dataCounter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100101010100101110010101010010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounter\(0),
	datab => \comb_32|ALT_INV_dataCounter\(2),
	datac => \comb_32|ALT_INV_dataCounter\(3),
	datad => \comb_32|ALT_INV_dataCounter\(1),
	dataf => \comb_32|ALT_INV_always0~6_combout\,
	combout => \comb_32|dataCounter~4_combout\);

-- Location: FF_X50_Y20_N26
\comb_32|dataCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounter\(1));

-- Location: LABCELL_X50_Y20_N39
\comb_32|clok2048MbodCounterRX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterRX~0_combout\ = ( !\comb_32|dataCounter\(2) & ( !\comb_32|dataCounter\(1) & ( !\comb_32|dataCounter\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_32|ALT_INV_dataCounter\(3),
	datae => \comb_32|ALT_INV_dataCounter\(2),
	dataf => \comb_32|ALT_INV_dataCounter\(1),
	combout => \comb_32|clok2048MbodCounterRX~0_combout\);

-- Location: LABCELL_X50_Y20_N15
\comb_32|clok2048MbodCounterRX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterRX~2_combout\ = ( !\comb_32|LessThan0~0_combout\ & ( !\comb_32|clok2048MbodCounterRX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_32|ALT_INV_clok2048MbodCounterRX~0_combout\,
	dataf => \comb_32|ALT_INV_LessThan0~0_combout\,
	combout => \comb_32|clok2048MbodCounterRX~2_combout\);

-- Location: IOIBUF_X54_Y17_N55
\PinRX~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PinRX,
	o => \PinRX~input_o\);

-- Location: LABCELL_X50_Y20_N6
\comb_32|clok2048MbodCounterRX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterRX[0]~1_combout\ = ( \comb_32|clok2048MbodCounterRX\(0) & ( \comb_32|clok2048MbodCounterRX~0_combout\ & ( (!\comb_32|always0~6_combout\) # (\comb_32|Equal2~0_combout\) ) ) ) # ( !\comb_32|clok2048MbodCounterRX\(0) & ( 
-- \comb_32|clok2048MbodCounterRX~0_combout\ & ( (!\PinRX~input_o\ & \comb_32|Equal2~0_combout\) ) ) ) # ( \comb_32|clok2048MbodCounterRX\(0) & ( !\comb_32|clok2048MbodCounterRX~0_combout\ & ( (\comb_32|LessThan0~0_combout\ & ((!\comb_32|always0~6_combout\) 
-- # (\comb_32|Equal2~0_combout\))) ) ) ) # ( !\comb_32|clok2048MbodCounterRX\(0) & ( !\comb_32|clok2048MbodCounterRX~0_combout\ & ( (!\comb_32|Equal2~0_combout\ & (!\comb_32|always0~6_combout\ & ((!\comb_32|LessThan0~0_combout\)))) # 
-- (\comb_32|Equal2~0_combout\ & (((!\PinRX~input_o\) # (!\comb_32|LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001100000000001010111100001100000011001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~6_combout\,
	datab => \ALT_INV_PinRX~input_o\,
	datac => \comb_32|ALT_INV_Equal2~0_combout\,
	datad => \comb_32|ALT_INV_LessThan0~0_combout\,
	datae => \comb_32|ALT_INV_clok2048MbodCounterRX\(0),
	dataf => \comb_32|ALT_INV_clok2048MbodCounterRX~0_combout\,
	combout => \comb_32|clok2048MbodCounterRX[0]~1_combout\);

-- Location: FF_X50_Y20_N8
\comb_32|clok2048MbodCounterRX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterRX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterRX\(0));

-- Location: LABCELL_X50_Y20_N48
\comb_32|clok2048MbodCounterRX[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterRX[1]~3_combout\ = ( \comb_32|clok2048MbodCounterRX\(1) & ( \comb_32|clok2048MbodCounterRX\(0) & ( (!\comb_32|clok2048MbodCounterRX~2_combout\ & ((!\comb_32|always0~6_combout\) # (\comb_32|Equal2~0_combout\))) ) ) ) # ( 
-- !\comb_32|clok2048MbodCounterRX\(1) & ( \comb_32|clok2048MbodCounterRX\(0) & ( (!\comb_32|Equal2~0_combout\ & (!\comb_32|always0~6_combout\ & ((\comb_32|clok2048MbodCounterRX~2_combout\)))) # (\comb_32|Equal2~0_combout\ & (((!\PinRX~input_o\) # 
-- (\comb_32|clok2048MbodCounterRX~2_combout\)))) ) ) ) # ( \comb_32|clok2048MbodCounterRX\(1) & ( !\comb_32|clok2048MbodCounterRX\(0) & ( (!\comb_32|always0~6_combout\) # (\comb_32|Equal2~0_combout\) ) ) ) # ( !\comb_32|clok2048MbodCounterRX\(1) & ( 
-- !\comb_32|clok2048MbodCounterRX\(0) & ( (\comb_32|Equal2~0_combout\ & (!\PinRX~input_o\ & !\comb_32|clok2048MbodCounterRX~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000110111011101110101010000110111011101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_Equal2~0_combout\,
	datab => \comb_32|ALT_INV_always0~6_combout\,
	datac => \ALT_INV_PinRX~input_o\,
	datad => \comb_32|ALT_INV_clok2048MbodCounterRX~2_combout\,
	datae => \comb_32|ALT_INV_clok2048MbodCounterRX\(1),
	dataf => \comb_32|ALT_INV_clok2048MbodCounterRX\(0),
	combout => \comb_32|clok2048MbodCounterRX[1]~3_combout\);

-- Location: FF_X50_Y20_N50
\comb_32|clok2048MbodCounterRX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterRX[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterRX\(1));

-- Location: LABCELL_X50_Y20_N27
\comb_32|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|Add0~0_combout\ = ( \comb_32|clok2048MbodCounterRX\(1) & ( \comb_32|clok2048MbodCounterRX\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_32|ALT_INV_clok2048MbodCounterRX\(0),
	dataf => \comb_32|ALT_INV_clok2048MbodCounterRX\(1),
	combout => \comb_32|Add0~0_combout\);

-- Location: LABCELL_X50_Y20_N57
\comb_32|clok2048MbodCounterRX[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterRX[2]~4_combout\ = ( \comb_32|clok2048MbodCounterRX\(2) & ( \comb_32|Add0~0_combout\ & ( (!\comb_32|clok2048MbodCounterRX~2_combout\ & ((!\comb_32|Equal2~0_combout\ & (!\comb_32|always0~6_combout\)) # 
-- (\comb_32|Equal2~0_combout\ & ((\PinRX~input_o\))))) ) ) ) # ( !\comb_32|clok2048MbodCounterRX\(2) & ( \comb_32|Add0~0_combout\ & ( (\comb_32|clok2048MbodCounterRX~2_combout\ & ((!\comb_32|always0~6_combout\) # (\comb_32|Equal2~0_combout\))) ) ) ) # ( 
-- \comb_32|clok2048MbodCounterRX\(2) & ( !\comb_32|Add0~0_combout\ & ( (!\comb_32|Equal2~0_combout\ & (!\comb_32|always0~6_combout\)) # (\comb_32|Equal2~0_combout\ & (((\PinRX~input_o\) # (\comb_32|clok2048MbodCounterRX~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011011101110100001101000011011000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_Equal2~0_combout\,
	datab => \comb_32|ALT_INV_always0~6_combout\,
	datac => \comb_32|ALT_INV_clok2048MbodCounterRX~2_combout\,
	datad => \ALT_INV_PinRX~input_o\,
	datae => \comb_32|ALT_INV_clok2048MbodCounterRX\(2),
	dataf => \comb_32|ALT_INV_Add0~0_combout\,
	combout => \comb_32|clok2048MbodCounterRX[2]~4_combout\);

-- Location: FF_X50_Y20_N59
\comb_32|clok2048MbodCounterRX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterRX[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterRX\(2));

-- Location: LABCELL_X50_Y20_N33
\comb_32|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|Add0~2_combout\ = (\comb_32|clok2048MbodCounterRX\(1) & (\comb_32|clok2048MbodCounterRX\(0) & (\comb_32|clok2048MbodCounterRX\(2) & \comb_32|clok2048MbodCounterRX\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_clok2048MbodCounterRX\(1),
	datab => \comb_32|ALT_INV_clok2048MbodCounterRX\(0),
	datac => \comb_32|ALT_INV_clok2048MbodCounterRX\(2),
	datad => \comb_32|ALT_INV_clok2048MbodCounterRX\(3),
	combout => \comb_32|Add0~2_combout\);

-- Location: LABCELL_X50_Y20_N0
\comb_32|clok2048MbodCounterRX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterRX[4]~6_combout\ = ( \comb_32|clok2048MbodCounterRX\(4) & ( \comb_32|always0~6_combout\ & ( (\comb_32|Equal2~0_combout\ & ((!\comb_32|clok2048MbodCounterRX~2_combout\ & ((\PinRX~input_o\))) # 
-- (\comb_32|clok2048MbodCounterRX~2_combout\ & (!\comb_32|Add0~2_combout\)))) ) ) ) # ( !\comb_32|clok2048MbodCounterRX\(4) & ( \comb_32|always0~6_combout\ & ( (\comb_32|Add0~2_combout\ & (\comb_32|clok2048MbodCounterRX~2_combout\ & 
-- \comb_32|Equal2~0_combout\)) ) ) ) # ( \comb_32|clok2048MbodCounterRX\(4) & ( !\comb_32|always0~6_combout\ & ( (!\comb_32|clok2048MbodCounterRX~2_combout\ & (((!\comb_32|Equal2~0_combout\) # (\PinRX~input_o\)))) # 
-- (\comb_32|clok2048MbodCounterRX~2_combout\ & (!\comb_32|Add0~2_combout\)) ) ) ) # ( !\comb_32|clok2048MbodCounterRX\(4) & ( !\comb_32|always0~6_combout\ & ( (\comb_32|Add0~2_combout\ & \comb_32|clok2048MbodCounterRX~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001111000101110111000000001000000010000001000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_Add0~2_combout\,
	datab => \comb_32|ALT_INV_clok2048MbodCounterRX~2_combout\,
	datac => \comb_32|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_PinRX~input_o\,
	datae => \comb_32|ALT_INV_clok2048MbodCounterRX\(4),
	dataf => \comb_32|ALT_INV_always0~6_combout\,
	combout => \comb_32|clok2048MbodCounterRX[4]~6_combout\);

-- Location: FF_X50_Y20_N2
\comb_32|clok2048MbodCounterRX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterRX[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterRX\(4));

-- Location: LABCELL_X50_Y20_N12
\comb_32|Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|Add0~3_combout\ = ( \comb_32|clok2048MbodCounterRX\(0) & ( (\comb_32|clok2048MbodCounterRX\(1) & (\comb_32|clok2048MbodCounterRX\(2) & (\comb_32|clok2048MbodCounterRX\(3) & \comb_32|clok2048MbodCounterRX\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_clok2048MbodCounterRX\(1),
	datab => \comb_32|ALT_INV_clok2048MbodCounterRX\(2),
	datac => \comb_32|ALT_INV_clok2048MbodCounterRX\(3),
	datad => \comb_32|ALT_INV_clok2048MbodCounterRX\(4),
	dataf => \comb_32|ALT_INV_clok2048MbodCounterRX\(0),
	combout => \comb_32|Add0~3_combout\);

-- Location: LABCELL_X50_Y20_N51
\comb_32|clok2048MbodCounterRX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterRX[5]~7_combout\ = ( \comb_32|clok2048MbodCounterRX\(5) & ( \comb_32|Add0~3_combout\ & ( (!\comb_32|clok2048MbodCounterRX~2_combout\ & ((!\comb_32|always0~6_combout\) # (\comb_32|Equal2~0_combout\))) ) ) ) # ( 
-- !\comb_32|clok2048MbodCounterRX\(5) & ( \comb_32|Add0~3_combout\ & ( (!\comb_32|Equal2~0_combout\ & (!\comb_32|always0~6_combout\ & (\comb_32|clok2048MbodCounterRX~2_combout\))) # (\comb_32|Equal2~0_combout\ & (((!\PinRX~input_o\) # 
-- (\comb_32|clok2048MbodCounterRX~2_combout\)))) ) ) ) # ( \comb_32|clok2048MbodCounterRX\(5) & ( !\comb_32|Add0~3_combout\ & ( (!\comb_32|always0~6_combout\) # (\comb_32|Equal2~0_combout\) ) ) ) # ( !\comb_32|clok2048MbodCounterRX\(5) & ( 
-- !\comb_32|Add0~3_combout\ & ( (\comb_32|Equal2~0_combout\ & (!\comb_32|clok2048MbodCounterRX~2_combout\ & !\PinRX~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000110111011101110101011101000011011101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_Equal2~0_combout\,
	datab => \comb_32|ALT_INV_always0~6_combout\,
	datac => \comb_32|ALT_INV_clok2048MbodCounterRX~2_combout\,
	datad => \ALT_INV_PinRX~input_o\,
	datae => \comb_32|ALT_INV_clok2048MbodCounterRX\(5),
	dataf => \comb_32|ALT_INV_Add0~3_combout\,
	combout => \comb_32|clok2048MbodCounterRX[5]~7_combout\);

-- Location: FF_X50_Y20_N53
\comb_32|clok2048MbodCounterRX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterRX[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterRX\(5));

-- Location: LABCELL_X50_Y20_N42
\comb_32|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|LessThan0~0_combout\ = ( \comb_32|clok2048MbodCounterRX\(4) & ( \comb_32|clok2048MbodCounterRX\(1) & ( \comb_32|clok2048MbodCounterRX\(5) ) ) ) # ( \comb_32|clok2048MbodCounterRX\(4) & ( !\comb_32|clok2048MbodCounterRX\(1) & ( 
-- (\comb_32|clok2048MbodCounterRX\(5) & (((\comb_32|clok2048MbodCounterRX\(0)) # (\comb_32|clok2048MbodCounterRX\(2))) # (\comb_32|clok2048MbodCounterRX\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_clok2048MbodCounterRX\(3),
	datab => \comb_32|ALT_INV_clok2048MbodCounterRX\(2),
	datac => \comb_32|ALT_INV_clok2048MbodCounterRX\(5),
	datad => \comb_32|ALT_INV_clok2048MbodCounterRX\(0),
	datae => \comb_32|ALT_INV_clok2048MbodCounterRX\(4),
	dataf => \comb_32|ALT_INV_clok2048MbodCounterRX\(1),
	combout => \comb_32|LessThan0~0_combout\);

-- Location: FF_X49_Y20_N17
\comb_32|dataCounter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounter[0]~DUPLICATE_q\);

-- Location: FF_X50_Y20_N25
\comb_32|dataCounter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounter[1]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y20_N18
\comb_32|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|Equal0~1_combout\ = (!\comb_32|dataCounter[0]~DUPLICATE_q\ & !\comb_32|dataCounter[1]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_32|ALT_INV_dataCounter[0]~DUPLICATE_q\,
	datac => \comb_32|ALT_INV_dataCounter[1]~DUPLICATE_q\,
	combout => \comb_32|Equal0~1_combout\);

-- Location: MLABCELL_X49_Y20_N36
\comb_32|dataCounter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounter~3_combout\ = ( \comb_32|dataCounter\(3) & ( \comb_32|always0~6_combout\ & ( (!\comb_32|Equal0~1_combout\) # (\comb_32|dataCounter\(2)) ) ) ) # ( !\comb_32|dataCounter\(3) & ( \comb_32|always0~6_combout\ & ( (!\comb_32|dataCounter\(2) 
-- & (\comb_32|Equal0~1_combout\ & !\PinRX~input_o\)) ) ) ) # ( \comb_32|dataCounter\(3) & ( !\comb_32|always0~6_combout\ & ( (!\comb_32|dataCounter\(2)) # (((!\comb_32|Equal0~1_combout\) # (!\PinRX~input_o\)) # (\comb_32|LessThan0~0_combout\)) ) ) ) # ( 
-- !\comb_32|dataCounter\(3) & ( !\comb_32|always0~6_combout\ & ( (!\comb_32|dataCounter\(2) & (\comb_32|Equal0~1_combout\ & !\PinRX~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000111111111111101100001010000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounter\(2),
	datab => \comb_32|ALT_INV_LessThan0~0_combout\,
	datac => \comb_32|ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_PinRX~input_o\,
	datae => \comb_32|ALT_INV_dataCounter\(3),
	dataf => \comb_32|ALT_INV_always0~6_combout\,
	combout => \comb_32|dataCounter~3_combout\);

-- Location: FF_X49_Y20_N38
\comb_32|dataCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounter\(3));

-- Location: MLABCELL_X49_Y20_N51
\comb_32|flagOUT_DataResive~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|flagOUT_DataResive~0_combout\ = ( \comb_32|dataCounter[1]~DUPLICATE_q\ & ( \comb_32|dataCounter[0]~DUPLICATE_q\ & ( (!\comb_32|dataCounter\(2) & !\comb_32|dataCounter\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounter\(2),
	datad => \comb_32|ALT_INV_dataCounter\(3),
	datae => \comb_32|ALT_INV_dataCounter[1]~DUPLICATE_q\,
	dataf => \comb_32|ALT_INV_dataCounter[0]~DUPLICATE_q\,
	combout => \comb_32|flagOUT_DataResive~0_combout\);

-- Location: MLABCELL_X49_Y20_N9
\comb_32|dataCounter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounter~1_combout\ = ( !\comb_32|Equal2~0_combout\ & ( !\comb_32|flagOUT_DataResive~0_combout\ & ( \comb_32|always0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_32|ALT_INV_always0~6_combout\,
	datae => \comb_32|ALT_INV_Equal2~0_combout\,
	dataf => \comb_32|ALT_INV_flagOUT_DataResive~0_combout\,
	combout => \comb_32|dataCounter~1_combout\);

-- Location: MLABCELL_X49_Y20_N30
\comb_32|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|Equal0~0_combout\ = ( \comb_32|dataCounter\(3) & ( !\comb_32|dataCounter[1]~DUPLICATE_q\ & ( (!\comb_32|dataCounter[0]~DUPLICATE_q\ & \comb_32|dataCounter\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_32|ALT_INV_dataCounter[0]~DUPLICATE_q\,
	datac => \comb_32|ALT_INV_dataCounter\(2),
	datae => \comb_32|ALT_INV_dataCounter\(3),
	dataf => \comb_32|ALT_INV_dataCounter[1]~DUPLICATE_q\,
	combout => \comb_32|Equal0~0_combout\);

-- Location: MLABCELL_X49_Y20_N24
\comb_32|dataCounter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounter~0_combout\ = ( \comb_32|LessThan0~0_combout\ & ( \comb_32|flagOUT_DataResive~0_combout\ & ( (!\comb_32|Equal2~0_combout\ & \comb_32|always0~6_combout\) ) ) ) # ( !\comb_32|LessThan0~0_combout\ & ( 
-- \comb_32|flagOUT_DataResive~0_combout\ & ( (!\comb_32|Equal2~0_combout\ & (((\PinRX~input_o\ & \comb_32|Equal0~0_combout\)) # (\comb_32|always0~6_combout\))) ) ) ) # ( \comb_32|LessThan0~0_combout\ & ( !\comb_32|flagOUT_DataResive~0_combout\ & ( 
-- (\comb_32|Equal0~0_combout\ & (!\comb_32|Equal2~0_combout\ & \comb_32|always0~6_combout\)) ) ) ) # ( !\comb_32|LessThan0~0_combout\ & ( !\comb_32|flagOUT_DataResive~0_combout\ & ( (\comb_32|Equal0~0_combout\ & (!\comb_32|Equal2~0_combout\ & 
-- ((\comb_32|always0~6_combout\) # (\PinRX~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000000000000011000000010000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PinRX~input_o\,
	datab => \comb_32|ALT_INV_Equal0~0_combout\,
	datac => \comb_32|ALT_INV_Equal2~0_combout\,
	datad => \comb_32|ALT_INV_always0~6_combout\,
	datae => \comb_32|ALT_INV_LessThan0~0_combout\,
	dataf => \comb_32|ALT_INV_flagOUT_DataResive~0_combout\,
	combout => \comb_32|dataCounter~0_combout\);

-- Location: MLABCELL_X49_Y20_N54
\comb_32|dataCounter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounter~2_combout\ = ( \comb_32|dataCounter\(2) & ( \comb_32|dataCounter~0_combout\ & ( (!\comb_32|Equal0~1_combout\ & \comb_32|dataCounter~1_combout\) ) ) ) # ( !\comb_32|dataCounter\(2) & ( \comb_32|dataCounter~0_combout\ & ( 
-- (\comb_32|Equal0~1_combout\ & \comb_32|dataCounter~1_combout\) ) ) ) # ( \comb_32|dataCounter\(2) & ( !\comb_32|dataCounter~0_combout\ & ( ((!\comb_32|Equal0~1_combout\) # (!\comb_32|dataCounter~1_combout\)) # (\comb_32|dataCounter\(3)) ) ) ) # ( 
-- !\comb_32|dataCounter\(2) & ( !\comb_32|dataCounter~0_combout\ & ( (\comb_32|Equal0~1_combout\ & ((!\comb_32|dataCounter\(3) & (!\PinRX~input_o\)) # (\comb_32|dataCounter\(3) & ((\comb_32|dataCounter~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001101111111111111010100000000000011110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounter\(3),
	datab => \ALT_INV_PinRX~input_o\,
	datac => \comb_32|ALT_INV_Equal0~1_combout\,
	datad => \comb_32|ALT_INV_dataCounter~1_combout\,
	datae => \comb_32|ALT_INV_dataCounter\(2),
	dataf => \comb_32|ALT_INV_dataCounter~0_combout\,
	combout => \comb_32|dataCounter~2_combout\);

-- Location: FF_X49_Y20_N56
\comb_32|dataCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounter\(2));

-- Location: MLABCELL_X49_Y20_N21
\comb_32|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|Equal2~0_combout\ = ( !\comb_32|dataCounter[0]~DUPLICATE_q\ & ( (!\comb_32|dataCounter\(2) & (!\comb_32|dataCounter\(1) & !\comb_32|dataCounter\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounter\(2),
	datac => \comb_32|ALT_INV_dataCounter\(1),
	datad => \comb_32|ALT_INV_dataCounter\(3),
	dataf => \comb_32|ALT_INV_dataCounter[0]~DUPLICATE_q\,
	combout => \comb_32|Equal2~0_combout\);

-- Location: LABCELL_X50_Y20_N30
\comb_32|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|Add0~1_combout\ = ( \comb_32|clok2048MbodCounterRX\(1) & ( (\comb_32|clok2048MbodCounterRX\(0) & \comb_32|clok2048MbodCounterRX\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_32|ALT_INV_clok2048MbodCounterRX\(0),
	datad => \comb_32|ALT_INV_clok2048MbodCounterRX\(2),
	dataf => \comb_32|ALT_INV_clok2048MbodCounterRX\(1),
	combout => \comb_32|Add0~1_combout\);

-- Location: LABCELL_X50_Y20_N54
\comb_32|clok2048MbodCounterRX[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterRX[3]~5_combout\ = ( \comb_32|clok2048MbodCounterRX\(3) & ( \comb_32|Add0~1_combout\ & ( (!\comb_32|clok2048MbodCounterRX~2_combout\ & ((!\comb_32|Equal2~0_combout\ & (!\comb_32|always0~6_combout\)) # 
-- (\comb_32|Equal2~0_combout\ & ((\PinRX~input_o\))))) ) ) ) # ( !\comb_32|clok2048MbodCounterRX\(3) & ( \comb_32|Add0~1_combout\ & ( (\comb_32|clok2048MbodCounterRX~2_combout\ & ((!\comb_32|always0~6_combout\) # (\comb_32|Equal2~0_combout\))) ) ) ) # ( 
-- \comb_32|clok2048MbodCounterRX\(3) & ( !\comb_32|Add0~1_combout\ & ( (!\comb_32|Equal2~0_combout\ & (!\comb_32|always0~6_combout\)) # (\comb_32|Equal2~0_combout\ & (((\comb_32|clok2048MbodCounterRX~2_combout\) # (\PinRX~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011011101110100000000110111011000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_Equal2~0_combout\,
	datab => \comb_32|ALT_INV_always0~6_combout\,
	datac => \ALT_INV_PinRX~input_o\,
	datad => \comb_32|ALT_INV_clok2048MbodCounterRX~2_combout\,
	datae => \comb_32|ALT_INV_clok2048MbodCounterRX\(3),
	dataf => \comb_32|ALT_INV_Add0~1_combout\,
	combout => \comb_32|clok2048MbodCounterRX[3]~5_combout\);

-- Location: FF_X50_Y20_N56
\comb_32|clok2048MbodCounterRX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterRX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterRX\(3));

-- Location: LABCELL_X50_Y20_N18
\comb_32|always0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|always0~6_combout\ = ( \comb_32|clok2048MbodCounterRX\(4) & ( !\comb_32|clok2048MbodCounterRX\(1) & ( (!\comb_32|clok2048MbodCounterRX\(3) & (\comb_32|clok2048MbodCounterRX\(0) & (\comb_32|clok2048MbodCounterRX\(5) & 
-- !\comb_32|clok2048MbodCounterRX\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_clok2048MbodCounterRX\(3),
	datab => \comb_32|ALT_INV_clok2048MbodCounterRX\(0),
	datac => \comb_32|ALT_INV_clok2048MbodCounterRX\(5),
	datad => \comb_32|ALT_INV_clok2048MbodCounterRX\(2),
	datae => \comb_32|ALT_INV_clok2048MbodCounterRX\(4),
	dataf => \comb_32|ALT_INV_clok2048MbodCounterRX\(1),
	combout => \comb_32|always0~6_combout\);

-- Location: MLABCELL_X49_Y20_N12
\comb_32|flagOUT_DataResive~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|flagOUT_DataResive~1_combout\ = ( \comb_32|flagOUT_DataResive~0_combout\ & ( (\comb_32|always0~6_combout\ & !\comb_32|Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_32|ALT_INV_always0~6_combout\,
	datad => \comb_32|ALT_INV_Equal2~0_combout\,
	dataf => \comb_32|ALT_INV_flagOUT_DataResive~0_combout\,
	combout => \comb_32|flagOUT_DataResive~1_combout\);

-- Location: FF_X49_Y20_N14
\comb_32|flagOUT_DataResive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|flagOUT_DataResive~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|flagOUT_DataResive~q\);

-- Location: LABCELL_X52_Y23_N33
\ActionDataTransmitToUART~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionDataTransmitToUART~0_combout\ = ( \comb_32|flagOUT_DataResive~q\ & ( !\ActionDataTransmitToUART~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ActionDataTransmitToUART~q\,
	dataf => \comb_32|ALT_INV_flagOUT_DataResive~q\,
	combout => \ActionDataTransmitToUART~0_combout\);

-- Location: FF_X52_Y23_N35
\ActionDataTransmitToUART~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ActionDataTransmitToUART~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ActionDataTransmitToUART~DUPLICATE_q\);

-- Location: FF_X52_Y23_N16
\comb_32|clok2048MbodCounterTX[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterTX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\);

-- Location: FF_X52_Y23_N38
\comb_32|dataCounterTX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounterTX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounterTX\(1));

-- Location: FF_X53_Y23_N19
\comb_32|dataCounterTX[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounterTX[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounterTX[0]~DUPLICATE_q\);

-- Location: FF_X52_Y23_N40
\comb_32|clok2048MbodCounterTX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|clok2048MbodCounterTX[1]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX\(1));

-- Location: FF_X52_Y23_N14
\comb_32|clok2048MbodCounterTX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterTX[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX\(2));

-- Location: LABCELL_X53_Y23_N0
\comb_32|always0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|always0~4_combout\ = ( \comb_32|always0~0_combout\ & ( (!\ActionDataTransmitToUART~q\ & ((!\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\) # (!\comb_32|always0~3_combout\))) ) ) # ( !\comb_32|always0~0_combout\ & ( (!\comb_32|always0~3_combout\ & 
-- !\ActionDataTransmitToUART~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_32|ALT_INV_clok2048MbodCounterTX[0]~DUPLICATE_q\,
	datac => \comb_32|ALT_INV_always0~3_combout\,
	datad => \ALT_INV_ActionDataTransmitToUART~q\,
	dataf => \comb_32|ALT_INV_always0~0_combout\,
	combout => \comb_32|always0~4_combout\);

-- Location: LABCELL_X52_Y23_N12
\comb_32|clok2048MbodCounterTX[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterTX[2]~6_combout\ = ( \comb_32|always0~4_combout\ & ( !\comb_32|clok2048MbodCounterTX\(2) $ (((!\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\) # (!\comb_32|clok2048MbodCounterTX[1]~DUPLICATE_q\))) ) ) # ( 
-- !\comb_32|always0~4_combout\ & ( (!\comb_32|always0~2_combout\ & \comb_32|clok2048MbodCounterTX\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_clok2048MbodCounterTX[0]~DUPLICATE_q\,
	datab => \comb_32|ALT_INV_always0~2_combout\,
	datac => \comb_32|ALT_INV_clok2048MbodCounterTX[1]~DUPLICATE_q\,
	datad => \comb_32|ALT_INV_clok2048MbodCounterTX\(2),
	dataf => \comb_32|ALT_INV_always0~4_combout\,
	combout => \comb_32|clok2048MbodCounterTX[2]~6_combout\);

-- Location: FF_X52_Y23_N13
\comb_32|clok2048MbodCounterTX[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterTX[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX[2]~DUPLICATE_q\);

-- Location: FF_X53_Y23_N26
\comb_32|clok2048MbodCounterTX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterTX[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX\(3));

-- Location: LABCELL_X53_Y23_N24
\comb_32|clok2048MbodCounterTX[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterTX[3]~7_combout\ = ( \comb_32|clok2048MbodCounterTX\(3) & ( \comb_32|always0~2_combout\ & ( (\comb_32|always0~4_combout\ & ((!\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\) # ((!\comb_32|clok2048MbodCounterTX\(1)) # 
-- (!\comb_32|clok2048MbodCounterTX[2]~DUPLICATE_q\)))) ) ) ) # ( !\comb_32|clok2048MbodCounterTX\(3) & ( \comb_32|always0~2_combout\ & ( (\comb_32|always0~4_combout\ & (\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\ & (\comb_32|clok2048MbodCounterTX\(1) & 
-- \comb_32|clok2048MbodCounterTX[2]~DUPLICATE_q\))) ) ) ) # ( \comb_32|clok2048MbodCounterTX\(3) & ( !\comb_32|always0~2_combout\ & ( (!\comb_32|always0~4_combout\) # ((!\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\) # 
-- ((!\comb_32|clok2048MbodCounterTX\(1)) # (!\comb_32|clok2048MbodCounterTX[2]~DUPLICATE_q\))) ) ) ) # ( !\comb_32|clok2048MbodCounterTX\(3) & ( !\comb_32|always0~2_combout\ & ( (\comb_32|always0~4_combout\ & (\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\ 
-- & (\comb_32|clok2048MbodCounterTX\(1) & \comb_32|clok2048MbodCounterTX[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000010101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~4_combout\,
	datab => \comb_32|ALT_INV_clok2048MbodCounterTX[0]~DUPLICATE_q\,
	datac => \comb_32|ALT_INV_clok2048MbodCounterTX\(1),
	datad => \comb_32|ALT_INV_clok2048MbodCounterTX[2]~DUPLICATE_q\,
	datae => \comb_32|ALT_INV_clok2048MbodCounterTX\(3),
	dataf => \comb_32|ALT_INV_always0~2_combout\,
	combout => \comb_32|clok2048MbodCounterTX[3]~7_combout\);

-- Location: FF_X53_Y23_N25
\comb_32|clok2048MbodCounterTX[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterTX[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX[3]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y23_N48
\comb_32|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|Add2~0_combout\ = ( \comb_32|clok2048MbodCounterTX[3]~DUPLICATE_q\ & ( \comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\ & ( !\comb_32|clok2048MbodCounterTX[5]~DUPLICATE_q\ $ (((!\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\) # 
-- ((!\comb_32|clok2048MbodCounterTX\(1)) # (!\comb_32|clok2048MbodCounterTX[2]~DUPLICATE_q\)))) ) ) ) # ( !\comb_32|clok2048MbodCounterTX[3]~DUPLICATE_q\ & ( \comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\ & ( \comb_32|clok2048MbodCounterTX[5]~DUPLICATE_q\ ) 
-- ) ) # ( \comb_32|clok2048MbodCounterTX[3]~DUPLICATE_q\ & ( !\comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\ & ( \comb_32|clok2048MbodCounterTX[5]~DUPLICATE_q\ ) ) ) # ( !\comb_32|clok2048MbodCounterTX[3]~DUPLICATE_q\ & ( 
-- !\comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\ & ( \comb_32|clok2048MbodCounterTX[5]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_clok2048MbodCounterTX[5]~DUPLICATE_q\,
	datab => \comb_32|ALT_INV_clok2048MbodCounterTX[0]~DUPLICATE_q\,
	datac => \comb_32|ALT_INV_clok2048MbodCounterTX\(1),
	datad => \comb_32|ALT_INV_clok2048MbodCounterTX[2]~DUPLICATE_q\,
	datae => \comb_32|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\,
	dataf => \comb_32|ALT_INV_clok2048MbodCounterTX[4]~DUPLICATE_q\,
	combout => \comb_32|Add2~0_combout\);

-- Location: FF_X53_Y23_N31
\comb_32|dataCounterTX[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounterTX[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounterTX[2]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y23_N42
\comb_32|clok2048MbodCounterTX[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterTX[5]~1_combout\ = ( \comb_32|dataCounterTX\(3) & ( !\comb_32|clok2048MbodCounterTX[5]~DUPLICATE_q\ ) ) # ( !\comb_32|dataCounterTX\(3) & ( !\comb_32|clok2048MbodCounterTX[5]~DUPLICATE_q\ & ( (((!\ActionDataTransmitToUART~q\) # 
-- (\comb_32|dataCounterTX[2]~DUPLICATE_q\)) # (\comb_32|dataCounterTX[0]~DUPLICATE_q\)) # (\comb_32|dataCounterTX[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounterTX[1]~DUPLICATE_q\,
	datab => \comb_32|ALT_INV_dataCounterTX[0]~DUPLICATE_q\,
	datac => \comb_32|ALT_INV_dataCounterTX[2]~DUPLICATE_q\,
	datad => \ALT_INV_ActionDataTransmitToUART~q\,
	datae => \comb_32|ALT_INV_dataCounterTX\(3),
	dataf => \comb_32|ALT_INV_clok2048MbodCounterTX[5]~DUPLICATE_q\,
	combout => \comb_32|clok2048MbodCounterTX[5]~1_combout\);

-- Location: LABCELL_X52_Y23_N51
\comb_32|clok2048MbodCounterTX[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterTX[5]~2_combout\ = ( \comb_32|Add2~0_combout\ & ( \comb_32|clok2048MbodCounterTX[5]~1_combout\ & ( (!\ActionDataTransmitToUART~q\ & ((!\comb_32|always0~3_combout\) # ((\comb_32|always0~0_combout\ & 
-- !\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\)))) ) ) ) # ( \comb_32|Add2~0_combout\ & ( !\comb_32|clok2048MbodCounterTX[5]~1_combout\ & ( (!\comb_32|always0~0_combout\) # ((!\comb_32|always0~3_combout\) # 
-- ((!\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\) # (\ActionDataTransmitToUART~q\))) ) ) ) # ( !\comb_32|Add2~0_combout\ & ( !\comb_32|clok2048MbodCounterTX[5]~1_combout\ & ( ((!\comb_32|always0~0_combout\ & \comb_32|always0~3_combout\)) # 
-- (\ActionDataTransmitToUART~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111111111111110111100000000000000001101000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~0_combout\,
	datab => \comb_32|ALT_INV_always0~3_combout\,
	datac => \ALT_INV_ActionDataTransmitToUART~q\,
	datad => \comb_32|ALT_INV_clok2048MbodCounterTX[0]~DUPLICATE_q\,
	datae => \comb_32|ALT_INV_Add2~0_combout\,
	dataf => \comb_32|ALT_INV_clok2048MbodCounterTX[5]~1_combout\,
	combout => \comb_32|clok2048MbodCounterTX[5]~2_combout\);

-- Location: FF_X52_Y23_N52
\comb_32|clok2048MbodCounterTX[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterTX[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX[5]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y23_N54
\comb_32|always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|always0~3_combout\ = ( \comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\ & ( \comb_32|clok2048MbodCounterTX[5]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_32|ALT_INV_clok2048MbodCounterTX[5]~DUPLICATE_q\,
	dataf => \comb_32|ALT_INV_clok2048MbodCounterTX[4]~DUPLICATE_q\,
	combout => \comb_32|always0~3_combout\);

-- Location: FF_X52_Y23_N49
\comb_32|clok2048MbodCounterTX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterTX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX\(4));

-- Location: LABCELL_X53_Y23_N3
\comb_32|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|Add2~1_combout\ = ( \comb_32|clok2048MbodCounterTX\(1) & ( !\comb_32|clok2048MbodCounterTX\(4) $ (((!\comb_32|clok2048MbodCounterTX[2]~DUPLICATE_q\) # ((!\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\) # 
-- (!\comb_32|clok2048MbodCounterTX[3]~DUPLICATE_q\)))) ) ) # ( !\comb_32|clok2048MbodCounterTX\(1) & ( \comb_32|clok2048MbodCounterTX\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_clok2048MbodCounterTX[2]~DUPLICATE_q\,
	datab => \comb_32|ALT_INV_clok2048MbodCounterTX[0]~DUPLICATE_q\,
	datac => \comb_32|ALT_INV_clok2048MbodCounterTX\(4),
	datad => \comb_32|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\,
	dataf => \comb_32|ALT_INV_clok2048MbodCounterTX\(1),
	combout => \comb_32|Add2~1_combout\);

-- Location: LABCELL_X53_Y23_N45
\comb_32|clok2048MbodCounterTX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterTX[4]~3_combout\ = ( \comb_32|dataCounterTX\(3) & ( !\comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\ ) ) # ( !\comb_32|dataCounterTX\(3) & ( !\comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\ & ( (((!\ActionDataTransmitToUART~q\) # 
-- (\comb_32|dataCounterTX[2]~DUPLICATE_q\)) # (\comb_32|dataCounterTX[0]~DUPLICATE_q\)) # (\comb_32|dataCounterTX[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounterTX[1]~DUPLICATE_q\,
	datab => \comb_32|ALT_INV_dataCounterTX[0]~DUPLICATE_q\,
	datac => \ALT_INV_ActionDataTransmitToUART~q\,
	datad => \comb_32|ALT_INV_dataCounterTX[2]~DUPLICATE_q\,
	datae => \comb_32|ALT_INV_dataCounterTX\(3),
	dataf => \comb_32|ALT_INV_clok2048MbodCounterTX[4]~DUPLICATE_q\,
	combout => \comb_32|clok2048MbodCounterTX[4]~3_combout\);

-- Location: LABCELL_X52_Y23_N48
\comb_32|clok2048MbodCounterTX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterTX[4]~4_combout\ = ( \comb_32|Add2~1_combout\ & ( \comb_32|clok2048MbodCounterTX[4]~3_combout\ & ( (!\ActionDataTransmitToUART~q\ & ((!\comb_32|always0~3_combout\) # ((\comb_32|always0~0_combout\ & 
-- !\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\)))) ) ) ) # ( \comb_32|Add2~1_combout\ & ( !\comb_32|clok2048MbodCounterTX[4]~3_combout\ & ( (!\comb_32|always0~0_combout\) # ((!\comb_32|always0~3_combout\) # 
-- ((!\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\) # (\ActionDataTransmitToUART~q\))) ) ) ) # ( !\comb_32|Add2~1_combout\ & ( !\comb_32|clok2048MbodCounterTX[4]~3_combout\ & ( ((!\comb_32|always0~0_combout\ & \comb_32|always0~3_combout\)) # 
-- (\ActionDataTransmitToUART~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111111111111101111111100000000000000001101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~0_combout\,
	datab => \comb_32|ALT_INV_always0~3_combout\,
	datac => \comb_32|ALT_INV_clok2048MbodCounterTX[0]~DUPLICATE_q\,
	datad => \ALT_INV_ActionDataTransmitToUART~q\,
	datae => \comb_32|ALT_INV_Add2~1_combout\,
	dataf => \comb_32|ALT_INV_clok2048MbodCounterTX[4]~3_combout\,
	combout => \comb_32|clok2048MbodCounterTX[4]~4_combout\);

-- Location: FF_X52_Y23_N50
\comb_32|clok2048MbodCounterTX[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterTX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\);

-- Location: FF_X52_Y23_N53
\comb_32|clok2048MbodCounterTX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterTX[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX\(5));

-- Location: LABCELL_X52_Y23_N24
\comb_32|always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|always0~1_combout\ = ( \comb_32|clok2048MbodCounterTX\(5) & ( (!\ActionDataTransmitToUART~DUPLICATE_q\ & (\comb_32|clok2048MbodCounterTX\(0) & \comb_32|clok2048MbodCounterTX[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActionDataTransmitToUART~DUPLICATE_q\,
	datab => \comb_32|ALT_INV_clok2048MbodCounterTX\(0),
	datac => \comb_32|ALT_INV_clok2048MbodCounterTX[4]~DUPLICATE_q\,
	dataf => \comb_32|ALT_INV_clok2048MbodCounterTX\(5),
	combout => \comb_32|always0~1_combout\);

-- Location: LABCELL_X53_Y23_N36
\comb_32|dataCounterTX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounterTX~4_combout\ = ( !\comb_32|dataCounterTX\(3) & ( (!\comb_32|dataCounterTX[1]~DUPLICATE_q\ & (!\comb_32|dataCounterTX[0]~DUPLICATE_q\ & (\ActionDataTransmitToUART~q\ & (!\comb_32|dataCounterTX\(2))))) ) ) # ( \comb_32|dataCounterTX\(3) 
-- & ( (((!\comb_32|always0~0_combout\) # ((!\comb_32|always0~1_combout\) # (\comb_32|dataCounterTX\(2)))) # (\comb_32|dataCounterTX[0]~DUPLICATE_q\)) # (\comb_32|dataCounterTX[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000000000111111111111111100001000000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounterTX[1]~DUPLICATE_q\,
	datab => \comb_32|ALT_INV_dataCounterTX[0]~DUPLICATE_q\,
	datac => \comb_32|ALT_INV_always0~0_combout\,
	datad => \comb_32|ALT_INV_dataCounterTX\(2),
	datae => \comb_32|ALT_INV_dataCounterTX\(3),
	dataf => \comb_32|ALT_INV_always0~1_combout\,
	datag => \ALT_INV_ActionDataTransmitToUART~q\,
	combout => \comb_32|dataCounterTX~4_combout\);

-- Location: FF_X52_Y23_N32
\comb_32|dataCounterTX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataCounterTX~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounterTX\(3));

-- Location: LABCELL_X53_Y23_N30
\comb_32|dataCounterTX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounterTX[2]~0_combout\ = ( \comb_32|dataCounterTX\(2) & ( \comb_32|dataCounterTX[0]~DUPLICATE_q\ ) ) # ( \comb_32|dataCounterTX\(2) & ( !\comb_32|dataCounterTX[0]~DUPLICATE_q\ & ( (!\comb_32|always0~0_combout\) # 
-- (((!\comb_32|always0~1_combout\) # (\comb_32|dataCounterTX[1]~DUPLICATE_q\)) # (\comb_32|dataCounterTX\(3))) ) ) ) # ( !\comb_32|dataCounterTX\(2) & ( !\comb_32|dataCounterTX[0]~DUPLICATE_q\ & ( (\comb_32|always0~0_combout\ & (\comb_32|dataCounterTX\(3) & 
-- (!\comb_32|dataCounterTX[1]~DUPLICATE_q\ & \comb_32|always0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111111111011111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~0_combout\,
	datab => \comb_32|ALT_INV_dataCounterTX\(3),
	datac => \comb_32|ALT_INV_dataCounterTX[1]~DUPLICATE_q\,
	datad => \comb_32|ALT_INV_always0~1_combout\,
	datae => \comb_32|ALT_INV_dataCounterTX\(2),
	dataf => \comb_32|ALT_INV_dataCounterTX[0]~DUPLICATE_q\,
	combout => \comb_32|dataCounterTX[2]~0_combout\);

-- Location: FF_X53_Y23_N32
\comb_32|dataCounterTX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounterTX[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounterTX\(2));

-- Location: LABCELL_X52_Y23_N30
\comb_32|always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|always0~2_combout\ = ( \ActionDataTransmitToUART~DUPLICATE_q\ & ( (!\comb_32|dataCounterTX\(1) & (!\comb_32|dataCounterTX\(0) & (!\comb_32|dataCounterTX\(2) & !\comb_32|dataCounterTX\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounterTX\(1),
	datab => \comb_32|ALT_INV_dataCounterTX\(0),
	datac => \comb_32|ALT_INV_dataCounterTX\(2),
	datad => \comb_32|ALT_INV_dataCounterTX\(3),
	dataf => \ALT_INV_ActionDataTransmitToUART~DUPLICATE_q\,
	combout => \comb_32|always0~2_combout\);

-- Location: LABCELL_X52_Y23_N15
\comb_32|clok2048MbodCounterTX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterTX[0]~0_combout\ = ( \comb_32|always0~0_combout\ & ( (!\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\ & ((!\ActionDataTransmitToUART~q\) # (\comb_32|always0~2_combout\))) # (\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\ & 
-- ((\ActionDataTransmitToUART~q\))) ) ) # ( !\comb_32|always0~0_combout\ & ( (!\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\ & (((!\comb_32|always0~3_combout\ & !\ActionDataTransmitToUART~q\)) # (\comb_32|always0~2_combout\))) # 
-- (\comb_32|clok2048MbodCounterTX[0]~DUPLICATE_q\ & (((\ActionDataTransmitToUART~q\) # (\comb_32|always0~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011101110111101001110111011110101010011101111010101001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_clok2048MbodCounterTX[0]~DUPLICATE_q\,
	datab => \comb_32|ALT_INV_always0~2_combout\,
	datac => \comb_32|ALT_INV_always0~3_combout\,
	datad => \ALT_INV_ActionDataTransmitToUART~q\,
	dataf => \comb_32|ALT_INV_always0~0_combout\,
	combout => \comb_32|clok2048MbodCounterTX[0]~0_combout\);

-- Location: FF_X52_Y23_N17
\comb_32|clok2048MbodCounterTX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|clok2048MbodCounterTX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX\(0));

-- Location: LABCELL_X52_Y23_N27
\comb_32|clok2048MbodCounterTX[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|clok2048MbodCounterTX[1]~5_combout\ = ( \comb_32|always0~2_combout\ & ( (!\ActionDataTransmitToUART~DUPLICATE_q\ & (!\comb_32|always0~3_combout\ & (!\comb_32|clok2048MbodCounterTX\(0) $ (!\comb_32|clok2048MbodCounterTX[1]~DUPLICATE_q\)))) ) ) # ( 
-- !\comb_32|always0~2_combout\ & ( !\comb_32|clok2048MbodCounterTX[1]~DUPLICATE_q\ $ ((((!\comb_32|clok2048MbodCounterTX\(0)) # (\comb_32|always0~3_combout\)) # (\ActionDataTransmitToUART~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100001111001011010000111100101000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActionDataTransmitToUART~DUPLICATE_q\,
	datab => \comb_32|ALT_INV_clok2048MbodCounterTX\(0),
	datac => \comb_32|ALT_INV_clok2048MbodCounterTX[1]~DUPLICATE_q\,
	datad => \comb_32|ALT_INV_always0~3_combout\,
	dataf => \comb_32|ALT_INV_always0~2_combout\,
	combout => \comb_32|clok2048MbodCounterTX[1]~5_combout\);

-- Location: FF_X52_Y23_N41
\comb_32|clok2048MbodCounterTX[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|clok2048MbodCounterTX[1]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|clok2048MbodCounterTX[1]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y23_N18
\comb_32|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|always0~0_combout\ = ( !\comb_32|clok2048MbodCounterTX\(3) & ( (!\comb_32|clok2048MbodCounterTX[1]~DUPLICATE_q\ & !\comb_32|clok2048MbodCounterTX\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_32|ALT_INV_clok2048MbodCounterTX[1]~DUPLICATE_q\,
	datac => \comb_32|ALT_INV_clok2048MbodCounterTX\(2),
	dataf => \comb_32|ALT_INV_clok2048MbodCounterTX\(3),
	combout => \comb_32|always0~0_combout\);

-- Location: LABCELL_X52_Y23_N36
\comb_32|dataCounterTX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounterTX~2_combout\ = ( \comb_32|dataCounterTX\(1) & ( \comb_32|always0~1_combout\ & ( ((!\comb_32|always0~0_combout\) # (\comb_32|dataCounterTX\(0))) # (\comb_32|dataCounterTX~1_combout\) ) ) ) # ( !\comb_32|dataCounterTX\(1) & ( 
-- \comb_32|always0~1_combout\ & ( !\comb_32|always0~2_combout\ $ ((((!\comb_32|always0~0_combout\) # (\comb_32|dataCounterTX\(0))) # (\comb_32|dataCounterTX~1_combout\))) ) ) ) # ( \comb_32|dataCounterTX\(1) & ( !\comb_32|always0~1_combout\ ) ) # ( 
-- !\comb_32|dataCounterTX\(1) & ( !\comb_32|always0~1_combout\ & ( \comb_32|always0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100001000111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounterTX~1_combout\,
	datab => \comb_32|ALT_INV_dataCounterTX\(0),
	datac => \comb_32|ALT_INV_always0~0_combout\,
	datad => \comb_32|ALT_INV_always0~2_combout\,
	datae => \comb_32|ALT_INV_dataCounterTX\(1),
	dataf => \comb_32|ALT_INV_always0~1_combout\,
	combout => \comb_32|dataCounterTX~2_combout\);

-- Location: FF_X52_Y23_N37
\comb_32|dataCounterTX[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounterTX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounterTX[1]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y23_N15
\comb_32|dataCounterTX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounterTX~1_combout\ = ( \comb_32|dataCounterTX\(0) & ( (\comb_32|dataCounterTX\(3) & ((\comb_32|dataCounterTX\(2)) # (\comb_32|dataCounterTX[1]~DUPLICATE_q\))) ) ) # ( !\comb_32|dataCounterTX\(0) & ( (!\comb_32|dataCounterTX\(3) & 
-- (!\comb_32|dataCounterTX[1]~DUPLICATE_q\ & !\comb_32|dataCounterTX\(2))) # (\comb_32|dataCounterTX\(3) & ((\comb_32|dataCounterTX\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110000011100000111000001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounterTX[1]~DUPLICATE_q\,
	datab => \comb_32|ALT_INV_dataCounterTX\(3),
	datac => \comb_32|ALT_INV_dataCounterTX\(2),
	dataf => \comb_32|ALT_INV_dataCounterTX\(0),
	combout => \comb_32|dataCounterTX~1_combout\);

-- Location: LABCELL_X53_Y23_N18
\comb_32|dataCounterTX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataCounterTX[0]~3_combout\ = ( \comb_32|always0~1_combout\ & ( !\comb_32|dataCounterTX\(0) $ (((!\comb_32|always0~0_combout\) # (\comb_32|dataCounterTX~1_combout\))) ) ) # ( !\comb_32|always0~1_combout\ & ( \comb_32|dataCounterTX\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101101001010101010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounterTX\(0),
	datac => \comb_32|ALT_INV_dataCounterTX~1_combout\,
	datad => \comb_32|ALT_INV_always0~0_combout\,
	dataf => \comb_32|ALT_INV_always0~1_combout\,
	combout => \comb_32|dataCounterTX[0]~3_combout\);

-- Location: FF_X53_Y23_N20
\comb_32|dataCounterTX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|dataCounterTX[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataCounterTX\(0));

-- Location: LABCELL_X52_Y23_N21
\comb_32|always0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|always0~5_combout\ = ( \comb_32|dataCounterTX\(3) & ( (!\comb_32|dataCounterTX\(2) & !\comb_32|dataCounterTX\(1)) ) ) # ( !\comb_32|dataCounterTX\(3) & ( (\comb_32|dataCounterTX\(1)) # (\comb_32|dataCounterTX\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounterTX\(2),
	datac => \comb_32|ALT_INV_dataCounterTX\(1),
	dataf => \comb_32|ALT_INV_dataCounterTX\(3),
	combout => \comb_32|always0~5_combout\);

-- Location: MLABCELL_X49_Y20_N3
\comb_32|always0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|always0~7_combout\ = ( !\comb_32|dataCounter\(2) & ( \comb_32|dataCounter\(3) ) ) # ( \comb_32|dataCounter\(2) & ( !\comb_32|dataCounter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \comb_32|ALT_INV_dataCounter\(2),
	dataf => \comb_32|ALT_INV_dataCounter\(3),
	combout => \comb_32|always0~7_combout\);

-- Location: MLABCELL_X49_Y20_N42
\comb_32|dataIN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|dataIN[0]~0_combout\ = ( !\comb_32|Equal2~0_combout\ & ( \comb_32|always0~6_combout\ & ( \comb_32|always0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_32|ALT_INV_always0~7_combout\,
	datae => \comb_32|ALT_INV_Equal2~0_combout\,
	dataf => \comb_32|ALT_INV_always0~6_combout\,
	combout => \comb_32|dataIN[0]~0_combout\);

-- Location: FF_X49_Y20_N47
\comb_32|dataIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \PinRX~input_o\,
	sload => VCC,
	ena => \comb_32|dataIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataIN\(7));

-- Location: FF_X49_Y20_N28
\comb_32|dataIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(7),
	sload => VCC,
	ena => \comb_32|dataIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataIN\(6));

-- Location: FF_X49_Y20_N53
\comb_32|dataIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(6),
	sload => VCC,
	ena => \comb_32|dataIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataIN\(5));

-- Location: FF_X49_Y20_N44
\comb_32|dataIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(5),
	sload => VCC,
	ena => \comb_32|dataIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataIN\(4));

-- Location: FF_X49_Y20_N26
\comb_32|dataIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(4),
	sload => VCC,
	ena => \comb_32|dataIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataIN\(3));

-- Location: FF_X49_Y20_N34
\comb_32|dataIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(3),
	sload => VCC,
	ena => \comb_32|dataIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataIN\(2));

-- Location: FF_X49_Y20_N50
\comb_32|dataIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(2),
	sload => VCC,
	ena => \comb_32|dataIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataIN\(1));

-- Location: FF_X49_Y20_N23
\comb_32|dataIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(1),
	sload => VCC,
	ena => \comb_32|dataIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataIN\(0));

-- Location: FF_X52_Y23_N26
\DataBusToUART[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(0),
	sload => VCC,
	ena => \comb_32|flagOUT_DataResive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(0));

-- Location: FF_X49_Y20_N49
\comb_32|dataIN[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(2),
	sload => VCC,
	ena => \comb_32|dataIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|dataIN[1]~DUPLICATE_q\);

-- Location: FF_X50_Y20_N37
\DataBusToUART[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_32|flagOUT_DataResive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(1));

-- Location: FF_X49_Y20_N7
\DataBusToUART[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(3),
	sload => VCC,
	ena => \comb_32|flagOUT_DataResive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(3));

-- Location: FF_X49_Y20_N1
\DataBusToUART[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(5),
	sload => VCC,
	ena => \comb_32|flagOUT_DataResive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(5));

-- Location: FF_X50_Y20_N46
\DataBusToUART[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(7),
	sload => VCC,
	ena => \comb_32|flagOUT_DataResive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(7));

-- Location: LABCELL_X53_Y23_N6
\comb_32|shiftRegTX~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|shiftRegTX~8_combout\ = ( \comb_32|shiftRegTX\(7) & ( \comb_32|always0~2_combout\ & ( (DataBusToUART(7) & ((!\comb_32|always0~0_combout\) # ((!\comb_32|always0~5_combout\) # (!\comb_32|always0~1_combout\)))) ) ) ) # ( !\comb_32|shiftRegTX\(7) & ( 
-- \comb_32|always0~2_combout\ & ( (DataBusToUART(7) & ((!\comb_32|always0~0_combout\) # ((!\comb_32|always0~5_combout\) # (!\comb_32|always0~1_combout\)))) ) ) ) # ( \comb_32|shiftRegTX\(7) & ( !\comb_32|always0~2_combout\ & ( (!\comb_32|always0~0_combout\) 
-- # ((!\comb_32|always0~5_combout\) # (!\comb_32|always0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111101000110011001100100011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~0_combout\,
	datab => ALT_INV_DataBusToUART(7),
	datac => \comb_32|ALT_INV_always0~5_combout\,
	datad => \comb_32|ALT_INV_always0~1_combout\,
	datae => \comb_32|ALT_INV_shiftRegTX\(7),
	dataf => \comb_32|ALT_INV_always0~2_combout\,
	combout => \comb_32|shiftRegTX~8_combout\);

-- Location: FF_X53_Y23_N7
\comb_32|shiftRegTX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|shiftRegTX~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|shiftRegTX\(7));

-- Location: FF_X52_Y23_N19
\DataBusToUART[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(6),
	sload => VCC,
	ena => \comb_32|flagOUT_DataResive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(6));

-- Location: LABCELL_X52_Y23_N45
\comb_32|shiftRegTX~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|shiftRegTX~7_combout\ = ( \comb_32|always0~1_combout\ & ( (!\comb_32|always0~0_combout\ & (((DataBusToUART(6))))) # (\comb_32|always0~0_combout\ & ((!\comb_32|always0~5_combout\ & ((DataBusToUART(6)))) # (\comb_32|always0~5_combout\ & 
-- (\comb_32|shiftRegTX\(7))))) ) ) # ( !\comb_32|always0~1_combout\ & ( DataBusToUART(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~0_combout\,
	datab => \comb_32|ALT_INV_always0~5_combout\,
	datac => \comb_32|ALT_INV_shiftRegTX\(7),
	datad => ALT_INV_DataBusToUART(6),
	dataf => \comb_32|ALT_INV_always0~1_combout\,
	combout => \comb_32|shiftRegTX~7_combout\);

-- Location: LABCELL_X52_Y23_N57
\comb_32|shiftRegTX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|shiftRegTX[0]~1_combout\ = ( \comb_32|always0~0_combout\ & ( ((\comb_32|always0~5_combout\ & \comb_32|always0~1_combout\)) # (\comb_32|always0~2_combout\) ) ) # ( !\comb_32|always0~0_combout\ & ( \comb_32|always0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~5_combout\,
	datac => \comb_32|ALT_INV_always0~2_combout\,
	datad => \comb_32|ALT_INV_always0~1_combout\,
	dataf => \comb_32|ALT_INV_always0~0_combout\,
	combout => \comb_32|shiftRegTX[0]~1_combout\);

-- Location: FF_X52_Y23_N47
\comb_32|shiftRegTX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|shiftRegTX~7_combout\,
	ena => \comb_32|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|shiftRegTX\(6));

-- Location: LABCELL_X52_Y23_N42
\comb_32|shiftRegTX~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|shiftRegTX~6_combout\ = ( \comb_32|always0~1_combout\ & ( (!\comb_32|always0~0_combout\ & (((DataBusToUART(5))))) # (\comb_32|always0~0_combout\ & ((!\comb_32|always0~5_combout\ & (DataBusToUART(5))) # (\comb_32|always0~5_combout\ & 
-- ((\comb_32|shiftRegTX\(6)))))) ) ) # ( !\comb_32|always0~1_combout\ & ( DataBusToUART(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~0_combout\,
	datab => \comb_32|ALT_INV_always0~5_combout\,
	datac => ALT_INV_DataBusToUART(5),
	datad => \comb_32|ALT_INV_shiftRegTX\(6),
	dataf => \comb_32|ALT_INV_always0~1_combout\,
	combout => \comb_32|shiftRegTX~6_combout\);

-- Location: FF_X52_Y23_N44
\comb_32|shiftRegTX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|shiftRegTX~6_combout\,
	ena => \comb_32|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|shiftRegTX\(5));

-- Location: FF_X50_Y20_N23
\DataBusToUART[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(4),
	sload => VCC,
	ena => \comb_32|flagOUT_DataResive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(4));

-- Location: LABCELL_X52_Y23_N9
\comb_32|shiftRegTX~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|shiftRegTX~5_combout\ = ( \comb_32|always0~1_combout\ & ( (!\comb_32|always0~0_combout\ & (((DataBusToUART(4))))) # (\comb_32|always0~0_combout\ & ((!\comb_32|always0~5_combout\ & ((DataBusToUART(4)))) # (\comb_32|always0~5_combout\ & 
-- (\comb_32|shiftRegTX\(5))))) ) ) # ( !\comb_32|always0~1_combout\ & ( DataBusToUART(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~0_combout\,
	datab => \comb_32|ALT_INV_always0~5_combout\,
	datac => \comb_32|ALT_INV_shiftRegTX\(5),
	datad => ALT_INV_DataBusToUART(4),
	dataf => \comb_32|ALT_INV_always0~1_combout\,
	combout => \comb_32|shiftRegTX~5_combout\);

-- Location: FF_X52_Y23_N10
\comb_32|shiftRegTX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|shiftRegTX~5_combout\,
	ena => \comb_32|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|shiftRegTX\(4));

-- Location: LABCELL_X52_Y23_N6
\comb_32|shiftRegTX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|shiftRegTX~4_combout\ = ( \comb_32|always0~1_combout\ & ( (!\comb_32|always0~0_combout\ & (((DataBusToUART(3))))) # (\comb_32|always0~0_combout\ & ((!\comb_32|always0~5_combout\ & (DataBusToUART(3))) # (\comb_32|always0~5_combout\ & 
-- ((\comb_32|shiftRegTX\(4)))))) ) ) # ( !\comb_32|always0~1_combout\ & ( DataBusToUART(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~0_combout\,
	datab => \comb_32|ALT_INV_always0~5_combout\,
	datac => ALT_INV_DataBusToUART(3),
	datad => \comb_32|ALT_INV_shiftRegTX\(4),
	dataf => \comb_32|ALT_INV_always0~1_combout\,
	combout => \comb_32|shiftRegTX~4_combout\);

-- Location: FF_X52_Y23_N8
\comb_32|shiftRegTX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|shiftRegTX~4_combout\,
	ena => \comb_32|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|shiftRegTX\(3));

-- Location: FF_X52_Y23_N23
\DataBusToUART[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_32|dataIN\(2),
	sload => VCC,
	ena => \comb_32|flagOUT_DataResive~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(2));

-- Location: LABCELL_X52_Y23_N3
\comb_32|shiftRegTX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|shiftRegTX~3_combout\ = ( \comb_32|always0~1_combout\ & ( (!\comb_32|always0~0_combout\ & (((DataBusToUART(2))))) # (\comb_32|always0~0_combout\ & ((!\comb_32|always0~5_combout\ & ((DataBusToUART(2)))) # (\comb_32|always0~5_combout\ & 
-- (\comb_32|shiftRegTX\(3))))) ) ) # ( !\comb_32|always0~1_combout\ & ( DataBusToUART(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~0_combout\,
	datab => \comb_32|ALT_INV_always0~5_combout\,
	datac => \comb_32|ALT_INV_shiftRegTX\(3),
	datad => ALT_INV_DataBusToUART(2),
	dataf => \comb_32|ALT_INV_always0~1_combout\,
	combout => \comb_32|shiftRegTX~3_combout\);

-- Location: FF_X52_Y23_N5
\comb_32|shiftRegTX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|shiftRegTX~3_combout\,
	ena => \comb_32|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|shiftRegTX\(2));

-- Location: LABCELL_X52_Y23_N54
\comb_32|shiftRegTX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|shiftRegTX~2_combout\ = ( \comb_32|always0~1_combout\ & ( (!\comb_32|always0~5_combout\ & (((DataBusToUART(1))))) # (\comb_32|always0~5_combout\ & ((!\comb_32|always0~0_combout\ & (DataBusToUART(1))) # (\comb_32|always0~0_combout\ & 
-- ((\comb_32|shiftRegTX\(2)))))) ) ) # ( !\comb_32|always0~1_combout\ & ( DataBusToUART(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~5_combout\,
	datab => \comb_32|ALT_INV_always0~0_combout\,
	datac => ALT_INV_DataBusToUART(1),
	datad => \comb_32|ALT_INV_shiftRegTX\(2),
	dataf => \comb_32|ALT_INV_always0~1_combout\,
	combout => \comb_32|shiftRegTX~2_combout\);

-- Location: FF_X52_Y23_N56
\comb_32|shiftRegTX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|shiftRegTX~2_combout\,
	ena => \comb_32|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|shiftRegTX\(1));

-- Location: LABCELL_X52_Y23_N0
\comb_32|shiftRegTX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|shiftRegTX~0_combout\ = ( \comb_32|always0~1_combout\ & ( (!\comb_32|always0~0_combout\ & (((DataBusToUART(0))))) # (\comb_32|always0~0_combout\ & ((!\comb_32|always0~5_combout\ & (DataBusToUART(0))) # (\comb_32|always0~5_combout\ & 
-- ((\comb_32|shiftRegTX\(1)))))) ) ) # ( !\comb_32|always0~1_combout\ & ( DataBusToUART(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_always0~0_combout\,
	datab => \comb_32|ALT_INV_always0~5_combout\,
	datac => ALT_INV_DataBusToUART(0),
	datad => \comb_32|ALT_INV_shiftRegTX\(1),
	dataf => \comb_32|ALT_INV_always0~1_combout\,
	combout => \comb_32|shiftRegTX~0_combout\);

-- Location: FF_X52_Y23_N1
\comb_32|shiftRegTX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|shiftRegTX~0_combout\,
	ena => \comb_32|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|shiftRegTX\(0));

-- Location: LABCELL_X53_Y23_N21
\comb_32|PinTX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|PinTX~1_combout\ = ( \comb_32|dataCounterTX\(2) & ( (\comb_32|shiftRegTX\(0) & !\comb_32|dataCounterTX\(3)) ) ) # ( !\comb_32|dataCounterTX\(2) & ( (!\comb_32|dataCounterTX[1]~DUPLICATE_q\ & ((!\comb_32|dataCounterTX\(3) & 
-- (\comb_32|dataCounterTX\(0))) # (\comb_32|dataCounterTX\(3) & ((\comb_32|shiftRegTX\(0)))))) # (\comb_32|dataCounterTX[1]~DUPLICATE_q\ & (((\comb_32|shiftRegTX\(0) & !\comb_32|dataCounterTX\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110000010100110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounterTX\(0),
	datab => \comb_32|ALT_INV_shiftRegTX\(0),
	datac => \comb_32|ALT_INV_dataCounterTX[1]~DUPLICATE_q\,
	datad => \comb_32|ALT_INV_dataCounterTX\(3),
	dataf => \comb_32|ALT_INV_dataCounterTX\(2),
	combout => \comb_32|PinTX~1_combout\);

-- Location: LABCELL_X53_Y23_N12
\comb_32|PinTX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|PinTX~0_combout\ = ( \comb_32|dataCounterTX\(2) & ( \comb_32|dataCounterTX\(3) ) ) # ( !\comb_32|dataCounterTX\(2) & ( (!\comb_32|dataCounterTX[1]~DUPLICATE_q\ & ((!\comb_32|dataCounterTX\(3)))) # (\comb_32|dataCounterTX[1]~DUPLICATE_q\ & 
-- (\comb_32|dataCounterTX\(0) & \comb_32|dataCounterTX\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000101101010100000010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_dataCounterTX[1]~DUPLICATE_q\,
	datac => \comb_32|ALT_INV_dataCounterTX\(0),
	datad => \comb_32|ALT_INV_dataCounterTX\(3),
	dataf => \comb_32|ALT_INV_dataCounterTX\(2),
	combout => \comb_32|PinTX~0_combout\);

-- Location: LABCELL_X53_Y23_N57
\comb_32|PinTX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_32|PinTX~2_combout\ = ( \comb_32|PinTX~0_combout\ & ( (\comb_32|PinTX~q\ & ((!\comb_32|PinTX~1_combout\) # ((!\comb_32|always0~1_combout\) # (!\comb_32|always0~0_combout\)))) ) ) # ( !\comb_32|PinTX~0_combout\ & ( (!\comb_32|always0~1_combout\ & 
-- (((\comb_32|PinTX~q\)))) # (\comb_32|always0~1_combout\ & ((!\comb_32|always0~0_combout\ & ((\comb_32|PinTX~q\))) # (\comb_32|always0~0_combout\ & (!\comb_32|PinTX~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111110000000101111111000000000111111100000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_32|ALT_INV_PinTX~1_combout\,
	datab => \comb_32|ALT_INV_always0~1_combout\,
	datac => \comb_32|ALT_INV_always0~0_combout\,
	datad => \comb_32|ALT_INV_PinTX~q\,
	dataf => \comb_32|ALT_INV_PinTX~0_combout\,
	combout => \comb_32|PinTX~2_combout\);

-- Location: FF_X53_Y23_N59
\comb_32|PinTX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_32|PinTX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_32|PinTX~q\);

-- Location: LABCELL_X5_Y23_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


