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

-- DATE "09/12/2016 13:07:08"

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

ENTITY 	test16 IS
    PORT (
	clk : IN std_logic;
	PinRX : IN std_logic;
	PinTX : OUT std_logic;
	DataBusFromCamera : IN std_logic_vector(7 DOWNTO 0);
	PCLK : IN std_logic;
	HREF : IN std_logic;
	VSYNC : IN std_logic;
	XCLK : OUT std_logic;
	PWDN : OUT std_logic;
	RESET : OUT std_logic;
	debug : OUT std_logic
	);
END test16;

-- Design Ports Information
-- PinTX	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCLK	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- XCLK	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWDN	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HREF	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PinRX	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VSYNC	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBusFromCamera[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBusFromCamera[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBusFromCamera[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBusFromCamera[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBusFromCamera[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBusFromCamera[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBusFromCamera[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBusFromCamera[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test16 IS
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
SIGNAL ww_DataBusFromCamera : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PCLK : std_logic;
SIGNAL ww_HREF : std_logic;
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_XCLK : std_logic;
SIGNAL ww_PWDN : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_debug : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \PCLK~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \comb_986|Add1~17_sumout\ : std_logic;
SIGNAL \comb_986|Add1~6\ : std_logic;
SIGNAL \comb_986|Add1~21_sumout\ : std_logic;
SIGNAL \PinRX~input_o\ : std_logic;
SIGNAL \comb_986|Add0~1_sumout\ : std_logic;
SIGNAL \comb_986|clok2048MbodCounterRX[6]~0_combout\ : std_logic;
SIGNAL \comb_986|Add0~10\ : std_logic;
SIGNAL \comb_986|Add0~13_sumout\ : std_logic;
SIGNAL \comb_986|Add0~14\ : std_logic;
SIGNAL \comb_986|Add0~21_sumout\ : std_logic;
SIGNAL \comb_986|clok2048MbodCounterRX~4_combout\ : std_logic;
SIGNAL \comb_986|always0~6_combout\ : std_logic;
SIGNAL \comb_986|clok2048MbodCounterRX~5_combout\ : std_logic;
SIGNAL \comb_986|clok2048MbodCounterRX[6]~2_combout\ : std_logic;
SIGNAL \comb_986|clok2048MbodCounterRX[6]~1_combout\ : std_logic;
SIGNAL \comb_986|clok2048MbodCounterRX[6]~3_combout\ : std_logic;
SIGNAL \comb_986|Add0~2\ : std_logic;
SIGNAL \comb_986|Add0~25_sumout\ : std_logic;
SIGNAL \comb_986|Add0~26\ : std_logic;
SIGNAL \comb_986|Add0~29_sumout\ : std_logic;
SIGNAL \comb_986|Add0~30\ : std_logic;
SIGNAL \comb_986|Add0~17_sumout\ : std_logic;
SIGNAL \comb_986|Add0~18\ : std_logic;
SIGNAL \comb_986|Add0~5_sumout\ : std_logic;
SIGNAL \comb_986|Add0~6\ : std_logic;
SIGNAL \comb_986|Add0~9_sumout\ : std_logic;
SIGNAL \comb_986|always0~5_combout\ : std_logic;
SIGNAL \comb_986|always0~4_combout\ : std_logic;
SIGNAL \comb_986|always0~7_combout\ : std_logic;
SIGNAL \comb_986|dataIN[5]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|dataIN[4]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|dataIN[6]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|dataIN[0]~DUPLICATE_q\ : std_logic;
SIGNAL \always0~6_combout\ : std_logic;
SIGNAL \comb_986|dataIN[1]~DUPLICATE_q\ : std_logic;
SIGNAL \always0~7_combout\ : std_logic;
SIGNAL \always0~5_combout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \HREF~input_o\ : std_logic;
SIGNAL \clk25Mgz~0_combout\ : std_logic;
SIGNAL \clk25Mgz~q\ : std_logic;
SIGNAL \VSYNC~input_o\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \State[2]~2_combout\ : std_logic;
SIGNAL \comb_986|Equal12~0_combout\ : std_logic;
SIGNAL \comb_986|flagOUT_DataResive~0_combout\ : std_logic;
SIGNAL \comb_986|flagOUT_DataResive~q\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \always0~8_combout\ : std_logic;
SIGNAL \State[2]~3_combout\ : std_logic;
SIGNAL \State[2]~4_combout\ : std_logic;
SIGNAL \State[0]~24_combout\ : std_logic;
SIGNAL \always0~10_combout\ : std_logic;
SIGNAL \State[0]~25_combout\ : std_logic;
SIGNAL \State[0]~12_combout\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \State[2]~0_combout\ : std_logic;
SIGNAL \State[2]~1_combout\ : std_logic;
SIGNAL \State~18_combout\ : std_logic;
SIGNAL \State[2]~17_combout\ : std_logic;
SIGNAL \State~19_combout\ : std_logic;
SIGNAL \State[2]~20_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART~0_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[6]~1_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[6]~2_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[1]~5_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[1]~6_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[2]~7_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[2]~8_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[3]~9_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[3]~10_combout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[4]~11_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[4]~12_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[5]~13_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[5]~14_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[6]~15_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[6]~16_combout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[7]~17_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[7]~18_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \State~5_combout\ : std_logic;
SIGNAL \CounterNededByte[9]~1_combout\ : std_logic;
SIGNAL \CounterNededByte[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \always0~12_combout\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \CounterNededByte[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \State~7_combout\ : std_logic;
SIGNAL \State~9_combout\ : std_logic;
SIGNAL \State~8_combout\ : std_logic;
SIGNAL \State[2]~10_combout\ : std_logic;
SIGNAL \always0~11_combout\ : std_logic;
SIGNAL \State[2]~26_combout\ : std_logic;
SIGNAL \State[2]~14_combout\ : std_logic;
SIGNAL \State[2]~13_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \State[3]~21_combout\ : std_logic;
SIGNAL \State[3]~22_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \always0~9_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \State[2]~23_combout\ : std_logic;
SIGNAL \CounterByteFromCameraRows[1]~0_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \State[3]~11_combout\ : std_logic;
SIGNAL \State[1]~15_combout\ : std_logic;
SIGNAL \State[1]~27_combout\ : std_logic;
SIGNAL \State[1]~16_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \CounterNededByte[9]~0_combout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[0]~3_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[0]~4_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \State~6_combout\ : std_logic;
SIGNAL \ActionDataTransmitToUART~0_combout\ : std_logic;
SIGNAL \ActionDataTransmitToUART~1_combout\ : std_logic;
SIGNAL \ActionDataTransmitToUART~q\ : std_logic;
SIGNAL \comb_986|clok2048MbodCounterTX[7]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|LessThan2~0_combout\ : std_logic;
SIGNAL \comb_986|clok2048MbodCounterTX~0_combout\ : std_logic;
SIGNAL \comb_986|Equal23~0_combout\ : std_logic;
SIGNAL \comb_986|Equal23~1_combout\ : std_logic;
SIGNAL \comb_986|Add1~18\ : std_logic;
SIGNAL \comb_986|Add1~25_sumout\ : std_logic;
SIGNAL \comb_986|Add1~26\ : std_logic;
SIGNAL \comb_986|Add1~29_sumout\ : std_logic;
SIGNAL \comb_986|Add1~30\ : std_logic;
SIGNAL \comb_986|Add1~1_sumout\ : std_logic;
SIGNAL \comb_986|Add1~2\ : std_logic;
SIGNAL \comb_986|Add1~13_sumout\ : std_logic;
SIGNAL \comb_986|Add1~14\ : std_logic;
SIGNAL \comb_986|Add1~9_sumout\ : std_logic;
SIGNAL \comb_986|Add1~10\ : std_logic;
SIGNAL \comb_986|Add1~5_sumout\ : std_logic;
SIGNAL \comb_986|PinTX~0_combout\ : std_logic;
SIGNAL \comb_986|PinTX~1_combout\ : std_logic;
SIGNAL \DataBusToUART[0]~0_combout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \AddressPoint[1]~1_combout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \always0~15_combout\ : std_logic;
SIGNAL \CounterByteFromCameraPixcel[1]~0_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \always0~13_combout\ : std_logic;
SIGNAL \AddressPoint~0_combout\ : std_logic;
SIGNAL \AddressPoint[1]~2_combout\ : std_logic;
SIGNAL \always0~14_combout\ : std_logic;
SIGNAL \AddressPoint[1]~3_combout\ : std_logic;
SIGNAL \AddressPoint[1]~4_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \ActionWriteToRAM~0_combout\ : std_logic;
SIGNAL \ActionWriteToRAM~1_combout\ : std_logic;
SIGNAL \ActionWriteToRAM~q\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\ : std_logic;
SIGNAL \DataBusToRAM[0]~feeder_combout\ : std_logic;
SIGNAL \DataBusFromCamera[0]~input_o\ : std_logic;
SIGNAL \AddressPoint~5_combout\ : std_logic;
SIGNAL \ActionWriteToRAM~2_combout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \DataBusToUART~1_combout\ : std_logic;
SIGNAL \DataBusToUART~2_combout\ : std_logic;
SIGNAL \DataBusToUART[0]~3_combout\ : std_logic;
SIGNAL \DataBusToRAM[1]~feeder_combout\ : std_logic;
SIGNAL \DataBusFromCamera[1]~input_o\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \DataBusToUART~4_combout\ : std_logic;
SIGNAL \DataBusToUART~5_combout\ : std_logic;
SIGNAL \DataBusToRAM[5]~feeder_combout\ : std_logic;
SIGNAL \DataBusFromCamera[5]~input_o\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \DataBusToUART~12_combout\ : std_logic;
SIGNAL \DataBusToUART~13_combout\ : std_logic;
SIGNAL \DataBusToRAM[7]~feeder_combout\ : std_logic;
SIGNAL \DataBusFromCamera[7]~input_o\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \DataBusToUART~16_combout\ : std_logic;
SIGNAL \DataBusToUART~17_combout\ : std_logic;
SIGNAL \comb_986|always0~1_combout\ : std_logic;
SIGNAL \comb_986|always0~2_combout\ : std_logic;
SIGNAL \comb_986|always0~0_combout\ : std_logic;
SIGNAL \comb_986|always0~11_combout\ : std_logic;
SIGNAL \comb_986|always0~3_combout\ : std_logic;
SIGNAL \comb_986|shiftRegTX~8_combout\ : std_logic;
SIGNAL \DataBusToRAM[6]~feeder_combout\ : std_logic;
SIGNAL \DataBusFromCamera[6]~input_o\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \DataBusToUART~14_combout\ : std_logic;
SIGNAL \DataBusToUART~15_combout\ : std_logic;
SIGNAL \comb_986|shiftRegTX~7_combout\ : std_logic;
SIGNAL \comb_986|shiftRegTX[0]~1_combout\ : std_logic;
SIGNAL \comb_986|shiftRegTX~6_combout\ : std_logic;
SIGNAL \DataBusToRAM[4]~feeder_combout\ : std_logic;
SIGNAL \DataBusFromCamera[4]~input_o\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \DataBusToUART~10_combout\ : std_logic;
SIGNAL \DataBusToUART~11_combout\ : std_logic;
SIGNAL \comb_986|shiftRegTX~5_combout\ : std_logic;
SIGNAL \DataBusToRAM[3]~feeder_combout\ : std_logic;
SIGNAL \DataBusFromCamera[3]~input_o\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \DataBusToUART~8_combout\ : std_logic;
SIGNAL \DataBusToUART~9_combout\ : std_logic;
SIGNAL \comb_986|shiftRegTX~4_combout\ : std_logic;
SIGNAL \DataBusToRAM[2]~feeder_combout\ : std_logic;
SIGNAL \DataBusFromCamera[2]~input_o\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \DataBusToUART~6_combout\ : std_logic;
SIGNAL \DataBusToUART~7_combout\ : std_logic;
SIGNAL \comb_986|shiftRegTX~3_combout\ : std_logic;
SIGNAL \comb_986|shiftRegTX~2_combout\ : std_logic;
SIGNAL \comb_986|shiftRegTX~0_combout\ : std_logic;
SIGNAL \comb_986|PinTX~2_combout\ : std_logic;
SIGNAL \comb_986|PinTX~q\ : std_logic;
SIGNAL \debug~0_combout\ : std_logic;
SIGNAL \debug~reg0_q\ : std_logic;
SIGNAL DataBusToRAM : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_986|clok2048MbodCounterTX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_986|clok2048MbodCounterRX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL CounterNededByte : std_logic_vector(14 DOWNTO 0);
SIGNAL CounterByteFromCameraRows : std_logic_vector(9 DOWNTO 0);
SIGNAL AddressPoint : std_logic_vector(14 DOWNTO 0);
SIGNAL CounterByteFromCameraPixcel : std_logic_vector(9 DOWNTO 0);
SIGNAL \comb_986|shiftRegTX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_986|dataIN\ : std_logic_vector(7 DOWNTO 0);
SIGNAL State : std_logic_vector(3 DOWNTO 0);
SIGNAL DataBusToUART : std_logic_vector(7 DOWNTO 0);
SIGNAL CounterPauseForTransmitUART : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_CounterPauseForTransmitUART[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[0]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|ALT_INV_dataIN[5]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|ALT_INV_dataIN[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|ALT_INV_dataIN[6]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|ALT_INV_dataIN[4]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|ALT_INV_dataIN[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_CounterNededByte[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_CounterNededByte[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_986|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_VSYNC~input_o\ : std_logic;
SIGNAL \ALT_INV_PinRX~input_o\ : std_logic;
SIGNAL \ALT_INV_HREF~input_o\ : std_logic;
SIGNAL \ALT_INV_State[2]~26_combout\ : std_logic;
SIGNAL \ALT_INV_State[0]~25_combout\ : std_logic;
SIGNAL \ALT_INV_State[0]~24_combout\ : std_logic;
SIGNAL \ALT_INV_DataBusToUART~16_combout\ : std_logic;
SIGNAL \ALT_INV_DataBusToUART~14_combout\ : std_logic;
SIGNAL ALT_INV_DataBusToUART : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_DataBusToUART~12_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_shiftRegTX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_DataBusToUART~10_combout\ : std_logic;
SIGNAL \ALT_INV_DataBusToUART~8_combout\ : std_logic;
SIGNAL \ALT_INV_AddressPoint~5_combout\ : std_logic;
SIGNAL \ALT_INV_ActionWriteToRAM~0_combout\ : std_logic;
SIGNAL \ALT_INV_always0~15_combout\ : std_logic;
SIGNAL \ALT_INV_DataBusToUART~6_combout\ : std_logic;
SIGNAL \ALT_INV_AddressPoint[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_always0~14_combout\ : std_logic;
SIGNAL \ALT_INV_AddressPoint[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_AddressPoint~0_combout\ : std_logic;
SIGNAL \ALT_INV_always0~13_combout\ : std_logic;
SIGNAL \ALT_INV_DataBusToUART~4_combout\ : std_logic;
SIGNAL \ALT_INV_State[2]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Equal10~4_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[7]~17_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[6]~15_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[5]~13_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[4]~11_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[3]~9_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[2]~7_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[6]~2_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART[6]~1_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_clok2048MbodCounterRX~4_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_always0~6_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_clok2048MbodCounterRX[6]~2_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_clok2048MbodCounterRX[6]~1_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_clok2048MbodCounterRX[6]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ActionDataTransmitToUART~0_combout\ : std_logic;
SIGNAL \ALT_INV_DataBusToUART~1_combout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_DataBusToUART[0]~0_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \ALT_INV_State[3]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Equal10~3_combout\ : std_logic;
SIGNAL \ALT_INV_State~19_combout\ : std_logic;
SIGNAL \ALT_INV_State~18_combout\ : std_logic;
SIGNAL \ALT_INV_State[2]~17_combout\ : std_logic;
SIGNAL \ALT_INV_State[1]~15_combout\ : std_logic;
SIGNAL \ALT_INV_State[2]~14_combout\ : std_logic;
SIGNAL \ALT_INV_always0~11_combout\ : std_logic;
SIGNAL \ALT_INV_State[2]~13_combout\ : std_logic;
SIGNAL \ALT_INV_State[3]~11_combout\ : std_logic;
SIGNAL \ALT_INV_always0~10_combout\ : std_logic;
SIGNAL \ALT_INV_always0~9_combout\ : std_logic;
SIGNAL \ALT_INV_State[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_State~9_combout\ : std_logic;
SIGNAL \ALT_INV_State~8_combout\ : std_logic;
SIGNAL \ALT_INV_State~7_combout\ : std_logic;
SIGNAL \ALT_INV_State~6_combout\ : std_logic;
SIGNAL \ALT_INV_CounterPauseForTransmitUART~0_combout\ : std_logic;
SIGNAL \ALT_INV_State~5_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL ALT_INV_CounterPauseForTransmitUART : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \ALT_INV_State[2]~4_combout\ : std_logic;
SIGNAL \ALT_INV_State[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_always0~8_combout\ : std_logic;
SIGNAL \ALT_INV_State[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \ALT_INV_CounterNededByte[9]~0_combout\ : std_logic;
SIGNAL \ALT_INV_always0~7_combout\ : std_logic;
SIGNAL \ALT_INV_always0~6_combout\ : std_logic;
SIGNAL \ALT_INV_always0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ALT_INV_State[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_State[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_always0~5_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_ActionDataTransmitToUART~q\ : std_logic;
SIGNAL \ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_flagOUT_DataResive~q\ : std_logic;
SIGNAL \ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \ALT_INV_always0~1_combout\ : std_logic;
SIGNAL ALT_INV_State : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_986|ALT_INV_dataIN\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal19~0_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_PinTX~1_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_PinTX~0_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_Equal23~1_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_always0~1_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_Equal23~0_combout\ : std_logic;
SIGNAL \comb_986|ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \ALT_INV_debug~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clk25Mgz~q\ : std_logic;
SIGNAL \comb_986|ALT_INV_PinTX~q\ : std_logic;
SIGNAL \comb_986|ALT_INV_always0~11_combout\ : std_logic;
SIGNAL \ALT_INV_State[1]~27_combout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a31~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a23~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a15~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a7~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a30~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a22~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a14~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a6~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a29~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a21~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a13~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a5~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a28~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a20~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a12~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a4~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a27~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a19~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a11~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a3~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a26~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a18~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a10~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a2~portadataout\ : std_logic;
SIGNAL ALT_INV_AddressPoint : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_ActionWriteToRAM~q\ : std_logic;
SIGNAL ALT_INV_CounterByteFromCameraPixcel : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a25~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a17~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a9~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a1~portadataout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a24~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a16~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\ : std_logic;
SIGNAL \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL ALT_INV_CounterByteFromCameraRows : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_CounterNededByte : std_logic_vector(14 DOWNTO 0);
SIGNAL \comb_986|ALT_INV_clok2048MbodCounterRX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_986|ALT_INV_clok2048MbodCounterTX\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_PinRX <= PinRX;
PinTX <= ww_PinTX;
ww_DataBusFromCamera <= DataBusFromCamera;
ww_PCLK <= PCLK;
ww_HREF <= HREF;
ww_VSYNC <= VSYNC;
XCLK <= ww_XCLK;
PWDN <= ww_PWDN;
RESET <= ww_RESET;
debug <= ww_debug;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\comb_987|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= DataBusToRAM(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & AddressPoint(4)
& AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= DataBusToRAM(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & AddressPoint(4)
& AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= DataBusToRAM(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= DataBusToRAM(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= DataBusToRAM(1);

\comb_987|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & AddressPoint(4)
& AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= DataBusToRAM(1);

\comb_987|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & AddressPoint(4)
& AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= DataBusToRAM(1);

\comb_987|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= DataBusToRAM(1);

\comb_987|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= DataBusToRAM(2);

\comb_987|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & AddressPoint(4)
& AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= DataBusToRAM(2);

\comb_987|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= DataBusToRAM(2);

\comb_987|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= DataBusToRAM(2);

\comb_987|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= DataBusToRAM(3);

\comb_987|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & AddressPoint(4)
& AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= DataBusToRAM(3);

\comb_987|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= DataBusToRAM(3);

\comb_987|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= DataBusToRAM(3);

\comb_987|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= DataBusToRAM(4);

\comb_987|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & AddressPoint(4)
& AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= DataBusToRAM(4);

\comb_987|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= DataBusToRAM(4);

\comb_987|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= DataBusToRAM(4);

\comb_987|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= DataBusToRAM(5);

\comb_987|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & AddressPoint(4)
& AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= DataBusToRAM(5);

\comb_987|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= DataBusToRAM(5);

\comb_987|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= DataBusToRAM(5);

\comb_987|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= DataBusToRAM(6);

\comb_987|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & AddressPoint(4)
& AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= DataBusToRAM(6);

\comb_987|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= DataBusToRAM(6);

\comb_987|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= DataBusToRAM(6);

\comb_987|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= DataBusToRAM(7);

\comb_987|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & AddressPoint(4)
& AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= DataBusToRAM(7);

\comb_987|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= DataBusToRAM(7);

\comb_987|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\comb_987|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= DataBusToRAM(7);

\comb_987|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (AddressPoint(12) & AddressPoint(11) & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & AddressPoint(7) & AddressPoint(6) & AddressPoint(5) & 
AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_987|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \comb_987|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);
\ALT_INV_CounterPauseForTransmitUART[5]~DUPLICATE_q\ <= NOT \CounterPauseForTransmitUART[5]~DUPLICATE_q\;
\ALT_INV_CounterPauseForTransmitUART[4]~DUPLICATE_q\ <= NOT \CounterPauseForTransmitUART[4]~DUPLICATE_q\;
\ALT_INV_CounterPauseForTransmitUART[2]~DUPLICATE_q\ <= NOT \CounterPauseForTransmitUART[2]~DUPLICATE_q\;
\ALT_INV_CounterPauseForTransmitUART[1]~DUPLICATE_q\ <= NOT \CounterPauseForTransmitUART[1]~DUPLICATE_q\;
\ALT_INV_CounterPauseForTransmitUART[0]~DUPLICATE_q\ <= NOT \CounterPauseForTransmitUART[0]~DUPLICATE_q\;
\comb_986|ALT_INV_dataIN[5]~DUPLICATE_q\ <= NOT \comb_986|dataIN[5]~DUPLICATE_q\;
\comb_986|ALT_INV_dataIN[1]~DUPLICATE_q\ <= NOT \comb_986|dataIN[1]~DUPLICATE_q\;
\comb_986|ALT_INV_dataIN[6]~DUPLICATE_q\ <= NOT \comb_986|dataIN[6]~DUPLICATE_q\;
\comb_986|ALT_INV_dataIN[4]~DUPLICATE_q\ <= NOT \comb_986|dataIN[4]~DUPLICATE_q\;
\comb_986|ALT_INV_dataIN[0]~DUPLICATE_q\ <= NOT \comb_986|dataIN[0]~DUPLICATE_q\;
\ALT_INV_CounterNededByte[10]~DUPLICATE_q\ <= NOT \CounterNededByte[10]~DUPLICATE_q\;
\ALT_INV_CounterNededByte[1]~DUPLICATE_q\ <= NOT \CounterNededByte[1]~DUPLICATE_q\;
\comb_986|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\ <= NOT \comb_986|clok2048MbodCounterTX[7]~DUPLICATE_q\;
\comb_986|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\ <= NOT \comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\;
\ALT_INV_VSYNC~input_o\ <= NOT \VSYNC~input_o\;
\ALT_INV_PinRX~input_o\ <= NOT \PinRX~input_o\;
\ALT_INV_HREF~input_o\ <= NOT \HREF~input_o\;
\ALT_INV_State[2]~26_combout\ <= NOT \State[2]~26_combout\;
\ALT_INV_State[0]~25_combout\ <= NOT \State[0]~25_combout\;
\ALT_INV_State[0]~24_combout\ <= NOT \State[0]~24_combout\;
\ALT_INV_DataBusToUART~16_combout\ <= NOT \DataBusToUART~16_combout\;
\ALT_INV_DataBusToUART~14_combout\ <= NOT \DataBusToUART~14_combout\;
ALT_INV_DataBusToUART(7) <= NOT DataBusToUART(7);
\ALT_INV_DataBusToUART~12_combout\ <= NOT \DataBusToUART~12_combout\;
ALT_INV_DataBusToUART(6) <= NOT DataBusToUART(6);
\comb_986|ALT_INV_shiftRegTX\(7) <= NOT \comb_986|shiftRegTX\(7);
\ALT_INV_DataBusToUART~10_combout\ <= NOT \DataBusToUART~10_combout\;
ALT_INV_DataBusToUART(5) <= NOT DataBusToUART(5);
\comb_986|ALT_INV_shiftRegTX\(6) <= NOT \comb_986|shiftRegTX\(6);
\ALT_INV_DataBusToUART~8_combout\ <= NOT \DataBusToUART~8_combout\;
ALT_INV_DataBusToUART(4) <= NOT DataBusToUART(4);
\comb_986|ALT_INV_shiftRegTX\(5) <= NOT \comb_986|shiftRegTX\(5);
\ALT_INV_AddressPoint~5_combout\ <= NOT \AddressPoint~5_combout\;
\ALT_INV_ActionWriteToRAM~0_combout\ <= NOT \ActionWriteToRAM~0_combout\;
\ALT_INV_always0~15_combout\ <= NOT \always0~15_combout\;
\ALT_INV_DataBusToUART~6_combout\ <= NOT \DataBusToUART~6_combout\;
ALT_INV_DataBusToUART(3) <= NOT DataBusToUART(3);
\comb_986|ALT_INV_shiftRegTX\(4) <= NOT \comb_986|shiftRegTX\(4);
\ALT_INV_AddressPoint[1]~3_combout\ <= NOT \AddressPoint[1]~3_combout\;
\ALT_INV_always0~14_combout\ <= NOT \always0~14_combout\;
\ALT_INV_AddressPoint[1]~1_combout\ <= NOT \AddressPoint[1]~1_combout\;
\ALT_INV_AddressPoint~0_combout\ <= NOT \AddressPoint~0_combout\;
\ALT_INV_always0~13_combout\ <= NOT \always0~13_combout\;
\ALT_INV_DataBusToUART~4_combout\ <= NOT \DataBusToUART~4_combout\;
ALT_INV_DataBusToUART(2) <= NOT DataBusToUART(2);
\comb_986|ALT_INV_shiftRegTX\(3) <= NOT \comb_986|shiftRegTX\(3);
\ALT_INV_State[2]~23_combout\ <= NOT \State[2]~23_combout\;
\ALT_INV_Equal10~4_combout\ <= NOT \Equal10~4_combout\;
\ALT_INV_CounterPauseForTransmitUART[7]~17_combout\ <= NOT \CounterPauseForTransmitUART[7]~17_combout\;
\ALT_INV_CounterPauseForTransmitUART[6]~15_combout\ <= NOT \CounterPauseForTransmitUART[6]~15_combout\;
\ALT_INV_CounterPauseForTransmitUART[5]~13_combout\ <= NOT \CounterPauseForTransmitUART[5]~13_combout\;
\ALT_INV_CounterPauseForTransmitUART[4]~11_combout\ <= NOT \CounterPauseForTransmitUART[4]~11_combout\;
\ALT_INV_CounterPauseForTransmitUART[3]~9_combout\ <= NOT \CounterPauseForTransmitUART[3]~9_combout\;
\ALT_INV_CounterPauseForTransmitUART[2]~7_combout\ <= NOT \CounterPauseForTransmitUART[2]~7_combout\;
\ALT_INV_CounterPauseForTransmitUART[1]~5_combout\ <= NOT \CounterPauseForTransmitUART[1]~5_combout\;
\ALT_INV_CounterPauseForTransmitUART[0]~3_combout\ <= NOT \CounterPauseForTransmitUART[0]~3_combout\;
\ALT_INV_CounterPauseForTransmitUART[6]~2_combout\ <= NOT \CounterPauseForTransmitUART[6]~2_combout\;
\ALT_INV_CounterPauseForTransmitUART[6]~1_combout\ <= NOT \CounterPauseForTransmitUART[6]~1_combout\;
\comb_986|ALT_INV_clok2048MbodCounterRX~4_combout\ <= NOT \comb_986|clok2048MbodCounterRX~4_combout\;
\comb_986|ALT_INV_always0~6_combout\ <= NOT \comb_986|always0~6_combout\;
\comb_986|ALT_INV_clok2048MbodCounterRX[6]~2_combout\ <= NOT \comb_986|clok2048MbodCounterRX[6]~2_combout\;
\comb_986|ALT_INV_clok2048MbodCounterRX[6]~1_combout\ <= NOT \comb_986|clok2048MbodCounterRX[6]~1_combout\;
\comb_986|ALT_INV_clok2048MbodCounterRX[6]~0_combout\ <= NOT \comb_986|clok2048MbodCounterRX[6]~0_combout\;
\ALT_INV_ActionDataTransmitToUART~0_combout\ <= NOT \ActionDataTransmitToUART~0_combout\;
\ALT_INV_DataBusToUART~1_combout\ <= NOT \DataBusToUART~1_combout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1) <= NOT \comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1);
\comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0) <= NOT \comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0);
\ALT_INV_DataBusToUART[0]~0_combout\ <= NOT \DataBusToUART[0]~0_combout\;
ALT_INV_DataBusToUART(1) <= NOT DataBusToUART(1);
\comb_986|ALT_INV_shiftRegTX\(2) <= NOT \comb_986|shiftRegTX\(2);
\comb_986|ALT_INV_Equal12~0_combout\ <= NOT \comb_986|Equal12~0_combout\;
\ALT_INV_State[3]~21_combout\ <= NOT \State[3]~21_combout\;
\ALT_INV_Equal10~3_combout\ <= NOT \Equal10~3_combout\;
\ALT_INV_State~19_combout\ <= NOT \State~19_combout\;
\ALT_INV_State~18_combout\ <= NOT \State~18_combout\;
\ALT_INV_State[2]~17_combout\ <= NOT \State[2]~17_combout\;
\ALT_INV_State[1]~15_combout\ <= NOT \State[1]~15_combout\;
\ALT_INV_State[2]~14_combout\ <= NOT \State[2]~14_combout\;
\ALT_INV_always0~11_combout\ <= NOT \always0~11_combout\;
\ALT_INV_State[2]~13_combout\ <= NOT \State[2]~13_combout\;
\ALT_INV_State[3]~11_combout\ <= NOT \State[3]~11_combout\;
\ALT_INV_always0~10_combout\ <= NOT \always0~10_combout\;
\ALT_INV_always0~9_combout\ <= NOT \always0~9_combout\;
\ALT_INV_State[2]~10_combout\ <= NOT \State[2]~10_combout\;
\ALT_INV_State~9_combout\ <= NOT \State~9_combout\;
\ALT_INV_State~8_combout\ <= NOT \State~8_combout\;
\ALT_INV_State~7_combout\ <= NOT \State~7_combout\;
\ALT_INV_State~6_combout\ <= NOT \State~6_combout\;
\ALT_INV_CounterPauseForTransmitUART~0_combout\ <= NOT \CounterPauseForTransmitUART~0_combout\;
\ALT_INV_State~5_combout\ <= NOT \State~5_combout\;
\ALT_INV_WideOr0~1_combout\ <= NOT \WideOr0~1_combout\;
ALT_INV_CounterPauseForTransmitUART(7) <= NOT CounterPauseForTransmitUART(7);
ALT_INV_CounterPauseForTransmitUART(6) <= NOT CounterPauseForTransmitUART(6);
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
ALT_INV_CounterPauseForTransmitUART(5) <= NOT CounterPauseForTransmitUART(5);
ALT_INV_CounterPauseForTransmitUART(4) <= NOT CounterPauseForTransmitUART(4);
ALT_INV_CounterPauseForTransmitUART(3) <= NOT CounterPauseForTransmitUART(3);
ALT_INV_CounterPauseForTransmitUART(2) <= NOT CounterPauseForTransmitUART(2);
ALT_INV_CounterPauseForTransmitUART(1) <= NOT CounterPauseForTransmitUART(1);
ALT_INV_CounterPauseForTransmitUART(0) <= NOT CounterPauseForTransmitUART(0);
\ALT_INV_Equal10~2_combout\ <= NOT \Equal10~2_combout\;
\ALT_INV_State[2]~4_combout\ <= NOT \State[2]~4_combout\;
\ALT_INV_State[2]~3_combout\ <= NOT \State[2]~3_combout\;
\ALT_INV_always0~8_combout\ <= NOT \always0~8_combout\;
\ALT_INV_State[2]~2_combout\ <= NOT \State[2]~2_combout\;
\ALT_INV_Equal10~1_combout\ <= NOT \Equal10~1_combout\;
\ALT_INV_CounterNededByte[9]~0_combout\ <= NOT \CounterNededByte[9]~0_combout\;
\ALT_INV_always0~7_combout\ <= NOT \always0~7_combout\;
\ALT_INV_always0~6_combout\ <= NOT \always0~6_combout\;
\ALT_INV_always0~5_combout\ <= NOT \always0~5_combout\;
\ALT_INV_Equal10~0_combout\ <= NOT \Equal10~0_combout\;
\ALT_INV_State[2]~1_combout\ <= NOT \State[2]~1_combout\;
\ALT_INV_State[2]~0_combout\ <= NOT \State[2]~0_combout\;
\ALT_INV_always0~4_combout\ <= NOT \always0~4_combout\;
\comb_986|ALT_INV_always0~5_combout\ <= NOT \comb_986|always0~5_combout\;
\comb_986|ALT_INV_always0~4_combout\ <= NOT \comb_986|always0~4_combout\;
\comb_986|ALT_INV_always0~3_combout\ <= NOT \comb_986|always0~3_combout\;
\comb_986|ALT_INV_LessThan2~0_combout\ <= NOT \comb_986|LessThan2~0_combout\;
\ALT_INV_ActionDataTransmitToUART~q\ <= NOT \ActionDataTransmitToUART~q\;
ALT_INV_DataBusToUART(0) <= NOT DataBusToUART(0);
\comb_986|ALT_INV_shiftRegTX\(1) <= NOT \comb_986|shiftRegTX\(1);
\ALT_INV_always0~3_combout\ <= NOT \always0~3_combout\;
\comb_986|ALT_INV_flagOUT_DataResive~q\ <= NOT \comb_986|flagOUT_DataResive~q\;
\ALT_INV_always0~2_combout\ <= NOT \always0~2_combout\;
\ALT_INV_always0~1_combout\ <= NOT \always0~1_combout\;
ALT_INV_State(3) <= NOT State(3);
ALT_INV_State(2) <= NOT State(2);
ALT_INV_State(1) <= NOT State(1);
ALT_INV_State(0) <= NOT State(0);
\comb_986|ALT_INV_dataIN\(7) <= NOT \comb_986|dataIN\(7);
\comb_986|ALT_INV_dataIN\(3) <= NOT \comb_986|dataIN\(3);
\ALT_INV_always0~0_combout\ <= NOT \always0~0_combout\;
\comb_986|ALT_INV_dataIN\(5) <= NOT \comb_986|dataIN\(5);
\comb_986|ALT_INV_dataIN\(1) <= NOT \comb_986|dataIN\(1);
\ALT_INV_Equal19~0_combout\ <= NOT \Equal19~0_combout\;
\comb_986|ALT_INV_dataIN\(6) <= NOT \comb_986|dataIN\(6);
\comb_986|ALT_INV_dataIN\(2) <= NOT \comb_986|dataIN\(2);
\comb_986|ALT_INV_dataIN\(4) <= NOT \comb_986|dataIN\(4);
\comb_986|ALT_INV_dataIN\(0) <= NOT \comb_986|dataIN\(0);
\comb_986|ALT_INV_PinTX~1_combout\ <= NOT \comb_986|PinTX~1_combout\;
\comb_986|ALT_INV_PinTX~0_combout\ <= NOT \comb_986|PinTX~0_combout\;
\comb_986|ALT_INV_Equal23~1_combout\ <= NOT \comb_986|Equal23~1_combout\;
\comb_986|ALT_INV_always0~2_combout\ <= NOT \comb_986|always0~2_combout\;
\comb_986|ALT_INV_always0~1_combout\ <= NOT \comb_986|always0~1_combout\;
\comb_986|ALT_INV_Equal23~0_combout\ <= NOT \comb_986|Equal23~0_combout\;
\comb_986|ALT_INV_always0~0_combout\ <= NOT \comb_986|always0~0_combout\;
\comb_986|ALT_INV_shiftRegTX\(0) <= NOT \comb_986|shiftRegTX\(0);
\ALT_INV_debug~reg0_q\ <= NOT \debug~reg0_q\;
\ALT_INV_clk25Mgz~q\ <= NOT \clk25Mgz~q\;
\comb_986|ALT_INV_PinTX~q\ <= NOT \comb_986|PinTX~q\;
\comb_986|ALT_INV_always0~11_combout\ <= NOT \comb_986|always0~11_combout\;
\ALT_INV_State[1]~27_combout\ <= NOT \State[1]~27_combout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a31~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a31~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a23~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a23~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a15~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a15~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a7~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a7~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a30~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a30~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a22~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a22~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a14~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a14~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a6~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a6~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a29~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a29~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a21~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a21~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a13~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a13~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a5~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a5~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a28~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a28~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a20~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a20~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a12~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a12~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a4~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a4~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a27~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a27~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a19~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a19~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a11~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a11~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a3~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a3~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a26~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a26~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a18~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a18~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a10~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a10~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a2~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a2~portadataout\;
ALT_INV_AddressPoint(12) <= NOT AddressPoint(12);
ALT_INV_AddressPoint(11) <= NOT AddressPoint(11);
ALT_INV_AddressPoint(10) <= NOT AddressPoint(10);
ALT_INV_AddressPoint(9) <= NOT AddressPoint(9);
ALT_INV_AddressPoint(6) <= NOT AddressPoint(6);
ALT_INV_AddressPoint(5) <= NOT AddressPoint(5);
ALT_INV_AddressPoint(4) <= NOT AddressPoint(4);
ALT_INV_AddressPoint(3) <= NOT AddressPoint(3);
ALT_INV_AddressPoint(2) <= NOT AddressPoint(2);
ALT_INV_AddressPoint(13) <= NOT AddressPoint(13);
ALT_INV_AddressPoint(14) <= NOT AddressPoint(14);
\ALT_INV_ActionWriteToRAM~q\ <= NOT \ActionWriteToRAM~q\;
ALT_INV_CounterByteFromCameraPixcel(0) <= NOT CounterByteFromCameraPixcel(0);
ALT_INV_CounterByteFromCameraPixcel(1) <= NOT CounterByteFromCameraPixcel(1);
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a25~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a25~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a17~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a17~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a9~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a9~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a1~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a1~portadataout\;
ALT_INV_AddressPoint(1) <= NOT AddressPoint(1);
ALT_INV_AddressPoint(8) <= NOT AddressPoint(8);
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a24~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a24~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a16~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a16~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a8~portadataout\;
\comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \comb_987|altsyncram_component|auto_generated|ram_block1a0~portadataout\;
ALT_INV_AddressPoint(0) <= NOT AddressPoint(0);
ALT_INV_AddressPoint(7) <= NOT AddressPoint(7);
ALT_INV_CounterByteFromCameraRows(0) <= NOT CounterByteFromCameraRows(0);
ALT_INV_CounterByteFromCameraRows(1) <= NOT CounterByteFromCameraRows(1);
ALT_INV_CounterNededByte(2) <= NOT CounterNededByte(2);
ALT_INV_CounterNededByte(3) <= NOT CounterNededByte(3);
ALT_INV_CounterNededByte(4) <= NOT CounterNededByte(4);
ALT_INV_CounterNededByte(5) <= NOT CounterNededByte(5);
ALT_INV_CounterNededByte(6) <= NOT CounterNededByte(6);
ALT_INV_CounterNededByte(7) <= NOT CounterNededByte(7);
ALT_INV_CounterNededByte(8) <= NOT CounterNededByte(8);
ALT_INV_CounterNededByte(9) <= NOT CounterNededByte(9);
ALT_INV_CounterNededByte(10) <= NOT CounterNededByte(10);
ALT_INV_CounterNededByte(11) <= NOT CounterNededByte(11);
ALT_INV_CounterNededByte(12) <= NOT CounterNededByte(12);
ALT_INV_CounterNededByte(14) <= NOT CounterNededByte(14);
ALT_INV_CounterNededByte(13) <= NOT CounterNededByte(13);
ALT_INV_CounterNededByte(0) <= NOT CounterNededByte(0);
ALT_INV_CounterNededByte(1) <= NOT CounterNededByte(1);
\comb_986|ALT_INV_clok2048MbodCounterRX\(2) <= NOT \comb_986|clok2048MbodCounterRX\(2);
\comb_986|ALT_INV_clok2048MbodCounterRX\(1) <= NOT \comb_986|clok2048MbodCounterRX\(1);
\comb_986|ALT_INV_clok2048MbodCounterRX\(7) <= NOT \comb_986|clok2048MbodCounterRX\(7);
\comb_986|ALT_INV_clok2048MbodCounterRX\(3) <= NOT \comb_986|clok2048MbodCounterRX\(3);
\comb_986|ALT_INV_clok2048MbodCounterRX\(6) <= NOT \comb_986|clok2048MbodCounterRX\(6);
\comb_986|ALT_INV_clok2048MbodCounterRX\(5) <= NOT \comb_986|clok2048MbodCounterRX\(5);
\comb_986|ALT_INV_clok2048MbodCounterRX\(4) <= NOT \comb_986|clok2048MbodCounterRX\(4);
\comb_986|ALT_INV_clok2048MbodCounterRX\(0) <= NOT \comb_986|clok2048MbodCounterRX\(0);
\comb_986|ALT_INV_clok2048MbodCounterTX\(2) <= NOT \comb_986|clok2048MbodCounterTX\(2);
\comb_986|ALT_INV_clok2048MbodCounterTX\(1) <= NOT \comb_986|clok2048MbodCounterTX\(1);
\comb_986|ALT_INV_clok2048MbodCounterTX\(7) <= NOT \comb_986|clok2048MbodCounterTX\(7);
\comb_986|ALT_INV_clok2048MbodCounterTX\(0) <= NOT \comb_986|clok2048MbodCounterTX\(0);
\comb_986|ALT_INV_clok2048MbodCounterTX\(4) <= NOT \comb_986|clok2048MbodCounterTX\(4);
\comb_986|ALT_INV_clok2048MbodCounterTX\(5) <= NOT \comb_986|clok2048MbodCounterTX\(5);
\comb_986|ALT_INV_clok2048MbodCounterTX\(6) <= NOT \comb_986|clok2048MbodCounterTX\(6);
\comb_986|ALT_INV_clok2048MbodCounterTX\(3) <= NOT \comb_986|clok2048MbodCounterTX\(3);

-- Location: IOOBUF_X52_Y45_N19
\PinTX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_986|ALT_INV_PinTX~q\,
	devoe => ww_devoe,
	o => ww_PinTX);

-- Location: IOOBUF_X44_Y45_N53
\XCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk25Mgz~q\,
	devoe => ww_devoe,
	o => ww_XCLK);

-- Location: IOOBUF_X46_Y45_N59
\PWDN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PWDN);

-- Location: IOOBUF_X43_Y45_N53
\RESET~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_RESET);

-- Location: IOOBUF_X0_Y18_N79
\debug~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \debug~reg0_q\,
	devoe => ww_devoe,
	o => ww_debug);

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

-- Location: LABCELL_X41_Y44_N30
\comb_986|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add1~17_sumout\ = SUM(( \comb_986|clok2048MbodCounterTX\(0) ) + ( VCC ) + ( !VCC ))
-- \comb_986|Add1~18\ = CARRY(( \comb_986|clok2048MbodCounterTX\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(0),
	cin => GND,
	sumout => \comb_986|Add1~17_sumout\,
	cout => \comb_986|Add1~18\);

-- Location: LABCELL_X41_Y44_N48
\comb_986|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add1~5_sumout\ = SUM(( \comb_986|clok2048MbodCounterTX\(6) ) + ( GND ) + ( \comb_986|Add1~10\ ))
-- \comb_986|Add1~6\ = CARRY(( \comb_986|clok2048MbodCounterTX\(6) ) + ( GND ) + ( \comb_986|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(6),
	cin => \comb_986|Add1~10\,
	sumout => \comb_986|Add1~5_sumout\,
	cout => \comb_986|Add1~6\);

-- Location: LABCELL_X41_Y44_N51
\comb_986|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add1~21_sumout\ = SUM(( \comb_986|clok2048MbodCounterTX\(7) ) + ( GND ) + ( \comb_986|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(7),
	cin => \comb_986|Add1~6\,
	sumout => \comb_986|Add1~21_sumout\);

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

-- Location: MLABCELL_X37_Y43_N30
\comb_986|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add0~1_sumout\ = SUM(( \comb_986|clok2048MbodCounterRX\(0) ) + ( VCC ) + ( !VCC ))
-- \comb_986|Add0~2\ = CARRY(( \comb_986|clok2048MbodCounterRX\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(0),
	cin => GND,
	sumout => \comb_986|Add0~1_sumout\,
	cout => \comb_986|Add0~2\);

-- Location: MLABCELL_X37_Y43_N57
\comb_986|clok2048MbodCounterRX[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|clok2048MbodCounterRX[6]~0_combout\ = ( \comb_986|clok2048MbodCounterRX\(0) & ( (!\PinRX~input_o\ & (!\comb_986|clok2048MbodCounterRX\(4) & (\comb_986|clok2048MbodCounterRX\(3) & !\comb_986|clok2048MbodCounterRX\(2)))) ) ) # ( 
-- !\comb_986|clok2048MbodCounterRX\(0) & ( (\comb_986|clok2048MbodCounterRX\(4) & (!\comb_986|clok2048MbodCounterRX\(3) & \comb_986|clok2048MbodCounterRX\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PinRX~input_o\,
	datab => \comb_986|ALT_INV_clok2048MbodCounterRX\(4),
	datac => \comb_986|ALT_INV_clok2048MbodCounterRX\(3),
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(2),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterRX\(0),
	combout => \comb_986|clok2048MbodCounterRX[6]~0_combout\);

-- Location: MLABCELL_X37_Y43_N45
\comb_986|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add0~9_sumout\ = SUM(( \comb_986|clok2048MbodCounterRX\(5) ) + ( GND ) + ( \comb_986|Add0~6\ ))
-- \comb_986|Add0~10\ = CARRY(( \comb_986|clok2048MbodCounterRX\(5) ) + ( GND ) + ( \comb_986|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(5),
	cin => \comb_986|Add0~6\,
	sumout => \comb_986|Add0~9_sumout\,
	cout => \comb_986|Add0~10\);

-- Location: MLABCELL_X37_Y43_N48
\comb_986|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add0~13_sumout\ = SUM(( \comb_986|clok2048MbodCounterRX\(6) ) + ( GND ) + ( \comb_986|Add0~10\ ))
-- \comb_986|Add0~14\ = CARRY(( \comb_986|clok2048MbodCounterRX\(6) ) + ( GND ) + ( \comb_986|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(6),
	cin => \comb_986|Add0~10\,
	sumout => \comb_986|Add0~13_sumout\,
	cout => \comb_986|Add0~14\);

-- Location: MLABCELL_X37_Y43_N51
\comb_986|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add0~21_sumout\ = SUM(( \comb_986|clok2048MbodCounterRX\(7) ) + ( GND ) + ( \comb_986|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(7),
	cin => \comb_986|Add0~14\,
	sumout => \comb_986|Add0~21_sumout\);

-- Location: FF_X37_Y43_N53
\comb_986|clok2048MbodCounterRX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add0~21_sumout\,
	sclr => \comb_986|clok2048MbodCounterRX[6]~3_combout\,
	ena => \comb_986|clok2048MbodCounterRX~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterRX\(7));

-- Location: MLABCELL_X37_Y43_N0
\comb_986|clok2048MbodCounterRX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|clok2048MbodCounterRX~4_combout\ = ( !\comb_986|clok2048MbodCounterRX\(2) & ( !\comb_986|clok2048MbodCounterRX\(1) & ( !\comb_986|clok2048MbodCounterRX\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_986|ALT_INV_clok2048MbodCounterRX\(3),
	datae => \comb_986|ALT_INV_clok2048MbodCounterRX\(2),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterRX\(1),
	combout => \comb_986|clok2048MbodCounterRX~4_combout\);

-- Location: LABCELL_X36_Y43_N15
\comb_986|always0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|always0~6_combout\ = ( !\comb_986|clok2048MbodCounterRX\(6) & ( !\comb_986|clok2048MbodCounterRX\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \comb_986|ALT_INV_clok2048MbodCounterRX\(6),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterRX\(5),
	combout => \comb_986|always0~6_combout\);

-- Location: MLABCELL_X37_Y43_N18
\comb_986|clok2048MbodCounterRX~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|clok2048MbodCounterRX~5_combout\ = ( \comb_986|clok2048MbodCounterRX~4_combout\ & ( \comb_986|always0~6_combout\ & ( (!\PinRX~input_o\) # (((\comb_986|clok2048MbodCounterRX\(4)) # (\comb_986|clok2048MbodCounterRX\(7))) # 
-- (\comb_986|clok2048MbodCounterRX\(0))) ) ) ) # ( !\comb_986|clok2048MbodCounterRX~4_combout\ & ( \comb_986|always0~6_combout\ ) ) # ( \comb_986|clok2048MbodCounterRX~4_combout\ & ( !\comb_986|always0~6_combout\ ) ) # ( 
-- !\comb_986|clok2048MbodCounterRX~4_combout\ & ( !\comb_986|always0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PinRX~input_o\,
	datab => \comb_986|ALT_INV_clok2048MbodCounterRX\(0),
	datac => \comb_986|ALT_INV_clok2048MbodCounterRX\(7),
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(4),
	datae => \comb_986|ALT_INV_clok2048MbodCounterRX~4_combout\,
	dataf => \comb_986|ALT_INV_always0~6_combout\,
	combout => \comb_986|clok2048MbodCounterRX~5_combout\);

-- Location: FF_X37_Y43_N50
\comb_986|clok2048MbodCounterRX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add0~13_sumout\,
	sclr => \comb_986|clok2048MbodCounterRX[6]~3_combout\,
	ena => \comb_986|clok2048MbodCounterRX~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterRX\(6));

-- Location: MLABCELL_X37_Y43_N54
\comb_986|clok2048MbodCounterRX[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|clok2048MbodCounterRX[6]~2_combout\ = ( \comb_986|clok2048MbodCounterRX\(7) & ( (\comb_986|clok2048MbodCounterRX\(6) & \comb_986|clok2048MbodCounterRX\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_986|ALT_INV_clok2048MbodCounterRX\(6),
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(5),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterRX\(7),
	combout => \comb_986|clok2048MbodCounterRX[6]~2_combout\);

-- Location: MLABCELL_X37_Y43_N24
\comb_986|clok2048MbodCounterRX[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|clok2048MbodCounterRX[6]~1_combout\ = ( \PinRX~input_o\ & ( !\comb_986|clok2048MbodCounterRX\(4) & ( (!\comb_986|clok2048MbodCounterRX\(6) & (!\comb_986|clok2048MbodCounterRX\(0) & (!\comb_986|clok2048MbodCounterRX\(7) & 
-- !\comb_986|clok2048MbodCounterRX\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterRX\(6),
	datab => \comb_986|ALT_INV_clok2048MbodCounterRX\(0),
	datac => \comb_986|ALT_INV_clok2048MbodCounterRX\(7),
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(5),
	datae => \ALT_INV_PinRX~input_o\,
	dataf => \comb_986|ALT_INV_clok2048MbodCounterRX\(4),
	combout => \comb_986|clok2048MbodCounterRX[6]~1_combout\);

-- Location: MLABCELL_X37_Y43_N6
\comb_986|clok2048MbodCounterRX[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|clok2048MbodCounterRX[6]~3_combout\ = ( \comb_986|clok2048MbodCounterRX[6]~2_combout\ & ( \comb_986|clok2048MbodCounterRX[6]~1_combout\ & ( (!\comb_986|clok2048MbodCounterRX\(1) & (((\comb_986|clok2048MbodCounterRX\(2) & 
-- \comb_986|clok2048MbodCounterRX\(3))) # (\comb_986|clok2048MbodCounterRX[6]~0_combout\))) ) ) ) # ( !\comb_986|clok2048MbodCounterRX[6]~2_combout\ & ( \comb_986|clok2048MbodCounterRX[6]~1_combout\ & ( (\comb_986|clok2048MbodCounterRX\(2) & 
-- (\comb_986|clok2048MbodCounterRX\(3) & !\comb_986|clok2048MbodCounterRX\(1))) ) ) ) # ( \comb_986|clok2048MbodCounterRX[6]~2_combout\ & ( !\comb_986|clok2048MbodCounterRX[6]~1_combout\ & ( (!\comb_986|clok2048MbodCounterRX\(1) & 
-- \comb_986|clok2048MbodCounterRX[6]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000010000000100000001000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterRX\(2),
	datab => \comb_986|ALT_INV_clok2048MbodCounterRX\(3),
	datac => \comb_986|ALT_INV_clok2048MbodCounterRX\(1),
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX[6]~0_combout\,
	datae => \comb_986|ALT_INV_clok2048MbodCounterRX[6]~2_combout\,
	dataf => \comb_986|ALT_INV_clok2048MbodCounterRX[6]~1_combout\,
	combout => \comb_986|clok2048MbodCounterRX[6]~3_combout\);

-- Location: FF_X37_Y43_N32
\comb_986|clok2048MbodCounterRX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add0~1_sumout\,
	sclr => \comb_986|clok2048MbodCounterRX[6]~3_combout\,
	ena => \comb_986|clok2048MbodCounterRX~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterRX\(0));

-- Location: MLABCELL_X37_Y43_N33
\comb_986|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add0~25_sumout\ = SUM(( \comb_986|clok2048MbodCounterRX\(1) ) + ( GND ) + ( \comb_986|Add0~2\ ))
-- \comb_986|Add0~26\ = CARRY(( \comb_986|clok2048MbodCounterRX\(1) ) + ( GND ) + ( \comb_986|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(1),
	cin => \comb_986|Add0~2\,
	sumout => \comb_986|Add0~25_sumout\,
	cout => \comb_986|Add0~26\);

-- Location: FF_X37_Y43_N35
\comb_986|clok2048MbodCounterRX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add0~25_sumout\,
	sclr => \comb_986|clok2048MbodCounterRX[6]~3_combout\,
	ena => \comb_986|clok2048MbodCounterRX~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterRX\(1));

-- Location: MLABCELL_X37_Y43_N36
\comb_986|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add0~29_sumout\ = SUM(( \comb_986|clok2048MbodCounterRX\(2) ) + ( GND ) + ( \comb_986|Add0~26\ ))
-- \comb_986|Add0~30\ = CARRY(( \comb_986|clok2048MbodCounterRX\(2) ) + ( GND ) + ( \comb_986|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(2),
	cin => \comb_986|Add0~26\,
	sumout => \comb_986|Add0~29_sumout\,
	cout => \comb_986|Add0~30\);

-- Location: FF_X37_Y43_N38
\comb_986|clok2048MbodCounterRX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add0~29_sumout\,
	sclr => \comb_986|clok2048MbodCounterRX[6]~3_combout\,
	ena => \comb_986|clok2048MbodCounterRX~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterRX\(2));

-- Location: MLABCELL_X37_Y43_N39
\comb_986|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add0~17_sumout\ = SUM(( \comb_986|clok2048MbodCounterRX\(3) ) + ( GND ) + ( \comb_986|Add0~30\ ))
-- \comb_986|Add0~18\ = CARRY(( \comb_986|clok2048MbodCounterRX\(3) ) + ( GND ) + ( \comb_986|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(3),
	cin => \comb_986|Add0~30\,
	sumout => \comb_986|Add0~17_sumout\,
	cout => \comb_986|Add0~18\);

-- Location: FF_X37_Y43_N41
\comb_986|clok2048MbodCounterRX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add0~17_sumout\,
	sclr => \comb_986|clok2048MbodCounterRX[6]~3_combout\,
	ena => \comb_986|clok2048MbodCounterRX~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterRX\(3));

-- Location: MLABCELL_X37_Y43_N42
\comb_986|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add0~5_sumout\ = SUM(( \comb_986|clok2048MbodCounterRX\(4) ) + ( GND ) + ( \comb_986|Add0~18\ ))
-- \comb_986|Add0~6\ = CARRY(( \comb_986|clok2048MbodCounterRX\(4) ) + ( GND ) + ( \comb_986|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(4),
	cin => \comb_986|Add0~18\,
	sumout => \comb_986|Add0~5_sumout\,
	cout => \comb_986|Add0~6\);

-- Location: FF_X37_Y43_N44
\comb_986|clok2048MbodCounterRX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add0~5_sumout\,
	sclr => \comb_986|clok2048MbodCounterRX[6]~3_combout\,
	ena => \comb_986|clok2048MbodCounterRX~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterRX\(4));

-- Location: FF_X37_Y43_N47
\comb_986|clok2048MbodCounterRX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add0~9_sumout\,
	sclr => \comb_986|clok2048MbodCounterRX[6]~3_combout\,
	ena => \comb_986|clok2048MbodCounterRX~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterRX\(5));

-- Location: LABCELL_X36_Y43_N24
\comb_986|always0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|always0~5_combout\ = ( !\comb_986|clok2048MbodCounterRX\(6) & ( \comb_986|clok2048MbodCounterRX\(7) & ( (\comb_986|clok2048MbodCounterRX\(1) & (!\comb_986|clok2048MbodCounterRX\(3) & (!\comb_986|clok2048MbodCounterRX\(5) & 
-- \comb_986|clok2048MbodCounterRX\(2)))) ) ) ) # ( \comb_986|clok2048MbodCounterRX\(6) & ( !\comb_986|clok2048MbodCounterRX\(7) & ( (\comb_986|clok2048MbodCounterRX\(1) & (\comb_986|clok2048MbodCounterRX\(3) & (\comb_986|clok2048MbodCounterRX\(5) & 
-- \comb_986|clok2048MbodCounterRX\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterRX\(1),
	datab => \comb_986|ALT_INV_clok2048MbodCounterRX\(3),
	datac => \comb_986|ALT_INV_clok2048MbodCounterRX\(5),
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(2),
	datae => \comb_986|ALT_INV_clok2048MbodCounterRX\(6),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterRX\(7),
	combout => \comb_986|always0~5_combout\);

-- Location: MLABCELL_X37_Y43_N12
\comb_986|always0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|always0~4_combout\ = ( \comb_986|clok2048MbodCounterRX\(7) & ( (!\comb_986|clok2048MbodCounterRX\(1) & !\comb_986|clok2048MbodCounterRX\(2)) ) ) # ( !\comb_986|clok2048MbodCounterRX\(7) & ( (\comb_986|clok2048MbodCounterRX\(1) & 
-- \comb_986|clok2048MbodCounterRX\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterRX\(1),
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(2),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterRX\(7),
	combout => \comb_986|always0~4_combout\);

-- Location: LABCELL_X36_Y43_N36
\comb_986|always0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|always0~7_combout\ = ( !\comb_986|clok2048MbodCounterRX\(0) & ( (\comb_986|always0~4_combout\ & ((!\comb_986|clok2048MbodCounterRX\(5) & (\comb_986|clok2048MbodCounterRX\(4) & (!\comb_986|clok2048MbodCounterRX\(3) & 
-- \comb_986|clok2048MbodCounterRX\(6)))) # (\comb_986|clok2048MbodCounterRX\(5) & (!\comb_986|clok2048MbodCounterRX\(6) & (!\comb_986|clok2048MbodCounterRX\(4) $ (\comb_986|clok2048MbodCounterRX\(3))))))) ) ) # ( \comb_986|clok2048MbodCounterRX\(0) & ( 
-- ((!\comb_986|clok2048MbodCounterRX\(4) & (\comb_986|always0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000011000000110001000001001000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterRX\(5),
	datab => \comb_986|ALT_INV_clok2048MbodCounterRX\(4),
	datac => \comb_986|ALT_INV_always0~5_combout\,
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(6),
	datae => \comb_986|ALT_INV_clok2048MbodCounterRX\(0),
	dataf => \comb_986|ALT_INV_always0~4_combout\,
	datag => \comb_986|ALT_INV_clok2048MbodCounterRX\(3),
	combout => \comb_986|always0~7_combout\);

-- Location: FF_X41_Y42_N14
\comb_986|dataIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \PinRX~input_o\,
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN\(7));

-- Location: FF_X40_Y43_N34
\comb_986|dataIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN\(7),
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN\(6));

-- Location: FF_X40_Y43_N2
\comb_986|dataIN[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN\(6),
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN[5]~DUPLICATE_q\);

-- Location: FF_X40_Y43_N29
\comb_986|dataIN[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN[4]~DUPLICATE_q\);

-- Location: FF_X40_Y43_N20
\comb_986|dataIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN\(3));

-- Location: FF_X40_Y43_N35
\comb_986|dataIN[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN\(7),
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN[6]~DUPLICATE_q\);

-- Location: FF_X40_Y43_N17
\comb_986|dataIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN\(3),
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN\(2));

-- Location: FF_X40_Y43_N49
\comb_986|dataIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN\(2),
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN\(1));

-- Location: FF_X40_Y43_N8
\comb_986|dataIN[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN\(1),
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN[0]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y43_N42
\always0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~6_combout\ = ( \comb_986|dataIN\(2) & ( (\comb_986|dataIN[6]~DUPLICATE_q\ & (!\comb_986|dataIN[0]~DUPLICATE_q\ & !\comb_986|dataIN[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_dataIN[6]~DUPLICATE_q\,
	datab => \comb_986|ALT_INV_dataIN[0]~DUPLICATE_q\,
	datad => \comb_986|ALT_INV_dataIN[4]~DUPLICATE_q\,
	dataf => \comb_986|ALT_INV_dataIN\(2),
	combout => \always0~6_combout\);

-- Location: FF_X40_Y43_N50
\comb_986|dataIN[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN\(2),
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN[1]~DUPLICATE_q\);

-- Location: FF_X40_Y43_N28
\comb_986|dataIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN\(4));

-- Location: LABCELL_X40_Y43_N51
\always0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~7_combout\ = ( \comb_986|dataIN[5]~DUPLICATE_q\ & ( !\comb_986|dataIN\(2) & ( (\comb_986|dataIN[1]~DUPLICATE_q\ & (\comb_986|dataIN[0]~DUPLICATE_q\ & (\comb_986|dataIN\(4) & !\comb_986|dataIN[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_dataIN[1]~DUPLICATE_q\,
	datab => \comb_986|ALT_INV_dataIN[0]~DUPLICATE_q\,
	datac => \comb_986|ALT_INV_dataIN\(4),
	datad => \comb_986|ALT_INV_dataIN[6]~DUPLICATE_q\,
	datae => \comb_986|ALT_INV_dataIN[5]~DUPLICATE_q\,
	dataf => \comb_986|ALT_INV_dataIN\(2),
	combout => \always0~7_combout\);

-- Location: LABCELL_X40_Y43_N54
\always0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~5_combout\ = ( !\comb_986|dataIN[1]~DUPLICATE_q\ & ( !\comb_986|dataIN[5]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_dataIN[5]~DUPLICATE_q\,
	dataf => \comb_986|ALT_INV_dataIN[1]~DUPLICATE_q\,
	combout => \always0~5_combout\);

-- Location: LABCELL_X39_Y42_N0
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( CounterByteFromCameraRows(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~6\ = CARRY(( CounterByteFromCameraRows(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterByteFromCameraRows(0),
	cin => GND,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: IOIBUF_X34_Y45_N18
\HREF~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HREF,
	o => \HREF~input_o\);

-- Location: LABCELL_X40_Y41_N30
\clk25Mgz~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk25Mgz~0_combout\ = ( !\clk25Mgz~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_clk25Mgz~q\,
	combout => \clk25Mgz~0_combout\);

-- Location: FF_X40_Y41_N31
clk25Mgz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk25Mgz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk25Mgz~q\);

-- Location: IOIBUF_X38_Y45_N18
\VSYNC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VSYNC,
	o => \VSYNC~input_o\);

-- Location: LABCELL_X40_Y42_N51
\Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = ( !State(3) & ( (State(0) & (!State(2) & !State(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(0),
	datac => ALT_INV_State(2),
	datad => ALT_INV_State(1),
	dataf => ALT_INV_State(3),
	combout => \Equal10~1_combout\);

-- Location: FF_X40_Y43_N7
\comb_986|dataIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN\(1),
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN\(0));

-- Location: LABCELL_X40_Y43_N12
\Equal19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (\comb_986|dataIN[6]~DUPLICATE_q\ & (\comb_986|dataIN\(2) & (\comb_986|dataIN\(0) & \comb_986|dataIN[4]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_dataIN[6]~DUPLICATE_q\,
	datab => \comb_986|ALT_INV_dataIN\(2),
	datac => \comb_986|ALT_INV_dataIN\(0),
	datad => \comb_986|ALT_INV_dataIN[4]~DUPLICATE_q\,
	combout => \Equal19~0_combout\);

-- Location: LABCELL_X40_Y42_N33
\State[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~2_combout\ = ( \Equal19~0_combout\ & ( \comb_986|dataIN\(7) & ( !\Equal10~1_combout\ ) ) ) # ( !\Equal19~0_combout\ & ( \comb_986|dataIN\(7) & ( !\Equal10~1_combout\ ) ) ) # ( \Equal19~0_combout\ & ( !\comb_986|dataIN\(7) & ( 
-- (!\Equal10~1_combout\ & ((!\always0~5_combout\) # (\comb_986|dataIN\(3)))) ) ) ) # ( !\Equal19~0_combout\ & ( !\comb_986|dataIN\(7) & ( !\Equal10~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal10~1_combout\,
	datac => \ALT_INV_always0~5_combout\,
	datad => \comb_986|ALT_INV_dataIN\(3),
	datae => \ALT_INV_Equal19~0_combout\,
	dataf => \comb_986|ALT_INV_dataIN\(7),
	combout => \State[2]~2_combout\);

-- Location: LABCELL_X36_Y43_N18
\comb_986|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Equal12~0_combout\ = ( !\comb_986|clok2048MbodCounterRX\(2) & ( \comb_986|clok2048MbodCounterRX\(7) & ( (!\comb_986|clok2048MbodCounterRX\(3) & (\comb_986|clok2048MbodCounterRX\(4) & (\comb_986|clok2048MbodCounterRX\(5) & 
-- \comb_986|clok2048MbodCounterRX\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterRX\(3),
	datab => \comb_986|ALT_INV_clok2048MbodCounterRX\(4),
	datac => \comb_986|ALT_INV_clok2048MbodCounterRX\(5),
	datad => \comb_986|ALT_INV_clok2048MbodCounterRX\(6),
	datae => \comb_986|ALT_INV_clok2048MbodCounterRX\(2),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterRX\(7),
	combout => \comb_986|Equal12~0_combout\);

-- Location: MLABCELL_X37_Y43_N15
\comb_986|flagOUT_DataResive~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|flagOUT_DataResive~0_combout\ = ( \comb_986|Equal12~0_combout\ & ( (!\comb_986|clok2048MbodCounterRX\(1) & ((\comb_986|flagOUT_DataResive~q\) # (\comb_986|clok2048MbodCounterRX\(0)))) # (\comb_986|clok2048MbodCounterRX\(1) & 
-- (\comb_986|clok2048MbodCounterRX\(0) & \comb_986|flagOUT_DataResive~q\)) ) ) # ( !\comb_986|Equal12~0_combout\ & ( \comb_986|flagOUT_DataResive~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterRX\(1),
	datac => \comb_986|ALT_INV_clok2048MbodCounterRX\(0),
	datad => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	dataf => \comb_986|ALT_INV_Equal12~0_combout\,
	combout => \comb_986|flagOUT_DataResive~0_combout\);

-- Location: FF_X37_Y43_N16
\comb_986|flagOUT_DataResive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|flagOUT_DataResive~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|flagOUT_DataResive~q\);

-- Location: LABCELL_X40_Y43_N45
\always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = ( \comb_986|dataIN[1]~DUPLICATE_q\ & ( \comb_986|dataIN[5]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_dataIN[5]~DUPLICATE_q\,
	dataf => \comb_986|ALT_INV_dataIN[1]~DUPLICATE_q\,
	combout => \always0~0_combout\);

-- Location: LABCELL_X41_Y42_N15
\always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = ( !State(0) & ( \comb_986|dataIN\(3) & ( (!State(2) & (\comb_986|dataIN\(7) & (!State(3) & !State(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(2),
	datab => \comb_986|ALT_INV_dataIN\(7),
	datac => ALT_INV_State(3),
	datad => ALT_INV_State(1),
	datae => ALT_INV_State(0),
	dataf => \comb_986|ALT_INV_dataIN\(3),
	combout => \always0~1_combout\);

-- Location: LABCELL_X40_Y42_N57
\always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = ( \Equal19~0_combout\ & ( (\always0~0_combout\ & \always0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_always0~0_combout\,
	datad => \ALT_INV_always0~1_combout\,
	dataf => \ALT_INV_Equal19~0_combout\,
	combout => \always0~2_combout\);

-- Location: LABCELL_X40_Y43_N18
\always0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~8_combout\ = ( !\comb_986|dataIN\(2) & ( (!\comb_986|dataIN[6]~DUPLICATE_q\ & (!\comb_986|dataIN\(0) & !\comb_986|dataIN[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_dataIN[6]~DUPLICATE_q\,
	datac => \comb_986|ALT_INV_dataIN\(0),
	datad => \comb_986|ALT_INV_dataIN[4]~DUPLICATE_q\,
	dataf => \comb_986|ALT_INV_dataIN\(2),
	combout => \always0~8_combout\);

-- Location: LABCELL_X41_Y42_N3
\State[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~3_combout\ = ( \Equal19~0_combout\ & ( (\always0~1_combout\ & \always0~5_combout\) ) ) # ( !\Equal19~0_combout\ & ( (\always0~1_combout\ & (\always0~5_combout\ & \always0~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_always0~1_combout\,
	datac => \ALT_INV_always0~5_combout\,
	datad => \ALT_INV_always0~8_combout\,
	dataf => \ALT_INV_Equal19~0_combout\,
	combout => \State[2]~3_combout\);

-- Location: LABCELL_X40_Y42_N45
\State[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~4_combout\ = ( \CounterNededByte[9]~0_combout\ & ( !\comb_986|flagOUT_DataResive~q\ ) ) # ( !\CounterNededByte[9]~0_combout\ & ( (!\comb_986|flagOUT_DataResive~q\) # ((\State[2]~2_combout\ & (!\always0~2_combout\ & !\State[2]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011001100110111001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State[2]~2_combout\,
	datab => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datac => \ALT_INV_always0~2_combout\,
	datad => \ALT_INV_State[2]~3_combout\,
	dataf => \ALT_INV_CounterNededByte[9]~0_combout\,
	combout => \State[2]~4_combout\);

-- Location: LABCELL_X39_Y42_N27
\State[0]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[0]~24_combout\ = ( State(2) & ( (!State(3) & ((!State(1) & (!\VSYNC~input_o\)) # (State(1) & ((\HREF~input_o\))))) ) ) # ( !State(2) & ( (!State(1) & (\HREF~input_o\ & State(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110010001011000000001000101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VSYNC~input_o\,
	datab => ALT_INV_State(1),
	datac => \ALT_INV_HREF~input_o\,
	datad => ALT_INV_State(3),
	dataf => ALT_INV_State(2),
	combout => \State[0]~24_combout\);

-- Location: LABCELL_X41_Y42_N39
\always0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~10_combout\ = ( State(1) & ( (State(2) & (!State(3) & \VSYNC~input_o\)) ) ) # ( !State(1) & ( (\VSYNC~input_o\ & ((!State(2) & ((State(3)))) # (State(2) & (State(0) & !State(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011010000000000001101000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(2),
	datab => ALT_INV_State(0),
	datac => ALT_INV_State(3),
	datad => \ALT_INV_VSYNC~input_o\,
	dataf => ALT_INV_State(1),
	combout => \always0~10_combout\);

-- Location: LABCELL_X39_Y42_N57
\State[0]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[0]~25_combout\ = ( !\always0~10_combout\ & ( \State[2]~1_combout\ & ( (!\always0~9_combout\ & (((\State[3]~11_combout\)))) # (\always0~9_combout\ & (!State(0) & ((\State[0]~24_combout\)))) ) ) ) # ( \always0~10_combout\ & ( !\State[2]~1_combout\ & 
-- ( State(0) ) ) ) # ( !\always0~10_combout\ & ( !\State[2]~1_combout\ & ( State(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110000001110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(0),
	datab => \ALT_INV_State[3]~11_combout\,
	datac => \ALT_INV_always0~9_combout\,
	datad => \ALT_INV_State[0]~24_combout\,
	datae => \ALT_INV_always0~10_combout\,
	dataf => \ALT_INV_State[2]~1_combout\,
	combout => \State[0]~25_combout\);

-- Location: LABCELL_X40_Y42_N21
\State[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[0]~12_combout\ = ( \State[0]~25_combout\ & ( \State[2]~10_combout\ & ( ((\State[2]~2_combout\ & !\CounterNededByte[9]~0_combout\)) # (\State[2]~4_combout\) ) ) ) # ( !\State[0]~25_combout\ & ( \State[2]~10_combout\ & ( (!\State[2]~4_combout\ & 
-- (\State[2]~2_combout\ & !\CounterNededByte[9]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State[2]~4_combout\,
	datac => \ALT_INV_State[2]~2_combout\,
	datad => \ALT_INV_CounterNededByte[9]~0_combout\,
	datae => \ALT_INV_State[0]~25_combout\,
	dataf => \ALT_INV_State[2]~10_combout\,
	combout => \State[0]~12_combout\);

-- Location: FF_X40_Y42_N23
\State[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(0));

-- Location: LABCELL_X39_Y42_N45
\always0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~4_combout\ = ( !State(3) & ( State(2) & ( (!\VSYNC~input_o\ & (!State(1) & !State(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VSYNC~input_o\,
	datac => ALT_INV_State(1),
	datad => ALT_INV_State(0),
	datae => ALT_INV_State(3),
	dataf => ALT_INV_State(2),
	combout => \always0~4_combout\);

-- Location: LABCELL_X39_Y42_N6
\State[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~0_combout\ = ( !State(3) & ( State(2) & ( (!State(0) & (State(1) & ((\VSYNC~input_o\) # (\HREF~input_o\)))) # (State(0) & (((\VSYNC~input_o\)) # (\HREF~input_o\))) ) ) ) # ( State(3) & ( !State(2) & ( (!State(1) & (((!State(0) & \HREF~input_o\)) 
-- # (\VSYNC~input_o\))) ) ) ) # ( !State(3) & ( !State(2) & ( (State(0) & (\VSYNC~input_o\ & State(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101001011110000000000010101001111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(0),
	datab => \ALT_INV_HREF~input_o\,
	datac => \ALT_INV_VSYNC~input_o\,
	datad => ALT_INV_State(1),
	datae => ALT_INV_State(3),
	dataf => ALT_INV_State(2),
	combout => \State[2]~0_combout\);

-- Location: LABCELL_X39_Y42_N39
\State[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~1_combout\ = ( \always0~3_combout\ & ( \State[2]~0_combout\ & ( !\clk25Mgz~q\ ) ) ) # ( !\always0~3_combout\ & ( \State[2]~0_combout\ & ( !\clk25Mgz~q\ ) ) ) # ( \always0~3_combout\ & ( !\State[2]~0_combout\ & ( (!\clk25Mgz~q\ & 
-- ((!\HREF~input_o\) # (\always0~4_combout\))) ) ) ) # ( !\always0~3_combout\ & ( !\State[2]~0_combout\ & ( (!\clk25Mgz~q\ & \always0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010101000101010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk25Mgz~q\,
	datab => \ALT_INV_always0~4_combout\,
	datac => \ALT_INV_HREF~input_o\,
	datae => \ALT_INV_always0~3_combout\,
	dataf => \ALT_INV_State[2]~0_combout\,
	combout => \State[2]~1_combout\);

-- Location: LABCELL_X40_Y42_N48
\State~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~18_combout\ = ( \HREF~input_o\ & ( (!State(0) & (!State(2) & (State(3) & !State(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(0),
	datab => ALT_INV_State(2),
	datac => ALT_INV_State(3),
	datad => ALT_INV_State(1),
	dataf => \ALT_INV_HREF~input_o\,
	combout => \State~18_combout\);

-- Location: LABCELL_X41_Y42_N45
\State[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~17_combout\ = ( !\CounterNededByte[9]~0_combout\ & ( (!\State[2]~3_combout\ & \State[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State[2]~3_combout\,
	datad => \ALT_INV_State[2]~2_combout\,
	dataf => \ALT_INV_CounterNededByte[9]~0_combout\,
	combout => \State[2]~17_combout\);

-- Location: LABCELL_X41_Y42_N18
\State~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~19_combout\ = ( \State[2]~17_combout\ & ( \always0~10_combout\ & ( !\State[2]~4_combout\ ) ) ) # ( \State[2]~17_combout\ & ( !\always0~10_combout\ & ( (!\State[2]~4_combout\) # ((!\always0~9_combout\ & (\State[3]~11_combout\)) # 
-- (\always0~9_combout\ & ((!\State~18_combout\)))) ) ) ) # ( !\State[2]~17_combout\ & ( !\always0~10_combout\ & ( (\State[2]~4_combout\ & ((!\always0~9_combout\ & (\State[3]~11_combout\)) # (\always0~9_combout\ & ((!\State~18_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001100111101011111110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State[3]~11_combout\,
	datab => \ALT_INV_State~18_combout\,
	datac => \ALT_INV_State[2]~4_combout\,
	datad => \ALT_INV_always0~9_combout\,
	datae => \ALT_INV_State[2]~17_combout\,
	dataf => \ALT_INV_always0~10_combout\,
	combout => \State~19_combout\);

-- Location: LABCELL_X41_Y42_N54
\State[2]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~20_combout\ = ( \State~19_combout\ & ( (\State[2]~10_combout\ & (((!\State[2]~4_combout\) # (\State[2]~1_combout\)) # (State(2)))) ) ) # ( !\State~19_combout\ & ( (State(2) & (!\State[2]~1_combout\ & (\State[2]~4_combout\ & 
-- \State[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000111101110000000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(2),
	datab => \ALT_INV_State[2]~1_combout\,
	datac => \ALT_INV_State[2]~4_combout\,
	datad => \ALT_INV_State[2]~10_combout\,
	dataf => \ALT_INV_State~19_combout\,
	combout => \State[2]~20_combout\);

-- Location: FF_X41_Y42_N56
\State[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(2));

-- Location: LABCELL_X41_Y42_N24
\CounterPauseForTransmitUART~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART~0_combout\ = ( State(0) & ( (State(3) & (State(1) & State(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_State(3),
	datac => ALT_INV_State(1),
	datad => ALT_INV_State(2),
	dataf => ALT_INV_State(0),
	combout => \CounterPauseForTransmitUART~0_combout\);

-- Location: MLABCELL_X42_Y42_N57
\Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = ( !State(2) & ( !State(3) & ( (State(1) & !State(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_State(1),
	datad => ALT_INV_State(0),
	datae => ALT_INV_State(2),
	dataf => ALT_INV_State(3),
	combout => \Equal10~2_combout\);

-- Location: MLABCELL_X42_Y42_N6
\CounterPauseForTransmitUART[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[6]~1_combout\ = ( !\Equal10~2_combout\ & ( (!\CounterPauseForTransmitUART~0_combout\) # ((\WideOr0~1_combout\ & \WideOr0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110011111100001111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideOr0~1_combout\,
	datac => \ALT_INV_CounterPauseForTransmitUART~0_combout\,
	datad => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_Equal10~2_combout\,
	combout => \CounterPauseForTransmitUART[6]~1_combout\);

-- Location: MLABCELL_X42_Y42_N39
\CounterPauseForTransmitUART[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[6]~2_combout\ = ( State(3) & ( (State(0) & (State(1) & State(2))) ) ) # ( !State(3) & ( (!State(0) & (State(1) & !State(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(0),
	datac => ALT_INV_State(1),
	datad => ALT_INV_State(2),
	dataf => ALT_INV_State(3),
	combout => \CounterPauseForTransmitUART[6]~2_combout\);

-- Location: FF_X42_Y42_N17
\CounterPauseForTransmitUART[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(5));

-- Location: FF_X42_Y42_N14
\CounterPauseForTransmitUART[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(4));

-- Location: FF_X42_Y42_N29
\CounterPauseForTransmitUART[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(2));

-- Location: FF_X42_Y42_N20
\CounterPauseForTransmitUART[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(1));

-- Location: FF_X42_Y42_N25
\CounterPauseForTransmitUART[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterPauseForTransmitUART[0]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y42_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \CounterPauseForTransmitUART[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( \CounterPauseForTransmitUART[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CounterPauseForTransmitUART[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: LABCELL_X43_Y42_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \CounterPauseForTransmitUART[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( \CounterPauseForTransmitUART[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CounterPauseForTransmitUART[1]~DUPLICATE_q\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: MLABCELL_X42_Y42_N30
\CounterPauseForTransmitUART[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[1]~5_combout\ = ( !\Add3~5_sumout\ & ( (\CounterPauseForTransmitUART[6]~2_combout\ & ((!\WideOr0~1_combout\) # (!\WideOr0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~1_combout\,
	datab => \ALT_INV_CounterPauseForTransmitUART[6]~2_combout\,
	datad => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_Add3~5_sumout\,
	combout => \CounterPauseForTransmitUART[1]~5_combout\);

-- Location: MLABCELL_X42_Y42_N18
\CounterPauseForTransmitUART[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[1]~6_combout\ = ( CounterPauseForTransmitUART(1) & ( \CounterPauseForTransmitUART[1]~5_combout\ & ( (\CounterPauseForTransmitUART[6]~1_combout\ & ((!\comb_986|flagOUT_DataResive~q\) # ((!\CounterNededByte[9]~0_combout\ & 
-- !\always0~2_combout\)))) ) ) ) # ( CounterPauseForTransmitUART(1) & ( !\CounterPauseForTransmitUART[1]~5_combout\ ) ) # ( !CounterPauseForTransmitUART(1) & ( !\CounterPauseForTransmitUART[1]~5_combout\ & ( (!\CounterPauseForTransmitUART[6]~1_combout\) # 
-- ((\comb_986|flagOUT_DataResive~q\ & ((\always0~2_combout\) # (\CounterNededByte[9]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011111111111111111111100000000000000000011001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CounterNededByte[9]~0_combout\,
	datab => \ALT_INV_CounterPauseForTransmitUART[6]~1_combout\,
	datac => \ALT_INV_always0~2_combout\,
	datad => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datae => ALT_INV_CounterPauseForTransmitUART(1),
	dataf => \ALT_INV_CounterPauseForTransmitUART[1]~5_combout\,
	combout => \CounterPauseForTransmitUART[1]~6_combout\);

-- Location: FF_X42_Y42_N19
\CounterPauseForTransmitUART[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterPauseForTransmitUART[1]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y42_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \CounterPauseForTransmitUART[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \CounterPauseForTransmitUART[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CounterPauseForTransmitUART[2]~DUPLICATE_q\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: MLABCELL_X42_Y42_N9
\CounterPauseForTransmitUART[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[2]~7_combout\ = ( !\Add3~9_sumout\ & ( (\CounterPauseForTransmitUART[6]~2_combout\ & ((!\WideOr0~1_combout\) # (!\WideOr0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideOr0~1_combout\,
	datac => \ALT_INV_CounterPauseForTransmitUART[6]~2_combout\,
	datad => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_Add3~9_sumout\,
	combout => \CounterPauseForTransmitUART[2]~7_combout\);

-- Location: MLABCELL_X42_Y42_N27
\CounterPauseForTransmitUART[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[2]~8_combout\ = ( CounterPauseForTransmitUART(2) & ( \CounterPauseForTransmitUART[2]~7_combout\ & ( (\CounterPauseForTransmitUART[6]~1_combout\ & ((!\comb_986|flagOUT_DataResive~q\) # ((!\CounterNededByte[9]~0_combout\ & 
-- !\always0~2_combout\)))) ) ) ) # ( CounterPauseForTransmitUART(2) & ( !\CounterPauseForTransmitUART[2]~7_combout\ ) ) # ( !CounterPauseForTransmitUART(2) & ( !\CounterPauseForTransmitUART[2]~7_combout\ & ( (!\CounterPauseForTransmitUART[6]~1_combout\) # 
-- ((\comb_986|flagOUT_DataResive~q\ & ((\always0~2_combout\) # (\CounterNededByte[9]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001111111111111111111100000000000000000011001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CounterNededByte[9]~0_combout\,
	datab => \ALT_INV_CounterPauseForTransmitUART[6]~1_combout\,
	datac => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datad => \ALT_INV_always0~2_combout\,
	datae => ALT_INV_CounterPauseForTransmitUART(2),
	dataf => \ALT_INV_CounterPauseForTransmitUART[2]~7_combout\,
	combout => \CounterPauseForTransmitUART[2]~8_combout\);

-- Location: FF_X42_Y42_N28
\CounterPauseForTransmitUART[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterPauseForTransmitUART[2]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y42_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( CounterPauseForTransmitUART(3) ) + ( VCC ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( CounterPauseForTransmitUART(3) ) + ( VCC ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(3),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: MLABCELL_X42_Y42_N48
\CounterPauseForTransmitUART[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[3]~9_combout\ = ( !\Add3~13_sumout\ & ( (\CounterPauseForTransmitUART[6]~2_combout\ & ((!\WideOr0~1_combout\) # (!\WideOr0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~1_combout\,
	datab => \ALT_INV_CounterPauseForTransmitUART[6]~2_combout\,
	datad => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_Add3~13_sumout\,
	combout => \CounterPauseForTransmitUART[3]~9_combout\);

-- Location: MLABCELL_X42_Y42_N21
\CounterPauseForTransmitUART[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[3]~10_combout\ = ( CounterPauseForTransmitUART(3) & ( \CounterPauseForTransmitUART[3]~9_combout\ & ( (\CounterPauseForTransmitUART[6]~1_combout\ & ((!\comb_986|flagOUT_DataResive~q\) # ((!\CounterNededByte[9]~0_combout\ & 
-- !\always0~2_combout\)))) ) ) ) # ( CounterPauseForTransmitUART(3) & ( !\CounterPauseForTransmitUART[3]~9_combout\ ) ) # ( !CounterPauseForTransmitUART(3) & ( !\CounterPauseForTransmitUART[3]~9_combout\ & ( (!\CounterPauseForTransmitUART[6]~1_combout\) # 
-- ((\comb_986|flagOUT_DataResive~q\ & ((\always0~2_combout\) # (\CounterNededByte[9]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001111111111111111111100000000000000000011001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CounterNededByte[9]~0_combout\,
	datab => \ALT_INV_CounterPauseForTransmitUART[6]~1_combout\,
	datac => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datad => \ALT_INV_always0~2_combout\,
	datae => ALT_INV_CounterPauseForTransmitUART(3),
	dataf => \ALT_INV_CounterPauseForTransmitUART[3]~9_combout\,
	combout => \CounterPauseForTransmitUART[3]~10_combout\);

-- Location: FF_X42_Y42_N22
\CounterPauseForTransmitUART[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(3));

-- Location: LABCELL_X43_Y42_N12
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \CounterPauseForTransmitUART[4]~DUPLICATE_q\ ) + ( VCC ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( \CounterPauseForTransmitUART[4]~DUPLICATE_q\ ) + ( VCC ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CounterPauseForTransmitUART[4]~DUPLICATE_q\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X42_Y42_N33
\CounterPauseForTransmitUART[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[4]~11_combout\ = ( !\Add3~17_sumout\ & ( (\CounterPauseForTransmitUART[6]~2_combout\ & ((!\WideOr0~1_combout\) # (!\WideOr0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~1_combout\,
	datab => \ALT_INV_CounterPauseForTransmitUART[6]~2_combout\,
	datad => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_Add3~17_sumout\,
	combout => \CounterPauseForTransmitUART[4]~11_combout\);

-- Location: MLABCELL_X42_Y42_N12
\CounterPauseForTransmitUART[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[4]~12_combout\ = ( CounterPauseForTransmitUART(4) & ( \CounterPauseForTransmitUART[4]~11_combout\ & ( (\CounterPauseForTransmitUART[6]~1_combout\ & ((!\comb_986|flagOUT_DataResive~q\) # ((!\CounterNededByte[9]~0_combout\ & 
-- !\always0~2_combout\)))) ) ) ) # ( CounterPauseForTransmitUART(4) & ( !\CounterPauseForTransmitUART[4]~11_combout\ ) ) # ( !CounterPauseForTransmitUART(4) & ( !\CounterPauseForTransmitUART[4]~11_combout\ & ( (!\CounterPauseForTransmitUART[6]~1_combout\) # 
-- ((\comb_986|flagOUT_DataResive~q\ & ((\always0~2_combout\) # (\CounterNededByte[9]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011111111111111111111100000000000000000011001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CounterNededByte[9]~0_combout\,
	datab => \ALT_INV_CounterPauseForTransmitUART[6]~1_combout\,
	datac => \ALT_INV_always0~2_combout\,
	datad => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datae => ALT_INV_CounterPauseForTransmitUART(4),
	dataf => \ALT_INV_CounterPauseForTransmitUART[4]~11_combout\,
	combout => \CounterPauseForTransmitUART[4]~12_combout\);

-- Location: FF_X42_Y42_N13
\CounterPauseForTransmitUART[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterPauseForTransmitUART[4]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y42_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \CounterPauseForTransmitUART[5]~DUPLICATE_q\ ) + ( VCC ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \CounterPauseForTransmitUART[5]~DUPLICATE_q\ ) + ( VCC ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CounterPauseForTransmitUART[5]~DUPLICATE_q\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X43_Y42_N30
\CounterPauseForTransmitUART[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[5]~13_combout\ = ( \WideOr0~0_combout\ & ( !\Add3~21_sumout\ & ( (\CounterPauseForTransmitUART[6]~2_combout\ & !\WideOr0~1_combout\) ) ) ) # ( !\WideOr0~0_combout\ & ( !\Add3~21_sumout\ & ( 
-- \CounterPauseForTransmitUART[6]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CounterPauseForTransmitUART[6]~2_combout\,
	datac => \ALT_INV_WideOr0~1_combout\,
	datae => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_Add3~21_sumout\,
	combout => \CounterPauseForTransmitUART[5]~13_combout\);

-- Location: MLABCELL_X42_Y42_N15
\CounterPauseForTransmitUART[5]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[5]~14_combout\ = ( CounterPauseForTransmitUART(5) & ( \CounterPauseForTransmitUART[5]~13_combout\ & ( (\CounterPauseForTransmitUART[6]~1_combout\ & ((!\comb_986|flagOUT_DataResive~q\) # ((!\CounterNededByte[9]~0_combout\ & 
-- !\always0~2_combout\)))) ) ) ) # ( CounterPauseForTransmitUART(5) & ( !\CounterPauseForTransmitUART[5]~13_combout\ ) ) # ( !CounterPauseForTransmitUART(5) & ( !\CounterPauseForTransmitUART[5]~13_combout\ & ( (!\CounterPauseForTransmitUART[6]~1_combout\) # 
-- ((\comb_986|flagOUT_DataResive~q\ & ((\always0~2_combout\) # (\CounterNededByte[9]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001111111111111111111100000000000000000011001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CounterNededByte[9]~0_combout\,
	datab => \ALT_INV_CounterPauseForTransmitUART[6]~1_combout\,
	datac => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datad => \ALT_INV_always0~2_combout\,
	datae => ALT_INV_CounterPauseForTransmitUART(5),
	dataf => \ALT_INV_CounterPauseForTransmitUART[5]~13_combout\,
	combout => \CounterPauseForTransmitUART[5]~14_combout\);

-- Location: FF_X42_Y42_N16
\CounterPauseForTransmitUART[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterPauseForTransmitUART[5]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y42_N18
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( CounterPauseForTransmitUART(6) ) + ( VCC ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( CounterPauseForTransmitUART(6) ) + ( VCC ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(6),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X43_Y42_N39
\CounterPauseForTransmitUART[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[6]~15_combout\ = ( \WideOr0~0_combout\ & ( !\Add3~25_sumout\ & ( (!\WideOr0~1_combout\ & \CounterPauseForTransmitUART[6]~2_combout\) ) ) ) # ( !\WideOr0~0_combout\ & ( !\Add3~25_sumout\ & ( 
-- \CounterPauseForTransmitUART[6]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~1_combout\,
	datad => \ALT_INV_CounterPauseForTransmitUART[6]~2_combout\,
	datae => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_Add3~25_sumout\,
	combout => \CounterPauseForTransmitUART[6]~15_combout\);

-- Location: LABCELL_X43_Y42_N27
\CounterPauseForTransmitUART[6]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[6]~16_combout\ = ( CounterPauseForTransmitUART(6) & ( \CounterPauseForTransmitUART[6]~15_combout\ & ( (\CounterPauseForTransmitUART[6]~1_combout\ & ((!\comb_986|flagOUT_DataResive~q\) # ((!\CounterNededByte[9]~0_combout\ & 
-- !\always0~2_combout\)))) ) ) ) # ( CounterPauseForTransmitUART(6) & ( !\CounterPauseForTransmitUART[6]~15_combout\ ) ) # ( !CounterPauseForTransmitUART(6) & ( !\CounterPauseForTransmitUART[6]~15_combout\ & ( (!\CounterPauseForTransmitUART[6]~1_combout\) # 
-- ((\comb_986|flagOUT_DataResive~q\ & ((\always0~2_combout\) # (\CounterNededByte[9]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110111011111111111111111100000000000000000101010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CounterPauseForTransmitUART[6]~1_combout\,
	datab => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datac => \ALT_INV_CounterNededByte[9]~0_combout\,
	datad => \ALT_INV_always0~2_combout\,
	datae => ALT_INV_CounterPauseForTransmitUART(6),
	dataf => \ALT_INV_CounterPauseForTransmitUART[6]~15_combout\,
	combout => \CounterPauseForTransmitUART[6]~16_combout\);

-- Location: FF_X43_Y42_N29
\CounterPauseForTransmitUART[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(6));

-- Location: LABCELL_X43_Y42_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( CounterPauseForTransmitUART(7) ) + ( VCC ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterPauseForTransmitUART(7),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\);

-- Location: LABCELL_X43_Y42_N51
\CounterPauseForTransmitUART[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[7]~17_combout\ = ( \CounterPauseForTransmitUART[6]~2_combout\ & ( (!\Add3~29_sumout\ & ((!\WideOr0~1_combout\) # (!\WideOr0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~1_combout\,
	datac => \ALT_INV_WideOr0~0_combout\,
	datad => \ALT_INV_Add3~29_sumout\,
	dataf => \ALT_INV_CounterPauseForTransmitUART[6]~2_combout\,
	combout => \CounterPauseForTransmitUART[7]~17_combout\);

-- Location: LABCELL_X43_Y42_N42
\CounterPauseForTransmitUART[7]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[7]~18_combout\ = ( CounterPauseForTransmitUART(7) & ( \CounterPauseForTransmitUART[7]~17_combout\ & ( (\CounterPauseForTransmitUART[6]~1_combout\ & ((!\comb_986|flagOUT_DataResive~q\) # ((!\CounterNededByte[9]~0_combout\ & 
-- !\always0~2_combout\)))) ) ) ) # ( CounterPauseForTransmitUART(7) & ( !\CounterPauseForTransmitUART[7]~17_combout\ ) ) # ( !CounterPauseForTransmitUART(7) & ( !\CounterPauseForTransmitUART[7]~17_combout\ & ( (!\CounterPauseForTransmitUART[6]~1_combout\) # 
-- ((\comb_986|flagOUT_DataResive~q\ & ((\always0~2_combout\) # (\CounterNededByte[9]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111111111111111111111100000000000000000101010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CounterPauseForTransmitUART[6]~1_combout\,
	datab => \ALT_INV_CounterNededByte[9]~0_combout\,
	datac => \ALT_INV_always0~2_combout\,
	datad => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datae => ALT_INV_CounterPauseForTransmitUART(7),
	dataf => \ALT_INV_CounterPauseForTransmitUART[7]~17_combout\,
	combout => \CounterPauseForTransmitUART[7]~18_combout\);

-- Location: FF_X43_Y42_N44
\CounterPauseForTransmitUART[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(7));

-- Location: LABCELL_X43_Y42_N48
\WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = ( !CounterPauseForTransmitUART(7) & ( !CounterPauseForTransmitUART(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(6),
	dataf => ALT_INV_CounterPauseForTransmitUART(7),
	combout => \WideOr0~1_combout\);

-- Location: MLABCELL_X42_Y42_N36
\State~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~5_combout\ = ( \Equal10~2_combout\ & ( (!\WideOr0~0_combout\) # (!\WideOr0~1_combout\) ) ) # ( !\Equal10~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideOr0~0_combout\,
	datad => \ALT_INV_WideOr0~1_combout\,
	dataf => \ALT_INV_Equal10~2_combout\,
	combout => \State~5_combout\);

-- Location: MLABCELL_X37_Y42_N48
\CounterNededByte[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterNededByte[9]~1_combout\ = ( \CounterNededByte[9]~0_combout\ & ( (!\State~5_combout\) # (\comb_986|flagOUT_DataResive~q\) ) ) # ( !\CounterNededByte[9]~0_combout\ & ( !\State~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datad => \ALT_INV_State~5_combout\,
	dataf => \ALT_INV_CounterNededByte[9]~0_combout\,
	combout => \CounterNededByte[9]~1_combout\);

-- Location: FF_X37_Y42_N5
\CounterNededByte[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	asdata => VCC,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterNededByte[1]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y42_N0
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( CounterNededByte(0) ) + ( VCC ) + ( !VCC ))
-- \Add4~6\ = CARRY(( CounterNededByte(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterNededByte(0),
	cin => GND,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: FF_X37_Y42_N2
\CounterNededByte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~5_sumout\,
	asdata => VCC,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(0));

-- Location: MLABCELL_X37_Y42_N3
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( \CounterNededByte[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Add4~6\ ))
-- \Add4~2\ = CARRY(( \CounterNededByte[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CounterNededByte[1]~DUPLICATE_q\,
	cin => \Add4~6\,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: FF_X37_Y42_N4
\CounterNededByte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~1_sumout\,
	asdata => VCC,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(1));

-- Location: MLABCELL_X37_Y42_N6
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( CounterNededByte(2) ) + ( VCC ) + ( \Add4~2\ ))
-- \Add4~58\ = CARRY(( CounterNededByte(2) ) + ( VCC ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterNededByte(2),
	cin => \Add4~2\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\);

-- Location: LABCELL_X41_Y43_N39
\always0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~12_combout\ = ( !\comb_986|dataIN\(3) & ( \Equal10~0_combout\ & ( (\always0~7_combout\ & !\comb_986|dataIN\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_always0~7_combout\,
	datad => \comb_986|ALT_INV_dataIN\(7),
	datae => \comb_986|ALT_INV_dataIN\(3),
	dataf => \ALT_INV_Equal10~0_combout\,
	combout => \always0~12_combout\);

-- Location: FF_X37_Y42_N7
\CounterNededByte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~57_sumout\,
	asdata => \always0~12_combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(2));

-- Location: MLABCELL_X37_Y42_N9
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( CounterNededByte(3) ) + ( VCC ) + ( \Add4~58\ ))
-- \Add4~54\ = CARRY(( CounterNededByte(3) ) + ( VCC ) + ( \Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(3),
	cin => \Add4~58\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: FF_X37_Y42_N11
\CounterNededByte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~53_sumout\,
	asdata => \always0~12_combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(3));

-- Location: MLABCELL_X37_Y42_N12
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( CounterNededByte(4) ) + ( VCC ) + ( \Add4~54\ ))
-- \Add4~50\ = CARRY(( CounterNededByte(4) ) + ( VCC ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CounterNededByte(4),
	cin => \Add4~54\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: FF_X37_Y42_N13
\CounterNededByte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~49_sumout\,
	asdata => \always0~12_combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(4));

-- Location: MLABCELL_X37_Y42_N15
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( CounterNededByte(5) ) + ( VCC ) + ( \Add4~50\ ))
-- \Add4~46\ = CARRY(( CounterNededByte(5) ) + ( VCC ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(5),
	cin => \Add4~50\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: FF_X37_Y42_N17
\CounterNededByte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~45_sumout\,
	asdata => VCC,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(5));

-- Location: MLABCELL_X37_Y42_N18
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( CounterNededByte(6) ) + ( VCC ) + ( \Add4~46\ ))
-- \Add4~42\ = CARRY(( CounterNededByte(6) ) + ( VCC ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(6),
	cin => \Add4~46\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: FF_X37_Y42_N20
\CounterNededByte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~41_sumout\,
	asdata => VCC,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(6));

-- Location: MLABCELL_X37_Y42_N21
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( CounterNededByte(7) ) + ( VCC ) + ( \Add4~42\ ))
-- \Add4~38\ = CARRY(( CounterNededByte(7) ) + ( VCC ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(7),
	cin => \Add4~42\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: FF_X37_Y42_N22
\CounterNededByte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~37_sumout\,
	asdata => \always0~12_combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(7));

-- Location: MLABCELL_X37_Y42_N24
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( CounterNededByte(8) ) + ( VCC ) + ( \Add4~38\ ))
-- \Add4~34\ = CARRY(( CounterNededByte(8) ) + ( VCC ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(8),
	cin => \Add4~38\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: MLABCELL_X37_Y41_N15
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X37_Y42_N26
\CounterNededByte[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~33_sumout\,
	asdata => \~GND~combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(8));

-- Location: MLABCELL_X37_Y42_N27
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( CounterNededByte(9) ) + ( VCC ) + ( \Add4~34\ ))
-- \Add4~30\ = CARRY(( CounterNededByte(9) ) + ( VCC ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterNededByte(9),
	cin => \Add4~34\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: FF_X37_Y42_N29
\CounterNededByte[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~29_sumout\,
	asdata => \always0~12_combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(9));

-- Location: MLABCELL_X37_Y42_N30
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( \CounterNededByte[10]~DUPLICATE_q\ ) + ( VCC ) + ( \Add4~30\ ))
-- \Add4~26\ = CARRY(( \CounterNededByte[10]~DUPLICATE_q\ ) + ( VCC ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CounterNededByte[10]~DUPLICATE_q\,
	cin => \Add4~30\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X37_Y42_N31
\CounterNededByte[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~25_sumout\,
	asdata => \~GND~combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterNededByte[10]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y42_N33
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( CounterNededByte(11) ) + ( VCC ) + ( \Add4~26\ ))
-- \Add4~22\ = CARRY(( CounterNededByte(11) ) + ( VCC ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterNededByte(11),
	cin => \Add4~26\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X37_Y42_N35
\CounterNededByte[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~21_sumout\,
	asdata => \always0~12_combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(11));

-- Location: MLABCELL_X37_Y42_N36
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( CounterNededByte(12) ) + ( VCC ) + ( \Add4~22\ ))
-- \Add4~18\ = CARRY(( CounterNededByte(12) ) + ( VCC ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(12),
	cin => \Add4~22\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X37_Y42_N38
\CounterNededByte[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~17_sumout\,
	asdata => \~GND~combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(12));

-- Location: MLABCELL_X37_Y42_N39
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( CounterNededByte(13) ) + ( VCC ) + ( \Add4~18\ ))
-- \Add4~10\ = CARRY(( CounterNededByte(13) ) + ( VCC ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(13),
	cin => \Add4~18\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: FF_X37_Y42_N40
\CounterNededByte[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~9_sumout\,
	asdata => \~GND~combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(13));

-- Location: MLABCELL_X37_Y42_N42
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( CounterNededByte(14) ) + ( VCC ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterNededByte(14),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\);

-- Location: FF_X37_Y42_N43
\CounterNededByte[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~13_sumout\,
	asdata => \always0~12_combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(14));

-- Location: LABCELL_X39_Y42_N24
\State~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~7_combout\ = ( !CounterNededByte(13) & ( (!CounterNededByte(14) & !CounterNededByte(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(14),
	datad => ALT_INV_CounterNededByte(0),
	dataf => ALT_INV_CounterNededByte(13),
	combout => \State~7_combout\);

-- Location: MLABCELL_X37_Y42_N51
\State~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~9_combout\ = ( !CounterNededByte(3) & ( (!CounterNededByte(6) & (!CounterNededByte(4) & (!CounterNededByte(5) & !CounterNededByte(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterNededByte(6),
	datab => ALT_INV_CounterNededByte(4),
	datac => ALT_INV_CounterNededByte(5),
	datad => ALT_INV_CounterNededByte(2),
	dataf => ALT_INV_CounterNededByte(3),
	combout => \State~9_combout\);

-- Location: FF_X37_Y42_N32
\CounterNededByte[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add4~25_sumout\,
	asdata => \~GND~combout\,
	sload => \State~5_combout\,
	ena => \CounterNededByte[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(10));

-- Location: MLABCELL_X37_Y42_N54
\State~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~8_combout\ = ( !CounterNededByte(12) & ( !CounterNededByte(11) & ( (!CounterNededByte(8) & (!CounterNededByte(7) & (!CounterNededByte(9) & !CounterNededByte(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterNededByte(8),
	datab => ALT_INV_CounterNededByte(7),
	datac => ALT_INV_CounterNededByte(9),
	datad => ALT_INV_CounterNededByte(10),
	datae => ALT_INV_CounterNededByte(12),
	dataf => ALT_INV_CounterNededByte(11),
	combout => \State~8_combout\);

-- Location: LABCELL_X40_Y42_N6
\State[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~10_combout\ = ( !\State~6_combout\ & ( \State~5_combout\ ) ) # ( !\State~6_combout\ & ( !\State~5_combout\ & ( ((!\State~7_combout\) # ((!\State~9_combout\) # (!\State~8_combout\))) # (CounterNededByte(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterNededByte(1),
	datab => \ALT_INV_State~7_combout\,
	datac => \ALT_INV_State~9_combout\,
	datad => \ALT_INV_State~8_combout\,
	datae => \ALT_INV_State~6_combout\,
	dataf => \ALT_INV_State~5_combout\,
	combout => \State[2]~10_combout\);

-- Location: LABCELL_X41_Y42_N57
\always0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~11_combout\ = ( State(1) & ( (State(2) & !State(3)) ) ) # ( !State(1) & ( (!State(2) & (State(3))) # (State(2) & (!State(3) & State(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011010000010100101101001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(2),
	datac => ALT_INV_State(3),
	datad => ALT_INV_State(0),
	dataf => ALT_INV_State(1),
	combout => \always0~11_combout\);

-- Location: LABCELL_X41_Y42_N0
\State[2]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~26_combout\ = ( \always0~11_combout\ & ( (\always0~3_combout\ & (!\HREF~input_o\ & !\VSYNC~input_o\)) ) ) # ( !\always0~11_combout\ & ( (\always0~3_combout\ & !\HREF~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_always0~3_combout\,
	datac => \ALT_INV_HREF~input_o\,
	datad => \ALT_INV_VSYNC~input_o\,
	dataf => \ALT_INV_always0~11_combout\,
	combout => \State[2]~26_combout\);

-- Location: LABCELL_X41_Y42_N48
\State[2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~14_combout\ = ( \State[2]~2_combout\ & ( \CounterNededByte[9]~0_combout\ & ( (!\comb_986|flagOUT_DataResive~q\ & \State[2]~26_combout\) ) ) ) # ( !\State[2]~2_combout\ & ( \CounterNededByte[9]~0_combout\ & ( (!\comb_986|flagOUT_DataResive~q\ & 
-- \State[2]~26_combout\) ) ) ) # ( \State[2]~2_combout\ & ( !\CounterNededByte[9]~0_combout\ & ( (\State[2]~26_combout\ & ((!\comb_986|flagOUT_DataResive~q\) # ((!\State[2]~3_combout\ & !\always0~2_combout\)))) ) ) ) # ( !\State[2]~2_combout\ & ( 
-- !\CounterNededByte[9]~0_combout\ & ( (!\comb_986|flagOUT_DataResive~q\ & \State[2]~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011100000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State[2]~3_combout\,
	datab => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datac => \ALT_INV_State[2]~26_combout\,
	datad => \ALT_INV_always0~2_combout\,
	datae => \ALT_INV_State[2]~2_combout\,
	dataf => \ALT_INV_CounterNededByte[9]~0_combout\,
	combout => \State[2]~14_combout\);

-- Location: LABCELL_X40_Y42_N24
\State[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~13_combout\ = ( \State[2]~4_combout\ & ( \State[2]~10_combout\ & ( ((!\State[2]~0_combout\ & (!\always0~4_combout\ & \always0~9_combout\))) # (\clk25Mgz~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk25Mgz~q\,
	datab => \ALT_INV_State[2]~0_combout\,
	datac => \ALT_INV_always0~4_combout\,
	datad => \ALT_INV_always0~9_combout\,
	datae => \ALT_INV_State[2]~4_combout\,
	dataf => \ALT_INV_State[2]~10_combout\,
	combout => \State[2]~13_combout\);

-- Location: LABCELL_X41_Y42_N42
\Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = ( !State(1) & ( (State(3) & (!State(2) & !State(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_State(3),
	datac => ALT_INV_State(2),
	datad => ALT_INV_State(0),
	dataf => ALT_INV_State(1),
	combout => \Equal10~3_combout\);

-- Location: LABCELL_X41_Y42_N6
\State[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[3]~21_combout\ = ( \State[2]~17_combout\ & ( \State[2]~4_combout\ & ( (\HREF~input_o\ & (\Equal10~3_combout\ & ((!\always0~11_combout\) # (!\VSYNC~input_o\)))) ) ) ) # ( !\State[2]~17_combout\ & ( \State[2]~4_combout\ & ( (\HREF~input_o\ & 
-- (\Equal10~3_combout\ & ((!\always0~11_combout\) # (!\VSYNC~input_o\)))) ) ) ) # ( \State[2]~17_combout\ & ( !\State[2]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010101000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HREF~input_o\,
	datab => \ALT_INV_always0~11_combout\,
	datac => \ALT_INV_VSYNC~input_o\,
	datad => \ALT_INV_Equal10~3_combout\,
	datae => \ALT_INV_State[2]~17_combout\,
	dataf => \ALT_INV_State[2]~4_combout\,
	combout => \State[3]~21_combout\);

-- Location: LABCELL_X41_Y42_N30
\State[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[3]~22_combout\ = ( State(3) & ( \State[3]~21_combout\ & ( ((\State[2]~10_combout\ & ((!\State[3]~11_combout\) # (!\State[2]~14_combout\)))) # (\State[2]~13_combout\) ) ) ) # ( !State(3) & ( \State[3]~21_combout\ & ( (\State[2]~10_combout\ & 
-- (!\State[2]~13_combout\ & ((!\State[3]~11_combout\) # (!\State[2]~14_combout\)))) ) ) ) # ( State(3) & ( !\State[3]~21_combout\ & ( ((\State[2]~10_combout\ & (!\State[3]~11_combout\ & \State[2]~14_combout\))) # (\State[2]~13_combout\) ) ) ) # ( !State(3) 
-- & ( !\State[3]~21_combout\ & ( (\State[2]~10_combout\ & (!\State[3]~11_combout\ & (\State[2]~14_combout\ & !\State[2]~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001001111111101010100000000000101010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State[2]~10_combout\,
	datab => \ALT_INV_State[3]~11_combout\,
	datac => \ALT_INV_State[2]~14_combout\,
	datad => \ALT_INV_State[2]~13_combout\,
	datae => ALT_INV_State(3),
	dataf => \ALT_INV_State[3]~21_combout\,
	combout => \State[3]~22_combout\);

-- Location: FF_X41_Y42_N32
\State[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(3));

-- Location: LABCELL_X41_Y42_N27
\always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~3_combout\ = ( State(0) & ( (!State(1) & (!State(3) $ (!State(2)))) ) ) # ( !State(0) & ( (State(1) & (!State(3) & State(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(1),
	datab => ALT_INV_State(3),
	datad => ALT_INV_State(2),
	dataf => ALT_INV_State(0),
	combout => \always0~3_combout\);

-- Location: LABCELL_X40_Y42_N42
\always0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~9_combout\ = ( \always0~3_combout\ & ( \HREF~input_o\ ) ) # ( !\always0~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HREF~input_o\,
	dataf => \ALT_INV_always0~3_combout\,
	combout => \always0~9_combout\);

-- Location: LABCELL_X39_Y42_N33
\Equal10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (!State(0) & !State(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(0),
	datac => ALT_INV_State(1),
	combout => \Equal10~4_combout\);

-- Location: LABCELL_X40_Y43_N39
\State[2]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[2]~23_combout\ = ( State(2) & ( !State(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_State(3),
	dataf => ALT_INV_State(2),
	combout => \State[2]~23_combout\);

-- Location: LABCELL_X39_Y42_N18
\CounterByteFromCameraRows[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterByteFromCameraRows[1]~0_combout\ = ( \always0~3_combout\ & ( \State[2]~23_combout\ & ( (!\clk25Mgz~q\ & ((!\HREF~input_o\) # ((\Equal10~4_combout\ & !\VSYNC~input_o\)))) ) ) ) # ( !\always0~3_combout\ & ( \State[2]~23_combout\ & ( (!\clk25Mgz~q\ & 
-- (\Equal10~4_combout\ & !\VSYNC~input_o\)) ) ) ) # ( \always0~3_combout\ & ( !\State[2]~23_combout\ & ( (!\clk25Mgz~q\ & !\HREF~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000001010000000001000101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk25Mgz~q\,
	datab => \ALT_INV_HREF~input_o\,
	datac => \ALT_INV_Equal10~4_combout\,
	datad => \ALT_INV_VSYNC~input_o\,
	datae => \ALT_INV_always0~3_combout\,
	dataf => \ALT_INV_State[2]~23_combout\,
	combout => \CounterByteFromCameraRows[1]~0_combout\);

-- Location: FF_X39_Y42_N2
\CounterByteFromCameraRows[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	sclr => \always0~9_combout\,
	ena => \CounterByteFromCameraRows[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterByteFromCameraRows(0));

-- Location: LABCELL_X39_Y42_N3
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( CounterByteFromCameraRows(1) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterByteFromCameraRows(1),
	cin => \Add2~6\,
	sumout => \Add2~1_sumout\);

-- Location: FF_X39_Y42_N5
\CounterByteFromCameraRows[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	sclr => \always0~9_combout\,
	ena => \CounterByteFromCameraRows[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterByteFromCameraRows(1));

-- Location: LABCELL_X39_Y42_N15
\State[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[3]~11_combout\ = ( !CounterByteFromCameraRows(0) & ( !CounterByteFromCameraRows(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterByteFromCameraRows(1),
	datae => ALT_INV_CounterByteFromCameraRows(0),
	combout => \State[3]~11_combout\);

-- Location: LABCELL_X39_Y42_N30
\State[1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[1]~15_combout\ = ( State(2) & ( (State(0) & (\HREF~input_o\ & !State(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(0),
	datab => \ALT_INV_HREF~input_o\,
	datad => ALT_INV_State(3),
	dataf => ALT_INV_State(2),
	combout => \State[1]~15_combout\);

-- Location: LABCELL_X40_Y42_N12
\State[1]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[1]~27_combout\ = ( !\State[2]~4_combout\ & ( (\State[2]~2_combout\ & ((!\always0~1_combout\) # ((!\always0~5_combout\) # ((!\Equal19~0_combout\))))) ) ) # ( \State[2]~4_combout\ & ( (((!\always0~10_combout\ & (\State[1]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000001111000000001110000011100000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_always0~1_combout\,
	datab => \ALT_INV_always0~5_combout\,
	datac => \ALT_INV_always0~10_combout\,
	datad => \ALT_INV_State[1]~15_combout\,
	datae => \ALT_INV_State[2]~4_combout\,
	dataf => \ALT_INV_Equal19~0_combout\,
	datag => \ALT_INV_State[2]~2_combout\,
	combout => \State[1]~27_combout\);

-- Location: LABCELL_X40_Y42_N36
\State[1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[1]~16_combout\ = ( State(1) & ( \State[1]~27_combout\ & ( ((\State[2]~10_combout\ & ((!\State[2]~14_combout\) # (\State[3]~11_combout\)))) # (\State[2]~13_combout\) ) ) ) # ( !State(1) & ( \State[1]~27_combout\ & ( (\State[2]~10_combout\ & 
-- (!\State[2]~13_combout\ & ((!\State[2]~14_combout\) # (\State[3]~11_combout\)))) ) ) ) # ( State(1) & ( !\State[1]~27_combout\ & ( ((\State[3]~11_combout\ & (\State[2]~10_combout\ & \State[2]~14_combout\))) # (\State[2]~13_combout\) ) ) ) # ( !State(1) & 
-- ( !\State[1]~27_combout\ & ( (\State[3]~11_combout\ & (\State[2]~10_combout\ & (!\State[2]~13_combout\ & \State[2]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000011110001111100110000000100000011111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State[3]~11_combout\,
	datab => \ALT_INV_State[2]~10_combout\,
	datac => \ALT_INV_State[2]~13_combout\,
	datad => \ALT_INV_State[2]~14_combout\,
	datae => ALT_INV_State(1),
	dataf => \ALT_INV_State[1]~27_combout\,
	combout => \State[1]~16_combout\);

-- Location: FF_X40_Y42_N38
\State[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(1));

-- Location: LABCELL_X40_Y43_N21
\Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = ( !State(3) & ( (!State(1) & (!State(0) & !State(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_State(1),
	datac => ALT_INV_State(0),
	datad => ALT_INV_State(2),
	dataf => ALT_INV_State(3),
	combout => \Equal10~0_combout\);

-- Location: LABCELL_X40_Y43_N30
\CounterNededByte[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterNededByte[9]~0_combout\ = ( \always0~5_combout\ & ( \Equal10~0_combout\ & ( (!\comb_986|dataIN\(3) & (((\always0~7_combout\ & !\comb_986|dataIN\(7))))) # (\comb_986|dataIN\(3) & (\always0~6_combout\ & ((\comb_986|dataIN\(7))))) ) ) ) # ( 
-- !\always0~5_combout\ & ( \Equal10~0_combout\ & ( (!\comb_986|dataIN\(3) & (\always0~7_combout\ & !\comb_986|dataIN\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_dataIN\(3),
	datab => \ALT_INV_always0~6_combout\,
	datac => \ALT_INV_always0~7_combout\,
	datad => \comb_986|ALT_INV_dataIN\(7),
	datae => \ALT_INV_always0~5_combout\,
	dataf => \ALT_INV_Equal10~0_combout\,
	combout => \CounterNededByte[9]~0_combout\);

-- Location: MLABCELL_X42_Y42_N51
\CounterPauseForTransmitUART[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[0]~3_combout\ = ( \CounterPauseForTransmitUART[6]~2_combout\ & ( (!\Add3~1_sumout\ & ((!\WideOr0~1_combout\) # (!\WideOr0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~1_combout\,
	datac => \ALT_INV_WideOr0~0_combout\,
	datad => \ALT_INV_Add3~1_sumout\,
	dataf => \ALT_INV_CounterPauseForTransmitUART[6]~2_combout\,
	combout => \CounterPauseForTransmitUART[0]~3_combout\);

-- Location: MLABCELL_X42_Y42_N24
\CounterPauseForTransmitUART[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[0]~4_combout\ = ( CounterPauseForTransmitUART(0) & ( \CounterPauseForTransmitUART[0]~3_combout\ & ( (\CounterPauseForTransmitUART[6]~1_combout\ & ((!\comb_986|flagOUT_DataResive~q\) # ((!\CounterNededByte[9]~0_combout\ & 
-- !\always0~2_combout\)))) ) ) ) # ( CounterPauseForTransmitUART(0) & ( !\CounterPauseForTransmitUART[0]~3_combout\ ) ) # ( !CounterPauseForTransmitUART(0) & ( !\CounterPauseForTransmitUART[0]~3_combout\ & ( (!\CounterPauseForTransmitUART[6]~1_combout\) # 
-- ((\comb_986|flagOUT_DataResive~q\ & ((\always0~2_combout\) # (\CounterNededByte[9]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011111111111111111111100000000000000000011001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CounterNededByte[9]~0_combout\,
	datab => \ALT_INV_CounterPauseForTransmitUART[6]~1_combout\,
	datac => \ALT_INV_always0~2_combout\,
	datad => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datae => ALT_INV_CounterPauseForTransmitUART(0),
	dataf => \ALT_INV_CounterPauseForTransmitUART[0]~3_combout\,
	combout => \CounterPauseForTransmitUART[0]~4_combout\);

-- Location: FF_X42_Y42_N26
\CounterPauseForTransmitUART[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \CounterPauseForTransmitUART[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(0));

-- Location: MLABCELL_X42_Y42_N45
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( !CounterPauseForTransmitUART(2) & ( !CounterPauseForTransmitUART(3) & ( (!CounterPauseForTransmitUART(0) & (!CounterPauseForTransmitUART(5) & (!CounterPauseForTransmitUART(4) & !CounterPauseForTransmitUART(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterPauseForTransmitUART(0),
	datab => ALT_INV_CounterPauseForTransmitUART(5),
	datac => ALT_INV_CounterPauseForTransmitUART(4),
	datad => ALT_INV_CounterPauseForTransmitUART(1),
	datae => ALT_INV_CounterPauseForTransmitUART(2),
	dataf => ALT_INV_CounterPauseForTransmitUART(3),
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X41_Y42_N36
\State~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~6_combout\ = ( \CounterPauseForTransmitUART~0_combout\ & ( (\WideOr0~0_combout\ & \WideOr0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr0~0_combout\,
	datad => \ALT_INV_WideOr0~1_combout\,
	dataf => \ALT_INV_CounterPauseForTransmitUART~0_combout\,
	combout => \State~6_combout\);

-- Location: LABCELL_X40_Y43_N36
\ActionDataTransmitToUART~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionDataTransmitToUART~0_combout\ = ( \always0~1_combout\ & ( (\comb_986|flagOUT_DataResive~q\ & (\always0~0_combout\ & ((\always0~8_combout\) # (\Equal19~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal19~0_combout\,
	datab => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datac => \ALT_INV_always0~8_combout\,
	datad => \ALT_INV_always0~0_combout\,
	dataf => \ALT_INV_always0~1_combout\,
	combout => \ActionDataTransmitToUART~0_combout\);

-- Location: LABCELL_X41_Y43_N45
\ActionDataTransmitToUART~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionDataTransmitToUART~1_combout\ = ( !\ActionDataTransmitToUART~q\ & ( \ActionDataTransmitToUART~0_combout\ & ( !\State~6_combout\ $ (!\State~5_combout\) ) ) ) # ( !\ActionDataTransmitToUART~q\ & ( !\ActionDataTransmitToUART~0_combout\ & ( 
-- !\State~6_combout\ $ (\State~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000000000000000000001111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State~6_combout\,
	datad => \ALT_INV_State~5_combout\,
	datae => \ALT_INV_ActionDataTransmitToUART~q\,
	dataf => \ALT_INV_ActionDataTransmitToUART~0_combout\,
	combout => \ActionDataTransmitToUART~1_combout\);

-- Location: FF_X41_Y43_N46
ActionDataTransmitToUART : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ActionDataTransmitToUART~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ActionDataTransmitToUART~q\);

-- Location: FF_X41_Y44_N52
\comb_986|clok2048MbodCounterTX[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add1~21_sumout\,
	sclr => \comb_986|Equal23~1_combout\,
	ena => \comb_986|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterTX[7]~DUPLICATE_q\);

-- Location: FF_X41_Y44_N41
\comb_986|clok2048MbodCounterTX[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add1~1_sumout\,
	sclr => \comb_986|Equal23~1_combout\,
	ena => \comb_986|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y44_N15
\comb_986|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|LessThan2~0_combout\ = ( !\comb_986|clok2048MbodCounterTX\(1) & ( (!\comb_986|clok2048MbodCounterTX\(0) & (!\comb_986|clok2048MbodCounterTX\(4) & (!\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & !\comb_986|clok2048MbodCounterTX\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterTX\(0),
	datab => \comb_986|ALT_INV_clok2048MbodCounterTX\(4),
	datac => \comb_986|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\,
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(2),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterTX\(1),
	combout => \comb_986|LessThan2~0_combout\);

-- Location: LABCELL_X40_Y44_N27
\comb_986|clok2048MbodCounterTX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|clok2048MbodCounterTX~0_combout\ = ( \comb_986|LessThan2~0_combout\ & ( \comb_986|clok2048MbodCounterTX\(5) ) ) # ( !\comb_986|LessThan2~0_combout\ & ( \comb_986|clok2048MbodCounterTX\(5) ) ) # ( \comb_986|LessThan2~0_combout\ & ( 
-- !\comb_986|clok2048MbodCounterTX\(5) & ( ((\comb_986|clok2048MbodCounterTX\(6)) # (\comb_986|clok2048MbodCounterTX[7]~DUPLICATE_q\)) # (\ActionDataTransmitToUART~q\) ) ) ) # ( !\comb_986|LessThan2~0_combout\ & ( !\comb_986|clok2048MbodCounterTX\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActionDataTransmitToUART~q\,
	datab => \comb_986|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\,
	datac => \comb_986|ALT_INV_clok2048MbodCounterTX\(6),
	datae => \comb_986|ALT_INV_LessThan2~0_combout\,
	dataf => \comb_986|ALT_INV_clok2048MbodCounterTX\(5),
	combout => \comb_986|clok2048MbodCounterTX~0_combout\);

-- Location: FF_X41_Y44_N53
\comb_986|clok2048MbodCounterTX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add1~21_sumout\,
	sclr => \comb_986|Equal23~1_combout\,
	ena => \comb_986|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterTX\(7));

-- Location: LABCELL_X41_Y44_N6
\comb_986|Equal23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Equal23~0_combout\ = ( \comb_986|clok2048MbodCounterTX\(7) & ( (!\comb_986|clok2048MbodCounterTX\(1) & \comb_986|clok2048MbodCounterTX\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_986|ALT_INV_clok2048MbodCounterTX\(1),
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(2),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterTX\(7),
	combout => \comb_986|Equal23~0_combout\);

-- Location: LABCELL_X41_Y44_N18
\comb_986|Equal23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Equal23~1_combout\ = ( \comb_986|clok2048MbodCounterTX\(3) & ( \comb_986|Equal23~0_combout\ & ( (\comb_986|clok2048MbodCounterTX\(0) & (!\comb_986|clok2048MbodCounterTX\(5) & (\comb_986|clok2048MbodCounterTX\(6) & 
-- \comb_986|clok2048MbodCounterTX\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterTX\(0),
	datab => \comb_986|ALT_INV_clok2048MbodCounterTX\(5),
	datac => \comb_986|ALT_INV_clok2048MbodCounterTX\(6),
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(4),
	datae => \comb_986|ALT_INV_clok2048MbodCounterTX\(3),
	dataf => \comb_986|ALT_INV_Equal23~0_combout\,
	combout => \comb_986|Equal23~1_combout\);

-- Location: FF_X41_Y44_N31
\comb_986|clok2048MbodCounterTX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add1~17_sumout\,
	sclr => \comb_986|Equal23~1_combout\,
	ena => \comb_986|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterTX\(0));

-- Location: LABCELL_X41_Y44_N33
\comb_986|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add1~25_sumout\ = SUM(( \comb_986|clok2048MbodCounterTX\(1) ) + ( GND ) + ( \comb_986|Add1~18\ ))
-- \comb_986|Add1~26\ = CARRY(( \comb_986|clok2048MbodCounterTX\(1) ) + ( GND ) + ( \comb_986|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(1),
	cin => \comb_986|Add1~18\,
	sumout => \comb_986|Add1~25_sumout\,
	cout => \comb_986|Add1~26\);

-- Location: FF_X41_Y44_N35
\comb_986|clok2048MbodCounterTX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add1~25_sumout\,
	sclr => \comb_986|Equal23~1_combout\,
	ena => \comb_986|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterTX\(1));

-- Location: LABCELL_X41_Y44_N36
\comb_986|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add1~29_sumout\ = SUM(( \comb_986|clok2048MbodCounterTX\(2) ) + ( GND ) + ( \comb_986|Add1~26\ ))
-- \comb_986|Add1~30\ = CARRY(( \comb_986|clok2048MbodCounterTX\(2) ) + ( GND ) + ( \comb_986|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(2),
	cin => \comb_986|Add1~26\,
	sumout => \comb_986|Add1~29_sumout\,
	cout => \comb_986|Add1~30\);

-- Location: FF_X41_Y44_N38
\comb_986|clok2048MbodCounterTX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add1~29_sumout\,
	sclr => \comb_986|Equal23~1_combout\,
	ena => \comb_986|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterTX\(2));

-- Location: LABCELL_X41_Y44_N39
\comb_986|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add1~1_sumout\ = SUM(( \comb_986|clok2048MbodCounterTX\(3) ) + ( GND ) + ( \comb_986|Add1~30\ ))
-- \comb_986|Add1~2\ = CARRY(( \comb_986|clok2048MbodCounterTX\(3) ) + ( GND ) + ( \comb_986|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(3),
	cin => \comb_986|Add1~30\,
	sumout => \comb_986|Add1~1_sumout\,
	cout => \comb_986|Add1~2\);

-- Location: FF_X41_Y44_N40
\comb_986|clok2048MbodCounterTX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add1~1_sumout\,
	sclr => \comb_986|Equal23~1_combout\,
	ena => \comb_986|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterTX\(3));

-- Location: LABCELL_X41_Y44_N42
\comb_986|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add1~13_sumout\ = SUM(( \comb_986|clok2048MbodCounterTX\(4) ) + ( GND ) + ( \comb_986|Add1~2\ ))
-- \comb_986|Add1~14\ = CARRY(( \comb_986|clok2048MbodCounterTX\(4) ) + ( GND ) + ( \comb_986|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(4),
	cin => \comb_986|Add1~2\,
	sumout => \comb_986|Add1~13_sumout\,
	cout => \comb_986|Add1~14\);

-- Location: FF_X41_Y44_N43
\comb_986|clok2048MbodCounterTX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add1~13_sumout\,
	sclr => \comb_986|Equal23~1_combout\,
	ena => \comb_986|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterTX\(4));

-- Location: LABCELL_X41_Y44_N45
\comb_986|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|Add1~9_sumout\ = SUM(( \comb_986|clok2048MbodCounterTX\(5) ) + ( GND ) + ( \comb_986|Add1~14\ ))
-- \comb_986|Add1~10\ = CARRY(( \comb_986|clok2048MbodCounterTX\(5) ) + ( GND ) + ( \comb_986|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(5),
	cin => \comb_986|Add1~14\,
	sumout => \comb_986|Add1~9_sumout\,
	cout => \comb_986|Add1~10\);

-- Location: FF_X41_Y44_N47
\comb_986|clok2048MbodCounterTX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add1~9_sumout\,
	sclr => \comb_986|Equal23~1_combout\,
	ena => \comb_986|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterTX\(5));

-- Location: FF_X41_Y44_N50
\comb_986|clok2048MbodCounterTX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|Add1~5_sumout\,
	sclr => \comb_986|Equal23~1_combout\,
	ena => \comb_986|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|clok2048MbodCounterTX\(6));

-- Location: LABCELL_X41_Y44_N3
\comb_986|PinTX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|PinTX~0_combout\ = ( \comb_986|clok2048MbodCounterTX\(1) & ( (\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & \comb_986|clok2048MbodCounterTX\(4)) ) ) # ( !\comb_986|clok2048MbodCounterTX\(1) & ( 
-- (!\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & (!\comb_986|clok2048MbodCounterTX\(0) & (!\comb_986|clok2048MbodCounterTX\(4) & !\comb_986|clok2048MbodCounterTX\(2)))) # (\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & 
-- (\comb_986|clok2048MbodCounterTX\(4) & ((\comb_986|clok2048MbodCounterTX\(2)) # (\comb_986|clok2048MbodCounterTX\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100000011100000010000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterTX\(0),
	datab => \comb_986|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\,
	datac => \comb_986|ALT_INV_clok2048MbodCounterTX\(4),
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(2),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterTX\(1),
	combout => \comb_986|PinTX~0_combout\);

-- Location: LABCELL_X40_Y44_N30
\comb_986|PinTX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|PinTX~1_combout\ = ( !\comb_986|PinTX~0_combout\ & ( !\comb_986|clok2048MbodCounterTX\(5) & ( (!\comb_986|clok2048MbodCounterTX\(6) & !\comb_986|clok2048MbodCounterTX[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_986|ALT_INV_clok2048MbodCounterTX\(6),
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\,
	datae => \comb_986|ALT_INV_PinTX~0_combout\,
	dataf => \comb_986|ALT_INV_clok2048MbodCounterTX\(5),
	combout => \comb_986|PinTX~1_combout\);

-- Location: LABCELL_X41_Y43_N24
\DataBusToUART[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART[0]~0_combout\ = ( \Equal10~2_combout\ & ( \always0~0_combout\ & ( (!\WideOr0~0_combout\ & (((\always0~1_combout\ & \always0~8_combout\)))) # (\WideOr0~0_combout\ & (!\WideOr0~1_combout\ $ (((!\always0~1_combout\) # 
-- (!\always0~8_combout\))))) ) ) ) # ( !\Equal10~2_combout\ & ( \always0~0_combout\ & ( (\always0~1_combout\ & \always0~8_combout\) ) ) ) # ( \Equal10~2_combout\ & ( !\always0~0_combout\ & ( (\WideOr0~0_combout\ & \WideOr0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000011110001000100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr0~0_combout\,
	datab => \ALT_INV_WideOr0~1_combout\,
	datac => \ALT_INV_always0~1_combout\,
	datad => \ALT_INV_always0~8_combout\,
	datae => \ALT_INV_Equal10~2_combout\,
	dataf => \ALT_INV_always0~0_combout\,
	combout => \DataBusToUART[0]~0_combout\);

-- Location: LABCELL_X39_Y43_N0
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( AddressPoint(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~6\ = CARRY(( AddressPoint(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AddressPoint(0),
	cin => GND,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X40_Y43_N9
\AddressPoint[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressPoint[1]~1_combout\ = ( \always0~8_combout\ & ( \Equal10~0_combout\ & ( (!\comb_986|dataIN\(3) & (!\comb_986|dataIN\(7) & ((\always0~7_combout\) # (\always0~5_combout\)))) # (\comb_986|dataIN\(3) & (\always0~5_combout\ & (\comb_986|dataIN\(7)))) ) 
-- ) ) # ( !\always0~8_combout\ & ( \Equal10~0_combout\ & ( (!\comb_986|dataIN\(3) & (!\comb_986|dataIN\(7) & \always0~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000010000110100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_dataIN\(3),
	datab => \ALT_INV_always0~5_combout\,
	datac => \comb_986|ALT_INV_dataIN\(7),
	datad => \ALT_INV_always0~7_combout\,
	datae => \ALT_INV_always0~8_combout\,
	dataf => \ALT_INV_Equal10~0_combout\,
	combout => \AddressPoint[1]~1_combout\);

-- Location: LABCELL_X40_Y42_N0
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( CounterByteFromCameraPixcel(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~6\ = CARRY(( CounterByteFromCameraPixcel(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterByteFromCameraPixcel(0),
	cin => GND,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X41_Y41_N3
\always0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~15_combout\ = ( State(3) & ( State(0) ) ) # ( !State(3) & ( State(0) ) ) # ( State(3) & ( !State(0) ) ) # ( !State(3) & ( !State(0) & ( (!\HREF~input_o\) # ((!State(1)) # (!State(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HREF~input_o\,
	datac => ALT_INV_State(1),
	datad => ALT_INV_State(2),
	datae => ALT_INV_State(3),
	dataf => ALT_INV_State(0),
	combout => \always0~15_combout\);

-- Location: LABCELL_X40_Y42_N54
\CounterByteFromCameraPixcel[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterByteFromCameraPixcel[1]~0_combout\ = ( \always0~15_combout\ & ( (!\clk25Mgz~q\ & (((!\HREF~input_o\ & \always0~3_combout\)) # (\always0~4_combout\))) ) ) # ( !\always0~15_combout\ & ( !\clk25Mgz~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001010000110100000101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_always0~4_combout\,
	datab => \ALT_INV_HREF~input_o\,
	datac => \ALT_INV_clk25Mgz~q\,
	datad => \ALT_INV_always0~3_combout\,
	dataf => \ALT_INV_always0~15_combout\,
	combout => \CounterByteFromCameraPixcel[1]~0_combout\);

-- Location: FF_X40_Y42_N2
\CounterByteFromCameraPixcel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \always0~15_combout\,
	ena => \CounterByteFromCameraPixcel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterByteFromCameraPixcel(0));

-- Location: LABCELL_X40_Y42_N3
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( CounterByteFromCameraPixcel(1) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterByteFromCameraPixcel(1),
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\);

-- Location: FF_X40_Y42_N5
\CounterByteFromCameraPixcel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \always0~15_combout\,
	ena => \CounterByteFromCameraPixcel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterByteFromCameraPixcel(1));

-- Location: LABCELL_X41_Y43_N12
\always0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~13_combout\ = ( !State(0) & ( State(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_State(1),
	dataf => ALT_INV_State(0),
	combout => \always0~13_combout\);

-- Location: LABCELL_X40_Y43_N24
\AddressPoint~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressPoint~0_combout\ = ( \State[2]~23_combout\ & ( \always0~13_combout\ & ( (!CounterByteFromCameraPixcel(0) & (\HREF~input_o\ & !CounterByteFromCameraPixcel(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterByteFromCameraPixcel(0),
	datab => \ALT_INV_HREF~input_o\,
	datac => ALT_INV_CounterByteFromCameraPixcel(1),
	datae => \ALT_INV_State[2]~23_combout\,
	dataf => \ALT_INV_always0~13_combout\,
	combout => \AddressPoint~0_combout\);

-- Location: LABCELL_X39_Y43_N48
\AddressPoint[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressPoint[1]~2_combout\ = ( \AddressPoint[1]~1_combout\ & ( \AddressPoint~0_combout\ & ( (\comb_986|flagOUT_DataResive~q\ & \State~5_combout\) ) ) ) # ( \AddressPoint[1]~1_combout\ & ( !\AddressPoint~0_combout\ & ( \State~5_combout\ ) ) ) # ( 
-- !\AddressPoint[1]~1_combout\ & ( !\AddressPoint~0_combout\ & ( (\State~5_combout\ & ((!\always0~7_combout\) # ((!\comb_986|flagOUT_DataResive~q\) # (!\always0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_always0~7_combout\,
	datab => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datac => \ALT_INV_State~5_combout\,
	datad => \ALT_INV_always0~1_combout\,
	datae => \ALT_INV_AddressPoint[1]~1_combout\,
	dataf => \ALT_INV_AddressPoint~0_combout\,
	combout => \AddressPoint[1]~2_combout\);

-- Location: LABCELL_X40_Y43_N57
\always0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~14_combout\ = ( !State(2) & ( (\VSYNC~input_o\ & (!State(3) & (State(0) & State(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VSYNC~input_o\,
	datab => ALT_INV_State(3),
	datac => ALT_INV_State(0),
	datad => ALT_INV_State(1),
	dataf => ALT_INV_State(2),
	combout => \always0~14_combout\);

-- Location: LABCELL_X40_Y43_N3
\AddressPoint[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressPoint[1]~3_combout\ = ( \always0~8_combout\ & ( \Equal10~0_combout\ & ( (!\always0~7_combout\ & (\always0~5_combout\ & (!\comb_986|dataIN\(3) $ (\comb_986|dataIN\(7))))) # (\always0~7_combout\ & (!\comb_986|dataIN\(3) $ ((\comb_986|dataIN\(7))))) 
-- ) ) ) # ( !\always0~8_combout\ & ( \Equal10~0_combout\ & ( (\always0~7_combout\ & (!\comb_986|dataIN\(3) $ (\comb_986|dataIN\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001001000010010000100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_dataIN\(3),
	datab => \comb_986|ALT_INV_dataIN\(7),
	datac => \ALT_INV_always0~7_combout\,
	datad => \ALT_INV_always0~5_combout\,
	datae => \ALT_INV_always0~8_combout\,
	dataf => \ALT_INV_Equal10~0_combout\,
	combout => \AddressPoint[1]~3_combout\);

-- Location: LABCELL_X39_Y43_N54
\AddressPoint[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressPoint[1]~4_combout\ = ( \AddressPoint[1]~3_combout\ & ( \AddressPoint~0_combout\ & ( (!\clk25Mgz~q\) # ((!\State~5_combout\) # (\comb_986|flagOUT_DataResive~q\)) ) ) ) # ( !\AddressPoint[1]~3_combout\ & ( \AddressPoint~0_combout\ & ( 
-- (!\clk25Mgz~q\) # (!\State~5_combout\) ) ) ) # ( \AddressPoint[1]~3_combout\ & ( !\AddressPoint~0_combout\ & ( ((!\State~5_combout\) # ((!\clk25Mgz~q\ & \always0~14_combout\))) # (\comb_986|flagOUT_DataResive~q\) ) ) ) # ( !\AddressPoint[1]~3_combout\ & ( 
-- !\AddressPoint~0_combout\ & ( (!\State~5_combout\) # ((!\clk25Mgz~q\ & \always0~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111010111100111111101111111010111110101111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk25Mgz~q\,
	datab => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datac => \ALT_INV_State~5_combout\,
	datad => \ALT_INV_always0~14_combout\,
	datae => \ALT_INV_AddressPoint[1]~3_combout\,
	dataf => \ALT_INV_AddressPoint~0_combout\,
	combout => \AddressPoint[1]~4_combout\);

-- Location: FF_X39_Y43_N2
\AddressPoint[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(0));

-- Location: LABCELL_X39_Y43_N3
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( AddressPoint(1) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~14\ = CARRY(( AddressPoint(1) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AddressPoint(1),
	cin => \Add0~6\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X39_Y43_N5
\AddressPoint[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(1));

-- Location: LABCELL_X39_Y43_N6
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( AddressPoint(2) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~30\ = CARRY(( AddressPoint(2) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_AddressPoint(2),
	cin => \Add0~14\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X39_Y43_N8
\AddressPoint[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(2));

-- Location: LABCELL_X39_Y43_N9
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( AddressPoint(3) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( AddressPoint(3) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_AddressPoint(3),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X39_Y43_N11
\AddressPoint[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(3));

-- Location: LABCELL_X39_Y43_N12
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( AddressPoint(4) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( AddressPoint(4) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_AddressPoint(4),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X39_Y43_N14
\AddressPoint[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(4));

-- Location: LABCELL_X39_Y43_N15
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( AddressPoint(5) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( AddressPoint(5) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_AddressPoint(5),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X39_Y43_N17
\AddressPoint[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(5));

-- Location: LABCELL_X39_Y43_N18
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( AddressPoint(6) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~18\ = CARRY(( AddressPoint(6) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_AddressPoint(6),
	cin => \Add0~42\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X39_Y43_N20
\AddressPoint[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(6));

-- Location: LABCELL_X39_Y43_N21
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( AddressPoint(7) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~2\ = CARRY(( AddressPoint(7) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AddressPoint(7),
	cin => \Add0~18\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X39_Y43_N23
\AddressPoint[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(7));

-- Location: LABCELL_X39_Y43_N24
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( AddressPoint(8) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~10\ = CARRY(( AddressPoint(8) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_AddressPoint(8),
	cin => \Add0~2\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X39_Y43_N26
\AddressPoint[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(8));

-- Location: LABCELL_X39_Y43_N27
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( AddressPoint(9) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~46\ = CARRY(( AddressPoint(9) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AddressPoint(9),
	cin => \Add0~10\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X39_Y43_N29
\AddressPoint[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(9));

-- Location: LABCELL_X39_Y43_N30
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( AddressPoint(10) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( AddressPoint(10) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_AddressPoint(10),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X39_Y43_N32
\AddressPoint[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(10));

-- Location: LABCELL_X39_Y43_N33
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( AddressPoint(11) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( AddressPoint(11) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AddressPoint(11),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X39_Y43_N35
\AddressPoint[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(11));

-- Location: LABCELL_X39_Y43_N36
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( AddressPoint(12) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( AddressPoint(12) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_AddressPoint(12),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X39_Y43_N38
\AddressPoint[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(12));

-- Location: LABCELL_X39_Y43_N39
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( AddressPoint(13) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~26\ = CARRY(( AddressPoint(13) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_AddressPoint(13),
	cin => \Add0~58\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X39_Y43_N41
\AddressPoint[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(13));

-- Location: LABCELL_X40_Y41_N36
\comb_987|altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_987|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = ( AddressPoint(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_AddressPoint(13),
	combout => \comb_987|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X40_Y41_N38
\comb_987|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_987|altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_987|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X40_Y41_N40
\comb_987|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_987|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: LABCELL_X39_Y43_N42
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( AddressPoint(14) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_AddressPoint(14),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\);

-- Location: FF_X39_Y43_N44
\AddressPoint[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \AddressPoint[1]~2_combout\,
	ena => \AddressPoint[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(14));

-- Location: LABCELL_X41_Y41_N6
\comb_987|altsyncram_component|auto_generated|address_reg_a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_987|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ = ( AddressPoint(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_AddressPoint(14),
	combout => \comb_987|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\);

-- Location: FF_X41_Y41_N8
\comb_987|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_987|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_987|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: FF_X41_Y41_N13
\comb_987|altsyncram_component|auto_generated|out_address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_987|altsyncram_component|auto_generated|address_reg_a\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: LABCELL_X41_Y41_N30
\ActionWriteToRAM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionWriteToRAM~0_combout\ = ( State(2) & ( \comb_986|flagOUT_DataResive~q\ ) ) # ( !State(2) & ( \comb_986|flagOUT_DataResive~q\ & ( ((!State(0)) # (State(1))) # (State(3)) ) ) ) # ( State(2) & ( !\comb_986|flagOUT_DataResive~q\ ) ) # ( !State(2) & ( 
-- !\comb_986|flagOUT_DataResive~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_State(3),
	datac => ALT_INV_State(0),
	datad => ALT_INV_State(1),
	datae => ALT_INV_State(2),
	dataf => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	combout => \ActionWriteToRAM~0_combout\);

-- Location: LABCELL_X40_Y41_N48
\ActionWriteToRAM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionWriteToRAM~1_combout\ = ( \ActionWriteToRAM~q\ & ( \clk25Mgz~q\ ) ) # ( !\ActionWriteToRAM~q\ & ( \clk25Mgz~q\ & ( !\ActionWriteToRAM~0_combout\ ) ) ) # ( \ActionWriteToRAM~q\ & ( !\clk25Mgz~q\ ) ) # ( !\ActionWriteToRAM~q\ & ( !\clk25Mgz~q\ & ( 
-- (!\ActionWriteToRAM~0_combout\) # ((!CounterByteFromCameraPixcel(1) & (!CounterByteFromCameraPixcel(0) & !\always0~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100111111111111111111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterByteFromCameraPixcel(1),
	datab => \ALT_INV_ActionWriteToRAM~0_combout\,
	datac => ALT_INV_CounterByteFromCameraPixcel(0),
	datad => \ALT_INV_always0~15_combout\,
	datae => \ALT_INV_ActionWriteToRAM~q\,
	dataf => \ALT_INV_clk25Mgz~q\,
	combout => \ActionWriteToRAM~1_combout\);

-- Location: FF_X40_Y41_N50
ActionWriteToRAM : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ActionWriteToRAM~1_combout\,
	sclr => \ActionWriteToRAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ActionWriteToRAM~q\);

-- Location: LABCELL_X40_Y41_N9
\comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\ = ( AddressPoint(14) & ( AddressPoint(13) & ( \ActionWriteToRAM~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ActionWriteToRAM~q\,
	datae => ALT_INV_AddressPoint(14),
	dataf => ALT_INV_AddressPoint(13),
	combout => \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\);

-- Location: LABCELL_X40_Y41_N15
\comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\ = ( AddressPoint(14) & ( AddressPoint(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_AddressPoint(14),
	dataf => ALT_INV_AddressPoint(13),
	combout => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\);

-- Location: LABCELL_X41_Y41_N48
\DataBusToRAM[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToRAM[0]~feeder_combout\ = \comb_986|dataIN\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_986|ALT_INV_dataIN\(0),
	combout => \DataBusToRAM[0]~feeder_combout\);

-- Location: IOIBUF_X50_Y45_N18
\DataBusFromCamera[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataBusFromCamera(0),
	o => \DataBusFromCamera[0]~input_o\);

-- Location: LABCELL_X40_Y41_N3
\AddressPoint~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressPoint~5_combout\ = ( !CounterByteFromCameraPixcel(0) & ( !CounterByteFromCameraPixcel(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_CounterByteFromCameraPixcel(0),
	dataf => ALT_INV_CounterByteFromCameraPixcel(1),
	combout => \AddressPoint~5_combout\);

-- Location: LABCELL_X41_Y41_N39
\ActionWriteToRAM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionWriteToRAM~2_combout\ = ( \always0~13_combout\ & ( \State[2]~23_combout\ & ( (!\ActionWriteToRAM~0_combout\) # ((\HREF~input_o\ & (\AddressPoint~5_combout\ & !\clk25Mgz~q\))) ) ) ) # ( !\always0~13_combout\ & ( \State[2]~23_combout\ & ( 
-- !\ActionWriteToRAM~0_combout\ ) ) ) # ( \always0~13_combout\ & ( !\State[2]~23_combout\ & ( !\ActionWriteToRAM~0_combout\ ) ) ) # ( !\always0~13_combout\ & ( !\State[2]~23_combout\ & ( !\ActionWriteToRAM~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HREF~input_o\,
	datab => \ALT_INV_AddressPoint~5_combout\,
	datac => \ALT_INV_ActionWriteToRAM~0_combout\,
	datad => \ALT_INV_clk25Mgz~q\,
	datae => \ALT_INV_always0~13_combout\,
	dataf => \ALT_INV_State[2]~23_combout\,
	combout => \ActionWriteToRAM~2_combout\);

-- Location: FF_X41_Y41_N50
\DataBusToRAM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToRAM[0]~feeder_combout\,
	asdata => \DataBusFromCamera[0]~input_o\,
	sload => \ActionWriteToRAM~0_combout\,
	ena => \ActionWriteToRAM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(0));

-- Location: M10K_X46_Y41_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a24\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: LABCELL_X40_Y41_N42
\comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\ = ( !AddressPoint(13) & ( !AddressPoint(14) & ( \ActionWriteToRAM~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ActionWriteToRAM~q\,
	datae => ALT_INV_AddressPoint(13),
	dataf => ALT_INV_AddressPoint(14),
	combout => \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\);

-- Location: LABCELL_X39_Y42_N51
\comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\ = ( !AddressPoint(14) & ( !AddressPoint(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_AddressPoint(14),
	dataf => ALT_INV_AddressPoint(13),
	combout => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\);

-- Location: M10K_X38_Y41_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X40_Y41_N18
\comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\ = ( !AddressPoint(14) & ( AddressPoint(13) & ( \ActionWriteToRAM~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ActionWriteToRAM~q\,
	datae => ALT_INV_AddressPoint(14),
	dataf => ALT_INV_AddressPoint(13),
	combout => \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\);

-- Location: LABCELL_X40_Y41_N27
\comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\ = ( !AddressPoint(14) & ( AddressPoint(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_AddressPoint(14),
	dataf => ALT_INV_AddressPoint(13),
	combout => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\);

-- Location: M10K_X46_Y42_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LABCELL_X40_Y41_N54
\comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\ = ( !AddressPoint(13) & ( AddressPoint(14) & ( \ActionWriteToRAM~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ActionWriteToRAM~q\,
	datae => ALT_INV_AddressPoint(13),
	dataf => ALT_INV_AddressPoint(14),
	combout => \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\);

-- Location: LABCELL_X40_Y43_N15
\comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\ = ( !AddressPoint(13) & ( AddressPoint(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AddressPoint(14),
	dataf => ALT_INV_AddressPoint(13),
	combout => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\);

-- Location: M10K_X46_Y43_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a16\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: MLABCELL_X45_Y41_N36
\DataBusToUART~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~1_combout\ = ( \comb_987|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( \comb_987|altsyncram_component|auto_generated|ram_block1a16~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) 
-- & (((\comb_987|altsyncram_component|auto_generated|ram_block1a0~portadataout\)) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1)) # ((\comb_987|altsyncram_component|auto_generated|ram_block1a24~portadataout\)))) ) ) ) # ( !\comb_987|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( 
-- \comb_987|altsyncram_component|auto_generated|ram_block1a16~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\comb_987|altsyncram_component|auto_generated|ram_block1a0~portadataout\)) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a24~portadataout\))) ) ) ) # ( \comb_987|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a16~portadataout\ & ( 
-- (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_987|altsyncram_component|auto_generated|ram_block1a0~portadataout\)))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1)) # ((\comb_987|altsyncram_component|auto_generated|ram_block1a24~portadataout\)))) ) ) ) # ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a16~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_987|altsyncram_component|auto_generated|ram_block1a0~portadataout\)))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_987|altsyncram_component|auto_generated|ram_block1a24~portadataout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datab => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datac => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a24~portadataout\,
	datad => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datae => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	dataf => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a16~portadataout\,
	combout => \DataBusToUART~1_combout\);

-- Location: LABCELL_X41_Y43_N57
\DataBusToUART~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~2_combout\ = ( \DataBusToUART~1_combout\ & ( (!\State~6_combout\ & (((AddressPoint(0))) # (\DataBusToUART[0]~0_combout\))) # (\State~6_combout\ & (((AddressPoint(7))))) ) ) # ( !\DataBusToUART~1_combout\ & ( (!\State~6_combout\ & 
-- (!\DataBusToUART[0]~0_combout\ & (AddressPoint(0)))) # (\State~6_combout\ & (((AddressPoint(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DataBusToUART[0]~0_combout\,
	datab => \ALT_INV_State~6_combout\,
	datac => ALT_INV_AddressPoint(0),
	datad => ALT_INV_AddressPoint(7),
	dataf => \ALT_INV_DataBusToUART~1_combout\,
	combout => \DataBusToUART~2_combout\);

-- Location: LABCELL_X41_Y43_N21
\DataBusToUART[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART[0]~3_combout\ = ( \ActionDataTransmitToUART~0_combout\ ) # ( !\ActionDataTransmitToUART~0_combout\ & ( (!\State~5_combout\) # (\State~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State~6_combout\,
	datad => \ALT_INV_State~5_combout\,
	dataf => \ALT_INV_ActionDataTransmitToUART~0_combout\,
	combout => \DataBusToUART[0]~3_combout\);

-- Location: FF_X41_Y43_N59
\DataBusToUART[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~2_combout\,
	ena => \DataBusToUART[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(0));

-- Location: LABCELL_X41_Y41_N51
\DataBusToRAM[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToRAM[1]~feeder_combout\ = ( \comb_986|dataIN\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comb_986|ALT_INV_dataIN\(1),
	combout => \DataBusToRAM[1]~feeder_combout\);

-- Location: IOIBUF_X46_Y45_N41
\DataBusFromCamera[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataBusFromCamera(1),
	o => \DataBusFromCamera[1]~input_o\);

-- Location: FF_X41_Y41_N53
\DataBusToRAM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToRAM[1]~feeder_combout\,
	asdata => \DataBusFromCamera[1]~input_o\,
	sload => \ActionWriteToRAM~0_combout\,
	ena => \ActionWriteToRAM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(1));

-- Location: M10K_X30_Y39_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M10K_X30_Y37_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a25\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M10K_X30_Y44_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a17\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y37_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LABCELL_X35_Y43_N12
\DataBusToUART~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~4_combout\ = ( \comb_987|altsyncram_component|auto_generated|ram_block1a17~portadataout\ & ( \comb_987|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) 
-- & (((\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))) # (\comb_987|altsyncram_component|auto_generated|ram_block1a1~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)) # (\comb_987|altsyncram_component|auto_generated|ram_block1a25~portadataout\)))) ) ) ) # ( !\comb_987|altsyncram_component|auto_generated|ram_block1a17~portadataout\ & ( 
-- \comb_987|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))) # 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a1~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- \comb_987|altsyncram_component|auto_generated|ram_block1a25~portadataout\)))) ) ) ) # ( \comb_987|altsyncram_component|auto_generated|ram_block1a17~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & ( 
-- (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_987|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)) # (\comb_987|altsyncram_component|auto_generated|ram_block1a25~portadataout\)))) ) ) ) # ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a17~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (((\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & \comb_987|altsyncram_component|auto_generated|ram_block1a25~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datab => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datac => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datad => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a25~portadataout\,
	datae => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a17~portadataout\,
	dataf => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a9~portadataout\,
	combout => \DataBusToUART~4_combout\);

-- Location: LABCELL_X41_Y43_N0
\DataBusToUART~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~5_combout\ = ( \DataBusToUART~4_combout\ & ( \DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\) # (AddressPoint(8)) ) ) ) # ( !\DataBusToUART~4_combout\ & ( \DataBusToUART[0]~0_combout\ & ( (AddressPoint(8) & \State~6_combout\) ) ) ) # ( 
-- \DataBusToUART~4_combout\ & ( !\DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\ & (AddressPoint(1))) # (\State~6_combout\ & ((AddressPoint(8)))) ) ) ) # ( !\DataBusToUART~4_combout\ & ( !\DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\ & 
-- (AddressPoint(1))) # (\State~6_combout\ & ((AddressPoint(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AddressPoint(1),
	datab => ALT_INV_AddressPoint(8),
	datad => \ALT_INV_State~6_combout\,
	datae => \ALT_INV_DataBusToUART~4_combout\,
	dataf => \ALT_INV_DataBusToUART[0]~0_combout\,
	combout => \DataBusToUART~5_combout\);

-- Location: FF_X41_Y43_N2
\DataBusToUART[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~5_combout\,
	ena => \DataBusToUART[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(1));

-- Location: FF_X40_Y43_N1
\comb_986|dataIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_986|dataIN\(6),
	sload => VCC,
	ena => \comb_986|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|dataIN\(5));

-- Location: LABCELL_X41_Y41_N57
\DataBusToRAM[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToRAM[5]~feeder_combout\ = ( \comb_986|dataIN\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comb_986|ALT_INV_dataIN\(5),
	combout => \DataBusToRAM[5]~feeder_combout\);

-- Location: IOIBUF_X46_Y45_N92
\DataBusFromCamera[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataBusFromCamera(5),
	o => \DataBusFromCamera[5]~input_o\);

-- Location: FF_X41_Y41_N59
\DataBusToRAM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToRAM[5]~feeder_combout\,
	asdata => \DataBusFromCamera[5]~input_o\,
	sload => \ActionWriteToRAM~0_combout\,
	ena => \ActionWriteToRAM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(5));

-- Location: M10K_X51_Y41_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a21\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M10K_X46_Y37_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a29\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y37_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y39_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LABCELL_X44_Y41_N15
\DataBusToUART~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~12_combout\ = ( \comb_987|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( \comb_987|altsyncram_component|auto_generated|ram_block1a5~portadataout\ & ( 
-- (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1)) # ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_987|altsyncram_component|auto_generated|ram_block1a21~portadataout\)) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\comb_987|altsyncram_component|auto_generated|ram_block1a29~portadataout\)))) ) ) ) # ( !\comb_987|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( 
-- \comb_987|altsyncram_component|auto_generated|ram_block1a5~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_987|altsyncram_component|auto_generated|ram_block1a21~portadataout\)) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\comb_987|altsyncram_component|auto_generated|ram_block1a29~portadataout\))))) ) ) ) # ( \comb_987|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a5~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_987|altsyncram_component|auto_generated|ram_block1a21~portadataout\)) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\comb_987|altsyncram_component|auto_generated|ram_block1a29~portadataout\))))) ) ) ) # ( !\comb_987|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a5~portadataout\ & ( (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a21~portadataout\)) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\comb_987|altsyncram_component|auto_generated|ram_block1a29~portadataout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datab => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datac => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a21~portadataout\,
	datad => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a29~portadataout\,
	datae => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a13~portadataout\,
	dataf => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	combout => \DataBusToUART~12_combout\);

-- Location: LABCELL_X41_Y43_N54
\DataBusToUART~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~13_combout\ = ( \DataBusToUART~12_combout\ & ( (!\State~6_combout\ & (((AddressPoint(5))) # (\DataBusToUART[0]~0_combout\))) # (\State~6_combout\ & (((AddressPoint(12))))) ) ) # ( !\DataBusToUART~12_combout\ & ( (!\State~6_combout\ & 
-- (!\DataBusToUART[0]~0_combout\ & (AddressPoint(5)))) # (\State~6_combout\ & (((AddressPoint(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DataBusToUART[0]~0_combout\,
	datab => \ALT_INV_State~6_combout\,
	datac => ALT_INV_AddressPoint(5),
	datad => ALT_INV_AddressPoint(12),
	dataf => \ALT_INV_DataBusToUART~12_combout\,
	combout => \DataBusToUART~13_combout\);

-- Location: FF_X41_Y43_N55
\DataBusToUART[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~13_combout\,
	ena => \DataBusToUART[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(5));

-- Location: LABCELL_X41_Y41_N24
\DataBusToRAM[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToRAM[7]~feeder_combout\ = ( \comb_986|dataIN\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comb_986|ALT_INV_dataIN\(7),
	combout => \DataBusToRAM[7]~feeder_combout\);

-- Location: IOIBUF_X42_Y45_N18
\DataBusFromCamera[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataBusFromCamera(7),
	o => \DataBusFromCamera[7]~input_o\);

-- Location: FF_X41_Y41_N26
\DataBusToRAM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToRAM[7]~feeder_combout\,
	asdata => \DataBusFromCamera[7]~input_o\,
	sload => \ActionWriteToRAM~0_combout\,
	ena => \ActionWriteToRAM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(7));

-- Location: M10K_X51_Y42_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M10K_X46_Y39_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a31\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y43_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a23\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y38_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LABCELL_X44_Y42_N6
\DataBusToUART~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~16_combout\ = ( \comb_987|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( \comb_987|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( 
-- (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))) # (\comb_987|altsyncram_component|auto_generated|ram_block1a7~portadataout\))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)) # (\comb_987|altsyncram_component|auto_generated|ram_block1a31~portadataout\)))) ) ) ) # ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( \comb_987|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (((\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))) # (\comb_987|altsyncram_component|auto_generated|ram_block1a7~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (((\comb_987|altsyncram_component|auto_generated|ram_block1a31~portadataout\ & \comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))))) ) ) ) # ( \comb_987|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_987|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & 
-- ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a31~portadataout\)))) ) ) ) # ( !\comb_987|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( 
-- (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_987|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\comb_987|altsyncram_component|auto_generated|ram_block1a31~portadataout\ & \comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datab => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a7~portadataout\,
	datac => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a31~portadataout\,
	datad => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datae => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a23~portadataout\,
	dataf => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a15~portadataout\,
	combout => \DataBusToUART~16_combout\);

-- Location: LABCELL_X41_Y43_N48
\DataBusToUART~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~17_combout\ = ( AddressPoint(7) & ( \DataBusToUART~16_combout\ & ( (!\State~6_combout\) # (AddressPoint(14)) ) ) ) # ( !AddressPoint(7) & ( \DataBusToUART~16_combout\ & ( (!\State~6_combout\ & ((\DataBusToUART[0]~0_combout\))) # 
-- (\State~6_combout\ & (AddressPoint(14))) ) ) ) # ( AddressPoint(7) & ( !\DataBusToUART~16_combout\ & ( (!\State~6_combout\ & ((!\DataBusToUART[0]~0_combout\))) # (\State~6_combout\ & (AddressPoint(14))) ) ) ) # ( !AddressPoint(7) & ( 
-- !\DataBusToUART~16_combout\ & ( (AddressPoint(14) & \State~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111100000011001100001111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_AddressPoint(14),
	datac => \ALT_INV_DataBusToUART[0]~0_combout\,
	datad => \ALT_INV_State~6_combout\,
	datae => ALT_INV_AddressPoint(7),
	dataf => \ALT_INV_DataBusToUART~16_combout\,
	combout => \DataBusToUART~17_combout\);

-- Location: FF_X41_Y43_N50
\DataBusToUART[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~17_combout\,
	ena => \DataBusToUART[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(7));

-- Location: LABCELL_X41_Y44_N9
\comb_986|always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|always0~1_combout\ = ( !\comb_986|clok2048MbodCounterTX\(0) & ( (!\comb_986|clok2048MbodCounterTX\(4) & ((!\comb_986|clok2048MbodCounterTX\(6) & (\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & \comb_986|clok2048MbodCounterTX\(5))) # 
-- (\comb_986|clok2048MbodCounterTX\(6) & (!\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & !\comb_986|clok2048MbodCounterTX\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000000000010000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterTX\(6),
	datab => \comb_986|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\,
	datac => \comb_986|ALT_INV_clok2048MbodCounterTX\(5),
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(4),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterTX\(0),
	combout => \comb_986|always0~1_combout\);

-- Location: LABCELL_X41_Y44_N12
\comb_986|always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|always0~2_combout\ = ( !\comb_986|clok2048MbodCounterTX\(6) & ( (\comb_986|clok2048MbodCounterTX\(0) & (\comb_986|clok2048MbodCounterTX\(4) & (!\comb_986|clok2048MbodCounterTX\(2) & !\comb_986|clok2048MbodCounterTX\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterTX\(0),
	datab => \comb_986|ALT_INV_clok2048MbodCounterTX\(4),
	datac => \comb_986|ALT_INV_clok2048MbodCounterTX\(2),
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(5),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterTX\(6),
	combout => \comb_986|always0~2_combout\);

-- Location: LABCELL_X41_Y44_N0
\comb_986|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|always0~0_combout\ = ( \comb_986|clok2048MbodCounterTX\(5) & ( (!\comb_986|clok2048MbodCounterTX\(0) & (!\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & (!\comb_986|clok2048MbodCounterTX\(6) & \comb_986|clok2048MbodCounterTX\(4)))) # 
-- (\comb_986|clok2048MbodCounterTX\(0) & (\comb_986|clok2048MbodCounterTX\(6) & (!\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ $ (\comb_986|clok2048MbodCounterTX\(4))))) ) ) # ( !\comb_986|clok2048MbodCounterTX\(5) & ( 
-- (!\comb_986|clok2048MbodCounterTX\(0) & (\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & (\comb_986|clok2048MbodCounterTX\(6) & !\comb_986|clok2048MbodCounterTX\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000100100000010000010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterTX\(0),
	datab => \comb_986|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\,
	datac => \comb_986|ALT_INV_clok2048MbodCounterTX\(6),
	datad => \comb_986|ALT_INV_clok2048MbodCounterTX\(4),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterTX\(5),
	combout => \comb_986|always0~0_combout\);

-- Location: LABCELL_X41_Y44_N24
\comb_986|always0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|always0~11_combout\ = ( !\comb_986|clok2048MbodCounterTX\(2) & ( (!\comb_986|clok2048MbodCounterTX\(1) & (\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & (((\comb_986|always0~2_combout\ & !\comb_986|clok2048MbodCounterTX\(7)))))) # 
-- (\comb_986|clok2048MbodCounterTX\(1) & ((!\comb_986|clok2048MbodCounterTX\(7) & (((\comb_986|always0~0_combout\)))) # (\comb_986|clok2048MbodCounterTX\(7) & (!\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & ((\comb_986|always0~2_combout\)))))) ) ) # ( 
-- \comb_986|clok2048MbodCounterTX\(2) & ( (!\comb_986|clok2048MbodCounterTX\(1) & ((!\comb_986|clok2048MbodCounterTX\(7) & (\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & ((\comb_986|always0~2_combout\)))) # (\comb_986|clok2048MbodCounterTX\(7) & 
-- (((\comb_986|always0~1_combout\)))))) # (\comb_986|clok2048MbodCounterTX\(1) & (!\comb_986|clok2048MbodCounterTX[3]~DUPLICATE_q\ & (((\comb_986|always0~2_combout\ & \comb_986|clok2048MbodCounterTX\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100100111000000000010001000000000010001000000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_clok2048MbodCounterTX\(1),
	datab => \comb_986|ALT_INV_clok2048MbodCounterTX[3]~DUPLICATE_q\,
	datac => \comb_986|ALT_INV_always0~1_combout\,
	datad => \comb_986|ALT_INV_always0~2_combout\,
	datae => \comb_986|ALT_INV_clok2048MbodCounterTX\(2),
	dataf => \comb_986|ALT_INV_clok2048MbodCounterTX\(7),
	datag => \comb_986|ALT_INV_always0~0_combout\,
	combout => \comb_986|always0~11_combout\);

-- Location: LABCELL_X40_Y44_N51
\comb_986|always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|always0~3_combout\ = ( !\comb_986|clok2048MbodCounterTX\(5) & ( (!\comb_986|clok2048MbodCounterTX[7]~DUPLICATE_q\ & (!\comb_986|clok2048MbodCounterTX\(6) & \comb_986|LessThan2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_986|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\,
	datac => \comb_986|ALT_INV_clok2048MbodCounterTX\(6),
	datad => \comb_986|ALT_INV_LessThan2~0_combout\,
	dataf => \comb_986|ALT_INV_clok2048MbodCounterTX\(5),
	combout => \comb_986|always0~3_combout\);

-- Location: LABCELL_X40_Y44_N57
\comb_986|shiftRegTX~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|shiftRegTX~8_combout\ = ( \comb_986|always0~3_combout\ & ( (!\comb_986|always0~11_combout\ & ((!\ActionDataTransmitToUART~q\ & ((\comb_986|shiftRegTX\(7)))) # (\ActionDataTransmitToUART~q\ & (DataBusToUART(7))))) ) ) # ( 
-- !\comb_986|always0~3_combout\ & ( (!\comb_986|always0~11_combout\ & \comb_986|shiftRegTX\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000010000101100000001000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActionDataTransmitToUART~q\,
	datab => ALT_INV_DataBusToUART(7),
	datac => \comb_986|ALT_INV_always0~11_combout\,
	datad => \comb_986|ALT_INV_shiftRegTX\(7),
	dataf => \comb_986|ALT_INV_always0~3_combout\,
	combout => \comb_986|shiftRegTX~8_combout\);

-- Location: FF_X40_Y44_N59
\comb_986|shiftRegTX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|shiftRegTX~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|shiftRegTX\(7));

-- Location: LABCELL_X41_Y41_N18
\DataBusToRAM[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToRAM[6]~feeder_combout\ = ( \comb_986|dataIN\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comb_986|ALT_INV_dataIN\(6),
	combout => \DataBusToRAM[6]~feeder_combout\);

-- Location: IOIBUF_X34_Y45_N35
\DataBusFromCamera[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataBusFromCamera(6),
	o => \DataBusFromCamera[6]~input_o\);

-- Location: FF_X41_Y41_N20
\DataBusToRAM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToRAM[6]~feeder_combout\,
	asdata => \DataBusFromCamera[6]~input_o\,
	sload => \ActionWriteToRAM~0_combout\,
	ena => \ActionWriteToRAM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(6));

-- Location: M10K_X51_Y44_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y42_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M10K_X46_Y40_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a30\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y44_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a22\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LABCELL_X44_Y42_N12
\DataBusToUART~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~14_combout\ = ( \comb_987|altsyncram_component|auto_generated|ram_block1a30~portadataout\ & ( \comb_987|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & ( 
-- ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\comb_987|altsyncram_component|auto_generated|ram_block1a6~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a14~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1)) ) ) ) # ( !\comb_987|altsyncram_component|auto_generated|ram_block1a30~portadataout\ & ( 
-- \comb_987|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\comb_987|altsyncram_component|auto_generated|ram_block1a6~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_987|altsyncram_component|auto_generated|ram_block1a14~portadataout\)))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))) ) ) ) # ( \comb_987|altsyncram_component|auto_generated|ram_block1a30~portadataout\ & ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\comb_987|altsyncram_component|auto_generated|ram_block1a6~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_987|altsyncram_component|auto_generated|ram_block1a14~portadataout\)))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))) ) ) ) # ( !\comb_987|altsyncram_component|auto_generated|ram_block1a30~portadataout\ & ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\comb_987|altsyncram_component|auto_generated|ram_block1a6~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_987|altsyncram_component|auto_generated|ram_block1a14~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datab => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datac => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a14~portadataout\,
	datad => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a6~portadataout\,
	datae => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a30~portadataout\,
	dataf => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a22~portadataout\,
	combout => \DataBusToUART~14_combout\);

-- Location: LABCELL_X41_Y43_N33
\DataBusToUART~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~15_combout\ = ( \DataBusToUART~14_combout\ & ( \DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\) # (AddressPoint(13)) ) ) ) # ( !\DataBusToUART~14_combout\ & ( \DataBusToUART[0]~0_combout\ & ( (\State~6_combout\ & AddressPoint(13)) ) ) 
-- ) # ( \DataBusToUART~14_combout\ & ( !\DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\ & (AddressPoint(6))) # (\State~6_combout\ & ((AddressPoint(13)))) ) ) ) # ( !\DataBusToUART~14_combout\ & ( !\DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\ & 
-- (AddressPoint(6))) # (\State~6_combout\ & ((AddressPoint(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State~6_combout\,
	datac => ALT_INV_AddressPoint(6),
	datad => ALT_INV_AddressPoint(13),
	datae => \ALT_INV_DataBusToUART~14_combout\,
	dataf => \ALT_INV_DataBusToUART[0]~0_combout\,
	combout => \DataBusToUART~15_combout\);

-- Location: FF_X41_Y43_N34
\DataBusToUART[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~15_combout\,
	ena => \DataBusToUART[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(6));

-- Location: LABCELL_X40_Y44_N36
\comb_986|shiftRegTX~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|shiftRegTX~7_combout\ = ( \comb_986|always0~11_combout\ & ( \comb_986|shiftRegTX\(7) ) ) # ( !\comb_986|always0~11_combout\ & ( DataBusToUART(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_986|ALT_INV_shiftRegTX\(7),
	datac => ALT_INV_DataBusToUART(6),
	dataf => \comb_986|ALT_INV_always0~11_combout\,
	combout => \comb_986|shiftRegTX~7_combout\);

-- Location: LABCELL_X40_Y44_N54
\comb_986|shiftRegTX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|shiftRegTX[0]~1_combout\ = ( \comb_986|always0~11_combout\ ) # ( !\comb_986|always0~11_combout\ & ( (\ActionDataTransmitToUART~q\ & \comb_986|always0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ActionDataTransmitToUART~q\,
	datac => \comb_986|ALT_INV_always0~3_combout\,
	dataf => \comb_986|ALT_INV_always0~11_combout\,
	combout => \comb_986|shiftRegTX[0]~1_combout\);

-- Location: FF_X40_Y44_N37
\comb_986|shiftRegTX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|shiftRegTX~7_combout\,
	ena => \comb_986|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|shiftRegTX\(6));

-- Location: LABCELL_X40_Y44_N39
\comb_986|shiftRegTX~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|shiftRegTX~6_combout\ = ( \comb_986|always0~11_combout\ & ( \comb_986|shiftRegTX\(6) ) ) # ( !\comb_986|always0~11_combout\ & ( DataBusToUART(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_DataBusToUART(5),
	datad => \comb_986|ALT_INV_shiftRegTX\(6),
	dataf => \comb_986|ALT_INV_always0~11_combout\,
	combout => \comb_986|shiftRegTX~6_combout\);

-- Location: FF_X40_Y44_N41
\comb_986|shiftRegTX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|shiftRegTX~6_combout\,
	ena => \comb_986|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|shiftRegTX\(5));

-- Location: LABCELL_X41_Y41_N54
\DataBusToRAM[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToRAM[4]~feeder_combout\ = ( \comb_986|dataIN\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comb_986|ALT_INV_dataIN\(4),
	combout => \DataBusToRAM[4]~feeder_combout\);

-- Location: IOIBUF_X43_Y45_N18
\DataBusFromCamera[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataBusFromCamera(4),
	o => \DataBusFromCamera[4]~input_o\);

-- Location: FF_X41_Y41_N56
\DataBusToRAM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToRAM[4]~feeder_combout\,
	asdata => \DataBusFromCamera[4]~input_o\,
	sload => \ActionWriteToRAM~0_combout\,
	ena => \ActionWriteToRAM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(4));

-- Location: M10K_X51_Y40_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M10K_X30_Y40_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M10K_X46_Y38_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a28\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y38_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LABCELL_X40_Y40_N39
\DataBusToUART~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~10_combout\ = ( \comb_987|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( \comb_987|altsyncram_component|auto_generated|ram_block1a12~portadataout\ & ( 
-- ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_987|altsyncram_component|auto_generated|ram_block1a4~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a20~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)) ) ) ) # ( !\comb_987|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( 
-- \comb_987|altsyncram_component|auto_generated|ram_block1a12~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\comb_987|altsyncram_component|auto_generated|ram_block1a4~portadataout\)) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a20~portadataout\))) ) ) ) # ( \comb_987|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a12~portadataout\ & ( 
-- (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\comb_987|altsyncram_component|auto_generated|ram_block1a4~portadataout\)))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\comb_987|altsyncram_component|auto_generated|ram_block1a20~portadataout\)) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)))) ) ) ) # ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a12~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_987|altsyncram_component|auto_generated|ram_block1a4~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a20~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datab => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datac => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a20~portadataout\,
	datad => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datae => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a28~portadataout\,
	dataf => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a12~portadataout\,
	combout => \DataBusToUART~10_combout\);

-- Location: LABCELL_X41_Y43_N15
\DataBusToUART~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~11_combout\ = ( \DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\ & (\DataBusToUART~10_combout\)) # (\State~6_combout\ & ((AddressPoint(11)))) ) ) # ( !\DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\ & (AddressPoint(4))) # 
-- (\State~6_combout\ & ((AddressPoint(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AddressPoint(4),
	datab => \ALT_INV_State~6_combout\,
	datac => \ALT_INV_DataBusToUART~10_combout\,
	datad => ALT_INV_AddressPoint(11),
	dataf => \ALT_INV_DataBusToUART[0]~0_combout\,
	combout => \DataBusToUART~11_combout\);

-- Location: FF_X41_Y43_N16
\DataBusToUART[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~11_combout\,
	ena => \DataBusToUART[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(4));

-- Location: LABCELL_X40_Y44_N42
\comb_986|shiftRegTX~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|shiftRegTX~5_combout\ = ( \comb_986|always0~11_combout\ & ( \comb_986|shiftRegTX\(5) ) ) # ( !\comb_986|always0~11_combout\ & ( DataBusToUART(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_986|ALT_INV_shiftRegTX\(5),
	datac => ALT_INV_DataBusToUART(4),
	dataf => \comb_986|ALT_INV_always0~11_combout\,
	combout => \comb_986|shiftRegTX~5_combout\);

-- Location: FF_X40_Y44_N44
\comb_986|shiftRegTX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|shiftRegTX~5_combout\,
	ena => \comb_986|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|shiftRegTX\(4));

-- Location: LABCELL_X41_Y41_N27
\DataBusToRAM[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToRAM[3]~feeder_combout\ = \comb_986|dataIN\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_986|ALT_INV_dataIN\(3),
	combout => \DataBusToRAM[3]~feeder_combout\);

-- Location: IOIBUF_X43_Y45_N1
\DataBusFromCamera[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataBusFromCamera(3),
	o => \DataBusFromCamera[3]~input_o\);

-- Location: FF_X41_Y41_N29
\DataBusToRAM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToRAM[3]~feeder_combout\,
	asdata => \DataBusFromCamera[3]~input_o\,
	sload => \ActionWriteToRAM~0_combout\,
	ena => \ActionWriteToRAM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(3));

-- Location: M10K_X38_Y39_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M10K_X30_Y43_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a19\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y40_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M10K_X30_Y38_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a27\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: LABCELL_X35_Y43_N3
\DataBusToUART~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~8_combout\ = ( \comb_987|altsyncram_component|auto_generated|ram_block1a3~portadataout\ & ( \comb_987|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) 
-- & (((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))) # (\comb_987|altsyncram_component|auto_generated|ram_block1a11~portadataout\))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (((\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)) # (\comb_987|altsyncram_component|auto_generated|ram_block1a19~portadataout\)))) ) ) ) # ( !\comb_987|altsyncram_component|auto_generated|ram_block1a3~portadataout\ & ( 
-- \comb_987|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_987|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & 
-- ((\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)) # 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a19~portadataout\)))) ) ) ) # ( \comb_987|altsyncram_component|auto_generated|ram_block1a3~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( 
-- (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))) # (\comb_987|altsyncram_component|auto_generated|ram_block1a11~portadataout\))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\comb_987|altsyncram_component|auto_generated|ram_block1a19~portadataout\ & !\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))))) ) ) ) # ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a3~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\comb_987|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & ((\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (((\comb_987|altsyncram_component|auto_generated|ram_block1a19~portadataout\ & !\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010101011110010001000000101011101111010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datab => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a11~portadataout\,
	datac => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a19~portadataout\,
	datad => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datae => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	dataf => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a27~portadataout\,
	combout => \DataBusToUART~8_combout\);

-- Location: LABCELL_X41_Y43_N9
\DataBusToUART~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~9_combout\ = ( \DataBusToUART~8_combout\ & ( \DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\) # (AddressPoint(10)) ) ) ) # ( !\DataBusToUART~8_combout\ & ( \DataBusToUART[0]~0_combout\ & ( (\State~6_combout\ & AddressPoint(10)) ) ) ) # 
-- ( \DataBusToUART~8_combout\ & ( !\DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\ & ((AddressPoint(3)))) # (\State~6_combout\ & (AddressPoint(10))) ) ) ) # ( !\DataBusToUART~8_combout\ & ( !\DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\ & 
-- ((AddressPoint(3)))) # (\State~6_combout\ & (AddressPoint(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State~6_combout\,
	datac => ALT_INV_AddressPoint(10),
	datad => ALT_INV_AddressPoint(3),
	datae => \ALT_INV_DataBusToUART~8_combout\,
	dataf => \ALT_INV_DataBusToUART[0]~0_combout\,
	combout => \DataBusToUART~9_combout\);

-- Location: FF_X41_Y43_N10
\DataBusToUART[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~9_combout\,
	ena => \DataBusToUART[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(3));

-- Location: LABCELL_X40_Y44_N45
\comb_986|shiftRegTX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|shiftRegTX~4_combout\ = ( \comb_986|always0~11_combout\ & ( \comb_986|shiftRegTX\(4) ) ) # ( !\comb_986|always0~11_combout\ & ( DataBusToUART(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_986|ALT_INV_shiftRegTX\(4),
	datad => ALT_INV_DataBusToUART(3),
	dataf => \comb_986|ALT_INV_always0~11_combout\,
	combout => \comb_986|shiftRegTX~4_combout\);

-- Location: FF_X40_Y44_N47
\comb_986|shiftRegTX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|shiftRegTX~4_combout\,
	ena => \comb_986|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|shiftRegTX\(3));

-- Location: LABCELL_X41_Y41_N21
\DataBusToRAM[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToRAM[2]~feeder_combout\ = ( \comb_986|dataIN\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \comb_986|ALT_INV_dataIN\(2),
	combout => \DataBusToRAM[2]~feeder_combout\);

-- Location: IOIBUF_X40_Y45_N41
\DataBusFromCamera[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataBusFromCamera(2),
	o => \DataBusFromCamera[2]~input_o\);

-- Location: FF_X41_Y41_N23
\DataBusToRAM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToRAM[2]~feeder_combout\,
	asdata => \DataBusFromCamera[2]~input_o\,
	sload => \ActionWriteToRAM~0_combout\,
	ena => \ActionWriteToRAM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(2));

-- Location: M10K_X30_Y42_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y43_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a18\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M10K_X30_Y41_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a26\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: M10K_X46_Y44_N0
\comb_987|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_987|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "dont_care",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \comb_987|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_987|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_987|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \comb_987|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_987|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LABCELL_X35_Y43_N33
\DataBusToUART~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~6_combout\ = ( \comb_987|altsyncram_component|auto_generated|ram_block1a26~portadataout\ & ( \comb_987|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & ( 
-- ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_987|altsyncram_component|auto_generated|ram_block1a2~portadataout\)) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\comb_987|altsyncram_component|auto_generated|ram_block1a18~portadataout\)))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)) ) ) ) # ( !\comb_987|altsyncram_component|auto_generated|ram_block1a26~portadataout\ & ( 
-- \comb_987|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\comb_987|altsyncram_component|auto_generated|ram_block1a2~portadataout\)) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\comb_987|altsyncram_component|auto_generated|ram_block1a18~portadataout\)))) ) ) ) # ( \comb_987|altsyncram_component|auto_generated|ram_block1a26~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & ( 
-- (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_987|altsyncram_component|auto_generated|ram_block1a2~portadataout\))) # 
-- (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\comb_987|altsyncram_component|auto_generated|ram_block1a18~portadataout\)) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0)))) ) ) ) # ( 
-- !\comb_987|altsyncram_component|auto_generated|ram_block1a26~portadataout\ & ( !\comb_987|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & ( (!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((!\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_987|altsyncram_component|auto_generated|ram_block1a2~portadataout\)) # (\comb_987|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\comb_987|altsyncram_component|auto_generated|ram_block1a18~portadataout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datab => \comb_987|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datac => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datad => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a18~portadataout\,
	datae => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a26~portadataout\,
	dataf => \comb_987|altsyncram_component|auto_generated|ALT_INV_ram_block1a10~portadataout\,
	combout => \DataBusToUART~6_combout\);

-- Location: LABCELL_X41_Y43_N18
\DataBusToUART~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~7_combout\ = ( \DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\ & ((\DataBusToUART~6_combout\))) # (\State~6_combout\ & (AddressPoint(9))) ) ) # ( !\DataBusToUART[0]~0_combout\ & ( (!\State~6_combout\ & (AddressPoint(2))) # 
-- (\State~6_combout\ & ((AddressPoint(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AddressPoint(2),
	datab => \ALT_INV_State~6_combout\,
	datac => ALT_INV_AddressPoint(9),
	datad => \ALT_INV_DataBusToUART~6_combout\,
	dataf => \ALT_INV_DataBusToUART[0]~0_combout\,
	combout => \DataBusToUART~7_combout\);

-- Location: FF_X41_Y43_N19
\DataBusToUART[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~7_combout\,
	ena => \DataBusToUART[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(2));

-- Location: LABCELL_X40_Y44_N0
\comb_986|shiftRegTX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|shiftRegTX~3_combout\ = ( \comb_986|always0~11_combout\ & ( \comb_986|shiftRegTX\(3) ) ) # ( !\comb_986|always0~11_combout\ & ( DataBusToUART(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_986|ALT_INV_shiftRegTX\(3),
	datac => ALT_INV_DataBusToUART(2),
	dataf => \comb_986|ALT_INV_always0~11_combout\,
	combout => \comb_986|shiftRegTX~3_combout\);

-- Location: FF_X40_Y44_N1
\comb_986|shiftRegTX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|shiftRegTX~3_combout\,
	ena => \comb_986|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|shiftRegTX\(2));

-- Location: LABCELL_X40_Y44_N3
\comb_986|shiftRegTX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|shiftRegTX~2_combout\ = ( \comb_986|always0~11_combout\ & ( \comb_986|shiftRegTX\(2) ) ) # ( !\comb_986|always0~11_combout\ & ( DataBusToUART(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DataBusToUART(1),
	datad => \comb_986|ALT_INV_shiftRegTX\(2),
	dataf => \comb_986|ALT_INV_always0~11_combout\,
	combout => \comb_986|shiftRegTX~2_combout\);

-- Location: FF_X40_Y44_N5
\comb_986|shiftRegTX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|shiftRegTX~2_combout\,
	ena => \comb_986|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|shiftRegTX\(1));

-- Location: LABCELL_X40_Y44_N48
\comb_986|shiftRegTX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|shiftRegTX~0_combout\ = ( \comb_986|always0~11_combout\ & ( \comb_986|shiftRegTX\(1) ) ) # ( !\comb_986|always0~11_combout\ & ( DataBusToUART(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DataBusToUART(0),
	datac => \comb_986|ALT_INV_shiftRegTX\(1),
	dataf => \comb_986|ALT_INV_always0~11_combout\,
	combout => \comb_986|shiftRegTX~0_combout\);

-- Location: FF_X40_Y44_N49
\comb_986|shiftRegTX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|shiftRegTX~0_combout\,
	ena => \comb_986|shiftRegTX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|shiftRegTX\(0));

-- Location: LABCELL_X41_Y44_N57
\comb_986|PinTX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_986|PinTX~2_combout\ = ( \comb_986|PinTX~q\ & ( \comb_986|always0~11_combout\ & ( (!\comb_986|shiftRegTX\(0) & !\comb_986|Equal23~1_combout\) ) ) ) # ( !\comb_986|PinTX~q\ & ( \comb_986|always0~11_combout\ & ( (!\comb_986|shiftRegTX\(0) & 
-- !\comb_986|Equal23~1_combout\) ) ) ) # ( \comb_986|PinTX~q\ & ( !\comb_986|always0~11_combout\ & ( !\comb_986|Equal23~1_combout\ ) ) ) # ( !\comb_986|PinTX~q\ & ( !\comb_986|always0~11_combout\ & ( (\comb_986|PinTX~1_combout\ & 
-- !\comb_986|Equal23~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_986|ALT_INV_PinTX~1_combout\,
	datac => \comb_986|ALT_INV_shiftRegTX\(0),
	datad => \comb_986|ALT_INV_Equal23~1_combout\,
	datae => \comb_986|ALT_INV_PinTX~q\,
	dataf => \comb_986|ALT_INV_always0~11_combout\,
	combout => \comb_986|PinTX~2_combout\);

-- Location: FF_X41_Y44_N58
\comb_986|PinTX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_986|PinTX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_986|PinTX~q\);

-- Location: MLABCELL_X42_Y42_N0
\debug~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug~0_combout\ = ( \debug~reg0_q\ & ( \always0~2_combout\ & ( !\comb_986|flagOUT_DataResive~q\ ) ) ) # ( !\debug~reg0_q\ & ( \always0~2_combout\ & ( (!\clk25Mgz~q\ & (\always0~3_combout\ & (!\HREF~input_o\ & !\comb_986|flagOUT_DataResive~q\))) ) ) ) # 
-- ( \debug~reg0_q\ & ( !\always0~2_combout\ ) ) # ( !\debug~reg0_q\ & ( !\always0~2_combout\ & ( (!\clk25Mgz~q\ & (\always0~3_combout\ & !\HREF~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000111111111111111100100000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk25Mgz~q\,
	datab => \ALT_INV_always0~3_combout\,
	datac => \ALT_INV_HREF~input_o\,
	datad => \comb_986|ALT_INV_flagOUT_DataResive~q\,
	datae => \ALT_INV_debug~reg0_q\,
	dataf => \ALT_INV_always0~2_combout\,
	combout => \debug~0_combout\);

-- Location: FF_X42_Y42_N1
\debug~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \debug~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug~reg0_q\);

-- Location: IOIBUF_X44_Y45_N35
\PCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCLK,
	o => \PCLK~input_o\);
END structure;


