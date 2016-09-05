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

-- DATE "09/05/2016 18:35:30"

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
	PinTX : OUT std_logic
	);
END test16;

-- Design Ports Information
-- PinTX	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PinRX	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \comb_505|Add1~9_sumout\ : std_logic;
SIGNAL \comb_505|clok2048MbodCounterTX[4]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|LessThan2~0_combout\ : std_logic;
SIGNAL \PinRX~input_o\ : std_logic;
SIGNAL \comb_505|Add0~1_sumout\ : std_logic;
SIGNAL \comb_505|clok2048MbodCounterRX[7]~0_combout\ : std_logic;
SIGNAL \comb_505|Add0~14\ : std_logic;
SIGNAL \comb_505|Add0~25_sumout\ : std_logic;
SIGNAL \comb_505|clok2048MbodCounterRX[7]~1_combout\ : std_logic;
SIGNAL \comb_505|clok2048MbodCounterRX~3_combout\ : std_logic;
SIGNAL \comb_505|clok2048MbodCounterRX[7]~2_combout\ : std_logic;
SIGNAL \comb_505|clok2048MbodCounterRX[7]~4_combout\ : std_logic;
SIGNAL \comb_505|Add0~2\ : std_logic;
SIGNAL \comb_505|Add0~21_sumout\ : std_logic;
SIGNAL \comb_505|Add0~22\ : std_logic;
SIGNAL \comb_505|Add0~29_sumout\ : std_logic;
SIGNAL \comb_505|Add0~30\ : std_logic;
SIGNAL \comb_505|Add0~17_sumout\ : std_logic;
SIGNAL \comb_505|Add0~18\ : std_logic;
SIGNAL \comb_505|Add0~5_sumout\ : std_logic;
SIGNAL \comb_505|Add0~6\ : std_logic;
SIGNAL \comb_505|Add0~9_sumout\ : std_logic;
SIGNAL \comb_505|Add0~10\ : std_logic;
SIGNAL \comb_505|Add0~13_sumout\ : std_logic;
SIGNAL \comb_505|always0~5_combout\ : std_logic;
SIGNAL \comb_505|always0~4_combout\ : std_logic;
SIGNAL \comb_505|always0~7_combout\ : std_logic;
SIGNAL \comb_505|dataIN[5]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|dataIN[4]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|dataIN[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|dataIN[2]~DUPLICATE_q\ : std_logic;
SIGNAL \always0~5_combout\ : std_logic;
SIGNAL \comb_505|Equal12~0_combout\ : std_logic;
SIGNAL \comb_505|flagOUT_DataResive~0_combout\ : std_logic;
SIGNAL \comb_505|flagOUT_DataResive~q\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \always0~8_combout\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \State~14_combout\ : std_logic;
SIGNAL \State~16_combout\ : std_logic;
SIGNAL \State.0010~q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[3]~0_combout\ : std_logic;
SIGNAL \always0~9_combout\ : std_logic;
SIGNAL \CounterPauseForTransmitUART[3]~1_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \State~18_combout\ : std_logic;
SIGNAL \CounterNededByte[4]~0_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \always0~10_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \CounterNededByte[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \CounterNededByte[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \State~9_combout\ : std_logic;
SIGNAL \State~10_combout\ : std_logic;
SIGNAL \State~11_combout\ : std_logic;
SIGNAL \State~12_combout\ : std_logic;
SIGNAL \State~17_combout\ : std_logic;
SIGNAL \State.0001~q\ : std_logic;
SIGNAL \State~13_combout\ : std_logic;
SIGNAL \State.0000~q\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \State~15_combout\ : std_logic;
SIGNAL \State.0010~DUPLICATE_q\ : std_logic;
SIGNAL \ActionDataTransmitToUART~2_combout\ : std_logic;
SIGNAL \ActionDataTransmitToUART~0_combout\ : std_logic;
SIGNAL \ActionDataTransmitToUART~1_combout\ : std_logic;
SIGNAL \ActionDataTransmitToUART~q\ : std_logic;
SIGNAL \comb_505|clok2048MbodCounterTX~0_combout\ : std_logic;
SIGNAL \comb_505|clok2048MbodCounterTX[7]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|Equal23~0_combout\ : std_logic;
SIGNAL \comb_505|Equal23~1_combout\ : std_logic;
SIGNAL \comb_505|Add1~10\ : std_logic;
SIGNAL \comb_505|Add1~1_sumout\ : std_logic;
SIGNAL \comb_505|Add1~2\ : std_logic;
SIGNAL \comb_505|Add1~29_sumout\ : std_logic;
SIGNAL \comb_505|Add1~30\ : std_logic;
SIGNAL \comb_505|Add1~13_sumout\ : std_logic;
SIGNAL \comb_505|Add1~14\ : std_logic;
SIGNAL \comb_505|Add1~5_sumout\ : std_logic;
SIGNAL \comb_505|Add1~6\ : std_logic;
SIGNAL \comb_505|Add1~21_sumout\ : std_logic;
SIGNAL \comb_505|Add1~22\ : std_logic;
SIGNAL \comb_505|Add1~17_sumout\ : std_logic;
SIGNAL \comb_505|Add1~18\ : std_logic;
SIGNAL \comb_505|Add1~25_sumout\ : std_logic;
SIGNAL \comb_505|PinTX~0_combout\ : std_logic;
SIGNAL \comb_505|PinTX~1_combout\ : std_logic;
SIGNAL \comb_505|always0~6_combout\ : std_logic;
SIGNAL \comb_505|always0~2_combout\ : std_logic;
SIGNAL \ActionWriteToRAM~0_combout\ : std_logic;
SIGNAL \ActionWriteToRAM~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \State.0000~DUPLICATE_q\ : std_logic;
SIGNAL \always0~6_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \always0~7_combout\ : std_logic;
SIGNAL \AddressPoint[13]~0_combout\ : std_logic;
SIGNAL \AddressPoint[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \AddressPoint[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \AddressPoint[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \AddressPoint[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \AddressPoint[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\ : std_logic;
SIGNAL \AddressPoint[14]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\ : std_logic;
SIGNAL \ActionWriteToRAM~1_combout\ : std_logic;
SIGNAL \AddressPoint[6]~DUPLICATE_q\ : std_logic;
SIGNAL \AddressPoint[7]~DUPLICATE_q\ : std_logic;
SIGNAL \AddressPoint[8]~DUPLICATE_q\ : std_logic;
SIGNAL \AddressPoint[9]~DUPLICATE_q\ : std_logic;
SIGNAL \AddressPoint[11]~DUPLICATE_q\ : std_logic;
SIGNAL \AddressPoint[12]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \DataBusToUART~0_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \DataBusToUART[0]~1_combout\ : std_logic;
SIGNAL \DataBusToUART[0]~10_combout\ : std_logic;
SIGNAL \DataBusToUART[0]~2_combout\ : std_logic;
SIGNAL \comb_505|always0~0_combout\ : std_logic;
SIGNAL \comb_505|always0~1_combout\ : std_logic;
SIGNAL \AddressPoint[5]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \DataBusToUART~3_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \DataBusToUART~4_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \DataBusToUART~5_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \DataBusToUART~6_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \DataBusToUART~7_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \DataBusToUART~8_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \DataBusToUART~9_combout\ : std_logic;
SIGNAL \comb_505|always0~3_combout\ : std_logic;
SIGNAL \comb_505|shiftRegTX~8_combout\ : std_logic;
SIGNAL \comb_505|shiftRegTX~7_combout\ : std_logic;
SIGNAL \comb_505|shiftRegTX[4]~1_combout\ : std_logic;
SIGNAL \comb_505|shiftRegTX~6_combout\ : std_logic;
SIGNAL \comb_505|shiftRegTX~5_combout\ : std_logic;
SIGNAL \comb_505|shiftRegTX~4_combout\ : std_logic;
SIGNAL \comb_505|shiftRegTX~3_combout\ : std_logic;
SIGNAL \comb_505|shiftRegTX~2_combout\ : std_logic;
SIGNAL \comb_505|shiftRegTX~0_combout\ : std_logic;
SIGNAL \comb_505|PinTX~2_combout\ : std_logic;
SIGNAL \comb_505|PinTX~q\ : std_logic;
SIGNAL \comb_505|clok2048MbodCounterTX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_505|clok2048MbodCounterRX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL DataBusToUART : std_logic_vector(7 DOWNTO 0);
SIGNAL AddressPoint : std_logic_vector(14 DOWNTO 0);
SIGNAL CounterPauseForTransmitUART : std_logic_vector(7 DOWNTO 0);
SIGNAL CounterNededByte : std_logic_vector(14 DOWNTO 0);
SIGNAL \comb_505|shiftRegTX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_505|dataIN\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL DataBusToRAM : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a26~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a18~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a10~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a2~portadataout\ : std_logic;
SIGNAL ALT_INV_DataBusToUART : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_CounterNededByte : std_logic_vector(14 DOWNTO 0);
SIGNAL \comb_505|ALT_INV_clok2048MbodCounterRX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_AddressPoint : std_logic_vector(14 DOWNTO 2);
SIGNAL \ALT_INV_ActionWriteToRAM~q\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a25~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a17~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a9~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a1~portadataout\ : std_logic;
SIGNAL ALT_INV_CounterPauseForTransmitUART : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a24~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a16~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \comb_505|ALT_INV_clok2048MbodCounterTX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_State.0010~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|ALT_INV_dataIN[4]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|ALT_INV_dataIN[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|ALT_INV_dataIN[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_State.0000~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|ALT_INV_dataIN[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_CounterNededByte[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_CounterNededByte[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_AddressPoint[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_AddressPoint[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_AddressPoint[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_AddressPoint[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_AddressPoint[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_AddressPoint[0]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\ : std_logic;
SIGNAL \comb_505|ALT_INV_clok2048MbodCounterTX[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_PinRX~input_o\ : std_logic;
SIGNAL \ALT_INV_DataBusToUART[0]~10_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_always0~6_combout\ : std_logic;
SIGNAL \ALT_INV_ActionDataTransmitToUART~2_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_shiftRegTX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_505|ALT_INV_clok2048MbodCounterRX[7]~2_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_clok2048MbodCounterRX[7]~1_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_clok2048MbodCounterRX[7]~0_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \ALT_INV_State~15_combout\ : std_logic;
SIGNAL \ALT_INV_always0~9_combout\ : std_logic;
SIGNAL \ALT_INV_always0~8_combout\ : std_logic;
SIGNAL \ALT_INV_State~14_combout\ : std_logic;
SIGNAL \ALT_INV_State~12_combout\ : std_logic;
SIGNAL \ALT_INV_State~11_combout\ : std_logic;
SIGNAL \ALT_INV_State~10_combout\ : std_logic;
SIGNAL \ALT_INV_State~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.0001~q\ : std_logic;
SIGNAL \comb_505|ALT_INV_always0~5_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \ALT_INV_always0~7_combout\ : std_logic;
SIGNAL \ALT_INV_always0~6_combout\ : std_logic;
SIGNAL \ALT_INV_always0~5_combout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_address_reg_a\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \ALT_INV_ActionDataTransmitToUART~0_combout\ : std_logic;
SIGNAL \ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_flagOUT_DataResive~q\ : std_logic;
SIGNAL \ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.0010~q\ : std_logic;
SIGNAL \ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_dataIN\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \ALT_INV_always0~1_combout\ : std_logic;
SIGNAL \ALT_INV_State.0000~q\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_505|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_ActionDataTransmitToUART~q\ : std_logic;
SIGNAL \comb_505|ALT_INV_PinTX~1_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_PinTX~0_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_Equal23~1_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_Equal23~0_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_always0~1_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \comb_505|ALT_INV_PinTX~q\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a31~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a23~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a15~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a7~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a30~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a22~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a14~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a6~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a29~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a21~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a13~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a5~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a28~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a20~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a12~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a4~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a27~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a19~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a11~portadataout\ : std_logic;
SIGNAL \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a3~portadataout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_PinRX <= PinRX;
PinTX <= ww_PinTX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\comb_506|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= DataBusToRAM(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= DataBusToRAM(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= DataBusToRAM(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= DataBusToRAM(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= DataBusToRAM(1);

\comb_506|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & \AddressPoint[0]~DUPLICATE_q\);

\comb_506|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= DataBusToRAM(1);

\comb_506|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= DataBusToRAM(1);

\comb_506|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= DataBusToRAM(1);

\comb_506|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & \AddressPoint[0]~DUPLICATE_q\);

\comb_506|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= DataBusToRAM(2);

\comb_506|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= DataBusToRAM(2);

\comb_506|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= DataBusToRAM(2);

\comb_506|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= DataBusToRAM(2);

\comb_506|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= DataBusToRAM(3);

\comb_506|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= DataBusToRAM(3);

\comb_506|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= DataBusToRAM(3);

\comb_506|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= DataBusToRAM(3);

\comb_506|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= DataBusToRAM(4);

\comb_506|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= DataBusToRAM(4);

\comb_506|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & \AddressPoint[0]~DUPLICATE_q\);

\comb_506|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= DataBusToRAM(4);

\comb_506|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= DataBusToRAM(4);

\comb_506|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & \AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & \AddressPoint[0]~DUPLICATE_q\);

\comb_506|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= DataBusToRAM(5);

\comb_506|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= DataBusToRAM(5);

\comb_506|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & \AddressPoint[0]~DUPLICATE_q\);

\comb_506|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= DataBusToRAM(5);

\comb_506|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= DataBusToRAM(5);

\comb_506|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= DataBusToRAM(6);

\comb_506|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= DataBusToRAM(6);

\comb_506|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= DataBusToRAM(6);

\comb_506|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= DataBusToRAM(6);

\comb_506|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & \AddressPoint[0]~DUPLICATE_q\);

\comb_506|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= DataBusToRAM(7);

\comb_506|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & \AddressPoint[8]~DUPLICATE_q\ & 
\AddressPoint[7]~DUPLICATE_q\ & AddressPoint(6) & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= DataBusToRAM(7);

\comb_506|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & \AddressPoint[9]~DUPLICATE_q\ & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & AddressPoint(0));

\comb_506|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= DataBusToRAM(7);

\comb_506|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & AddressPoint(6)
& \AddressPoint[5]~DUPLICATE_q\ & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & \AddressPoint[0]~DUPLICATE_q\);

\comb_506|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\comb_506|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= DataBusToRAM(7);

\comb_506|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\AddressPoint[12]~DUPLICATE_q\ & \AddressPoint[11]~DUPLICATE_q\ & AddressPoint(10) & AddressPoint(9) & AddressPoint(8) & \AddressPoint[7]~DUPLICATE_q\ & 
\AddressPoint[6]~DUPLICATE_q\ & AddressPoint(5) & AddressPoint(4) & AddressPoint(3) & AddressPoint(2) & AddressPoint(1) & \AddressPoint[0]~DUPLICATE_q\);

\comb_506|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \comb_506|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a26~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a26~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a18~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a18~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a10~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a10~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a2~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a2~portadataout\;
ALT_INV_DataBusToUART(3) <= NOT DataBusToUART(3);
ALT_INV_CounterNededByte(11) <= NOT CounterNededByte(11);
ALT_INV_CounterNededByte(10) <= NOT CounterNededByte(10);
ALT_INV_CounterNededByte(9) <= NOT CounterNededByte(9);
ALT_INV_CounterNededByte(8) <= NOT CounterNededByte(8);
ALT_INV_CounterNededByte(7) <= NOT CounterNededByte(7);
ALT_INV_CounterNededByte(6) <= NOT CounterNededByte(6);
ALT_INV_CounterNededByte(5) <= NOT CounterNededByte(5);
ALT_INV_CounterNededByte(4) <= NOT CounterNededByte(4);
ALT_INV_CounterNededByte(3) <= NOT CounterNededByte(3);
ALT_INV_CounterNededByte(2) <= NOT CounterNededByte(2);
ALT_INV_CounterNededByte(0) <= NOT CounterNededByte(0);
ALT_INV_CounterNededByte(1) <= NOT CounterNededByte(1);
ALT_INV_CounterNededByte(14) <= NOT CounterNededByte(14);
ALT_INV_CounterNededByte(13) <= NOT CounterNededByte(13);
ALT_INV_CounterNededByte(12) <= NOT CounterNededByte(12);
\comb_505|ALT_INV_clok2048MbodCounterRX\(2) <= NOT \comb_505|clok2048MbodCounterRX\(2);
\comb_505|ALT_INV_clok2048MbodCounterRX\(7) <= NOT \comb_505|clok2048MbodCounterRX\(7);
\comb_505|ALT_INV_clok2048MbodCounterRX\(1) <= NOT \comb_505|clok2048MbodCounterRX\(1);
\comb_505|ALT_INV_clok2048MbodCounterRX\(3) <= NOT \comb_505|clok2048MbodCounterRX\(3);
\comb_505|ALT_INV_clok2048MbodCounterRX\(6) <= NOT \comb_505|clok2048MbodCounterRX\(6);
\comb_505|ALT_INV_clok2048MbodCounterRX\(5) <= NOT \comb_505|clok2048MbodCounterRX\(5);
\comb_505|ALT_INV_clok2048MbodCounterRX\(4) <= NOT \comb_505|clok2048MbodCounterRX\(4);
\comb_505|ALT_INV_clok2048MbodCounterRX\(0) <= NOT \comb_505|clok2048MbodCounterRX\(0);
ALT_INV_AddressPoint(12) <= NOT AddressPoint(12);
ALT_INV_AddressPoint(11) <= NOT AddressPoint(11);
ALT_INV_AddressPoint(10) <= NOT AddressPoint(10);
ALT_INV_AddressPoint(9) <= NOT AddressPoint(9);
ALT_INV_AddressPoint(8) <= NOT AddressPoint(8);
ALT_INV_AddressPoint(7) <= NOT AddressPoint(7);
ALT_INV_AddressPoint(6) <= NOT AddressPoint(6);
ALT_INV_AddressPoint(5) <= NOT AddressPoint(5);
ALT_INV_AddressPoint(2) <= NOT AddressPoint(2);
ALT_INV_AddressPoint(14) <= NOT AddressPoint(14);
ALT_INV_AddressPoint(13) <= NOT AddressPoint(13);
\ALT_INV_ActionWriteToRAM~q\ <= NOT \ActionWriteToRAM~q\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a25~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a25~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a17~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a17~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a9~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a9~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a1~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a1~portadataout\;
ALT_INV_DataBusToUART(2) <= NOT DataBusToUART(2);
ALT_INV_CounterPauseForTransmitUART(7) <= NOT CounterPauseForTransmitUART(7);
ALT_INV_CounterPauseForTransmitUART(6) <= NOT CounterPauseForTransmitUART(6);
ALT_INV_CounterPauseForTransmitUART(5) <= NOT CounterPauseForTransmitUART(5);
ALT_INV_CounterPauseForTransmitUART(4) <= NOT CounterPauseForTransmitUART(4);
ALT_INV_CounterPauseForTransmitUART(3) <= NOT CounterPauseForTransmitUART(3);
ALT_INV_CounterPauseForTransmitUART(2) <= NOT CounterPauseForTransmitUART(2);
ALT_INV_CounterPauseForTransmitUART(1) <= NOT CounterPauseForTransmitUART(1);
ALT_INV_CounterPauseForTransmitUART(0) <= NOT CounterPauseForTransmitUART(0);
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a24~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a24~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a16~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a16~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a8~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a0~portadataout\;
ALT_INV_DataBusToUART(1) <= NOT DataBusToUART(1);
ALT_INV_DataBusToUART(0) <= NOT DataBusToUART(0);
\comb_505|ALT_INV_clok2048MbodCounterTX\(2) <= NOT \comb_505|clok2048MbodCounterTX\(2);
\comb_505|ALT_INV_clok2048MbodCounterTX\(7) <= NOT \comb_505|clok2048MbodCounterTX\(7);
\comb_505|ALT_INV_clok2048MbodCounterTX\(5) <= NOT \comb_505|clok2048MbodCounterTX\(5);
\comb_505|ALT_INV_clok2048MbodCounterTX\(6) <= NOT \comb_505|clok2048MbodCounterTX\(6);
\comb_505|ALT_INV_clok2048MbodCounterTX\(3) <= NOT \comb_505|clok2048MbodCounterTX\(3);
\comb_505|ALT_INV_clok2048MbodCounterTX\(0) <= NOT \comb_505|clok2048MbodCounterTX\(0);
\comb_505|ALT_INV_clok2048MbodCounterTX\(4) <= NOT \comb_505|clok2048MbodCounterTX\(4);
\comb_505|ALT_INV_clok2048MbodCounterTX\(1) <= NOT \comb_505|clok2048MbodCounterTX\(1);
\ALT_INV_State.0010~DUPLICATE_q\ <= NOT \State.0010~DUPLICATE_q\;
\comb_505|ALT_INV_dataIN[4]~DUPLICATE_q\ <= NOT \comb_505|dataIN[4]~DUPLICATE_q\;
\comb_505|ALT_INV_dataIN[3]~DUPLICATE_q\ <= NOT \comb_505|dataIN[3]~DUPLICATE_q\;
\comb_505|ALT_INV_dataIN[5]~DUPLICATE_q\ <= NOT \comb_505|dataIN[5]~DUPLICATE_q\;
\ALT_INV_State.0000~DUPLICATE_q\ <= NOT \State.0000~DUPLICATE_q\;
\comb_505|ALT_INV_dataIN[2]~DUPLICATE_q\ <= NOT \comb_505|dataIN[2]~DUPLICATE_q\;
\ALT_INV_CounterNededByte[7]~DUPLICATE_q\ <= NOT \CounterNededByte[7]~DUPLICATE_q\;
\ALT_INV_CounterNededByte[14]~DUPLICATE_q\ <= NOT \CounterNededByte[14]~DUPLICATE_q\;
\ALT_INV_AddressPoint[4]~DUPLICATE_q\ <= NOT \AddressPoint[4]~DUPLICATE_q\;
\ALT_INV_AddressPoint[3]~DUPLICATE_q\ <= NOT \AddressPoint[3]~DUPLICATE_q\;
\ALT_INV_AddressPoint[14]~DUPLICATE_q\ <= NOT \AddressPoint[14]~DUPLICATE_q\;
\ALT_INV_AddressPoint[13]~DUPLICATE_q\ <= NOT \AddressPoint[13]~DUPLICATE_q\;
\ALT_INV_AddressPoint[1]~DUPLICATE_q\ <= NOT \AddressPoint[1]~DUPLICATE_q\;
\ALT_INV_AddressPoint[0]~DUPLICATE_q\ <= NOT \AddressPoint[0]~DUPLICATE_q\;
\comb_505|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\ <= NOT \comb_505|clok2048MbodCounterTX[7]~DUPLICATE_q\;
\comb_505|ALT_INV_clok2048MbodCounterTX[4]~DUPLICATE_q\ <= NOT \comb_505|clok2048MbodCounterTX[4]~DUPLICATE_q\;
\ALT_INV_PinRX~input_o\ <= NOT \PinRX~input_o\;
\ALT_INV_DataBusToUART[0]~10_combout\ <= NOT \DataBusToUART[0]~10_combout\;
\comb_505|ALT_INV_always0~6_combout\ <= NOT \comb_505|always0~6_combout\;
\ALT_INV_ActionDataTransmitToUART~2_combout\ <= NOT \ActionDataTransmitToUART~2_combout\;
\comb_505|ALT_INV_shiftRegTX\(7) <= NOT \comb_505|shiftRegTX\(7);
\comb_505|ALT_INV_shiftRegTX\(6) <= NOT \comb_505|shiftRegTX\(6);
\comb_505|ALT_INV_shiftRegTX\(5) <= NOT \comb_505|shiftRegTX\(5);
\comb_505|ALT_INV_clok2048MbodCounterRX[7]~2_combout\ <= NOT \comb_505|clok2048MbodCounterRX[7]~2_combout\;
\comb_505|ALT_INV_clok2048MbodCounterRX[7]~1_combout\ <= NOT \comb_505|clok2048MbodCounterRX[7]~1_combout\;
\comb_505|ALT_INV_clok2048MbodCounterRX[7]~0_combout\ <= NOT \comb_505|clok2048MbodCounterRX[7]~0_combout\;
\comb_505|ALT_INV_shiftRegTX\(4) <= NOT \comb_505|shiftRegTX\(4);
\comb_505|ALT_INV_Equal12~0_combout\ <= NOT \comb_505|Equal12~0_combout\;
\ALT_INV_State~15_combout\ <= NOT \State~15_combout\;
\ALT_INV_always0~9_combout\ <= NOT \always0~9_combout\;
\ALT_INV_always0~8_combout\ <= NOT \always0~8_combout\;
\ALT_INV_State~14_combout\ <= NOT \State~14_combout\;
\ALT_INV_State~12_combout\ <= NOT \State~12_combout\;
\ALT_INV_State~11_combout\ <= NOT \State~11_combout\;
\ALT_INV_State~10_combout\ <= NOT \State~10_combout\;
\ALT_INV_State~9_combout\ <= NOT \State~9_combout\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_State.0001~q\ <= NOT \State.0001~q\;
\comb_505|ALT_INV_always0~5_combout\ <= NOT \comb_505|always0~5_combout\;
\comb_505|ALT_INV_always0~4_combout\ <= NOT \comb_505|always0~4_combout\;
\ALT_INV_always0~7_combout\ <= NOT \always0~7_combout\;
\ALT_INV_always0~6_combout\ <= NOT \always0~6_combout\;
\ALT_INV_always0~5_combout\ <= NOT \always0~5_combout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1) <= NOT \comb_506|altsyncram_component|auto_generated|address_reg_a\(1);
\comb_505|ALT_INV_shiftRegTX\(3) <= NOT \comb_505|shiftRegTX\(3);
\ALT_INV_ActionDataTransmitToUART~0_combout\ <= NOT \ActionDataTransmitToUART~0_combout\;
\ALT_INV_always0~4_combout\ <= NOT \always0~4_combout\;
\comb_505|ALT_INV_flagOUT_DataResive~q\ <= NOT \comb_505|flagOUT_DataResive~q\;
\ALT_INV_WideOr0~1_combout\ <= NOT \WideOr0~1_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\ALT_INV_State.0010~q\ <= NOT \State.0010~q\;
\ALT_INV_always0~3_combout\ <= NOT \always0~3_combout\;
\comb_505|ALT_INV_dataIN\(4) <= NOT \comb_505|dataIN\(4);
\comb_505|ALT_INV_dataIN\(0) <= NOT \comb_505|dataIN\(0);
\ALT_INV_always0~2_combout\ <= NOT \always0~2_combout\;
\comb_505|ALT_INV_dataIN\(7) <= NOT \comb_505|dataIN\(7);
\comb_505|ALT_INV_dataIN\(3) <= NOT \comb_505|dataIN\(3);
\ALT_INV_always0~1_combout\ <= NOT \always0~1_combout\;
\comb_505|ALT_INV_dataIN\(5) <= NOT \comb_505|dataIN\(5);
\comb_505|ALT_INV_dataIN\(1) <= NOT \comb_505|dataIN\(1);
\ALT_INV_State.0000~q\ <= NOT \State.0000~q\;
\comb_505|ALT_INV_dataIN\(6) <= NOT \comb_505|dataIN\(6);
\comb_505|ALT_INV_dataIN\(2) <= NOT \comb_505|dataIN\(2);
\comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1) <= NOT \comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1);
\comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0) <= NOT \comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0);
\comb_505|ALT_INV_shiftRegTX\(2) <= NOT \comb_505|shiftRegTX\(2);
\comb_505|ALT_INV_always0~3_combout\ <= NOT \comb_505|always0~3_combout\;
\comb_505|ALT_INV_LessThan2~0_combout\ <= NOT \comb_505|LessThan2~0_combout\;
\ALT_INV_ActionDataTransmitToUART~q\ <= NOT \ActionDataTransmitToUART~q\;
\comb_505|ALT_INV_shiftRegTX\(1) <= NOT \comb_505|shiftRegTX\(1);
\comb_505|ALT_INV_PinTX~1_combout\ <= NOT \comb_505|PinTX~1_combout\;
\comb_505|ALT_INV_PinTX~0_combout\ <= NOT \comb_505|PinTX~0_combout\;
\comb_505|ALT_INV_Equal23~1_combout\ <= NOT \comb_505|Equal23~1_combout\;
\comb_505|ALT_INV_Equal23~0_combout\ <= NOT \comb_505|Equal23~0_combout\;
\comb_505|ALT_INV_always0~2_combout\ <= NOT \comb_505|always0~2_combout\;
\comb_505|ALT_INV_always0~1_combout\ <= NOT \comb_505|always0~1_combout\;
\comb_505|ALT_INV_always0~0_combout\ <= NOT \comb_505|always0~0_combout\;
\comb_505|ALT_INV_shiftRegTX\(0) <= NOT \comb_505|shiftRegTX\(0);
\comb_505|ALT_INV_PinTX~q\ <= NOT \comb_505|PinTX~q\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a31~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a31~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a23~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a23~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a15~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a15~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a7~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a7~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a30~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a30~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a22~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a22~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a14~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a14~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a6~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a6~portadataout\;
ALT_INV_DataBusToUART(7) <= NOT DataBusToUART(7);
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a29~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a29~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a21~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a21~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a13~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a13~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a5~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a5~portadataout\;
ALT_INV_DataBusToUART(6) <= NOT DataBusToUART(6);
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a28~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a28~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a20~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a20~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a12~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a12~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a4~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a4~portadataout\;
ALT_INV_DataBusToUART(5) <= NOT DataBusToUART(5);
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a27~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a27~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a19~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a19~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a11~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a11~portadataout\;
\comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a3~portadataout\ <= NOT \comb_506|altsyncram_component|auto_generated|ram_block1a3~portadataout\;
ALT_INV_DataBusToUART(4) <= NOT DataBusToUART(4);

-- Location: IOOBUF_X52_Y45_N19
\PinTX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_505|ALT_INV_PinTX~q\,
	devoe => ww_devoe,
	o => ww_PinTX);

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

-- Location: MLABCELL_X42_Y31_N30
\comb_505|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add1~9_sumout\ = SUM(( \comb_505|clok2048MbodCounterTX\(0) ) + ( VCC ) + ( !VCC ))
-- \comb_505|Add1~10\ = CARRY(( \comb_505|clok2048MbodCounterTX\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(0),
	cin => GND,
	sumout => \comb_505|Add1~9_sumout\,
	cout => \comb_505|Add1~10\);

-- Location: FF_X42_Y31_N44
\comb_505|clok2048MbodCounterTX[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add1~5_sumout\,
	sclr => \comb_505|Equal23~1_combout\,
	ena => \comb_505|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterTX[4]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y31_N21
\comb_505|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|LessThan2~0_combout\ = ( !\comb_505|clok2048MbodCounterTX\(3) & ( (!\comb_505|clok2048MbodCounterTX\(1) & (!\comb_505|clok2048MbodCounterTX\(0) & (!\comb_505|clok2048MbodCounterTX[4]~DUPLICATE_q\ & !\comb_505|clok2048MbodCounterTX\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterTX\(1),
	datab => \comb_505|ALT_INV_clok2048MbodCounterTX\(0),
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX[4]~DUPLICATE_q\,
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(2),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterTX\(3),
	combout => \comb_505|LessThan2~0_combout\);

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

-- Location: LABCELL_X41_Y26_N30
\comb_505|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add0~1_sumout\ = SUM(( \comb_505|clok2048MbodCounterRX\(0) ) + ( VCC ) + ( !VCC ))
-- \comb_505|Add0~2\ = CARRY(( \comb_505|clok2048MbodCounterRX\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(0),
	cin => GND,
	sumout => \comb_505|Add0~1_sumout\,
	cout => \comb_505|Add0~2\);

-- Location: LABCELL_X41_Y26_N57
\comb_505|clok2048MbodCounterRX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|clok2048MbodCounterRX[7]~0_combout\ = ( \comb_505|clok2048MbodCounterRX\(4) & ( (\comb_505|clok2048MbodCounterRX\(2) & (!\comb_505|clok2048MbodCounterRX\(3) & !\comb_505|clok2048MbodCounterRX\(0))) ) ) # ( !\comb_505|clok2048MbodCounterRX\(4) & 
-- ( (!\comb_505|clok2048MbodCounterRX\(2) & (\comb_505|clok2048MbodCounterRX\(3) & (\comb_505|clok2048MbodCounterRX\(0) & !\PinRX~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterRX\(2),
	datab => \comb_505|ALT_INV_clok2048MbodCounterRX\(3),
	datac => \comb_505|ALT_INV_clok2048MbodCounterRX\(0),
	datad => \ALT_INV_PinRX~input_o\,
	dataf => \comb_505|ALT_INV_clok2048MbodCounterRX\(4),
	combout => \comb_505|clok2048MbodCounterRX[7]~0_combout\);

-- Location: LABCELL_X41_Y26_N48
\comb_505|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add0~13_sumout\ = SUM(( \comb_505|clok2048MbodCounterRX\(6) ) + ( GND ) + ( \comb_505|Add0~10\ ))
-- \comb_505|Add0~14\ = CARRY(( \comb_505|clok2048MbodCounterRX\(6) ) + ( GND ) + ( \comb_505|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(6),
	cin => \comb_505|Add0~10\,
	sumout => \comb_505|Add0~13_sumout\,
	cout => \comb_505|Add0~14\);

-- Location: LABCELL_X41_Y26_N51
\comb_505|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add0~25_sumout\ = SUM(( \comb_505|clok2048MbodCounterRX\(7) ) + ( GND ) + ( \comb_505|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(7),
	cin => \comb_505|Add0~14\,
	sumout => \comb_505|Add0~25_sumout\);

-- Location: LABCELL_X41_Y26_N12
\comb_505|clok2048MbodCounterRX[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|clok2048MbodCounterRX[7]~1_combout\ = ( !\comb_505|clok2048MbodCounterRX\(0) & ( (!\comb_505|clok2048MbodCounterRX\(1) & (!\comb_505|clok2048MbodCounterRX\(4) & (!\comb_505|clok2048MbodCounterRX\(7) & \PinRX~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterRX\(1),
	datab => \comb_505|ALT_INV_clok2048MbodCounterRX\(4),
	datac => \comb_505|ALT_INV_clok2048MbodCounterRX\(7),
	datad => \ALT_INV_PinRX~input_o\,
	dataf => \comb_505|ALT_INV_clok2048MbodCounterRX\(0),
	combout => \comb_505|clok2048MbodCounterRX[7]~1_combout\);

-- Location: LABCELL_X41_Y26_N54
\comb_505|clok2048MbodCounterRX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|clok2048MbodCounterRX~3_combout\ = ( \comb_505|clok2048MbodCounterRX[7]~1_combout\ & ( (((\comb_505|clok2048MbodCounterRX\(6)) # (\comb_505|clok2048MbodCounterRX\(5))) # (\comb_505|clok2048MbodCounterRX\(3))) # 
-- (\comb_505|clok2048MbodCounterRX\(2)) ) ) # ( !\comb_505|clok2048MbodCounterRX[7]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterRX\(2),
	datab => \comb_505|ALT_INV_clok2048MbodCounterRX\(3),
	datac => \comb_505|ALT_INV_clok2048MbodCounterRX\(5),
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(6),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterRX[7]~1_combout\,
	combout => \comb_505|clok2048MbodCounterRX~3_combout\);

-- Location: FF_X41_Y26_N53
\comb_505|clok2048MbodCounterRX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add0~25_sumout\,
	sclr => \comb_505|clok2048MbodCounterRX[7]~4_combout\,
	ena => \comb_505|clok2048MbodCounterRX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterRX\(7));

-- Location: MLABCELL_X42_Y26_N24
\comb_505|clok2048MbodCounterRX[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|clok2048MbodCounterRX[7]~2_combout\ = ( !\comb_505|clok2048MbodCounterRX\(1) & ( \comb_505|clok2048MbodCounterRX\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \comb_505|ALT_INV_clok2048MbodCounterRX\(1),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterRX\(7),
	combout => \comb_505|clok2048MbodCounterRX[7]~2_combout\);

-- Location: LABCELL_X41_Y26_N27
\comb_505|clok2048MbodCounterRX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|clok2048MbodCounterRX[7]~4_combout\ = ( !\comb_505|clok2048MbodCounterRX\(6) & ( (\comb_505|clok2048MbodCounterRX\(2) & (\comb_505|clok2048MbodCounterRX\(3) & (\comb_505|clok2048MbodCounterRX[7]~1_combout\ & 
-- (!\comb_505|clok2048MbodCounterRX\(5))))) ) ) # ( \comb_505|clok2048MbodCounterRX\(6) & ( (((\comb_505|clok2048MbodCounterRX[7]~0_combout\ & (\comb_505|clok2048MbodCounterRX\(5) & \comb_505|clok2048MbodCounterRX[7]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterRX\(2),
	datab => \comb_505|ALT_INV_clok2048MbodCounterRX\(3),
	datac => \comb_505|ALT_INV_clok2048MbodCounterRX[7]~0_combout\,
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(5),
	datae => \comb_505|ALT_INV_clok2048MbodCounterRX\(6),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterRX[7]~2_combout\,
	datag => \comb_505|ALT_INV_clok2048MbodCounterRX[7]~1_combout\,
	combout => \comb_505|clok2048MbodCounterRX[7]~4_combout\);

-- Location: FF_X41_Y26_N32
\comb_505|clok2048MbodCounterRX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add0~1_sumout\,
	sclr => \comb_505|clok2048MbodCounterRX[7]~4_combout\,
	ena => \comb_505|clok2048MbodCounterRX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterRX\(0));

-- Location: LABCELL_X41_Y26_N33
\comb_505|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add0~21_sumout\ = SUM(( \comb_505|clok2048MbodCounterRX\(1) ) + ( GND ) + ( \comb_505|Add0~2\ ))
-- \comb_505|Add0~22\ = CARRY(( \comb_505|clok2048MbodCounterRX\(1) ) + ( GND ) + ( \comb_505|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(1),
	cin => \comb_505|Add0~2\,
	sumout => \comb_505|Add0~21_sumout\,
	cout => \comb_505|Add0~22\);

-- Location: FF_X41_Y26_N35
\comb_505|clok2048MbodCounterRX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add0~21_sumout\,
	sclr => \comb_505|clok2048MbodCounterRX[7]~4_combout\,
	ena => \comb_505|clok2048MbodCounterRX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterRX\(1));

-- Location: LABCELL_X41_Y26_N36
\comb_505|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add0~29_sumout\ = SUM(( \comb_505|clok2048MbodCounterRX\(2) ) + ( GND ) + ( \comb_505|Add0~22\ ))
-- \comb_505|Add0~30\ = CARRY(( \comb_505|clok2048MbodCounterRX\(2) ) + ( GND ) + ( \comb_505|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(2),
	cin => \comb_505|Add0~22\,
	sumout => \comb_505|Add0~29_sumout\,
	cout => \comb_505|Add0~30\);

-- Location: FF_X41_Y26_N38
\comb_505|clok2048MbodCounterRX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add0~29_sumout\,
	sclr => \comb_505|clok2048MbodCounterRX[7]~4_combout\,
	ena => \comb_505|clok2048MbodCounterRX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterRX\(2));

-- Location: LABCELL_X41_Y26_N39
\comb_505|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add0~17_sumout\ = SUM(( \comb_505|clok2048MbodCounterRX\(3) ) + ( GND ) + ( \comb_505|Add0~30\ ))
-- \comb_505|Add0~18\ = CARRY(( \comb_505|clok2048MbodCounterRX\(3) ) + ( GND ) + ( \comb_505|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(3),
	cin => \comb_505|Add0~30\,
	sumout => \comb_505|Add0~17_sumout\,
	cout => \comb_505|Add0~18\);

-- Location: FF_X41_Y26_N41
\comb_505|clok2048MbodCounterRX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add0~17_sumout\,
	sclr => \comb_505|clok2048MbodCounterRX[7]~4_combout\,
	ena => \comb_505|clok2048MbodCounterRX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterRX\(3));

-- Location: LABCELL_X41_Y26_N42
\comb_505|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add0~5_sumout\ = SUM(( \comb_505|clok2048MbodCounterRX\(4) ) + ( GND ) + ( \comb_505|Add0~18\ ))
-- \comb_505|Add0~6\ = CARRY(( \comb_505|clok2048MbodCounterRX\(4) ) + ( GND ) + ( \comb_505|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(4),
	cin => \comb_505|Add0~18\,
	sumout => \comb_505|Add0~5_sumout\,
	cout => \comb_505|Add0~6\);

-- Location: FF_X41_Y26_N44
\comb_505|clok2048MbodCounterRX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add0~5_sumout\,
	sclr => \comb_505|clok2048MbodCounterRX[7]~4_combout\,
	ena => \comb_505|clok2048MbodCounterRX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterRX\(4));

-- Location: LABCELL_X41_Y26_N45
\comb_505|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add0~9_sumout\ = SUM(( \comb_505|clok2048MbodCounterRX\(5) ) + ( GND ) + ( \comb_505|Add0~6\ ))
-- \comb_505|Add0~10\ = CARRY(( \comb_505|clok2048MbodCounterRX\(5) ) + ( GND ) + ( \comb_505|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(5),
	cin => \comb_505|Add0~6\,
	sumout => \comb_505|Add0~9_sumout\,
	cout => \comb_505|Add0~10\);

-- Location: FF_X41_Y26_N47
\comb_505|clok2048MbodCounterRX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add0~9_sumout\,
	sclr => \comb_505|clok2048MbodCounterRX[7]~4_combout\,
	ena => \comb_505|clok2048MbodCounterRX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterRX\(5));

-- Location: FF_X41_Y26_N50
\comb_505|clok2048MbodCounterRX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add0~13_sumout\,
	sclr => \comb_505|clok2048MbodCounterRX[7]~4_combout\,
	ena => \comb_505|clok2048MbodCounterRX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterRX\(6));

-- Location: LABCELL_X41_Y26_N18
\comb_505|always0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|always0~5_combout\ = ( \comb_505|clok2048MbodCounterRX\(2) & ( \comb_505|clok2048MbodCounterRX\(7) & ( (\comb_505|clok2048MbodCounterRX\(1) & (!\comb_505|clok2048MbodCounterRX\(3) & (!\comb_505|clok2048MbodCounterRX\(6) & 
-- !\comb_505|clok2048MbodCounterRX\(5)))) ) ) ) # ( \comb_505|clok2048MbodCounterRX\(2) & ( !\comb_505|clok2048MbodCounterRX\(7) & ( (\comb_505|clok2048MbodCounterRX\(1) & (\comb_505|clok2048MbodCounterRX\(3) & (\comb_505|clok2048MbodCounterRX\(6) & 
-- \comb_505|clok2048MbodCounterRX\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterRX\(1),
	datab => \comb_505|ALT_INV_clok2048MbodCounterRX\(3),
	datac => \comb_505|ALT_INV_clok2048MbodCounterRX\(6),
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(5),
	datae => \comb_505|ALT_INV_clok2048MbodCounterRX\(2),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterRX\(7),
	combout => \comb_505|always0~5_combout\);

-- Location: LABCELL_X41_Y26_N15
\comb_505|always0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|always0~4_combout\ = ( \comb_505|clok2048MbodCounterRX\(7) & ( (!\comb_505|clok2048MbodCounterRX\(1) & !\comb_505|clok2048MbodCounterRX\(2)) ) ) # ( !\comb_505|clok2048MbodCounterRX\(7) & ( (\comb_505|clok2048MbodCounterRX\(1) & 
-- \comb_505|clok2048MbodCounterRX\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterRX\(1),
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(2),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterRX\(7),
	combout => \comb_505|always0~4_combout\);

-- Location: LABCELL_X41_Y26_N6
\comb_505|always0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|always0~7_combout\ = ( !\comb_505|clok2048MbodCounterRX\(0) & ( (\comb_505|always0~4_combout\ & ((!\comb_505|clok2048MbodCounterRX\(6) & (\comb_505|clok2048MbodCounterRX\(5) & (!\comb_505|clok2048MbodCounterRX\(4) $ 
-- (\comb_505|clok2048MbodCounterRX\(3))))) # (\comb_505|clok2048MbodCounterRX\(6) & (\comb_505|clok2048MbodCounterRX\(4) & (!\comb_505|clok2048MbodCounterRX\(3) & !\comb_505|clok2048MbodCounterRX\(5)))))) ) ) # ( \comb_505|clok2048MbodCounterRX\(0) & ( 
-- ((!\comb_505|clok2048MbodCounterRX\(4) & (\comb_505|always0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000011000000110000010000100000100000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterRX\(6),
	datab => \comb_505|ALT_INV_clok2048MbodCounterRX\(4),
	datac => \comb_505|ALT_INV_always0~5_combout\,
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(5),
	datae => \comb_505|ALT_INV_clok2048MbodCounterRX\(0),
	dataf => \comb_505|ALT_INV_always0~4_combout\,
	datag => \comb_505|ALT_INV_clok2048MbodCounterRX\(3),
	combout => \comb_505|always0~7_combout\);

-- Location: FF_X42_Y25_N20
\comb_505|dataIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \PinRX~input_o\,
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN\(7));

-- Location: FF_X42_Y25_N5
\comb_505|dataIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN\(7),
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN\(6));

-- Location: FF_X42_Y25_N23
\comb_505|dataIN[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN\(6),
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN[5]~DUPLICATE_q\);

-- Location: FF_X42_Y25_N35
\comb_505|dataIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN\(4));

-- Location: FF_X42_Y25_N34
\comb_505|dataIN[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN[4]~DUPLICATE_q\);

-- Location: FF_X42_Y25_N10
\comb_505|dataIN[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN[3]~DUPLICATE_q\);

-- Location: FF_X42_Y25_N1
\comb_505|dataIN[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN[2]~DUPLICATE_q\);

-- Location: FF_X42_Y25_N14
\comb_505|dataIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN\(1));

-- Location: FF_X42_Y25_N29
\comb_505|dataIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN\(1),
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN\(0));

-- Location: MLABCELL_X42_Y25_N51
\always0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~5_combout\ = ( !\comb_505|dataIN[5]~DUPLICATE_q\ & ( (!\comb_505|dataIN\(4) & (!\comb_505|dataIN\(1) & !\comb_505|dataIN\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN\(4),
	datac => \comb_505|ALT_INV_dataIN\(1),
	datad => \comb_505|ALT_INV_dataIN\(0),
	dataf => \comb_505|ALT_INV_dataIN[5]~DUPLICATE_q\,
	combout => \always0~5_combout\);

-- Location: FF_X42_Y25_N2
\comb_505|dataIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN\(2));

-- Location: LABCELL_X41_Y26_N0
\comb_505|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Equal12~0_combout\ = ( !\comb_505|clok2048MbodCounterRX\(2) & ( \comb_505|clok2048MbodCounterRX\(7) & ( (\comb_505|clok2048MbodCounterRX\(5) & (\comb_505|clok2048MbodCounterRX\(4) & (\comb_505|clok2048MbodCounterRX\(6) & 
-- !\comb_505|clok2048MbodCounterRX\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterRX\(5),
	datab => \comb_505|ALT_INV_clok2048MbodCounterRX\(4),
	datac => \comb_505|ALT_INV_clok2048MbodCounterRX\(6),
	datad => \comb_505|ALT_INV_clok2048MbodCounterRX\(3),
	datae => \comb_505|ALT_INV_clok2048MbodCounterRX\(2),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterRX\(7),
	combout => \comb_505|Equal12~0_combout\);

-- Location: MLABCELL_X42_Y26_N9
\comb_505|flagOUT_DataResive~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|flagOUT_DataResive~0_combout\ = ( \comb_505|flagOUT_DataResive~q\ & ( \comb_505|Equal12~0_combout\ & ( (!\comb_505|clok2048MbodCounterRX\(1)) # (\comb_505|clok2048MbodCounterRX\(0)) ) ) ) # ( !\comb_505|flagOUT_DataResive~q\ & ( 
-- \comb_505|Equal12~0_combout\ & ( (\comb_505|clok2048MbodCounterRX\(0) & !\comb_505|clok2048MbodCounterRX\(1)) ) ) ) # ( \comb_505|flagOUT_DataResive~q\ & ( !\comb_505|Equal12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010000010100001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterRX\(0),
	datac => \comb_505|ALT_INV_clok2048MbodCounterRX\(1),
	datae => \comb_505|ALT_INV_flagOUT_DataResive~q\,
	dataf => \comb_505|ALT_INV_Equal12~0_combout\,
	combout => \comb_505|flagOUT_DataResive~0_combout\);

-- Location: FF_X42_Y26_N10
\comb_505|flagOUT_DataResive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|flagOUT_DataResive~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|flagOUT_DataResive~q\);

-- Location: FF_X42_Y25_N11
\comb_505|dataIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN\(3));

-- Location: MLABCELL_X42_Y25_N15
\always0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~4_combout\ = ( !\State.0000~q\ & ( (\comb_505|dataIN\(6) & (\comb_505|dataIN\(7) & (\comb_505|dataIN\(3) & \comb_505|dataIN[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN\(6),
	datab => \comb_505|ALT_INV_dataIN\(7),
	datac => \comb_505|ALT_INV_dataIN\(3),
	datad => \comb_505|ALT_INV_dataIN[2]~DUPLICATE_q\,
	dataf => \ALT_INV_State.0000~q\,
	combout => \always0~4_combout\);

-- Location: MLABCELL_X42_Y25_N24
\always0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~8_combout\ = ( \always0~4_combout\ & ( (!\comb_505|dataIN[5]~DUPLICATE_q\ & (!\comb_505|dataIN\(1) & (\comb_505|dataIN\(0) & \comb_505|dataIN[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN[5]~DUPLICATE_q\,
	datab => \comb_505|ALT_INV_dataIN\(1),
	datac => \comb_505|ALT_INV_dataIN\(0),
	datad => \comb_505|ALT_INV_dataIN[4]~DUPLICATE_q\,
	dataf => \ALT_INV_always0~4_combout\,
	combout => \always0~8_combout\);

-- Location: LABCELL_X44_Y25_N0
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( CounterNededByte(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~18\ = CARRY(( CounterNededByte(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterNededByte(0),
	cin => GND,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X42_Y25_N22
\comb_505|dataIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN\(6),
	sload => VCC,
	ena => \comb_505|always0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|dataIN\(5));

-- Location: LABCELL_X43_Y25_N36
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( \comb_505|dataIN\(0) & ( !\comb_505|dataIN\(1) & ( (!\comb_505|dataIN\(5) & (\comb_505|dataIN[4]~DUPLICATE_q\ & (!\comb_505|dataIN\(7) & !\comb_505|dataIN[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN\(5),
	datab => \comb_505|ALT_INV_dataIN[4]~DUPLICATE_q\,
	datac => \comb_505|ALT_INV_dataIN\(7),
	datad => \comb_505|ALT_INV_dataIN[3]~DUPLICATE_q\,
	datae => \comb_505|ALT_INV_dataIN\(0),
	dataf => \comb_505|ALT_INV_dataIN\(1),
	combout => \Equal7~0_combout\);

-- Location: LABCELL_X43_Y25_N27
\State~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~14_combout\ = ( \Equal7~0_combout\ & ( \comb_505|dataIN[2]~DUPLICATE_q\ & ( (!\State.0001~q\ & !\comb_505|dataIN\(6)) ) ) ) # ( !\Equal7~0_combout\ & ( \comb_505|dataIN[2]~DUPLICATE_q\ & ( !\State.0001~q\ ) ) ) # ( \Equal7~0_combout\ & ( 
-- !\comb_505|dataIN[2]~DUPLICATE_q\ & ( !\State.0001~q\ ) ) ) # ( !\Equal7~0_combout\ & ( !\comb_505|dataIN[2]~DUPLICATE_q\ & ( !\State.0001~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.0001~q\,
	datad => \comb_505|ALT_INV_dataIN\(6),
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \comb_505|ALT_INV_dataIN[2]~DUPLICATE_q\,
	combout => \State~14_combout\);

-- Location: LABCELL_X43_Y25_N3
\State~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~16_combout\ = ( \State~12_combout\ ) # ( !\State~12_combout\ & ( (\comb_505|flagOUT_DataResive~q\ & (((!\State~14_combout\) # (\State~15_combout\)) # (\always0~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101010101010001010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_flagOUT_DataResive~q\,
	datab => \ALT_INV_always0~8_combout\,
	datac => \ALT_INV_State~15_combout\,
	datad => \ALT_INV_State~14_combout\,
	dataf => \ALT_INV_State~12_combout\,
	combout => \State~16_combout\);

-- Location: FF_X43_Y25_N32
\State.0010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \State~15_combout\,
	sload => VCC,
	ena => \State~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.0010~q\);

-- Location: LABCELL_X41_Y25_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( CounterPauseForTransmitUART(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( CounterPauseForTransmitUART(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X41_Y25_N0
\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ( !CounterPauseForTransmitUART(5) & ( !CounterPauseForTransmitUART(3) & ( (!CounterPauseForTransmitUART(1) & (!CounterPauseForTransmitUART(0) & (!CounterPauseForTransmitUART(2) & !CounterPauseForTransmitUART(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterPauseForTransmitUART(1),
	datab => ALT_INV_CounterPauseForTransmitUART(0),
	datac => ALT_INV_CounterPauseForTransmitUART(2),
	datad => ALT_INV_CounterPauseForTransmitUART(4),
	datae => ALT_INV_CounterPauseForTransmitUART(5),
	dataf => ALT_INV_CounterPauseForTransmitUART(3),
	combout => \WideOr0~0_combout\);

-- Location: LABCELL_X41_Y25_N12
\CounterPauseForTransmitUART[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[3]~0_combout\ = ( \WideOr0~0_combout\ & ( \WideOr0~1_combout\ ) ) # ( !\WideOr0~0_combout\ & ( \WideOr0~1_combout\ & ( !\State.0010~q\ ) ) ) # ( \WideOr0~0_combout\ & ( !\WideOr0~1_combout\ & ( !\State.0010~q\ ) ) ) # ( 
-- !\WideOr0~0_combout\ & ( !\WideOr0~1_combout\ & ( !\State.0010~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.0010~q\,
	datae => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_WideOr0~1_combout\,
	combout => \CounterPauseForTransmitUART[3]~0_combout\);

-- Location: MLABCELL_X42_Y25_N57
\always0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~9_combout\ = ( !\comb_505|dataIN\(7) & ( (\comb_505|dataIN\(4) & (!\comb_505|dataIN\(3) & \comb_505|dataIN\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN\(4),
	datac => \comb_505|ALT_INV_dataIN\(3),
	datad => \comb_505|ALT_INV_dataIN\(0),
	dataf => \comb_505|ALT_INV_dataIN\(7),
	combout => \always0~9_combout\);

-- Location: MLABCELL_X42_Y25_N3
\CounterPauseForTransmitUART[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterPauseForTransmitUART[3]~1_combout\ = ( \always0~5_combout\ & ( \always0~4_combout\ & ( (\comb_505|flagOUT_DataResive~q\) # (\State.0010~DUPLICATE_q\) ) ) ) # ( !\always0~5_combout\ & ( \always0~4_combout\ & ( ((\always0~9_combout\ & 
-- (\always0~1_combout\ & \comb_505|flagOUT_DataResive~q\))) # (\State.0010~DUPLICATE_q\) ) ) ) # ( \always0~5_combout\ & ( !\always0~4_combout\ & ( ((\always0~9_combout\ & (\always0~1_combout\ & \comb_505|flagOUT_DataResive~q\))) # 
-- (\State.0010~DUPLICATE_q\) ) ) ) # ( !\always0~5_combout\ & ( !\always0~4_combout\ & ( ((\always0~9_combout\ & (\always0~1_combout\ & \comb_505|flagOUT_DataResive~q\))) # (\State.0010~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010111010101010101011101010101010101110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.0010~DUPLICATE_q\,
	datab => \ALT_INV_always0~9_combout\,
	datac => \ALT_INV_always0~1_combout\,
	datad => \comb_505|ALT_INV_flagOUT_DataResive~q\,
	datae => \ALT_INV_always0~5_combout\,
	dataf => \ALT_INV_always0~4_combout\,
	combout => \CounterPauseForTransmitUART[3]~1_combout\);

-- Location: FF_X41_Y25_N32
\CounterPauseForTransmitUART[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	asdata => VCC,
	sload => \CounterPauseForTransmitUART[3]~0_combout\,
	ena => \CounterPauseForTransmitUART[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(0));

-- Location: LABCELL_X41_Y25_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( CounterPauseForTransmitUART(1) ) + ( VCC ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( CounterPauseForTransmitUART(1) ) + ( VCC ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X41_Y25_N35
\CounterPauseForTransmitUART[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	asdata => VCC,
	sload => \CounterPauseForTransmitUART[3]~0_combout\,
	ena => \CounterPauseForTransmitUART[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(1));

-- Location: LABCELL_X41_Y25_N36
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( CounterPauseForTransmitUART(2) ) + ( VCC ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( CounterPauseForTransmitUART(2) ) + ( VCC ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X41_Y25_N38
\CounterPauseForTransmitUART[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	asdata => VCC,
	sload => \CounterPauseForTransmitUART[3]~0_combout\,
	ena => \CounterPauseForTransmitUART[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(2));

-- Location: LABCELL_X41_Y25_N39
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( CounterPauseForTransmitUART(3) ) + ( VCC ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( CounterPauseForTransmitUART(3) ) + ( VCC ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X41_Y25_N41
\CounterPauseForTransmitUART[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	asdata => VCC,
	sload => \CounterPauseForTransmitUART[3]~0_combout\,
	ena => \CounterPauseForTransmitUART[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(3));

-- Location: LABCELL_X41_Y25_N42
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( CounterPauseForTransmitUART(4) ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( CounterPauseForTransmitUART(4) ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(4),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X41_Y25_N44
\CounterPauseForTransmitUART[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	asdata => VCC,
	sload => \CounterPauseForTransmitUART[3]~0_combout\,
	ena => \CounterPauseForTransmitUART[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(4));

-- Location: LABCELL_X41_Y25_N45
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( CounterPauseForTransmitUART(5) ) + ( VCC ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( CounterPauseForTransmitUART(5) ) + ( VCC ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(5),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X41_Y25_N47
\CounterPauseForTransmitUART[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	asdata => VCC,
	sload => \CounterPauseForTransmitUART[3]~0_combout\,
	ena => \CounterPauseForTransmitUART[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(5));

-- Location: LABCELL_X41_Y25_N48
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( CounterPauseForTransmitUART(6) ) + ( VCC ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( CounterPauseForTransmitUART(6) ) + ( VCC ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(6),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X41_Y25_N49
\CounterPauseForTransmitUART[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	asdata => VCC,
	sload => \CounterPauseForTransmitUART[3]~0_combout\,
	ena => \CounterPauseForTransmitUART[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(6));

-- Location: LABCELL_X41_Y25_N51
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( CounterPauseForTransmitUART(7) ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterPauseForTransmitUART(7),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\);

-- Location: FF_X41_Y25_N53
\CounterPauseForTransmitUART[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	asdata => VCC,
	sload => \CounterPauseForTransmitUART[3]~0_combout\,
	ena => \CounterPauseForTransmitUART[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterPauseForTransmitUART(7));

-- Location: LABCELL_X41_Y25_N9
\WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = ( !CounterPauseForTransmitUART(6) & ( !CounterPauseForTransmitUART(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_CounterPauseForTransmitUART(6),
	dataf => ALT_INV_CounterPauseForTransmitUART(7),
	combout => \WideOr0~1_combout\);

-- Location: LABCELL_X43_Y25_N48
\State~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~18_combout\ = ( \WideOr0~1_combout\ & ( \WideOr0~0_combout\ & ( !\State.0010~q\ ) ) ) # ( !\WideOr0~1_combout\ & ( \WideOr0~0_combout\ ) ) # ( \WideOr0~1_combout\ & ( !\WideOr0~0_combout\ ) ) # ( !\WideOr0~1_combout\ & ( !\WideOr0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.0010~q\,
	datae => \ALT_INV_WideOr0~1_combout\,
	dataf => \ALT_INV_WideOr0~0_combout\,
	combout => \State~18_combout\);

-- Location: LABCELL_X43_Y25_N42
\CounterNededByte[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CounterNededByte[4]~0_combout\ = ( \WideOr0~0_combout\ & ( \State~15_combout\ & ( ((\State.0010~q\ & \WideOr0~1_combout\)) # (\comb_505|flagOUT_DataResive~q\) ) ) ) # ( !\WideOr0~0_combout\ & ( \State~15_combout\ & ( \comb_505|flagOUT_DataResive~q\ ) ) ) 
-- # ( \WideOr0~0_combout\ & ( !\State~15_combout\ & ( (\State.0010~q\ & \WideOr0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001101010101010101010101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_flagOUT_DataResive~q\,
	datab => \ALT_INV_State.0010~q\,
	datac => \ALT_INV_WideOr0~1_combout\,
	datae => \ALT_INV_WideOr0~0_combout\,
	dataf => \ALT_INV_State~15_combout\,
	combout => \CounterNededByte[4]~0_combout\);

-- Location: FF_X44_Y25_N2
\CounterNededByte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	asdata => VCC,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(0));

-- Location: LABCELL_X44_Y25_N3
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( CounterNededByte(1) ) + ( VCC ) + ( \Add2~18\ ))
-- \Add2~14\ = CARRY(( CounterNededByte(1) ) + ( VCC ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterNededByte(1),
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X44_Y25_N5
\CounterNededByte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	asdata => VCC,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(1));

-- Location: LABCELL_X44_Y25_N6
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( CounterNededByte(2) ) + ( VCC ) + ( \Add2~14\ ))
-- \Add2~22\ = CARRY(( CounterNededByte(2) ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterNededByte(2),
	cin => \Add2~14\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X43_Y25_N0
\always0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~10_combout\ = ( \always0~1_combout\ & ( \always0~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_always0~9_combout\,
	dataf => \ALT_INV_always0~1_combout\,
	combout => \always0~10_combout\);

-- Location: FF_X44_Y25_N7
\CounterNededByte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	asdata => \always0~10_combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(2));

-- Location: LABCELL_X44_Y25_N9
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( CounterNededByte(3) ) + ( VCC ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( CounterNededByte(3) ) + ( VCC ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(3),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X44_Y25_N11
\CounterNededByte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	asdata => \always0~10_combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(3));

-- Location: LABCELL_X44_Y25_N12
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( CounterNededByte(4) ) + ( VCC ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( CounterNededByte(4) ) + ( VCC ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CounterNededByte(4),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X44_Y25_N14
\CounterNededByte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	asdata => \always0~10_combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(4));

-- Location: LABCELL_X44_Y25_N15
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( CounterNededByte(5) ) + ( VCC ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( CounterNededByte(5) ) + ( VCC ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(5),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X44_Y25_N17
\CounterNededByte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	asdata => VCC,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(5));

-- Location: LABCELL_X44_Y25_N18
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( CounterNededByte(6) ) + ( VCC ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( CounterNededByte(6) ) + ( VCC ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(6),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X44_Y25_N20
\CounterNededByte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	asdata => VCC,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(6));

-- Location: LABCELL_X44_Y25_N21
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \CounterNededByte[7]~DUPLICATE_q\ ) + ( VCC ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( \CounterNededByte[7]~DUPLICATE_q\ ) + ( VCC ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CounterNededByte[7]~DUPLICATE_q\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X44_Y25_N23
\CounterNededByte[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	asdata => \always0~10_combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterNededByte[7]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y25_N24
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( CounterNededByte(8) ) + ( VCC ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( CounterNededByte(8) ) + ( VCC ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(8),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: LABCELL_X44_Y26_N51
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

-- Location: FF_X44_Y25_N26
\CounterNededByte[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	asdata => \~GND~combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(8));

-- Location: LABCELL_X44_Y25_N27
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( CounterNededByte(9) ) + ( VCC ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( CounterNededByte(9) ) + ( VCC ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_CounterNededByte(9),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X44_Y25_N29
\CounterNededByte[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	asdata => \always0~10_combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(9));

-- Location: LABCELL_X44_Y25_N30
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( CounterNededByte(10) ) + ( VCC ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( CounterNededByte(10) ) + ( VCC ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_CounterNededByte(10),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X44_Y25_N32
\CounterNededByte[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	asdata => \~GND~combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(10));

-- Location: LABCELL_X44_Y25_N33
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( CounterNededByte(11) ) + ( VCC ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( CounterNededByte(11) ) + ( VCC ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterNededByte(11),
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X44_Y25_N35
\CounterNededByte[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	asdata => \always0~10_combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(11));

-- Location: LABCELL_X44_Y25_N36
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( CounterNededByte(12) ) + ( VCC ) + ( \Add2~58\ ))
-- \Add2~2\ = CARRY(( CounterNededByte(12) ) + ( VCC ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(12),
	cin => \Add2~58\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X44_Y25_N38
\CounterNededByte[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	asdata => \~GND~combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(12));

-- Location: FF_X44_Y25_N43
\CounterNededByte[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	asdata => \always0~10_combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CounterNededByte[14]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y25_N39
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( CounterNededByte(13) ) + ( VCC ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( CounterNededByte(13) ) + ( VCC ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(13),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X44_Y25_N41
\CounterNededByte[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	asdata => \~GND~combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(13));

-- Location: LABCELL_X44_Y25_N42
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \CounterNededByte[14]~DUPLICATE_q\ ) + ( VCC ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CounterNededByte[14]~DUPLICATE_q\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\);

-- Location: FF_X44_Y25_N44
\CounterNededByte[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	asdata => \always0~10_combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(14));

-- Location: LABCELL_X43_Y25_N33
\State~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~9_combout\ = ( !CounterNededByte(14) & ( !CounterNededByte(13) & ( !CounterNededByte(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_CounterNededByte(12),
	datae => ALT_INV_CounterNededByte(14),
	dataf => ALT_INV_CounterNededByte(13),
	combout => \State~9_combout\);

-- Location: LABCELL_X44_Y25_N48
\State~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~10_combout\ = ( !CounterNededByte(2) & ( !CounterNededByte(3) & ( (!CounterNededByte(0) & (!CounterNededByte(4) & (!CounterNededByte(1) & !CounterNededByte(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterNededByte(0),
	datab => ALT_INV_CounterNededByte(4),
	datac => ALT_INV_CounterNededByte(1),
	datad => ALT_INV_CounterNededByte(5),
	datae => ALT_INV_CounterNededByte(2),
	dataf => ALT_INV_CounterNededByte(3),
	combout => \State~10_combout\);

-- Location: FF_X44_Y25_N22
\CounterNededByte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	asdata => \always0~10_combout\,
	sload => \State~18_combout\,
	ena => \CounterNededByte[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CounterNededByte(7));

-- Location: LABCELL_X44_Y25_N54
\State~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~11_combout\ = ( !CounterNededByte(9) & ( !CounterNededByte(11) & ( (!CounterNededByte(8) & (!CounterNededByte(7) & (!CounterNededByte(6) & !CounterNededByte(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CounterNededByte(8),
	datab => ALT_INV_CounterNededByte(7),
	datac => ALT_INV_CounterNededByte(6),
	datad => ALT_INV_CounterNededByte(10),
	datae => ALT_INV_CounterNededByte(9),
	dataf => ALT_INV_CounterNededByte(11),
	combout => \State~11_combout\);

-- Location: LABCELL_X43_Y25_N18
\State~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~12_combout\ = ( \State~11_combout\ & ( \WideOr0~1_combout\ & ( (\State~9_combout\ & (\State.0010~q\ & (\WideOr0~0_combout\ & \State~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State~9_combout\,
	datab => \ALT_INV_State.0010~q\,
	datac => \ALT_INV_WideOr0~0_combout\,
	datad => \ALT_INV_State~10_combout\,
	datae => \ALT_INV_State~11_combout\,
	dataf => \ALT_INV_WideOr0~1_combout\,
	combout => \State~12_combout\);

-- Location: LABCELL_X43_Y25_N54
\State~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~17_combout\ = ( \State.0001~q\ & ( \State~14_combout\ & ( (!\State~12_combout\ & ((!\comb_505|flagOUT_DataResive~q\) # ((\always0~8_combout\ & !\State~15_combout\)))) ) ) ) # ( !\State.0001~q\ & ( \State~14_combout\ & ( 
-- (\comb_505|flagOUT_DataResive~q\ & (\always0~8_combout\ & (!\State~12_combout\ & !\State~15_combout\))) ) ) ) # ( \State.0001~q\ & ( !\State~14_combout\ & ( (!\comb_505|flagOUT_DataResive~q\ & !\State~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000010000000000001011000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_flagOUT_DataResive~q\,
	datab => \ALT_INV_always0~8_combout\,
	datac => \ALT_INV_State~12_combout\,
	datad => \ALT_INV_State~15_combout\,
	datae => \ALT_INV_State.0001~q\,
	dataf => \ALT_INV_State~14_combout\,
	combout => \State~17_combout\);

-- Location: FF_X43_Y25_N56
\State.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.0001~q\);

-- Location: LABCELL_X43_Y25_N12
\State~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~13_combout\ = ( !\State~12_combout\ & ( (!\State.0001~q\ & ((!\comb_505|dataIN[2]~DUPLICATE_q\) # ((!\comb_505|dataIN\(6)) # (!\Equal7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.0001~q\,
	datab => \comb_505|ALT_INV_dataIN[2]~DUPLICATE_q\,
	datac => \comb_505|ALT_INV_dataIN\(6),
	datad => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_State~12_combout\,
	combout => \State~13_combout\);

-- Location: FF_X43_Y25_N13
\State.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State~13_combout\,
	ena => \State~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.0000~q\);

-- Location: MLABCELL_X42_Y25_N42
\always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = ( !\comb_505|dataIN\(2) & ( !\State.0000~q\ & ( (\comb_505|dataIN[5]~DUPLICATE_q\ & (!\comb_505|dataIN\(6) & \comb_505|dataIN\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN[5]~DUPLICATE_q\,
	datac => \comb_505|ALT_INV_dataIN\(6),
	datad => \comb_505|ALT_INV_dataIN\(1),
	datae => \comb_505|ALT_INV_dataIN\(2),
	dataf => \ALT_INV_State.0000~q\,
	combout => \always0~1_combout\);

-- Location: LABCELL_X43_Y25_N6
\State~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~15_combout\ = ( \always0~9_combout\ & ( \always0~4_combout\ & ( (\always0~1_combout\) # (\always0~5_combout\) ) ) ) # ( !\always0~9_combout\ & ( \always0~4_combout\ & ( \always0~5_combout\ ) ) ) # ( \always0~9_combout\ & ( !\always0~4_combout\ & ( 
-- \always0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_always0~5_combout\,
	datad => \ALT_INV_always0~1_combout\,
	datae => \ALT_INV_always0~9_combout\,
	dataf => \ALT_INV_always0~4_combout\,
	combout => \State~15_combout\);

-- Location: FF_X43_Y25_N31
\State.0010~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \State~15_combout\,
	sload => VCC,
	ena => \State~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.0010~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y25_N12
\ActionDataTransmitToUART~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionDataTransmitToUART~2_combout\ = ( \comb_505|dataIN\(4) & ( (\comb_505|dataIN\(6) & (\comb_505|dataIN\(7) & (\comb_505|dataIN\(0) & \comb_505|dataIN[2]~DUPLICATE_q\))) ) ) # ( !\comb_505|dataIN\(4) & ( (!\comb_505|dataIN\(6) & (\comb_505|dataIN\(7) 
-- & (!\comb_505|dataIN\(0) & !\comb_505|dataIN[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN\(6),
	datab => \comb_505|ALT_INV_dataIN\(7),
	datac => \comb_505|ALT_INV_dataIN\(0),
	datad => \comb_505|ALT_INV_dataIN[2]~DUPLICATE_q\,
	dataf => \comb_505|ALT_INV_dataIN\(4),
	combout => \ActionDataTransmitToUART~2_combout\);

-- Location: MLABCELL_X42_Y25_N18
\ActionDataTransmitToUART~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionDataTransmitToUART~0_combout\ = ( \comb_505|dataIN\(1) & ( \ActionDataTransmitToUART~2_combout\ & ( (\comb_505|dataIN[3]~DUPLICATE_q\ & (!\State.0000~q\ & (\comb_505|dataIN[5]~DUPLICATE_q\ & \comb_505|flagOUT_DataResive~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN[3]~DUPLICATE_q\,
	datab => \ALT_INV_State.0000~q\,
	datac => \comb_505|ALT_INV_dataIN[5]~DUPLICATE_q\,
	datad => \comb_505|ALT_INV_flagOUT_DataResive~q\,
	datae => \comb_505|ALT_INV_dataIN\(1),
	dataf => \ALT_INV_ActionDataTransmitToUART~2_combout\,
	combout => \ActionDataTransmitToUART~0_combout\);

-- Location: MLABCELL_X42_Y25_N36
\ActionDataTransmitToUART~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionDataTransmitToUART~1_combout\ = ( \ActionDataTransmitToUART~0_combout\ & ( (!\ActionDataTransmitToUART~q\ & ((!\State.0010~DUPLICATE_q\) # ((!\WideOr0~0_combout\) # (!\WideOr0~1_combout\)))) ) ) # ( !\ActionDataTransmitToUART~0_combout\ & ( 
-- (\State.0010~DUPLICATE_q\ & (\WideOr0~0_combout\ & (\WideOr0~1_combout\ & !\ActionDataTransmitToUART~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.0010~DUPLICATE_q\,
	datab => \ALT_INV_WideOr0~0_combout\,
	datac => \ALT_INV_WideOr0~1_combout\,
	datad => \ALT_INV_ActionDataTransmitToUART~q\,
	dataf => \ALT_INV_ActionDataTransmitToUART~0_combout\,
	combout => \ActionDataTransmitToUART~1_combout\);

-- Location: FF_X42_Y25_N37
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

-- Location: MLABCELL_X42_Y31_N24
\comb_505|clok2048MbodCounterTX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|clok2048MbodCounterTX~0_combout\ = ( \comb_505|LessThan2~0_combout\ & ( \ActionDataTransmitToUART~q\ ) ) # ( !\comb_505|LessThan2~0_combout\ & ( \ActionDataTransmitToUART~q\ ) ) # ( \comb_505|LessThan2~0_combout\ & ( 
-- !\ActionDataTransmitToUART~q\ & ( ((\comb_505|clok2048MbodCounterTX[7]~DUPLICATE_q\) # (\comb_505|clok2048MbodCounterTX\(5))) # (\comb_505|clok2048MbodCounterTX\(6)) ) ) ) # ( !\comb_505|LessThan2~0_combout\ & ( !\ActionDataTransmitToUART~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterTX\(6),
	datab => \comb_505|ALT_INV_clok2048MbodCounterTX\(5),
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\,
	datae => \comb_505|ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_ActionDataTransmitToUART~q\,
	combout => \comb_505|clok2048MbodCounterTX~0_combout\);

-- Location: FF_X42_Y31_N53
\comb_505|clok2048MbodCounterTX[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add1~25_sumout\,
	sclr => \comb_505|Equal23~1_combout\,
	ena => \comb_505|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterTX[7]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y31_N18
\comb_505|Equal23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Equal23~0_combout\ = ( \comb_505|clok2048MbodCounterTX[7]~DUPLICATE_q\ & ( (!\comb_505|clok2048MbodCounterTX\(1) & (\comb_505|clok2048MbodCounterTX\(0) & (\comb_505|clok2048MbodCounterTX\(2) & \comb_505|clok2048MbodCounterTX\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterTX\(1),
	datab => \comb_505|ALT_INV_clok2048MbodCounterTX\(0),
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX\(2),
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(4),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\,
	combout => \comb_505|Equal23~0_combout\);

-- Location: MLABCELL_X42_Y31_N54
\comb_505|Equal23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Equal23~1_combout\ = ( \comb_505|Equal23~0_combout\ & ( (\comb_505|clok2048MbodCounterTX\(3) & (\comb_505|clok2048MbodCounterTX\(6) & !\comb_505|clok2048MbodCounterTX\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_505|ALT_INV_clok2048MbodCounterTX\(3),
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX\(6),
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(5),
	dataf => \comb_505|ALT_INV_Equal23~0_combout\,
	combout => \comb_505|Equal23~1_combout\);

-- Location: FF_X42_Y31_N32
\comb_505|clok2048MbodCounterTX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add1~9_sumout\,
	sclr => \comb_505|Equal23~1_combout\,
	ena => \comb_505|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterTX\(0));

-- Location: MLABCELL_X42_Y31_N33
\comb_505|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add1~1_sumout\ = SUM(( \comb_505|clok2048MbodCounterTX\(1) ) + ( GND ) + ( \comb_505|Add1~10\ ))
-- \comb_505|Add1~2\ = CARRY(( \comb_505|clok2048MbodCounterTX\(1) ) + ( GND ) + ( \comb_505|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(1),
	cin => \comb_505|Add1~10\,
	sumout => \comb_505|Add1~1_sumout\,
	cout => \comb_505|Add1~2\);

-- Location: FF_X42_Y31_N35
\comb_505|clok2048MbodCounterTX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add1~1_sumout\,
	sclr => \comb_505|Equal23~1_combout\,
	ena => \comb_505|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterTX\(1));

-- Location: MLABCELL_X42_Y31_N36
\comb_505|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add1~29_sumout\ = SUM(( \comb_505|clok2048MbodCounterTX\(2) ) + ( GND ) + ( \comb_505|Add1~2\ ))
-- \comb_505|Add1~30\ = CARRY(( \comb_505|clok2048MbodCounterTX\(2) ) + ( GND ) + ( \comb_505|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(2),
	cin => \comb_505|Add1~2\,
	sumout => \comb_505|Add1~29_sumout\,
	cout => \comb_505|Add1~30\);

-- Location: FF_X42_Y31_N38
\comb_505|clok2048MbodCounterTX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add1~29_sumout\,
	sclr => \comb_505|Equal23~1_combout\,
	ena => \comb_505|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterTX\(2));

-- Location: MLABCELL_X42_Y31_N39
\comb_505|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add1~13_sumout\ = SUM(( \comb_505|clok2048MbodCounterTX\(3) ) + ( GND ) + ( \comb_505|Add1~30\ ))
-- \comb_505|Add1~14\ = CARRY(( \comb_505|clok2048MbodCounterTX\(3) ) + ( GND ) + ( \comb_505|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(3),
	cin => \comb_505|Add1~30\,
	sumout => \comb_505|Add1~13_sumout\,
	cout => \comb_505|Add1~14\);

-- Location: FF_X42_Y31_N41
\comb_505|clok2048MbodCounterTX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add1~13_sumout\,
	sclr => \comb_505|Equal23~1_combout\,
	ena => \comb_505|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterTX\(3));

-- Location: MLABCELL_X42_Y31_N42
\comb_505|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add1~5_sumout\ = SUM(( \comb_505|clok2048MbodCounterTX\(4) ) + ( GND ) + ( \comb_505|Add1~14\ ))
-- \comb_505|Add1~6\ = CARRY(( \comb_505|clok2048MbodCounterTX\(4) ) + ( GND ) + ( \comb_505|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(4),
	cin => \comb_505|Add1~14\,
	sumout => \comb_505|Add1~5_sumout\,
	cout => \comb_505|Add1~6\);

-- Location: FF_X42_Y31_N43
\comb_505|clok2048MbodCounterTX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add1~5_sumout\,
	sclr => \comb_505|Equal23~1_combout\,
	ena => \comb_505|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterTX\(4));

-- Location: MLABCELL_X42_Y31_N45
\comb_505|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add1~21_sumout\ = SUM(( \comb_505|clok2048MbodCounterTX\(5) ) + ( GND ) + ( \comb_505|Add1~6\ ))
-- \comb_505|Add1~22\ = CARRY(( \comb_505|clok2048MbodCounterTX\(5) ) + ( GND ) + ( \comb_505|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(5),
	cin => \comb_505|Add1~6\,
	sumout => \comb_505|Add1~21_sumout\,
	cout => \comb_505|Add1~22\);

-- Location: FF_X42_Y31_N47
\comb_505|clok2048MbodCounterTX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add1~21_sumout\,
	sclr => \comb_505|Equal23~1_combout\,
	ena => \comb_505|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterTX\(5));

-- Location: MLABCELL_X42_Y31_N48
\comb_505|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add1~17_sumout\ = SUM(( \comb_505|clok2048MbodCounterTX\(6) ) + ( GND ) + ( \comb_505|Add1~22\ ))
-- \comb_505|Add1~18\ = CARRY(( \comb_505|clok2048MbodCounterTX\(6) ) + ( GND ) + ( \comb_505|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(6),
	cin => \comb_505|Add1~22\,
	sumout => \comb_505|Add1~17_sumout\,
	cout => \comb_505|Add1~18\);

-- Location: FF_X42_Y31_N50
\comb_505|clok2048MbodCounterTX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add1~17_sumout\,
	sclr => \comb_505|Equal23~1_combout\,
	ena => \comb_505|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterTX\(6));

-- Location: MLABCELL_X42_Y31_N51
\comb_505|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|Add1~25_sumout\ = SUM(( \comb_505|clok2048MbodCounterTX\(7) ) + ( GND ) + ( \comb_505|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(7),
	cin => \comb_505|Add1~18\,
	sumout => \comb_505|Add1~25_sumout\);

-- Location: FF_X42_Y31_N52
\comb_505|clok2048MbodCounterTX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|Add1~25_sumout\,
	sclr => \comb_505|Equal23~1_combout\,
	ena => \comb_505|clok2048MbodCounterTX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|clok2048MbodCounterTX\(7));

-- Location: MLABCELL_X42_Y31_N3
\comb_505|PinTX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|PinTX~0_combout\ = ( \comb_505|clok2048MbodCounterTX\(1) & ( (\comb_505|clok2048MbodCounterTX\(3) & \comb_505|clok2048MbodCounterTX\(4)) ) ) # ( !\comb_505|clok2048MbodCounterTX\(1) & ( (!\comb_505|clok2048MbodCounterTX\(3) & 
-- (!\comb_505|clok2048MbodCounterTX\(2) & (!\comb_505|clok2048MbodCounterTX\(0) & !\comb_505|clok2048MbodCounterTX\(4)))) # (\comb_505|clok2048MbodCounterTX\(3) & (\comb_505|clok2048MbodCounterTX\(4) & ((\comb_505|clok2048MbodCounterTX\(0)) # 
-- (\comb_505|clok2048MbodCounterTX\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010011100000000001001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterTX\(2),
	datab => \comb_505|ALT_INV_clok2048MbodCounterTX\(3),
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX\(0),
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(4),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterTX\(1),
	combout => \comb_505|PinTX~0_combout\);

-- Location: LABCELL_X43_Y31_N48
\comb_505|PinTX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|PinTX~1_combout\ = ( !\comb_505|PinTX~0_combout\ & ( (!\comb_505|clok2048MbodCounterTX\(7) & (!\comb_505|clok2048MbodCounterTX\(5) & !\comb_505|clok2048MbodCounterTX\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterTX\(7),
	datab => \comb_505|ALT_INV_clok2048MbodCounterTX\(5),
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX\(6),
	dataf => \comb_505|ALT_INV_PinTX~0_combout\,
	combout => \comb_505|PinTX~1_combout\);

-- Location: MLABCELL_X42_Y31_N6
\comb_505|always0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|always0~6_combout\ = ( \comb_505|clok2048MbodCounterTX\(5) & ( \comb_505|clok2048MbodCounterTX[4]~DUPLICATE_q\ & ( (\comb_505|clok2048MbodCounterTX\(1) & ((!\comb_505|clok2048MbodCounterTX\(6) & (!\comb_505|clok2048MbodCounterTX\(0) & 
-- !\comb_505|clok2048MbodCounterTX\(3))) # (\comb_505|clok2048MbodCounterTX\(6) & (\comb_505|clok2048MbodCounterTX\(0) & \comb_505|clok2048MbodCounterTX\(3))))) ) ) ) # ( !\comb_505|clok2048MbodCounterTX\(5) & ( 
-- \comb_505|clok2048MbodCounterTX[4]~DUPLICATE_q\ & ( (!\comb_505|clok2048MbodCounterTX\(6) & (\comb_505|clok2048MbodCounterTX\(0) & (!\comb_505|clok2048MbodCounterTX\(1) $ (!\comb_505|clok2048MbodCounterTX\(3))))) ) ) ) # ( 
-- \comb_505|clok2048MbodCounterTX\(5) & ( !\comb_505|clok2048MbodCounterTX[4]~DUPLICATE_q\ & ( (\comb_505|clok2048MbodCounterTX\(6) & (\comb_505|clok2048MbodCounterTX\(0) & (\comb_505|clok2048MbodCounterTX\(1) & !\comb_505|clok2048MbodCounterTX\(3)))) ) ) ) 
-- # ( !\comb_505|clok2048MbodCounterTX\(5) & ( !\comb_505|clok2048MbodCounterTX[4]~DUPLICATE_q\ & ( (\comb_505|clok2048MbodCounterTX\(6) & (!\comb_505|clok2048MbodCounterTX\(0) & (\comb_505|clok2048MbodCounterTX\(1) & \comb_505|clok2048MbodCounterTX\(3)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000010000000000000010001000000000100000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterTX\(6),
	datab => \comb_505|ALT_INV_clok2048MbodCounterTX\(0),
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX\(1),
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(3),
	datae => \comb_505|ALT_INV_clok2048MbodCounterTX\(5),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterTX[4]~DUPLICATE_q\,
	combout => \comb_505|always0~6_combout\);

-- Location: MLABCELL_X42_Y31_N0
\comb_505|always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|always0~2_combout\ = ( \comb_505|always0~6_combout\ & ( (!\comb_505|clok2048MbodCounterTX\(2) & (!\comb_505|clok2048MbodCounterTX[7]~DUPLICATE_q\ $ (((!\comb_505|clok2048MbodCounterTX\(3) & !\comb_505|clok2048MbodCounterTX\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101000101000000010100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterTX\(2),
	datab => \comb_505|ALT_INV_clok2048MbodCounterTX\(3),
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\,
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(5),
	dataf => \comb_505|ALT_INV_always0~6_combout\,
	combout => \comb_505|always0~2_combout\);

-- Location: LABCELL_X39_Y25_N21
\ActionWriteToRAM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionWriteToRAM~0_combout\ = ( \ActionWriteToRAM~q\ & ( \State.0001~q\ ) ) # ( !\ActionWriteToRAM~q\ & ( \State.0001~q\ & ( \comb_505|flagOUT_DataResive~q\ ) ) ) # ( \ActionWriteToRAM~q\ & ( !\State.0001~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_flagOUT_DataResive~q\,
	datae => \ALT_INV_ActionWriteToRAM~q\,
	dataf => \ALT_INV_State.0001~q\,
	combout => \ActionWriteToRAM~0_combout\);

-- Location: FF_X39_Y25_N23
ActionWriteToRAM : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ActionWriteToRAM~0_combout\,
	sclr => \ActionWriteToRAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ActionWriteToRAM~q\);

-- Location: LABCELL_X40_Y25_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \AddressPoint[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \AddressPoint[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_AddressPoint[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X43_Y25_N14
\State.0000~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \State~13_combout\,
	ena => \State~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.0000~DUPLICATE_q\);

-- Location: LABCELL_X41_Y25_N24
\always0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~6_combout\ = ( !\comb_505|dataIN[2]~DUPLICATE_q\ & ( \always0~5_combout\ & ( (!\comb_505|dataIN\(6) & (!\comb_505|dataIN\(3) & (!\comb_505|dataIN\(7) & !\State.0000~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN\(6),
	datab => \comb_505|ALT_INV_dataIN\(3),
	datac => \comb_505|ALT_INV_dataIN\(7),
	datad => \ALT_INV_State.0000~DUPLICATE_q\,
	datae => \comb_505|ALT_INV_dataIN[2]~DUPLICATE_q\,
	dataf => \ALT_INV_always0~5_combout\,
	combout => \always0~6_combout\);

-- Location: MLABCELL_X42_Y25_N39
\always0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = ( \comb_505|dataIN\(7) & ( \comb_505|dataIN\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_505|ALT_INV_dataIN\(3),
	dataf => \comb_505|ALT_INV_dataIN\(7),
	combout => \always0~2_combout\);

-- Location: MLABCELL_X42_Y25_N54
\always0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~7_combout\ = ( \always0~1_combout\ & ( (\comb_505|dataIN\(4) & (\always0~2_combout\ & \comb_505|dataIN\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN\(4),
	datab => \ALT_INV_always0~2_combout\,
	datad => \comb_505|ALT_INV_dataIN\(0),
	dataf => \ALT_INV_always0~1_combout\,
	combout => \always0~7_combout\);

-- Location: LABCELL_X41_Y25_N21
\AddressPoint[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AddressPoint[13]~0_combout\ = ( \always0~7_combout\ & ( \always0~6_combout\ & ( ((\WideOr0~1_combout\ & (\State.0010~q\ & \WideOr0~0_combout\))) # (\comb_505|flagOUT_DataResive~q\) ) ) ) # ( !\always0~7_combout\ & ( \always0~6_combout\ & ( 
-- ((\WideOr0~1_combout\ & (\State.0010~q\ & \WideOr0~0_combout\))) # (\comb_505|flagOUT_DataResive~q\) ) ) ) # ( \always0~7_combout\ & ( !\always0~6_combout\ & ( ((\WideOr0~1_combout\ & (\State.0010~q\ & \WideOr0~0_combout\))) # 
-- (\comb_505|flagOUT_DataResive~q\) ) ) ) # ( !\always0~7_combout\ & ( !\always0~6_combout\ & ( (\WideOr0~1_combout\ & (\State.0010~q\ & \WideOr0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010101010101011101010101010101110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_flagOUT_DataResive~q\,
	datab => \ALT_INV_WideOr0~1_combout\,
	datac => \ALT_INV_State.0010~q\,
	datad => \ALT_INV_WideOr0~0_combout\,
	datae => \ALT_INV_always0~7_combout\,
	dataf => \ALT_INV_always0~6_combout\,
	combout => \AddressPoint[13]~0_combout\);

-- Location: FF_X40_Y25_N2
\AddressPoint[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[0]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y25_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \AddressPoint[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \AddressPoint[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_AddressPoint[1]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X40_Y25_N5
\AddressPoint[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y25_N6
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( AddressPoint(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~18\ = CARRY(( AddressPoint(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AddressPoint(2),
	cin => \Add0~6\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X40_Y25_N7
\AddressPoint[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(2));

-- Location: LABCELL_X40_Y25_N9
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \AddressPoint[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \AddressPoint[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddressPoint[3]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X40_Y25_N11
\AddressPoint[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y25_N12
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \AddressPoint[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \AddressPoint[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddressPoint[4]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X40_Y25_N14
\AddressPoint[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[4]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y25_N15
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( AddressPoint(5) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( AddressPoint(5) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_AddressPoint(5),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X40_Y25_N17
\AddressPoint[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(5));

-- Location: LABCELL_X40_Y25_N18
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( AddressPoint(6) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( AddressPoint(6) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_AddressPoint(6),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X40_Y25_N20
\AddressPoint[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(6));

-- Location: LABCELL_X40_Y25_N21
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( AddressPoint(7) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( AddressPoint(7) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AddressPoint(7),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X40_Y25_N23
\AddressPoint[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(7));

-- Location: LABCELL_X40_Y25_N24
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( AddressPoint(8) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( AddressPoint(8) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_AddressPoint(8),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X40_Y25_N26
\AddressPoint[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(8));

-- Location: LABCELL_X40_Y25_N27
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( AddressPoint(9) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( AddressPoint(9) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AddressPoint(9),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X40_Y25_N29
\AddressPoint[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(9));

-- Location: LABCELL_X40_Y25_N30
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( AddressPoint(10) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( AddressPoint(10) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_AddressPoint(10),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X40_Y25_N31
\AddressPoint[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(10));

-- Location: LABCELL_X40_Y25_N33
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

-- Location: FF_X40_Y25_N35
\AddressPoint[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(11));

-- Location: LABCELL_X40_Y25_N36
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

-- Location: FF_X40_Y25_N38
\AddressPoint[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(12));

-- Location: LABCELL_X40_Y25_N39
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \AddressPoint[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~10\ = CARRY(( \AddressPoint[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddressPoint[13]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X40_Y25_N41
\AddressPoint[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[13]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y25_N42
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( AddressPoint(14) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_AddressPoint(14),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\);

-- Location: FF_X40_Y25_N44
\AddressPoint[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(14));

-- Location: LABCELL_X39_Y25_N36
\comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\ = ( AddressPoint(14) & ( !\AddressPoint[13]~DUPLICATE_q\ & ( \ActionWriteToRAM~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ActionWriteToRAM~q\,
	datae => ALT_INV_AddressPoint(14),
	dataf => \ALT_INV_AddressPoint[13]~DUPLICATE_q\,
	combout => \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\);

-- Location: FF_X40_Y25_N43
\AddressPoint[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[14]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y25_N54
\comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\ = ( \AddressPoint[14]~DUPLICATE_q\ & ( !\AddressPoint[13]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_AddressPoint[14]~DUPLICATE_q\,
	dataf => \ALT_INV_AddressPoint[13]~DUPLICATE_q\,
	combout => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\);

-- Location: LABCELL_X43_Y25_N15
\ActionWriteToRAM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ActionWriteToRAM~1_combout\ = ( \comb_505|flagOUT_DataResive~q\ & ( \State.0001~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.0001~q\,
	dataf => \comb_505|ALT_INV_flagOUT_DataResive~q\,
	combout => \ActionWriteToRAM~1_combout\);

-- Location: FF_X43_Y25_N53
\DataBusToRAM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN\(0),
	sload => VCC,
	ena => \ActionWriteToRAM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(0));

-- Location: FF_X40_Y25_N1
\AddressPoint[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(0));

-- Location: FF_X40_Y25_N4
\AddressPoint[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(1));

-- Location: FF_X40_Y25_N10
\AddressPoint[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(3));

-- Location: FF_X40_Y25_N13
\AddressPoint[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(4));

-- Location: FF_X40_Y25_N19
\AddressPoint[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[6]~DUPLICATE_q\);

-- Location: FF_X40_Y25_N22
\AddressPoint[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[7]~DUPLICATE_q\);

-- Location: FF_X40_Y25_N25
\AddressPoint[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[8]~DUPLICATE_q\);

-- Location: FF_X40_Y25_N28
\AddressPoint[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[9]~DUPLICATE_q\);

-- Location: FF_X40_Y25_N34
\AddressPoint[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[11]~DUPLICATE_q\);

-- Location: FF_X40_Y25_N37
\AddressPoint[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[12]~DUPLICATE_q\);

-- Location: M10K_X46_Y23_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a16\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LABCELL_X39_Y25_N42
\comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\ = ( !AddressPoint(14) & ( !\AddressPoint[13]~DUPLICATE_q\ & ( \ActionWriteToRAM~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ActionWriteToRAM~q\,
	datae => ALT_INV_AddressPoint(14),
	dataf => \ALT_INV_AddressPoint[13]~DUPLICATE_q\,
	combout => \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\);

-- Location: LABCELL_X40_Y25_N51
\comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\ = ( !\AddressPoint[14]~DUPLICATE_q\ & ( !\AddressPoint[13]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_AddressPoint[14]~DUPLICATE_q\,
	dataf => \ALT_INV_AddressPoint[13]~DUPLICATE_q\,
	combout => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\);

-- Location: M10K_X51_Y23_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X40_Y25_N40
\AddressPoint[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AddressPoint(13));

-- Location: FF_X41_Y25_N7
\comb_506|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => AddressPoint(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_506|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X45_Y25_N58
\comb_506|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_506|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: FF_X45_Y25_N41
\comb_506|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \AddressPoint[14]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_506|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: MLABCELL_X45_Y25_N36
\comb_506|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_506|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ = \comb_506|altsyncram_component|auto_generated|address_reg_a\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_506|altsyncram_component|auto_generated|ALT_INV_address_reg_a\(1),
	combout => \comb_506|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\);

-- Location: FF_X45_Y25_N37
\comb_506|altsyncram_component|auto_generated|out_address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_506|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: LABCELL_X39_Y25_N24
\comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\ = ( !AddressPoint(14) & ( \AddressPoint[13]~DUPLICATE_q\ & ( \ActionWriteToRAM~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ActionWriteToRAM~q\,
	datae => ALT_INV_AddressPoint(14),
	dataf => \ALT_INV_AddressPoint[13]~DUPLICATE_q\,
	combout => \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\);

-- Location: LABCELL_X41_Y25_N54
\comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\ = ( !\AddressPoint[14]~DUPLICATE_q\ & ( AddressPoint(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_AddressPoint[14]~DUPLICATE_q\,
	dataf => ALT_INV_AddressPoint(13),
	combout => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\);

-- Location: M10K_X51_Y21_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LABCELL_X39_Y25_N54
\comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\ = ( AddressPoint(14) & ( \AddressPoint[13]~DUPLICATE_q\ & ( \ActionWriteToRAM~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ActionWriteToRAM~q\,
	datae => ALT_INV_AddressPoint(14),
	dataf => \ALT_INV_AddressPoint[13]~DUPLICATE_q\,
	combout => \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\);

-- Location: LABCELL_X39_Y25_N0
\comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\ = ( AddressPoint(14) & ( \AddressPoint[13]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_AddressPoint(14),
	dataf => \ALT_INV_AddressPoint[13]~DUPLICATE_q\,
	combout => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\);

-- Location: M10K_X38_Y23_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a24\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: MLABCELL_X45_Y25_N48
\DataBusToUART~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~0_combout\ = ( \comb_506|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( \comb_506|altsyncram_component|auto_generated|ram_block1a24~portadataout\ & ( ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) 
-- & ((\comb_506|altsyncram_component|auto_generated|ram_block1a0~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_506|altsyncram_component|auto_generated|ram_block1a16~portadataout\))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0)) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( \comb_506|altsyncram_component|auto_generated|ram_block1a24~portadataout\ & ( 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_506|altsyncram_component|auto_generated|ram_block1a0~portadataout\))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_506|altsyncram_component|auto_generated|ram_block1a16~portadataout\)))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (((\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) ) ) ) # ( \comb_506|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a24~portadataout\ & ( 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_506|altsyncram_component|auto_generated|ram_block1a0~portadataout\))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_506|altsyncram_component|auto_generated|ram_block1a16~portadataout\)))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a24~portadataout\ & ( 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_506|altsyncram_component|auto_generated|ram_block1a0~portadataout\))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_506|altsyncram_component|auto_generated|ram_block1a16~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a16~portadataout\,
	datab => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datac => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datad => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datae => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a8~portadataout\,
	dataf => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a24~portadataout\,
	combout => \DataBusToUART~0_combout\);

-- Location: MLABCELL_X42_Y25_N48
\always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \always0~3_combout\ = ( !\comb_505|dataIN\(4) & ( !\comb_505|dataIN\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \comb_505|ALT_INV_dataIN\(0),
	dataf => \comb_505|ALT_INV_dataIN\(4),
	combout => \always0~3_combout\);

-- Location: MLABCELL_X42_Y25_N6
\DataBusToUART[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART[0]~1_combout\ = ( \WideOr0~1_combout\ & ( \WideOr0~0_combout\ & ( !\State.0010~DUPLICATE_q\ $ (((\always0~3_combout\ & (\always0~1_combout\ & \always0~2_combout\)))) ) ) ) # ( !\WideOr0~1_combout\ & ( \WideOr0~0_combout\ & ( 
-- (!\always0~3_combout\) # ((!\always0~1_combout\) # (!\always0~2_combout\)) ) ) ) # ( \WideOr0~1_combout\ & ( !\WideOr0~0_combout\ & ( (!\always0~3_combout\) # ((!\always0~1_combout\) # (!\always0~2_combout\)) ) ) ) # ( !\WideOr0~1_combout\ & ( 
-- !\WideOr0~0_combout\ & ( (!\always0~3_combout\) # ((!\always0~1_combout\) # (!\always0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111000011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_always0~3_combout\,
	datab => \ALT_INV_always0~1_combout\,
	datac => \ALT_INV_State.0010~DUPLICATE_q\,
	datad => \ALT_INV_always0~2_combout\,
	datae => \ALT_INV_WideOr0~1_combout\,
	dataf => \ALT_INV_WideOr0~0_combout\,
	combout => \DataBusToUART[0]~1_combout\);

-- Location: MLABCELL_X42_Y25_N27
\DataBusToUART[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART[0]~10_combout\ = ( \comb_505|dataIN\(3) & ( (\comb_505|dataIN[5]~DUPLICATE_q\ & (\comb_505|dataIN\(1) & !\State.0000~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_dataIN[5]~DUPLICATE_q\,
	datab => \comb_505|ALT_INV_dataIN\(1),
	datac => \ALT_INV_State.0000~q\,
	dataf => \comb_505|ALT_INV_dataIN\(3),
	combout => \DataBusToUART[0]~10_combout\);

-- Location: MLABCELL_X42_Y25_N30
\DataBusToUART[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART[0]~2_combout\ = ( \WideOr0~1_combout\ & ( \DataBusToUART[0]~10_combout\ & ( (!\State.0010~DUPLICATE_q\ & (((\comb_505|flagOUT_DataResive~q\ & \ActionDataTransmitToUART~2_combout\)))) # (\State.0010~DUPLICATE_q\ & 
-- (((\comb_505|flagOUT_DataResive~q\ & \ActionDataTransmitToUART~2_combout\)) # (\WideOr0~0_combout\))) ) ) ) # ( !\WideOr0~1_combout\ & ( \DataBusToUART[0]~10_combout\ & ( (\comb_505|flagOUT_DataResive~q\ & \ActionDataTransmitToUART~2_combout\) ) ) ) # ( 
-- \WideOr0~1_combout\ & ( !\DataBusToUART[0]~10_combout\ & ( (\State.0010~DUPLICATE_q\ & \WideOr0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000011110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.0010~DUPLICATE_q\,
	datab => \ALT_INV_WideOr0~0_combout\,
	datac => \comb_505|ALT_INV_flagOUT_DataResive~q\,
	datad => \ALT_INV_ActionDataTransmitToUART~2_combout\,
	datae => \ALT_INV_WideOr0~1_combout\,
	dataf => \ALT_INV_DataBusToUART[0]~10_combout\,
	combout => \DataBusToUART[0]~2_combout\);

-- Location: FF_X45_Y25_N49
\DataBusToUART[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~0_combout\,
	asdata => AddressPoint(0),
	sload => \DataBusToUART[0]~1_combout\,
	ena => \DataBusToUART[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(0));

-- Location: MLABCELL_X42_Y31_N15
\comb_505|always0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|always0~0_combout\ = ( !\comb_505|clok2048MbodCounterTX\(5) & ( \comb_505|clok2048MbodCounterTX\(6) & ( (\comb_505|clok2048MbodCounterTX[7]~DUPLICATE_q\ & (!\comb_505|clok2048MbodCounterTX\(3) & \comb_505|clok2048MbodCounterTX\(2))) ) ) ) # ( 
-- \comb_505|clok2048MbodCounterTX\(5) & ( !\comb_505|clok2048MbodCounterTX\(6) & ( (\comb_505|clok2048MbodCounterTX[7]~DUPLICATE_q\ & (\comb_505|clok2048MbodCounterTX\(3) & \comb_505|clok2048MbodCounterTX\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterTX[7]~DUPLICATE_q\,
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX\(3),
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(2),
	datae => \comb_505|ALT_INV_clok2048MbodCounterTX\(5),
	dataf => \comb_505|ALT_INV_clok2048MbodCounterTX\(6),
	combout => \comb_505|always0~0_combout\);

-- Location: MLABCELL_X42_Y31_N57
\comb_505|always0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|always0~1_combout\ = ( \comb_505|always0~0_combout\ & ( (!\comb_505|clok2048MbodCounterTX\(1) & (!\comb_505|clok2048MbodCounterTX\(0) & !\comb_505|clok2048MbodCounterTX\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterTX\(1),
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX\(0),
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(4),
	dataf => \comb_505|ALT_INV_always0~0_combout\,
	combout => \comb_505|always0~1_combout\);

-- Location: FF_X43_Y25_N47
\DataBusToRAM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN\(1),
	sload => VCC,
	ena => \ActionWriteToRAM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(1));

-- Location: FF_X40_Y25_N16
\AddressPoint[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \always0~6_combout\,
	ena => \AddressPoint[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressPoint[5]~DUPLICATE_q\);

-- Location: M10K_X38_Y27_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y29_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a25\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M10K_X46_Y29_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y29_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a17\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: LABCELL_X43_Y27_N12
\DataBusToUART~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~3_combout\ = ( \comb_506|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & ( \comb_506|altsyncram_component|auto_generated|ram_block1a17~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) 
-- & (((\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))) # (\comb_506|altsyncram_component|auto_generated|ram_block1a1~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)) # (\comb_506|altsyncram_component|auto_generated|ram_block1a25~portadataout\)))) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & ( 
-- \comb_506|altsyncram_component|auto_generated|ram_block1a17~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))) # 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a1~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\comb_506|altsyncram_component|auto_generated|ram_block1a25~portadataout\ & 
-- \comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) ) ) ) # ( \comb_506|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a17~portadataout\ & ( 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_506|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)) # (\comb_506|altsyncram_component|auto_generated|ram_block1a25~portadataout\)))) ) ) ) # ( 
-- !\comb_506|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a17~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (((\comb_506|altsyncram_component|auto_generated|ram_block1a25~portadataout\ & \comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datab => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datac => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a25~portadataout\,
	datad => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datae => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a9~portadataout\,
	dataf => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a17~portadataout\,
	combout => \DataBusToUART~3_combout\);

-- Location: FF_X43_Y27_N13
\DataBusToUART[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~3_combout\,
	asdata => AddressPoint(1),
	sload => \DataBusToUART[0]~1_combout\,
	ena => \DataBusToUART[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(1));

-- Location: FF_X43_Y25_N11
\DataBusToRAM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \ActionWriteToRAM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(2));

-- Location: M10K_X46_Y26_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a18\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y26_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a26\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y22_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M10K_X46_Y21_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: MLABCELL_X42_Y26_N15
\DataBusToUART~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~4_combout\ = ( \comb_506|altsyncram_component|auto_generated|ram_block1a2~portadataout\ & ( \comb_506|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)) 
-- # ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_506|altsyncram_component|auto_generated|ram_block1a18~portadataout\)) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\comb_506|altsyncram_component|auto_generated|ram_block1a26~portadataout\)))) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a2~portadataout\ & ( \comb_506|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & ( 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_506|altsyncram_component|auto_generated|ram_block1a18~portadataout\)) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\comb_506|altsyncram_component|auto_generated|ram_block1a26~portadataout\))))) ) ) ) # ( \comb_506|altsyncram_component|auto_generated|ram_block1a2~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & ( 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_506|altsyncram_component|auto_generated|ram_block1a18~portadataout\)) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\comb_506|altsyncram_component|auto_generated|ram_block1a26~portadataout\))))) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a2~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a10~portadataout\ & ( 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_506|altsyncram_component|auto_generated|ram_block1a18~portadataout\)) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\comb_506|altsyncram_component|auto_generated|ram_block1a26~portadataout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datab => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datac => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a18~portadataout\,
	datad => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a26~portadataout\,
	datae => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	dataf => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a10~portadataout\,
	combout => \DataBusToUART~4_combout\);

-- Location: FF_X42_Y26_N16
\DataBusToUART[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~4_combout\,
	asdata => AddressPoint(2),
	sload => \DataBusToUART[0]~1_combout\,
	ena => \DataBusToUART[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(2));

-- Location: FF_X42_Y25_N47
\DataBusToRAM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \ActionWriteToRAM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(3));

-- Location: M10K_X46_Y22_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M10K_X46_Y24_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a19\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y21_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y22_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a27\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: MLABCELL_X42_Y26_N21
\DataBusToUART~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~5_combout\ = ( \comb_506|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & ( \comb_506|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( 
-- ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_506|altsyncram_component|auto_generated|ram_block1a3~portadataout\)) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\comb_506|altsyncram_component|auto_generated|ram_block1a19~portadataout\)))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0)) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & ( 
-- \comb_506|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a3~portadataout\)) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_506|altsyncram_component|auto_generated|ram_block1a19~portadataout\))))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) ) ) ) # ( \comb_506|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & ( 
-- !\comb_506|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a3~portadataout\)) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_506|altsyncram_component|auto_generated|ram_block1a19~portadataout\))))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & ( 
-- !\comb_506|altsyncram_component|auto_generated|ram_block1a27~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a3~portadataout\)) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_506|altsyncram_component|auto_generated|ram_block1a19~portadataout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datac => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a19~portadataout\,
	datad => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datae => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a11~portadataout\,
	dataf => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a27~portadataout\,
	combout => \DataBusToUART~5_combout\);

-- Location: FF_X42_Y26_N22
\DataBusToUART[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~5_combout\,
	asdata => AddressPoint(3),
	sload => \DataBusToUART[0]~1_combout\,
	ena => \DataBusToUART[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(3));

-- Location: FF_X43_Y25_N23
\DataBusToRAM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \ActionWriteToRAM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(4));

-- Location: M10K_X38_Y28_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y24_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y24_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a28\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y25_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: MLABCELL_X42_Y26_N39
\DataBusToUART~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~6_combout\ = ( \comb_506|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( \comb_506|altsyncram_component|auto_generated|ram_block1a4~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) 
-- & (((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)) # (\comb_506|altsyncram_component|auto_generated|ram_block1a20~portadataout\)))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (((\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))) # (\comb_506|altsyncram_component|auto_generated|ram_block1a12~portadataout\))) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( 
-- \comb_506|altsyncram_component|auto_generated|ram_block1a4~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a20~portadataout\)))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_506|altsyncram_component|auto_generated|ram_block1a12~portadataout\ & 
-- ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) ) ) ) # ( \comb_506|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a4~portadataout\ & ( 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\comb_506|altsyncram_component|auto_generated|ram_block1a20~portadataout\ & \comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))) # (\comb_506|altsyncram_component|auto_generated|ram_block1a12~portadataout\))) ) ) ) # ( 
-- !\comb_506|altsyncram_component|auto_generated|ram_block1a28~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a4~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (((\comb_506|altsyncram_component|auto_generated|ram_block1a20~portadataout\ & \comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a12~portadataout\ & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a12~portadataout\,
	datab => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a20~portadataout\,
	datac => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datad => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datae => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a28~portadataout\,
	dataf => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	combout => \DataBusToUART~6_combout\);

-- Location: FF_X42_Y26_N40
\DataBusToUART[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~6_combout\,
	asdata => AddressPoint(4),
	sload => \DataBusToUART[0]~1_combout\,
	ena => \DataBusToUART[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(4));

-- Location: FF_X43_Y25_N8
\DataBusToRAM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN\(5),
	sload => VCC,
	ena => \ActionWriteToRAM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(5));

-- Location: M10K_X46_Y31_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a21\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M10K_X46_Y28_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y31_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M10K_X46_Y30_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a29\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: LABCELL_X43_Y27_N42
\DataBusToUART~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~7_combout\ = ( \comb_506|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( \comb_506|altsyncram_component|auto_generated|ram_block1a29~portadataout\ & ( 
-- ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_506|altsyncram_component|auto_generated|ram_block1a5~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a21~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0)) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( 
-- \comb_506|altsyncram_component|auto_generated|ram_block1a29~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\comb_506|altsyncram_component|auto_generated|ram_block1a5~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_506|altsyncram_component|auto_generated|ram_block1a21~portadataout\)))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))) ) ) ) # ( \comb_506|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( 
-- !\comb_506|altsyncram_component|auto_generated|ram_block1a29~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\comb_506|altsyncram_component|auto_generated|ram_block1a5~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_506|altsyncram_component|auto_generated|ram_block1a21~portadataout\)))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & ( 
-- !\comb_506|altsyncram_component|auto_generated|ram_block1a29~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\comb_506|altsyncram_component|auto_generated|ram_block1a5~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_506|altsyncram_component|auto_generated|ram_block1a21~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datab => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datac => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a21~portadataout\,
	datad => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a13~portadataout\,
	dataf => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a29~portadataout\,
	combout => \DataBusToUART~7_combout\);

-- Location: FF_X43_Y27_N43
\DataBusToUART[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~7_combout\,
	asdata => AddressPoint(5),
	sload => \DataBusToUART[0]~1_combout\,
	ena => \DataBusToUART[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(5));

-- Location: FF_X43_Y25_N26
\DataBusToRAM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN\(6),
	sload => VCC,
	ena => \ActionWriteToRAM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(6));

-- Location: M10K_X46_Y27_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y26_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a30\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y27_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a22\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y28_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LABCELL_X43_Y27_N36
\DataBusToUART~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~8_combout\ = ( \comb_506|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & ( \comb_506|altsyncram_component|auto_generated|ram_block1a14~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) 
-- & (((\comb_506|altsyncram_component|auto_generated|ram_block1a6~portadataout\)) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)) # ((\comb_506|altsyncram_component|auto_generated|ram_block1a30~portadataout\)))) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & ( 
-- \comb_506|altsyncram_component|auto_generated|ram_block1a14~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a6~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\comb_506|altsyncram_component|auto_generated|ram_block1a30~portadataout\)))) ) ) ) # ( \comb_506|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a14~portadataout\ & ( 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\comb_506|altsyncram_component|auto_generated|ram_block1a6~portadataout\)) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_506|altsyncram_component|auto_generated|ram_block1a30~portadataout\)))) ) ) ) # ( 
-- !\comb_506|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a14~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\comb_506|altsyncram_component|auto_generated|ram_block1a6~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\comb_506|altsyncram_component|auto_generated|ram_block1a30~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datab => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datac => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a6~portadataout\,
	datad => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a30~portadataout\,
	datae => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a22~portadataout\,
	dataf => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a14~portadataout\,
	combout => \DataBusToUART~8_combout\);

-- Location: FF_X43_Y27_N37
\DataBusToUART[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~8_combout\,
	asdata => AddressPoint(6),
	sload => \DataBusToUART[0]~1_combout\,
	ena => \DataBusToUART[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(6));

-- Location: FF_X42_Y25_N50
\DataBusToRAM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \comb_505|dataIN\(7),
	sload => VCC,
	ena => \ActionWriteToRAM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToRAM(7));

-- Location: M10K_X46_Y25_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode224w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode262w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y30_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a31\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode253w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~2_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: M10K_X38_Y25_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a23\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode245w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~1_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M10K_X51_Y30_N0
\comb_506|altsyncram_component|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MyVideoBuffer:comb_506|altsyncram:altsyncram_component|altsyncram_umk1:auto_generated|ALTSYNCRAM",
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
	portawe => \comb_506|altsyncram_component|auto_generated|decode3|w_anode237w[2]~0_combout\,
	portare => \ALT_INV_ActionWriteToRAM~q\,
	clk0 => \clk~inputCLKENA0_outclk\,
	ena0 => \comb_506|altsyncram_component|auto_generated|rden_decode|w_anode285w[2]~0_combout\,
	portadatain => \comb_506|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \comb_506|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_506|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LABCELL_X43_Y27_N33
\DataBusToUART~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DataBusToUART~9_combout\ = ( \comb_506|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( \comb_506|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) 
-- & (((\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))) # (\comb_506|altsyncram_component|auto_generated|ram_block1a7~portadataout\))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)) # (\comb_506|altsyncram_component|auto_generated|ram_block1a31~portadataout\)))) ) ) ) # ( !\comb_506|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( 
-- \comb_506|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\comb_506|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a31~portadataout\)))) ) ) ) # ( \comb_506|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( 
-- (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1))) # (\comb_506|altsyncram_component|auto_generated|ram_block1a7~portadataout\))) # 
-- (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & \comb_506|altsyncram_component|auto_generated|ram_block1a31~portadataout\)))) ) ) ) # ( 
-- !\comb_506|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & ( !\comb_506|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & ( (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\comb_506|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & (!\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (((\comb_506|altsyncram_component|auto_generated|out_address_reg_a\(1) & \comb_506|altsyncram_component|auto_generated|ram_block1a31~portadataout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(0),
	datab => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a7~portadataout\,
	datac => \comb_506|altsyncram_component|auto_generated|ALT_INV_out_address_reg_a\(1),
	datad => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a31~portadataout\,
	datae => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a23~portadataout\,
	dataf => \comb_506|altsyncram_component|auto_generated|ALT_INV_ram_block1a15~portadataout\,
	combout => \DataBusToUART~9_combout\);

-- Location: FF_X43_Y27_N34
\DataBusToUART[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \DataBusToUART~9_combout\,
	asdata => \AddressPoint[7]~DUPLICATE_q\,
	sload => \DataBusToUART[0]~1_combout\,
	ena => \DataBusToUART[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DataBusToUART(7));

-- Location: LABCELL_X43_Y31_N51
\comb_505|always0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|always0~3_combout\ = ( \comb_505|LessThan2~0_combout\ & ( (!\comb_505|clok2048MbodCounterTX\(7) & (!\comb_505|clok2048MbodCounterTX\(5) & !\comb_505|clok2048MbodCounterTX\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_clok2048MbodCounterTX\(7),
	datac => \comb_505|ALT_INV_clok2048MbodCounterTX\(5),
	datad => \comb_505|ALT_INV_clok2048MbodCounterTX\(6),
	dataf => \comb_505|ALT_INV_LessThan2~0_combout\,
	combout => \comb_505|always0~3_combout\);

-- Location: LABCELL_X43_Y31_N24
\comb_505|shiftRegTX~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|shiftRegTX~8_combout\ = ( \comb_505|shiftRegTX\(7) & ( \comb_505|always0~3_combout\ & ( (!\comb_505|always0~2_combout\ & (!\comb_505|always0~1_combout\ & ((!\ActionDataTransmitToUART~q\) # (DataBusToUART(7))))) ) ) ) # ( 
-- !\comb_505|shiftRegTX\(7) & ( \comb_505|always0~3_combout\ & ( (DataBusToUART(7) & (!\comb_505|always0~2_combout\ & (\ActionDataTransmitToUART~q\ & !\comb_505|always0~1_combout\))) ) ) ) # ( \comb_505|shiftRegTX\(7) & ( !\comb_505|always0~3_combout\ & ( 
-- (!\comb_505|always0~2_combout\ & !\comb_505|always0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000100000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DataBusToUART(7),
	datab => \comb_505|ALT_INV_always0~2_combout\,
	datac => \ALT_INV_ActionDataTransmitToUART~q\,
	datad => \comb_505|ALT_INV_always0~1_combout\,
	datae => \comb_505|ALT_INV_shiftRegTX\(7),
	dataf => \comb_505|ALT_INV_always0~3_combout\,
	combout => \comb_505|shiftRegTX~8_combout\);

-- Location: FF_X43_Y31_N26
\comb_505|shiftRegTX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|shiftRegTX~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|shiftRegTX\(7));

-- Location: LABCELL_X43_Y31_N54
\comb_505|shiftRegTX~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|shiftRegTX~7_combout\ = ( \comb_505|always0~2_combout\ & ( \comb_505|shiftRegTX\(7) ) ) # ( !\comb_505|always0~2_combout\ & ( (!\comb_505|always0~1_combout\ & (DataBusToUART(6))) # (\comb_505|always0~1_combout\ & ((\comb_505|shiftRegTX\(7)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DataBusToUART(6),
	datac => \comb_505|ALT_INV_shiftRegTX\(7),
	datad => \comb_505|ALT_INV_always0~1_combout\,
	dataf => \comb_505|ALT_INV_always0~2_combout\,
	combout => \comb_505|shiftRegTX~7_combout\);

-- Location: LABCELL_X43_Y31_N42
\comb_505|shiftRegTX[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|shiftRegTX[4]~1_combout\ = ( \comb_505|always0~3_combout\ & ( ((\comb_505|always0~1_combout\) # (\ActionDataTransmitToUART~q\)) # (\comb_505|always0~2_combout\) ) ) # ( !\comb_505|always0~3_combout\ & ( (\comb_505|always0~1_combout\) # 
-- (\comb_505|always0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_505|ALT_INV_always0~2_combout\,
	datac => \ALT_INV_ActionDataTransmitToUART~q\,
	datad => \comb_505|ALT_INV_always0~1_combout\,
	dataf => \comb_505|ALT_INV_always0~3_combout\,
	combout => \comb_505|shiftRegTX[4]~1_combout\);

-- Location: FF_X43_Y31_N56
\comb_505|shiftRegTX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|shiftRegTX~7_combout\,
	ena => \comb_505|shiftRegTX[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|shiftRegTX\(6));

-- Location: LABCELL_X43_Y31_N57
\comb_505|shiftRegTX~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|shiftRegTX~6_combout\ = ( \comb_505|always0~1_combout\ & ( \comb_505|shiftRegTX\(6) ) ) # ( !\comb_505|always0~1_combout\ & ( (!\comb_505|always0~2_combout\ & (DataBusToUART(5))) # (\comb_505|always0~2_combout\ & ((\comb_505|shiftRegTX\(6)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_DataBusToUART(5),
	datac => \comb_505|ALT_INV_always0~2_combout\,
	datad => \comb_505|ALT_INV_shiftRegTX\(6),
	dataf => \comb_505|ALT_INV_always0~1_combout\,
	combout => \comb_505|shiftRegTX~6_combout\);

-- Location: FF_X43_Y31_N59
\comb_505|shiftRegTX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|shiftRegTX~6_combout\,
	ena => \comb_505|shiftRegTX[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|shiftRegTX\(5));

-- Location: LABCELL_X43_Y31_N0
\comb_505|shiftRegTX~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|shiftRegTX~5_combout\ = ( \comb_505|always0~1_combout\ & ( \comb_505|shiftRegTX\(5) ) ) # ( !\comb_505|always0~1_combout\ & ( (!\comb_505|always0~2_combout\ & (DataBusToUART(4))) # (\comb_505|always0~2_combout\ & ((\comb_505|shiftRegTX\(5)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_505|ALT_INV_always0~2_combout\,
	datac => ALT_INV_DataBusToUART(4),
	datad => \comb_505|ALT_INV_shiftRegTX\(5),
	dataf => \comb_505|ALT_INV_always0~1_combout\,
	combout => \comb_505|shiftRegTX~5_combout\);

-- Location: FF_X43_Y31_N2
\comb_505|shiftRegTX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|shiftRegTX~5_combout\,
	ena => \comb_505|shiftRegTX[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|shiftRegTX\(4));

-- Location: LABCELL_X43_Y31_N3
\comb_505|shiftRegTX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|shiftRegTX~4_combout\ = ( \comb_505|always0~1_combout\ & ( \comb_505|shiftRegTX\(4) ) ) # ( !\comb_505|always0~1_combout\ & ( (!\comb_505|always0~2_combout\ & (DataBusToUART(3))) # (\comb_505|always0~2_combout\ & ((\comb_505|shiftRegTX\(4)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DataBusToUART(3),
	datac => \comb_505|ALT_INV_always0~2_combout\,
	datad => \comb_505|ALT_INV_shiftRegTX\(4),
	dataf => \comb_505|ALT_INV_always0~1_combout\,
	combout => \comb_505|shiftRegTX~4_combout\);

-- Location: FF_X43_Y31_N5
\comb_505|shiftRegTX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|shiftRegTX~4_combout\,
	ena => \comb_505|shiftRegTX[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|shiftRegTX\(3));

-- Location: LABCELL_X43_Y31_N30
\comb_505|shiftRegTX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|shiftRegTX~3_combout\ = ( \comb_505|always0~2_combout\ & ( \comb_505|shiftRegTX\(3) ) ) # ( !\comb_505|always0~2_combout\ & ( (!\comb_505|always0~1_combout\ & (DataBusToUART(2))) # (\comb_505|always0~1_combout\ & ((\comb_505|shiftRegTX\(3)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_DataBusToUART(2),
	datac => \comb_505|ALT_INV_shiftRegTX\(3),
	datad => \comb_505|ALT_INV_always0~1_combout\,
	dataf => \comb_505|ALT_INV_always0~2_combout\,
	combout => \comb_505|shiftRegTX~3_combout\);

-- Location: FF_X43_Y31_N32
\comb_505|shiftRegTX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|shiftRegTX~3_combout\,
	ena => \comb_505|shiftRegTX[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|shiftRegTX\(2));

-- Location: LABCELL_X43_Y31_N33
\comb_505|shiftRegTX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|shiftRegTX~2_combout\ = ( \comb_505|always0~2_combout\ & ( \comb_505|shiftRegTX\(2) ) ) # ( !\comb_505|always0~2_combout\ & ( (!\comb_505|always0~1_combout\ & (DataBusToUART(1))) # (\comb_505|always0~1_combout\ & ((\comb_505|shiftRegTX\(2)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DataBusToUART(1),
	datac => \comb_505|ALT_INV_shiftRegTX\(2),
	datad => \comb_505|ALT_INV_always0~1_combout\,
	dataf => \comb_505|ALT_INV_always0~2_combout\,
	combout => \comb_505|shiftRegTX~2_combout\);

-- Location: FF_X43_Y31_N34
\comb_505|shiftRegTX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|shiftRegTX~2_combout\,
	ena => \comb_505|shiftRegTX[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|shiftRegTX\(1));

-- Location: LABCELL_X43_Y31_N45
\comb_505|shiftRegTX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|shiftRegTX~0_combout\ = ( \comb_505|shiftRegTX\(1) & ( ((\comb_505|always0~1_combout\) # (DataBusToUART(0))) # (\comb_505|always0~2_combout\) ) ) # ( !\comb_505|shiftRegTX\(1) & ( (!\comb_505|always0~2_combout\ & (DataBusToUART(0) & 
-- !\comb_505|always0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_505|ALT_INV_always0~2_combout\,
	datac => ALT_INV_DataBusToUART(0),
	datad => \comb_505|ALT_INV_always0~1_combout\,
	dataf => \comb_505|ALT_INV_shiftRegTX\(1),
	combout => \comb_505|shiftRegTX~0_combout\);

-- Location: FF_X43_Y31_N47
\comb_505|shiftRegTX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|shiftRegTX~0_combout\,
	ena => \comb_505|shiftRegTX[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|shiftRegTX\(0));

-- Location: LABCELL_X43_Y31_N36
\comb_505|PinTX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_505|PinTX~2_combout\ = ( \comb_505|PinTX~q\ & ( \comb_505|always0~2_combout\ & ( (!\comb_505|shiftRegTX\(0) & !\comb_505|Equal23~1_combout\) ) ) ) # ( !\comb_505|PinTX~q\ & ( \comb_505|always0~2_combout\ & ( (!\comb_505|shiftRegTX\(0) & 
-- !\comb_505|Equal23~1_combout\) ) ) ) # ( \comb_505|PinTX~q\ & ( !\comb_505|always0~2_combout\ & ( (!\comb_505|Equal23~1_combout\ & ((!\comb_505|shiftRegTX\(0)) # (!\comb_505|always0~1_combout\))) ) ) ) # ( !\comb_505|PinTX~q\ & ( 
-- !\comb_505|always0~2_combout\ & ( (!\comb_505|Equal23~1_combout\ & ((!\comb_505|always0~1_combout\ & (\comb_505|PinTX~1_combout\)) # (\comb_505|always0~1_combout\ & ((!\comb_505|shiftRegTX\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011000000111100001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_505|ALT_INV_PinTX~1_combout\,
	datab => \comb_505|ALT_INV_shiftRegTX\(0),
	datac => \comb_505|ALT_INV_Equal23~1_combout\,
	datad => \comb_505|ALT_INV_always0~1_combout\,
	datae => \comb_505|ALT_INV_PinTX~q\,
	dataf => \comb_505|ALT_INV_always0~2_combout\,
	combout => \comb_505|PinTX~2_combout\);

-- Location: FF_X43_Y31_N37
\comb_505|PinTX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \comb_505|PinTX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_505|PinTX~q\);
END structure;


