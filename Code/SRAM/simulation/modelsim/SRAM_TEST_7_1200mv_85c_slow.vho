-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "09/30/2021 16:22:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SRAM_control IS
    PORT (
	rstn : IN std_logic;
	lrsel : IN std_logic;
	offset : IN std_logic_vector(19 DOWNTO 0);
	RW : IN std_logic;
	ADDR : OUT std_logic_vector(19 DOWNTO 0);
	sram_ce : OUT std_logic;
	sram_oe : OUT std_logic;
	sram_we : OUT std_logic;
	DATA_SRAM : INOUT std_logic_vector(15 DOWNTO 0);
	DATA_ECHO : INOUT std_logic_vector(15 DOWNTO 0);
	sram_lb : OUT std_logic;
	sram_ub : OUT std_logic
	);
END SRAM_control;

-- Design Ports Information
-- lrsel	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_ce	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_oe	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_we	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_lb	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_ub	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[2]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[7]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[8]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[9]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[10]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[11]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[12]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[13]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[14]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[15]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[5]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[6]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[7]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[8]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[9]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[10]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[11]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[13]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[14]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_ECHO[15]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstn	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[4]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[5]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[7]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[8]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[9]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[10]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[11]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[12]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[13]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[14]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[15]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[16]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[17]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[18]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- offset[19]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SRAM_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rstn : std_logic;
SIGNAL ww_lrsel : std_logic;
SIGNAL ww_offset : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_RW : std_logic;
SIGNAL ww_ADDR : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_sram_ce : std_logic;
SIGNAL ww_sram_oe : std_logic;
SIGNAL ww_sram_we : std_logic;
SIGNAL ww_sram_lb : std_logic;
SIGNAL ww_sram_ub : std_logic;
SIGNAL \RW~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lrsel~input_o\ : std_logic;
SIGNAL \DATA_SRAM[0]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[1]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[2]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[3]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[4]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[5]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[6]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[7]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[8]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[9]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[10]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[11]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[12]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[13]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[14]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[15]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[0]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[1]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[2]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[3]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[4]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[5]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[6]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[7]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[8]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[9]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[10]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[11]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[12]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[13]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[14]~input_o\ : std_logic;
SIGNAL \DATA_ECHO[15]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[0]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[1]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[2]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[3]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[4]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[5]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[6]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[7]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[8]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[9]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[10]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[11]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[12]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[13]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[14]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[15]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[0]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[1]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[2]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[3]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[4]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[5]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[6]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[7]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[8]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[9]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[10]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[11]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[12]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[13]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[14]~output_o\ : std_logic;
SIGNAL \DATA_ECHO[15]~output_o\ : std_logic;
SIGNAL \ADDR[0]~output_o\ : std_logic;
SIGNAL \ADDR[1]~output_o\ : std_logic;
SIGNAL \ADDR[2]~output_o\ : std_logic;
SIGNAL \ADDR[3]~output_o\ : std_logic;
SIGNAL \ADDR[4]~output_o\ : std_logic;
SIGNAL \ADDR[5]~output_o\ : std_logic;
SIGNAL \ADDR[6]~output_o\ : std_logic;
SIGNAL \ADDR[7]~output_o\ : std_logic;
SIGNAL \ADDR[8]~output_o\ : std_logic;
SIGNAL \ADDR[9]~output_o\ : std_logic;
SIGNAL \ADDR[10]~output_o\ : std_logic;
SIGNAL \ADDR[11]~output_o\ : std_logic;
SIGNAL \ADDR[12]~output_o\ : std_logic;
SIGNAL \ADDR[13]~output_o\ : std_logic;
SIGNAL \ADDR[14]~output_o\ : std_logic;
SIGNAL \ADDR[15]~output_o\ : std_logic;
SIGNAL \ADDR[16]~output_o\ : std_logic;
SIGNAL \ADDR[17]~output_o\ : std_logic;
SIGNAL \ADDR[18]~output_o\ : std_logic;
SIGNAL \ADDR[19]~output_o\ : std_logic;
SIGNAL \sram_ce~output_o\ : std_logic;
SIGNAL \sram_oe~output_o\ : std_logic;
SIGNAL \sram_we~output_o\ : std_logic;
SIGNAL \sram_lb~output_o\ : std_logic;
SIGNAL \sram_ub~output_o\ : std_logic;
SIGNAL \RW~input_o\ : std_logic;
SIGNAL \RW~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATA_ECHO[0]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[0]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[1]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[1]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[2]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[2]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[3]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[3]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[4]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[4]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[5]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[5]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[6]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[6]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[7]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[7]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[8]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[8]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[9]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[9]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[10]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[10]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[11]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[11]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[12]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[12]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[13]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[13]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[14]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[14]$latch~combout\ : std_logic;
SIGNAL \DATA_ECHO[15]$latch~combout\ : std_logic;
SIGNAL \DATA_SRAM[15]$latch~combout\ : std_logic;
SIGNAL \offset[0]~input_o\ : std_logic;
SIGNAL \rstn~input_o\ : std_logic;
SIGNAL \PTR[0]~19_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \offset[1]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \PTR[1]~20_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \PTR[2]~21_combout\ : std_logic;
SIGNAL \offset[2]~input_o\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \offset[3]~input_o\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \PTR[3]~22_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \offset[4]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \PTR[4]~23_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \PTR[5]~24_combout\ : std_logic;
SIGNAL \offset[5]~input_o\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \offset[6]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \PTR[6]~25_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \PTR[7]~26_combout\ : std_logic;
SIGNAL \offset[7]~input_o\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \offset[8]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \PTR[8]~27_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \PTR[9]~28_combout\ : std_logic;
SIGNAL \offset[9]~input_o\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \PTR[10]~29_combout\ : std_logic;
SIGNAL \offset[10]~input_o\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \PTR[11]~30_combout\ : std_logic;
SIGNAL \offset[11]~input_o\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \offset[12]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \PTR[12]~31_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \PTR[13]~32_combout\ : std_logic;
SIGNAL \offset[13]~input_o\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \offset[14]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \PTR[14]~33_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \offset[15]~input_o\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \PTR[15]~34_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \offset[16]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \PTR[16]~35_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \offset[17]~input_o\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \PTR[17]~36_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \offset[18]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \PTR[18]~37_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \PTR[19]~38_combout\ : std_logic;
SIGNAL \offset[19]~input_o\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;

BEGIN

ww_rstn <= rstn;
ww_lrsel <= lrsel;
ww_offset <= offset;
ww_RW <= RW;
ADDR <= ww_ADDR;
sram_ce <= ww_sram_ce;
sram_oe <= ww_sram_oe;
sram_we <= ww_sram_we;
sram_lb <= ww_sram_lb;
sram_ub <= ww_sram_ub;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RW~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RW~input_o\);

-- Location: IOOBUF_X5_Y0_N9
\DATA_SRAM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[0]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\DATA_SRAM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[1]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\DATA_SRAM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[2]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\DATA_SRAM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[3]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\DATA_SRAM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[4]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\DATA_SRAM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[5]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\DATA_SRAM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[6]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\DATA_SRAM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[7]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\DATA_SRAM[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[8]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[8]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\DATA_SRAM[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[9]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[9]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\DATA_SRAM[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[10]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\DATA_SRAM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[11]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\DATA_SRAM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[12]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\DATA_SRAM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[13]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\DATA_SRAM[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[14]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\DATA_SRAM[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_SRAM[15]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[15]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\DATA_ECHO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[0]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\DATA_ECHO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[1]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\DATA_ECHO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[2]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\DATA_ECHO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[3]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[3]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\DATA_ECHO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[4]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[4]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\DATA_ECHO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[5]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\DATA_ECHO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[6]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\DATA_ECHO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[7]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\DATA_ECHO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[8]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\DATA_ECHO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[9]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[9]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\DATA_ECHO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[10]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\DATA_ECHO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[11]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[11]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\DATA_ECHO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[12]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[12]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\DATA_ECHO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[13]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[13]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\DATA_ECHO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[14]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[14]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\DATA_ECHO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATA_ECHO[15]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_ECHO[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \ADDR[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \ADDR[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \ADDR[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~6_combout\,
	devoe => ww_devoe,
	o => \ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~8_combout\,
	devoe => ww_devoe,
	o => \ADDR[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~10_combout\,
	devoe => ww_devoe,
	o => \ADDR[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~12_combout\,
	devoe => ww_devoe,
	o => \ADDR[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~14_combout\,
	devoe => ww_devoe,
	o => \ADDR[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~16_combout\,
	devoe => ww_devoe,
	o => \ADDR[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~18_combout\,
	devoe => ww_devoe,
	o => \ADDR[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~20_combout\,
	devoe => ww_devoe,
	o => \ADDR[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~22_combout\,
	devoe => ww_devoe,
	o => \ADDR[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~24_combout\,
	devoe => ww_devoe,
	o => \ADDR[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~26_combout\,
	devoe => ww_devoe,
	o => \ADDR[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~28_combout\,
	devoe => ww_devoe,
	o => \ADDR[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~30_combout\,
	devoe => ww_devoe,
	o => \ADDR[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~32_combout\,
	devoe => ww_devoe,
	o => \ADDR[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~34_combout\,
	devoe => ww_devoe,
	o => \ADDR[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~36_combout\,
	devoe => ww_devoe,
	o => \ADDR[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~38_combout\,
	devoe => ww_devoe,
	o => \ADDR[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\sram_ce~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_ce~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\sram_oe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_oe~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\sram_we~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RW~input_o\,
	devoe => ww_devoe,
	o => \sram_we~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\sram_lb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_lb~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\sram_ub~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_ub~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\RW~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RW,
	o => \RW~input_o\);

-- Location: CLKCTRL_G4
\RW~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RW~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RW~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y1_N6
\DATA_ECHO[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[0]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[0]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_ECHO[0]$latch~combout\,
	datac => \DATA_SRAM[0]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[0]$latch~combout\);

-- Location: LCCOMB_X1_Y1_N8
\DATA_SRAM[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[0]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[0]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[0]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[0]$latch~combout\,
	combout => \DATA_SRAM[0]$latch~combout\);

-- Location: LCCOMB_X1_Y8_N6
\DATA_ECHO[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[1]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[1]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_ECHO[1]$latch~combout\,
	datac => \DATA_SRAM[1]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[1]$latch~combout\);

-- Location: LCCOMB_X1_Y8_N8
\DATA_SRAM[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[1]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[1]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[1]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[1]$latch~combout\,
	combout => \DATA_SRAM[1]$latch~combout\);

-- Location: LCCOMB_X5_Y8_N18
\DATA_ECHO[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[2]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[2]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_ECHO[2]$latch~combout\,
	datac => \DATA_SRAM[2]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[2]$latch~combout\);

-- Location: LCCOMB_X5_Y8_N8
\DATA_SRAM[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[2]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[2]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[2]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[2]$latch~combout\,
	combout => \DATA_SRAM[2]$latch~combout\);

-- Location: LCCOMB_X10_Y1_N2
\DATA_ECHO[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[3]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[3]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_ECHO[3]$latch~combout\,
	datac => \DATA_SRAM[3]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[3]$latch~combout\);

-- Location: LCCOMB_X10_Y1_N8
\DATA_SRAM[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[3]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[3]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[3]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[3]$latch~combout\,
	combout => \DATA_SRAM[3]$latch~combout\);

-- Location: LCCOMB_X6_Y8_N6
\DATA_ECHO[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[4]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[4]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_ECHO[4]$latch~combout\,
	datac => \DATA_SRAM[4]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[4]$latch~combout\);

-- Location: LCCOMB_X6_Y8_N8
\DATA_SRAM[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[4]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[4]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[4]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[4]$latch~combout\,
	combout => \DATA_SRAM[4]$latch~combout\);

-- Location: LCCOMB_X19_Y1_N2
\DATA_ECHO[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[5]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[5]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_ECHO[5]$latch~combout\,
	datac => \DATA_SRAM[5]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[5]$latch~combout\);

-- Location: LCCOMB_X19_Y1_N8
\DATA_SRAM[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[5]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[5]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[5]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[5]$latch~combout\,
	combout => \DATA_SRAM[5]$latch~combout\);

-- Location: LCCOMB_X12_Y1_N2
\DATA_ECHO[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[6]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[6]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_ECHO[6]$latch~combout\,
	datac => \DATA_SRAM[6]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[6]$latch~combout\);

-- Location: LCCOMB_X12_Y1_N8
\DATA_SRAM[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[6]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[6]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[6]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[6]$latch~combout\,
	combout => \DATA_SRAM[6]$latch~combout\);

-- Location: LCCOMB_X29_Y1_N2
\DATA_ECHO[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[7]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[7]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_ECHO[7]$latch~combout\,
	datac => \DATA_SRAM[7]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[7]$latch~combout\);

-- Location: LCCOMB_X29_Y1_N8
\DATA_SRAM[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[7]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[7]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[7]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[7]$latch~combout\,
	combout => \DATA_SRAM[7]$latch~combout\);

-- Location: LCCOMB_X1_Y21_N6
\DATA_ECHO[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[8]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[8]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_ECHO[8]$latch~combout\,
	datac => \DATA_SRAM[8]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[8]$latch~combout\);

-- Location: LCCOMB_X1_Y21_N8
\DATA_SRAM[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[8]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[8]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[8]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[8]$latch~combout\,
	combout => \DATA_SRAM[8]$latch~combout\);

-- Location: LCCOMB_X1_Y22_N2
\DATA_ECHO[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[9]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[9]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_ECHO[9]$latch~combout\,
	datac => \DATA_SRAM[9]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[9]$latch~combout\);

-- Location: LCCOMB_X1_Y22_N8
\DATA_SRAM[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[9]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[9]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[9]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[9]$latch~combout\,
	combout => \DATA_SRAM[9]$latch~combout\);

-- Location: LCCOMB_X1_Y18_N6
\DATA_ECHO[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[10]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[10]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_ECHO[10]$latch~combout\,
	datac => \DATA_SRAM[10]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[10]$latch~combout\);

-- Location: LCCOMB_X1_Y18_N8
\DATA_SRAM[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[10]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[10]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[10]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[10]$latch~combout\,
	combout => \DATA_SRAM[10]$latch~combout\);

-- Location: LCCOMB_X1_Y16_N6
\DATA_ECHO[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[11]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[11]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_ECHO[11]$latch~combout\,
	datac => \DATA_SRAM[11]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[11]$latch~combout\);

-- Location: LCCOMB_X1_Y16_N8
\DATA_SRAM[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[11]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[11]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[11]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[11]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[11]$latch~combout\,
	combout => \DATA_SRAM[11]$latch~combout\);

-- Location: LCCOMB_X1_Y11_N6
\DATA_ECHO[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[12]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[12]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_ECHO[12]$latch~combout\,
	datac => \DATA_SRAM[12]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[12]$latch~combout\);

-- Location: LCCOMB_X1_Y11_N8
\DATA_SRAM[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[12]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[12]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[12]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[12]$latch~combout\,
	combout => \DATA_SRAM[12]$latch~combout\);

-- Location: LCCOMB_X3_Y1_N6
\DATA_ECHO[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[13]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[13]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_ECHO[13]$latch~combout\,
	datac => \DATA_SRAM[13]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[13]$latch~combout\);

-- Location: LCCOMB_X3_Y1_N4
\DATA_SRAM[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[13]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[13]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[13]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[13]$latch~combout\,
	combout => \DATA_SRAM[13]$latch~combout\);

-- Location: LCCOMB_X4_Y8_N18
\DATA_ECHO[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[14]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[14]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_ECHO[14]$latch~combout\,
	datac => \DATA_SRAM[14]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[14]$latch~combout\);

-- Location: LCCOMB_X4_Y8_N8
\DATA_SRAM[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[14]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[14]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[14]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[14]$latch~combout\,
	combout => \DATA_SRAM[14]$latch~combout\);

-- Location: LCCOMB_X3_Y8_N2
\DATA_ECHO[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_ECHO[15]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_SRAM[15]$latch~combout\))) # (!GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_ECHO[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_ECHO[15]$latch~combout\,
	datac => \DATA_SRAM[15]$latch~combout\,
	datad => \RW~inputclkctrl_outclk\,
	combout => \DATA_ECHO[15]$latch~combout\);

-- Location: LCCOMB_X3_Y8_N4
\DATA_SRAM[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_SRAM[15]$latch~combout\ = (GLOBAL(\RW~inputclkctrl_outclk\) & (\DATA_SRAM[15]$latch~combout\)) # (!GLOBAL(\RW~inputclkctrl_outclk\) & ((\DATA_ECHO[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_SRAM[15]$latch~combout\,
	datac => \RW~inputclkctrl_outclk\,
	datad => \DATA_ECHO[15]$latch~combout\,
	combout => \DATA_SRAM[15]$latch~combout\);

-- Location: IOIBUF_X13_Y0_N22
\offset[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(0),
	o => \offset[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\rstn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstn,
	o => \rstn~input_o\);

-- Location: LCCOMB_X8_Y3_N4
\PTR[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[0]~19_combout\ = (!\PTR[0]~19_combout\ & \rstn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PTR[0]~19_combout\,
	datad => \rstn~input_o\,
	combout => \PTR[0]~19_combout\);

-- Location: LCCOMB_X8_Y3_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\offset[0]~input_o\ & (\PTR[0]~19_combout\ $ (VCC))) # (!\offset[0]~input_o\ & ((\PTR[0]~19_combout\) # (GND)))
-- \Add1~1\ = CARRY((\PTR[0]~19_combout\) # (!\offset[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \offset[0]~input_o\,
	datab => \PTR[0]~19_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X0_Y11_N22
\offset[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(1),
	o => \offset[1]~input_o\);

-- Location: LCCOMB_X9_Y3_N14
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\PTR[0]~19_combout\ & (\PTR[1]~20_combout\ $ (VCC))) # (!\PTR[0]~19_combout\ & (\PTR[1]~20_combout\ & VCC))
-- \Add0~2\ = CARRY((\PTR[0]~19_combout\ & \PTR[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PTR[0]~19_combout\,
	datab => \PTR[1]~20_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X9_Y3_N8
\PTR[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[1]~20_combout\ = (\Add0~1_combout\ & \rstn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~1_combout\,
	datad => \rstn~input_o\,
	combout => \PTR[1]~20_combout\);

-- Location: LCCOMB_X8_Y3_N14
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\offset[1]~input_o\ & ((\PTR[1]~20_combout\ & (!\Add1~1\)) # (!\PTR[1]~20_combout\ & ((\Add1~1\) # (GND))))) # (!\offset[1]~input_o\ & ((\PTR[1]~20_combout\ & (\Add1~1\ & VCC)) # (!\PTR[1]~20_combout\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\offset[1]~input_o\ & ((!\Add1~1\) # (!\PTR[1]~20_combout\))) # (!\offset[1]~input_o\ & (!\PTR[1]~20_combout\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[1]~input_o\,
	datab => \PTR[1]~20_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X9_Y3_N16
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~2\ & (((!\Add0~3_combout\)) # (!\rstn~input_o\))) # (!\Add0~2\ & (((\rstn~input_o\ & \Add0~3_combout\)) # (GND)))
-- \Add0~4\ = CARRY(((!\Add0~2\) # (!\Add0~3_combout\)) # (!\rstn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X8_Y3_N10
\PTR[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[2]~21_combout\ = (\rstn~input_o\ & \Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~3_combout\,
	combout => \PTR[2]~21_combout\);

-- Location: IOIBUF_X0_Y10_N22
\offset[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(2),
	o => \offset[2]~input_o\);

-- Location: LCCOMB_X8_Y3_N16
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\PTR[2]~21_combout\ $ (\offset[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\PTR[2]~21_combout\ & ((!\Add1~3\) # (!\offset[2]~input_o\))) # (!\PTR[2]~21_combout\ & (!\offset[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PTR[2]~21_combout\,
	datab => \offset[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: IOIBUF_X0_Y14_N1
\offset[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(3),
	o => \offset[3]~input_o\);

-- Location: LCCOMB_X9_Y3_N18
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~4\ & (\rstn~input_o\ & (\Add0~5_combout\ & VCC))) # (!\Add0~4\ & ((((\rstn~input_o\ & \Add0~5_combout\)))))
-- \Add0~6\ = CARRY((\rstn~input_o\ & (\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X9_Y3_N10
\PTR[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[3]~22_combout\ = (\rstn~input_o\ & \Add0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~5_combout\,
	combout => \PTR[3]~22_combout\);

-- Location: LCCOMB_X8_Y3_N18
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\offset[3]~input_o\ & ((\PTR[3]~22_combout\ & (!\Add1~5\)) # (!\PTR[3]~22_combout\ & ((\Add1~5\) # (GND))))) # (!\offset[3]~input_o\ & ((\PTR[3]~22_combout\ & (\Add1~5\ & VCC)) # (!\PTR[3]~22_combout\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\offset[3]~input_o\ & ((!\Add1~5\) # (!\PTR[3]~22_combout\))) # (!\offset[3]~input_o\ & (!\PTR[3]~22_combout\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[3]~input_o\,
	datab => \PTR[3]~22_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: IOIBUF_X16_Y0_N22
\offset[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(4),
	o => \offset[4]~input_o\);

-- Location: LCCOMB_X9_Y3_N20
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~6\ & (((!\Add0~7_combout\)) # (!\rstn~input_o\))) # (!\Add0~6\ & (((\rstn~input_o\ & \Add0~7_combout\)) # (GND)))
-- \Add0~8\ = CARRY(((!\Add0~6\) # (!\Add0~7_combout\)) # (!\rstn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X9_Y3_N12
\PTR[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[4]~23_combout\ = (\rstn~input_o\ & \Add0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~7_combout\,
	combout => \PTR[4]~23_combout\);

-- Location: LCCOMB_X8_Y3_N20
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\offset[4]~input_o\ $ (\PTR[4]~23_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\offset[4]~input_o\ & (\PTR[4]~23_combout\ & !\Add1~7\)) # (!\offset[4]~input_o\ & ((\PTR[4]~23_combout\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[4]~input_o\,
	datab => \PTR[4]~23_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X9_Y3_N22
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8\ & (\rstn~input_o\ & (\Add0~9_combout\ & VCC))) # (!\Add0~8\ & ((((\rstn~input_o\ & \Add0~9_combout\)))))
-- \Add0~10\ = CARRY((\rstn~input_o\ & (\Add0~9_combout\ & !\Add0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~9_combout\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X8_Y3_N8
\PTR[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[5]~24_combout\ = (\rstn~input_o\ & \Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~9_combout\,
	combout => \PTR[5]~24_combout\);

-- Location: IOIBUF_X31_Y0_N1
\offset[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(5),
	o => \offset[5]~input_o\);

-- Location: LCCOMB_X8_Y3_N22
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\PTR[5]~24_combout\ & ((\offset[5]~input_o\ & (!\Add1~9\)) # (!\offset[5]~input_o\ & (\Add1~9\ & VCC)))) # (!\PTR[5]~24_combout\ & ((\offset[5]~input_o\ & ((\Add1~9\) # (GND))) # (!\offset[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\PTR[5]~24_combout\ & (\offset[5]~input_o\ & !\Add1~9\)) # (!\PTR[5]~24_combout\ & ((\offset[5]~input_o\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PTR[5]~24_combout\,
	datab => \offset[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: IOIBUF_X31_Y0_N8
\offset[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(6),
	o => \offset[6]~input_o\);

-- Location: LCCOMB_X9_Y3_N24
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~10\ & (((!\Add0~11_combout\)) # (!\rstn~input_o\))) # (!\Add0~10\ & (((\rstn~input_o\ & \Add0~11_combout\)) # (GND)))
-- \Add0~12\ = CARRY(((!\Add0~10\) # (!\Add0~11_combout\)) # (!\rstn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X8_Y3_N2
\PTR[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[6]~25_combout\ = (\rstn~input_o\ & \Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~11_combout\,
	combout => \PTR[6]~25_combout\);

-- Location: LCCOMB_X8_Y3_N24
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\offset[6]~input_o\ $ (\PTR[6]~25_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\offset[6]~input_o\ & (\PTR[6]~25_combout\ & !\Add1~11\)) # (!\offset[6]~input_o\ & ((\PTR[6]~25_combout\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[6]~input_o\,
	datab => \PTR[6]~25_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X9_Y3_N26
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12\ & (\Add0~13_combout\ & (\rstn~input_o\ & VCC))) # (!\Add0~12\ & ((((\Add0~13_combout\ & \rstn~input_o\)))))
-- \Add0~14\ = CARRY((\Add0~13_combout\ & (\rstn~input_o\ & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \rstn~input_o\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X9_Y3_N6
\PTR[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[7]~26_combout\ = (\Add0~13_combout\ & \rstn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~13_combout\,
	datad => \rstn~input_o\,
	combout => \PTR[7]~26_combout\);

-- Location: IOIBUF_X0_Y14_N8
\offset[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(7),
	o => \offset[7]~input_o\);

-- Location: LCCOMB_X8_Y3_N26
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\PTR[7]~26_combout\ & ((\offset[7]~input_o\ & (!\Add1~13\)) # (!\offset[7]~input_o\ & (\Add1~13\ & VCC)))) # (!\PTR[7]~26_combout\ & ((\offset[7]~input_o\ & ((\Add1~13\) # (GND))) # (!\offset[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\PTR[7]~26_combout\ & (\offset[7]~input_o\ & !\Add1~13\)) # (!\PTR[7]~26_combout\ & ((\offset[7]~input_o\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PTR[7]~26_combout\,
	datab => \offset[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: IOIBUF_X0_Y11_N15
\offset[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(8),
	o => \offset[8]~input_o\);

-- Location: LCCOMB_X9_Y3_N28
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14\ & (((!\Add0~15_combout\)) # (!\rstn~input_o\))) # (!\Add0~14\ & (((\rstn~input_o\ & \Add0~15_combout\)) # (GND)))
-- \Add0~16\ = CARRY(((!\Add0~14\) # (!\Add0~15_combout\)) # (!\rstn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~15_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X8_Y3_N0
\PTR[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[8]~27_combout\ = (\rstn~input_o\ & \Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~15_combout\,
	combout => \PTR[8]~27_combout\);

-- Location: LCCOMB_X8_Y3_N28
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\offset[8]~input_o\ $ (\PTR[8]~27_combout\ $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\offset[8]~input_o\ & (\PTR[8]~27_combout\ & !\Add1~15\)) # (!\offset[8]~input_o\ & ((\PTR[8]~27_combout\) # (!\Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[8]~input_o\,
	datab => \PTR[8]~27_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X9_Y3_N30
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~16\ & (\Add0~17_combout\ & (\rstn~input_o\ & VCC))) # (!\Add0~16\ & ((((\Add0~17_combout\ & \rstn~input_o\)))))
-- \Add0~18\ = CARRY((\Add0~17_combout\ & (\rstn~input_o\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \rstn~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X9_Y3_N4
\PTR[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[9]~28_combout\ = (\Add0~17_combout\ & \rstn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	datad => \rstn~input_o\,
	combout => \PTR[9]~28_combout\);

-- Location: IOIBUF_X0_Y10_N15
\offset[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(9),
	o => \offset[9]~input_o\);

-- Location: LCCOMB_X8_Y3_N30
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\PTR[9]~28_combout\ & ((\offset[9]~input_o\ & (!\Add1~17\)) # (!\offset[9]~input_o\ & (\Add1~17\ & VCC)))) # (!\PTR[9]~28_combout\ & ((\offset[9]~input_o\ & ((\Add1~17\) # (GND))) # (!\offset[9]~input_o\ & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\PTR[9]~28_combout\ & (\offset[9]~input_o\ & !\Add1~17\)) # (!\PTR[9]~28_combout\ & ((\offset[9]~input_o\) # (!\Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PTR[9]~28_combout\,
	datab => \offset[9]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X9_Y2_N0
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~18\ & (((!\Add0~19_combout\)) # (!\rstn~input_o\))) # (!\Add0~18\ & (((\rstn~input_o\ & \Add0~19_combout\)) # (GND)))
-- \Add0~20\ = CARRY(((!\Add0~18\) # (!\Add0~19_combout\)) # (!\rstn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X8_Y2_N20
\PTR[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[10]~29_combout\ = (\rstn~input_o\ & \Add0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rstn~input_o\,
	datac => \Add0~19_combout\,
	combout => \PTR[10]~29_combout\);

-- Location: IOIBUF_X20_Y0_N1
\offset[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(10),
	o => \offset[10]~input_o\);

-- Location: LCCOMB_X8_Y2_N0
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\PTR[10]~29_combout\ $ (\offset[10]~input_o\ $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\PTR[10]~29_combout\ & ((!\Add1~19\) # (!\offset[10]~input_o\))) # (!\PTR[10]~29_combout\ & (!\offset[10]~input_o\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PTR[10]~29_combout\,
	datab => \offset[10]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X9_Y2_N2
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20\ & (\rstn~input_o\ & (\Add0~21_combout\ & VCC))) # (!\Add0~20\ & ((((\rstn~input_o\ & \Add0~21_combout\)))))
-- \Add0~22\ = CARRY((\rstn~input_o\ & (\Add0~21_combout\ & !\Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~21_combout\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X8_Y2_N26
\PTR[11]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[11]~30_combout\ = (\rstn~input_o\ & \Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rstn~input_o\,
	datad => \Add0~21_combout\,
	combout => \PTR[11]~30_combout\);

-- Location: IOIBUF_X33_Y0_N8
\offset[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(11),
	o => \offset[11]~input_o\);

-- Location: LCCOMB_X8_Y2_N2
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\PTR[11]~30_combout\ & ((\offset[11]~input_o\ & (!\Add1~21\)) # (!\offset[11]~input_o\ & (\Add1~21\ & VCC)))) # (!\PTR[11]~30_combout\ & ((\offset[11]~input_o\ & ((\Add1~21\) # (GND))) # (!\offset[11]~input_o\ & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\PTR[11]~30_combout\ & (\offset[11]~input_o\ & !\Add1~21\)) # (!\PTR[11]~30_combout\ & ((\offset[11]~input_o\) # (!\Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PTR[11]~30_combout\,
	datab => \offset[11]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: IOIBUF_X18_Y0_N1
\offset[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(12),
	o => \offset[12]~input_o\);

-- Location: LCCOMB_X9_Y2_N4
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~22\ & (((!\Add0~23_combout\)) # (!\rstn~input_o\))) # (!\Add0~22\ & (((\rstn~input_o\ & \Add0~23_combout\)) # (GND)))
-- \Add0~24\ = CARRY(((!\Add0~22\) # (!\Add0~23_combout\)) # (!\rstn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X8_Y2_N24
\PTR[12]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[12]~31_combout\ = (\rstn~input_o\ & \Add0~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rstn~input_o\,
	datad => \Add0~23_combout\,
	combout => \PTR[12]~31_combout\);

-- Location: LCCOMB_X8_Y2_N4
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\offset[12]~input_o\ $ (\PTR[12]~31_combout\ $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\offset[12]~input_o\ & (\PTR[12]~31_combout\ & !\Add1~23\)) # (!\offset[12]~input_o\ & ((\PTR[12]~31_combout\) # (!\Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[12]~input_o\,
	datab => \PTR[12]~31_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X9_Y2_N6
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~24\ & (\Add0~25_combout\ & (\rstn~input_o\ & VCC))) # (!\Add0~24\ & ((((\Add0~25_combout\ & \rstn~input_o\)))))
-- \Add0~26\ = CARRY((\Add0~25_combout\ & (\rstn~input_o\ & !\Add0~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \rstn~input_o\,
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X9_Y2_N20
\PTR[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[13]~32_combout\ = (\rstn~input_o\ & \Add0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~25_combout\,
	combout => \PTR[13]~32_combout\);

-- Location: IOIBUF_X29_Y0_N22
\offset[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(13),
	o => \offset[13]~input_o\);

-- Location: LCCOMB_X8_Y2_N6
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\PTR[13]~32_combout\ & ((\offset[13]~input_o\ & (!\Add1~25\)) # (!\offset[13]~input_o\ & (\Add1~25\ & VCC)))) # (!\PTR[13]~32_combout\ & ((\offset[13]~input_o\ & ((\Add1~25\) # (GND))) # (!\offset[13]~input_o\ & (!\Add1~25\))))
-- \Add1~27\ = CARRY((\PTR[13]~32_combout\ & (\offset[13]~input_o\ & !\Add1~25\)) # (!\PTR[13]~32_combout\ & ((\offset[13]~input_o\) # (!\Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PTR[13]~32_combout\,
	datab => \offset[13]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: IOIBUF_X18_Y0_N22
\offset[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(14),
	o => \offset[14]~input_o\);

-- Location: LCCOMB_X9_Y2_N8
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26\ & (((!\Add0~27_combout\)) # (!\rstn~input_o\))) # (!\Add0~26\ & (((\rstn~input_o\ & \Add0~27_combout\)) # (GND)))
-- \Add0~28\ = CARRY(((!\Add0~26\) # (!\Add0~27_combout\)) # (!\rstn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~27_combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X8_Y2_N30
\PTR[14]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[14]~33_combout\ = (\rstn~input_o\ & \Add0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rstn~input_o\,
	datac => \Add0~27_combout\,
	combout => \PTR[14]~33_combout\);

-- Location: LCCOMB_X8_Y2_N8
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\offset[14]~input_o\ $ (\PTR[14]~33_combout\ $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\offset[14]~input_o\ & (\PTR[14]~33_combout\ & !\Add1~27\)) # (!\offset[14]~input_o\ & ((\PTR[14]~33_combout\) # (!\Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[14]~input_o\,
	datab => \PTR[14]~33_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: IOIBUF_X5_Y0_N22
\offset[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(15),
	o => \offset[15]~input_o\);

-- Location: LCCOMB_X9_Y2_N10
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~28\ & (\Add0~29_combout\ & (\rstn~input_o\ & VCC))) # (!\Add0~28\ & ((((\Add0~29_combout\ & \rstn~input_o\)))))
-- \Add0~30\ = CARRY((\Add0~29_combout\ & (\rstn~input_o\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \rstn~input_o\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X9_Y2_N26
\PTR[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[15]~34_combout\ = (\rstn~input_o\ & \Add0~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~29_combout\,
	combout => \PTR[15]~34_combout\);

-- Location: LCCOMB_X8_Y2_N10
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\offset[15]~input_o\ & ((\PTR[15]~34_combout\ & (!\Add1~29\)) # (!\PTR[15]~34_combout\ & ((\Add1~29\) # (GND))))) # (!\offset[15]~input_o\ & ((\PTR[15]~34_combout\ & (\Add1~29\ & VCC)) # (!\PTR[15]~34_combout\ & (!\Add1~29\))))
-- \Add1~31\ = CARRY((\offset[15]~input_o\ & ((!\Add1~29\) # (!\PTR[15]~34_combout\))) # (!\offset[15]~input_o\ & (!\PTR[15]~34_combout\ & !\Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[15]~input_o\,
	datab => \PTR[15]~34_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: IOIBUF_X18_Y0_N8
\offset[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(16),
	o => \offset[16]~input_o\);

-- Location: LCCOMB_X9_Y2_N12
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~30\ & (((!\rstn~input_o\)) # (!\Add0~31_combout\))) # (!\Add0~30\ & (((\Add0~31_combout\ & \rstn~input_o\)) # (GND)))
-- \Add0~32\ = CARRY(((!\Add0~30\) # (!\rstn~input_o\)) # (!\Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \rstn~input_o\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X9_Y2_N24
\PTR[16]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[16]~35_combout\ = (\rstn~input_o\ & \Add0~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~31_combout\,
	combout => \PTR[16]~35_combout\);

-- Location: LCCOMB_X8_Y2_N12
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\offset[16]~input_o\ $ (\PTR[16]~35_combout\ $ (\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\offset[16]~input_o\ & (\PTR[16]~35_combout\ & !\Add1~31\)) # (!\offset[16]~input_o\ & ((\PTR[16]~35_combout\) # (!\Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[16]~input_o\,
	datab => \PTR[16]~35_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: IOIBUF_X7_Y0_N8
\offset[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(17),
	o => \offset[17]~input_o\);

-- Location: LCCOMB_X9_Y2_N14
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~32\ & (\rstn~input_o\ & (\Add0~33_combout\ & VCC))) # (!\Add0~32\ & ((((\rstn~input_o\ & \Add0~33_combout\)))))
-- \Add0~34\ = CARRY((\rstn~input_o\ & (\Add0~33_combout\ & !\Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~33_combout\,
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X8_Y2_N28
\PTR[17]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[17]~36_combout\ = (\rstn~input_o\ & \Add0~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rstn~input_o\,
	datac => \Add0~33_combout\,
	combout => \PTR[17]~36_combout\);

-- Location: LCCOMB_X8_Y2_N14
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\offset[17]~input_o\ & ((\PTR[17]~36_combout\ & (!\Add1~33\)) # (!\PTR[17]~36_combout\ & ((\Add1~33\) # (GND))))) # (!\offset[17]~input_o\ & ((\PTR[17]~36_combout\ & (\Add1~33\ & VCC)) # (!\PTR[17]~36_combout\ & (!\Add1~33\))))
-- \Add1~35\ = CARRY((\offset[17]~input_o\ & ((!\Add1~33\) # (!\PTR[17]~36_combout\))) # (!\offset[17]~input_o\ & (!\PTR[17]~36_combout\ & !\Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[17]~input_o\,
	datab => \PTR[17]~36_combout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: IOIBUF_X33_Y0_N1
\offset[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(18),
	o => \offset[18]~input_o\);

-- Location: LCCOMB_X9_Y2_N16
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\Add0~34\ & (((!\Add0~35_combout\)) # (!\rstn~input_o\))) # (!\Add0~34\ & (((\rstn~input_o\ & \Add0~35_combout\)) # (GND)))
-- \Add0~36\ = CARRY(((!\Add0~34\) # (!\Add0~35_combout\)) # (!\rstn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datab => \Add0~35_combout\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X9_Y2_N30
\PTR[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[18]~37_combout\ = (\rstn~input_o\ & \Add0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~35_combout\,
	combout => \PTR[18]~37_combout\);

-- Location: LCCOMB_X8_Y2_N16
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\offset[18]~input_o\ $ (\PTR[18]~37_combout\ $ (\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\offset[18]~input_o\ & (\PTR[18]~37_combout\ & !\Add1~35\)) # (!\offset[18]~input_o\ & ((\PTR[18]~37_combout\) # (!\Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset[18]~input_o\,
	datab => \PTR[18]~37_combout\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X9_Y2_N18
\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = \Add0~36\ $ (!\PTR[19]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PTR[19]~38_combout\,
	cin => \Add0~36\,
	combout => \Add0~37_combout\);

-- Location: LCCOMB_X9_Y2_N28
\PTR[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PTR[19]~38_combout\ = (\rstn~input_o\ & \Add0~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rstn~input_o\,
	datad => \Add0~37_combout\,
	combout => \PTR[19]~38_combout\);

-- Location: IOIBUF_X16_Y0_N8
\offset[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_offset(19),
	o => \offset[19]~input_o\);

-- Location: LCCOMB_X8_Y2_N18
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = \PTR[19]~38_combout\ $ (\Add1~37\ $ (!\offset[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PTR[19]~38_combout\,
	datad => \offset[19]~input_o\,
	cin => \Add1~37\,
	combout => \Add1~38_combout\);

-- Location: IOIBUF_X0_Y36_N22
\lrsel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lrsel,
	o => \lrsel~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\DATA_SRAM[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(0),
	o => \DATA_SRAM[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\DATA_SRAM[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(1),
	o => \DATA_SRAM[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\DATA_SRAM[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(2),
	o => \DATA_SRAM[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\DATA_SRAM[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(3),
	o => \DATA_SRAM[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\DATA_SRAM[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(4),
	o => \DATA_SRAM[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\DATA_SRAM[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(5),
	o => \DATA_SRAM[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\DATA_SRAM[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(6),
	o => \DATA_SRAM[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\DATA_SRAM[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(7),
	o => \DATA_SRAM[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\DATA_SRAM[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(8),
	o => \DATA_SRAM[8]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\DATA_SRAM[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(9),
	o => \DATA_SRAM[9]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\DATA_SRAM[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(10),
	o => \DATA_SRAM[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\DATA_SRAM[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(11),
	o => \DATA_SRAM[11]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\DATA_SRAM[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(12),
	o => \DATA_SRAM[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\DATA_SRAM[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(13),
	o => \DATA_SRAM[13]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\DATA_SRAM[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(14),
	o => \DATA_SRAM[14]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\DATA_SRAM[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_SRAM(15),
	o => \DATA_SRAM[15]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\DATA_ECHO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(0),
	o => \DATA_ECHO[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\DATA_ECHO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(1),
	o => \DATA_ECHO[1]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\DATA_ECHO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(2),
	o => \DATA_ECHO[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\DATA_ECHO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(3),
	o => \DATA_ECHO[3]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\DATA_ECHO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(4),
	o => \DATA_ECHO[4]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\DATA_ECHO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(5),
	o => \DATA_ECHO[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\DATA_ECHO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(6),
	o => \DATA_ECHO[6]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\DATA_ECHO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(7),
	o => \DATA_ECHO[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\DATA_ECHO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(8),
	o => \DATA_ECHO[8]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\DATA_ECHO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(9),
	o => \DATA_ECHO[9]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\DATA_ECHO[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(10),
	o => \DATA_ECHO[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\DATA_ECHO[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(11),
	o => \DATA_ECHO[11]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\DATA_ECHO[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(12),
	o => \DATA_ECHO[12]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\DATA_ECHO[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(13),
	o => \DATA_ECHO[13]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\DATA_ECHO[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(14),
	o => \DATA_ECHO[14]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\DATA_ECHO[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_ECHO(15),
	o => \DATA_ECHO[15]~input_o\);

ww_ADDR(0) <= \ADDR[0]~output_o\;

ww_ADDR(1) <= \ADDR[1]~output_o\;

ww_ADDR(2) <= \ADDR[2]~output_o\;

ww_ADDR(3) <= \ADDR[3]~output_o\;

ww_ADDR(4) <= \ADDR[4]~output_o\;

ww_ADDR(5) <= \ADDR[5]~output_o\;

ww_ADDR(6) <= \ADDR[6]~output_o\;

ww_ADDR(7) <= \ADDR[7]~output_o\;

ww_ADDR(8) <= \ADDR[8]~output_o\;

ww_ADDR(9) <= \ADDR[9]~output_o\;

ww_ADDR(10) <= \ADDR[10]~output_o\;

ww_ADDR(11) <= \ADDR[11]~output_o\;

ww_ADDR(12) <= \ADDR[12]~output_o\;

ww_ADDR(13) <= \ADDR[13]~output_o\;

ww_ADDR(14) <= \ADDR[14]~output_o\;

ww_ADDR(15) <= \ADDR[15]~output_o\;

ww_ADDR(16) <= \ADDR[16]~output_o\;

ww_ADDR(17) <= \ADDR[17]~output_o\;

ww_ADDR(18) <= \ADDR[18]~output_o\;

ww_ADDR(19) <= \ADDR[19]~output_o\;

ww_sram_ce <= \sram_ce~output_o\;

ww_sram_oe <= \sram_oe~output_o\;

ww_sram_we <= \sram_we~output_o\;

ww_sram_lb <= \sram_lb~output_o\;

ww_sram_ub <= \sram_ub~output_o\;

DATA_SRAM(0) <= \DATA_SRAM[0]~output_o\;

DATA_SRAM(1) <= \DATA_SRAM[1]~output_o\;

DATA_SRAM(2) <= \DATA_SRAM[2]~output_o\;

DATA_SRAM(3) <= \DATA_SRAM[3]~output_o\;

DATA_SRAM(4) <= \DATA_SRAM[4]~output_o\;

DATA_SRAM(5) <= \DATA_SRAM[5]~output_o\;

DATA_SRAM(6) <= \DATA_SRAM[6]~output_o\;

DATA_SRAM(7) <= \DATA_SRAM[7]~output_o\;

DATA_SRAM(8) <= \DATA_SRAM[8]~output_o\;

DATA_SRAM(9) <= \DATA_SRAM[9]~output_o\;

DATA_SRAM(10) <= \DATA_SRAM[10]~output_o\;

DATA_SRAM(11) <= \DATA_SRAM[11]~output_o\;

DATA_SRAM(12) <= \DATA_SRAM[12]~output_o\;

DATA_SRAM(13) <= \DATA_SRAM[13]~output_o\;

DATA_SRAM(14) <= \DATA_SRAM[14]~output_o\;

DATA_SRAM(15) <= \DATA_SRAM[15]~output_o\;

DATA_ECHO(0) <= \DATA_ECHO[0]~output_o\;

DATA_ECHO(1) <= \DATA_ECHO[1]~output_o\;

DATA_ECHO(2) <= \DATA_ECHO[2]~output_o\;

DATA_ECHO(3) <= \DATA_ECHO[3]~output_o\;

DATA_ECHO(4) <= \DATA_ECHO[4]~output_o\;

DATA_ECHO(5) <= \DATA_ECHO[5]~output_o\;

DATA_ECHO(6) <= \DATA_ECHO[6]~output_o\;

DATA_ECHO(7) <= \DATA_ECHO[7]~output_o\;

DATA_ECHO(8) <= \DATA_ECHO[8]~output_o\;

DATA_ECHO(9) <= \DATA_ECHO[9]~output_o\;

DATA_ECHO(10) <= \DATA_ECHO[10]~output_o\;

DATA_ECHO(11) <= \DATA_ECHO[11]~output_o\;

DATA_ECHO(12) <= \DATA_ECHO[12]~output_o\;

DATA_ECHO(13) <= \DATA_ECHO[13]~output_o\;

DATA_ECHO(14) <= \DATA_ECHO[14]~output_o\;

DATA_ECHO(15) <= \DATA_ECHO[15]~output_o\;
END structure;


