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

-- DATE "10/01/2021 13:54:44"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA_contr IS
    PORT (
	hsync : OUT std_logic;
	KEY0 : IN std_logic;
	fpga_clk : IN std_logic;
	vsync : OUT std_logic;
	vga_clk : OUT std_logic;
	vga_blank : OUT std_logic;
	vga_sync : OUT std_logic;
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6);
	vga_b : OUT std_logic_vector(7 DOWNTO 0);
	vga_g : OUT std_logic_vector(7 DOWNTO 0);
	vga_r : OUT std_logic_vector(7 DOWNTO 0)
	);
END VGA_contr;

-- Design Ports Information
-- hsync	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_clk	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blank	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_sync	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_b[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_g[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_r[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY0	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA_contr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_hsync : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_fpga_clk : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_vga_clk : std_logic;
SIGNAL ww_vga_blank : std_logic;
SIGNAL ww_vga_sync : std_logic;
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_vga_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_r : std_logic_vector(7 DOWNTO 0);
SIGNAL \fpga_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_pixreg|Add1~4_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~6_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~10_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[0]~10_combout\ : std_logic;
SIGNAL \inst|counter[5]~27_combout\ : std_logic;
SIGNAL \inst|counter[9]~35_combout\ : std_logic;
SIGNAL \inst|counter[15]~47_combout\ : std_logic;
SIGNAL \inst|counter[16]~49_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~18_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~19_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~20_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~27_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~30_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~31_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~32_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~33_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~34_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~35_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~36_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~37_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~38_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~39_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~40_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~41_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~42_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~43_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~44_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~45_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~46_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~47_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~48_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~49_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~50_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~51_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~52_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~53_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~54_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~55_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~56_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~57_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~58_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~59_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~60_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~61_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~62_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~63_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~64_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~65_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~66_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~67_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~68_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~69_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~70_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~71_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~72_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~73_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~74_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~75_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~76_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~77_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~78_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~79_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~80_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~81_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~82_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~83_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~84_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~85_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~86_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~87_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~88_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~89_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~90_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~91_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~92_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~93_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~94_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~95_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~96_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~97_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~98_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~99_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~100_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~101_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~102_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~103_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~104_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~105_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~106_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~107_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~108_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~109_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~110_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~111_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~112_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~113_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~114_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~115_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~116_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~117_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~118_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~119_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~120_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~121_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~122_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~123_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~124_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~125_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~126_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~127_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~128_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~129_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~130_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~131_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~132_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~133_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~134_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~135_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~136_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~137_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~138_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~139_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~140_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~141_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~142_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~143_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~144_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~145_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~146_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~147_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~148_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~149_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~150_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~151_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~152_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~153_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~154_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~155_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~156_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~157_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~158_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~159_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~160_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~161_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~162_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~163_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~164_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~165_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~166_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~167_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~168_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~169_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~170_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|h_limit[2]~8_combout\ : std_logic;
SIGNAL \inst|h_limit[0]~10_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~0_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~173_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~174_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~175_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~11_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~12_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~14_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~15_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~16_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~17_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~176_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~177_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~178_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~179_combout\ : std_logic;
SIGNAL \i_pixreg|vcnt_d[8]~feeder_combout\ : std_logic;
SIGNAL \i_pixreg|vcnt_d[3]~feeder_combout\ : std_logic;
SIGNAL \hsync~output_o\ : std_logic;
SIGNAL \vsync~output_o\ : std_logic;
SIGNAL \vga_clk~output_o\ : std_logic;
SIGNAL \vga_blank~output_o\ : std_logic;
SIGNAL \vga_sync~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \vga_b[7]~output_o\ : std_logic;
SIGNAL \vga_b[6]~output_o\ : std_logic;
SIGNAL \vga_b[5]~output_o\ : std_logic;
SIGNAL \vga_b[4]~output_o\ : std_logic;
SIGNAL \vga_b[3]~output_o\ : std_logic;
SIGNAL \vga_b[2]~output_o\ : std_logic;
SIGNAL \vga_b[1]~output_o\ : std_logic;
SIGNAL \vga_b[0]~output_o\ : std_logic;
SIGNAL \vga_g[7]~output_o\ : std_logic;
SIGNAL \vga_g[6]~output_o\ : std_logic;
SIGNAL \vga_g[5]~output_o\ : std_logic;
SIGNAL \vga_g[4]~output_o\ : std_logic;
SIGNAL \vga_g[3]~output_o\ : std_logic;
SIGNAL \vga_g[2]~output_o\ : std_logic;
SIGNAL \vga_g[1]~output_o\ : std_logic;
SIGNAL \vga_g[0]~output_o\ : std_logic;
SIGNAL \vga_r[7]~output_o\ : std_logic;
SIGNAL \vga_r[6]~output_o\ : std_logic;
SIGNAL \vga_r[5]~output_o\ : std_logic;
SIGNAL \vga_r[4]~output_o\ : std_logic;
SIGNAL \vga_r[3]~output_o\ : std_logic;
SIGNAL \vga_r[2]~output_o\ : std_logic;
SIGNAL \vga_r[1]~output_o\ : std_logic;
SIGNAL \vga_r[0]~output_o\ : std_logic;
SIGNAL \fpga_clk~input_o\ : std_logic;
SIGNAL \fpga_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_pixcounter|Add0~0_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \i_ce_gen|counter[0]~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~1\ : std_logic;
SIGNAL \i_pixcounter|Add0~2_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~3\ : std_logic;
SIGNAL \i_pixcounter|Add0~4_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~4_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~5\ : std_logic;
SIGNAL \i_pixcounter|Add0~6_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~2_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~7\ : std_logic;
SIGNAL \i_pixcounter|Add0~9\ : std_logic;
SIGNAL \i_pixcounter|Add0~10_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~22_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~11\ : std_logic;
SIGNAL \i_pixcounter|Add0~12_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~13\ : std_logic;
SIGNAL \i_pixcounter|Add0~15\ : std_logic;
SIGNAL \i_pixcounter|Add0~17\ : std_logic;
SIGNAL \i_pixcounter|Add0~18_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~16_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~0_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~1_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~8_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~3_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~1_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~5_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~3_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~14_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~2_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~0_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~1_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~4_combout\ : std_logic;
SIGNAL \i_hs_gen|hsync~q\ : std_logic;
SIGNAL \i_blank6~0_combout\ : std_logic;
SIGNAL \i_blank6~q\ : std_logic;
SIGNAL \i_hs3~q\ : std_logic;
SIGNAL \i_hs4~feeder_combout\ : std_logic;
SIGNAL \i_hs4~q\ : std_logic;
SIGNAL \i_linecounter|vcnti[0]~11\ : std_logic;
SIGNAL \i_linecounter|vcnti[1]~13\ : std_logic;
SIGNAL \i_linecounter|vcnti[2]~14_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[6]~23\ : std_logic;
SIGNAL \i_linecounter|vcnti[7]~24_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~0_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~1_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~1_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[7]~25\ : std_logic;
SIGNAL \i_linecounter|vcnti[8]~26_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[8]~27\ : std_logic;
SIGNAL \i_linecounter|vcnti[9]~28_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~2_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[2]~15\ : std_logic;
SIGNAL \i_linecounter|vcnti[3]~16_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[3]~17\ : std_logic;
SIGNAL \i_linecounter|vcnti[4]~18_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[4]~19\ : std_logic;
SIGNAL \i_linecounter|vcnti[5]~21\ : std_logic;
SIGNAL \i_linecounter|vcnti[6]~22_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~0_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[1]~12_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~1_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~2_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~3_combout\ : std_logic;
SIGNAL \i_vs_gen|vsync~q\ : std_logic;
SIGNAL \i_blank5~0_combout\ : std_logic;
SIGNAL \i_blank5~q\ : std_logic;
SIGNAL \i_vs3~feeder_combout\ : std_logic;
SIGNAL \i_vs3~q\ : std_logic;
SIGNAL \i_vs4~feeder_combout\ : std_logic;
SIGNAL \i_vs4~q\ : std_logic;
SIGNAL \iBlank_gen|blank~0_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~1_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~2_combout\ : std_logic;
SIGNAL \i_blank2~q\ : std_logic;
SIGNAL \i_blank4~feeder_combout\ : std_logic;
SIGNAL \i_blank4~q\ : std_logic;
SIGNAL \i_blank3~feeder_combout\ : std_logic;
SIGNAL \i_blank3~q\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|counter[0]~57_combout\ : std_logic;
SIGNAL \inst|counter[1]~20\ : std_logic;
SIGNAL \inst|counter[2]~21_combout\ : std_logic;
SIGNAL \inst|counter[2]~22\ : std_logic;
SIGNAL \inst|counter[3]~23_combout\ : std_logic;
SIGNAL \inst|counter[3]~24\ : std_logic;
SIGNAL \inst|counter[4]~25_combout\ : std_logic;
SIGNAL \inst|counter[4]~26\ : std_logic;
SIGNAL \inst|counter[5]~28\ : std_logic;
SIGNAL \inst|counter[6]~29_combout\ : std_logic;
SIGNAL \inst|counter[6]~30\ : std_logic;
SIGNAL \inst|counter[7]~32\ : std_logic;
SIGNAL \inst|counter[8]~33_combout\ : std_logic;
SIGNAL \inst|counter[8]~34\ : std_logic;
SIGNAL \inst|counter[9]~36\ : std_logic;
SIGNAL \inst|counter[10]~37_combout\ : std_logic;
SIGNAL \inst|counter[10]~38\ : std_logic;
SIGNAL \inst|counter[11]~39_combout\ : std_logic;
SIGNAL \inst|counter[11]~40\ : std_logic;
SIGNAL \inst|counter[12]~41_combout\ : std_logic;
SIGNAL \inst|counter[12]~42\ : std_logic;
SIGNAL \inst|counter[13]~44\ : std_logic;
SIGNAL \inst|counter[14]~45_combout\ : std_logic;
SIGNAL \inst|counter[13]~43_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|counter[7]~31_combout\ : std_logic;
SIGNAL \inst|counter[1]~19_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|counter[14]~46\ : std_logic;
SIGNAL \inst|counter[15]~48\ : std_logic;
SIGNAL \inst|counter[16]~50\ : std_logic;
SIGNAL \inst|counter[17]~51_combout\ : std_logic;
SIGNAL \inst|counter[17]~52\ : std_logic;
SIGNAL \inst|counter[18]~53_combout\ : std_logic;
SIGNAL \inst|counter[18]~54\ : std_logic;
SIGNAL \inst|counter[19]~55_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|h_limit[0]~1_combout\ : std_logic;
SIGNAL \inst|h_limit[7]~3_combout\ : std_logic;
SIGNAL \inst|h_limit[4]~6_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|h_limit[7]~0_combout\ : std_logic;
SIGNAL \inst|h_limit[6]~4_combout\ : std_logic;
SIGNAL \inst|h_limit[3]~7_combout\ : std_logic;
SIGNAL \inst|h_limit[1]~9_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|h_limit[5]~5_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|h_limit[8]~2_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|LessThan3~15_cout\ : std_logic;
SIGNAL \inst|LessThan3~16_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[5]~20_combout\ : std_logic;
SIGNAL \i_pixreg|vcnt_d[5]~feeder_combout\ : std_logic;
SIGNAL \i_pixreg|vcnt_d[4]~feeder_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~1\ : std_logic;
SIGNAL \i_pixreg|Add0~3\ : std_logic;
SIGNAL \i_pixreg|Add0~5\ : std_logic;
SIGNAL \i_pixreg|Add0~7\ : std_logic;
SIGNAL \i_pixreg|Add0~9\ : std_logic;
SIGNAL \i_pixreg|Add0~11\ : std_logic;
SIGNAL \i_pixreg|Add0~12_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~8_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~4_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~2_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~0_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~1\ : std_logic;
SIGNAL \i_pixreg|Add1~3\ : std_logic;
SIGNAL \i_pixreg|Add1~5\ : std_logic;
SIGNAL \i_pixreg|Add1~7\ : std_logic;
SIGNAL \i_pixreg|Add1~9\ : std_logic;
SIGNAL \i_pixreg|Add1~11\ : std_logic;
SIGNAL \i_pixreg|Add1~13\ : std_logic;
SIGNAL \i_pixreg|Add1~15\ : std_logic;
SIGNAL \i_pixreg|Add1~16_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~8_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~6_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~2_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~24_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~25_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~0_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~26_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~21_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~23_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~28_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~172_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~14_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~12_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~29_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~171_combout\ : std_logic;
SIGNAL \i_pixreg|pixcode_single~q\ : std_logic;
SIGNAL \inst|pixcode~0_combout\ : std_logic;
SIGNAL \inst|pixcode~1_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~0_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[7]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[5]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[4]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[3]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[2]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[1]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[0]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g[7]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g[6]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g[5]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g[4]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g[3]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g[2]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g[1]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g[0]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[7]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[6]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~0_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[5]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[4]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[2]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[1]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[0]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|pixcode\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \i_pixcounter|hcnti\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_ce_gen|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pixreg|vcnt_d\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_g\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_linecounter|vcnti\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_pixreg|hcnt_d\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|h_limit\ : std_logic_vector(8 DOWNTO 0);

BEGIN

hsync <= ww_hsync;
ww_KEY0 <= KEY0;
ww_fpga_clk <= fpga_clk;
vsync <= ww_vsync;
vga_clk <= ww_vga_clk;
vga_blank <= ww_vga_blank;
vga_sync <= ww_vga_sync;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
vga_b <= ww_vga_b;
vga_g <= ww_vga_g;
vga_r <= ww_vga_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fpga_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fpga_clk~input_o\);

-- Location: LCCOMB_X59_Y52_N18
\i_pixreg|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~4_combout\ = ((\i_pixcounter|hcnti\(9) $ (\i_pixreg|Add0~0_combout\ $ (!\i_pixreg|Add1~3\)))) # (GND)
-- \i_pixreg|Add1~5\ = CARRY((\i_pixcounter|hcnti\(9) & ((\i_pixreg|Add0~0_combout\) # (!\i_pixreg|Add1~3\))) # (!\i_pixcounter|hcnti\(9) & (\i_pixreg|Add0~0_combout\ & !\i_pixreg|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(9),
	datab => \i_pixreg|Add0~0_combout\,
	datad => VCC,
	cin => \i_pixreg|Add1~3\,
	combout => \i_pixreg|Add1~4_combout\,
	cout => \i_pixreg|Add1~5\);

-- Location: LCCOMB_X59_Y52_N6
\i_pixreg|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~6_combout\ = (\i_linecounter|vcnti\(6) & ((\i_linecounter|vcnti\(8) & (\i_pixreg|Add0~5\ & VCC)) # (!\i_linecounter|vcnti\(8) & (!\i_pixreg|Add0~5\)))) # (!\i_linecounter|vcnti\(6) & ((\i_linecounter|vcnti\(8) & (!\i_pixreg|Add0~5\)) # 
-- (!\i_linecounter|vcnti\(8) & ((\i_pixreg|Add0~5\) # (GND)))))
-- \i_pixreg|Add0~7\ = CARRY((\i_linecounter|vcnti\(6) & (!\i_linecounter|vcnti\(8) & !\i_pixreg|Add0~5\)) # (!\i_linecounter|vcnti\(6) & ((!\i_pixreg|Add0~5\) # (!\i_linecounter|vcnti\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(6),
	datab => \i_linecounter|vcnti\(8),
	datad => VCC,
	cin => \i_pixreg|Add0~5\,
	combout => \i_pixreg|Add0~6_combout\,
	cout => \i_pixreg|Add0~7\);

-- Location: LCCOMB_X59_Y52_N10
\i_pixreg|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~10_combout\ = (\i_linecounter|vcnti\(8) & (!\i_pixreg|Add0~9\)) # (!\i_linecounter|vcnti\(8) & ((\i_pixreg|Add0~9\) # (GND)))
-- \i_pixreg|Add0~11\ = CARRY((!\i_pixreg|Add0~9\) # (!\i_linecounter|vcnti\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(8),
	datad => VCC,
	cin => \i_pixreg|Add0~9\,
	combout => \i_pixreg|Add0~10_combout\,
	cout => \i_pixreg|Add0~11\);

-- Location: LCCOMB_X59_Y52_N24
\i_pixreg|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~10_combout\ = (\i_pixreg|Add0~6_combout\ & (!\i_pixreg|Add1~9\)) # (!\i_pixreg|Add0~6_combout\ & ((\i_pixreg|Add1~9\) # (GND)))
-- \i_pixreg|Add1~11\ = CARRY((!\i_pixreg|Add1~9\) # (!\i_pixreg|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add0~6_combout\,
	datad => VCC,
	cin => \i_pixreg|Add1~9\,
	combout => \i_pixreg|Add1~10_combout\,
	cout => \i_pixreg|Add1~11\);

-- Location: FF_X59_Y53_N11
\i_linecounter|vcnti[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[0]~10_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(0));

-- Location: FF_X66_Y52_N13
\inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[16]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(16));

-- Location: FF_X66_Y53_N23
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: FF_X66_Y53_N31
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: FF_X66_Y52_N11
\inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[15]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(15));

-- Location: LCCOMB_X62_Y50_N14
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|h_limit\(0) $ (GND)
-- \inst|Add1~1\ = CARRY(!\inst|h_limit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X62_Y50_N16
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|h_limit\(1) & ((\inst|Add1~1\) # (GND))) # (!\inst|h_limit\(1) & (!\inst|Add1~1\))
-- \inst|Add1~3\ = CARRY((\inst|h_limit\(1)) # (!\inst|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_limit\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X62_Y50_N18
\inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|h_limit\(2) & (!\inst|Add1~3\ & VCC)) # (!\inst|h_limit\(2) & (\inst|Add1~3\ $ (GND)))
-- \inst|Add1~5\ = CARRY((!\inst|h_limit\(2) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X62_Y50_N20
\inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|h_limit\(3) & (!\inst|Add1~5\)) # (!\inst|h_limit\(3) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|h_limit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_limit\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X62_Y50_N22
\inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|h_limit\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|h_limit\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|h_limit\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_limit\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X62_Y50_N26
\inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|h_limit\(6) & (\inst|Add1~11\ $ (GND))) # (!\inst|h_limit\(6) & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|h_limit\(6) & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_limit\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X59_Y53_N10
\i_linecounter|vcnti[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[0]~10_combout\ = \i_linecounter|vcnti\(0) $ (VCC)
-- \i_linecounter|vcnti[0]~11\ = CARRY(\i_linecounter|vcnti\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(0),
	datad => VCC,
	combout => \i_linecounter|vcnti[0]~10_combout\,
	cout => \i_linecounter|vcnti[0]~11\);

-- Location: LCCOMB_X66_Y53_N22
\inst|counter[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[5]~27_combout\ = (\inst|counter\(5) & (\inst|counter[4]~26\ $ (GND))) # (!\inst|counter\(5) & (!\inst|counter[4]~26\ & VCC))
-- \inst|counter[5]~28\ = CARRY((\inst|counter\(5) & !\inst|counter[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datad => VCC,
	cin => \inst|counter[4]~26\,
	combout => \inst|counter[5]~27_combout\,
	cout => \inst|counter[5]~28\);

-- Location: LCCOMB_X66_Y53_N30
\inst|counter[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[9]~35_combout\ = (\inst|counter\(9) & (\inst|counter[8]~34\ $ (GND))) # (!\inst|counter\(9) & (!\inst|counter[8]~34\ & VCC))
-- \inst|counter[9]~36\ = CARRY((\inst|counter\(9) & !\inst|counter[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datad => VCC,
	cin => \inst|counter[8]~34\,
	combout => \inst|counter[9]~35_combout\,
	cout => \inst|counter[9]~36\);

-- Location: LCCOMB_X66_Y52_N10
\inst|counter[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[15]~47_combout\ = (\inst|counter\(15) & (\inst|counter[14]~46\ $ (GND))) # (!\inst|counter\(15) & (!\inst|counter[14]~46\ & VCC))
-- \inst|counter[15]~48\ = CARRY((\inst|counter\(15) & !\inst|counter[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datad => VCC,
	cin => \inst|counter[14]~46\,
	combout => \inst|counter[15]~47_combout\,
	cout => \inst|counter[15]~48\);

-- Location: LCCOMB_X66_Y52_N12
\inst|counter[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[16]~49_combout\ = (\inst|counter\(16) & (!\inst|counter[15]~48\)) # (!\inst|counter\(16) & ((\inst|counter[15]~48\) # (GND)))
-- \inst|counter[16]~50\ = CARRY((!\inst|counter[15]~48\) # (!\inst|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(16),
	datad => VCC,
	cin => \inst|counter[15]~48\,
	combout => \inst|counter[16]~49_combout\,
	cout => \inst|counter[16]~50\);

-- Location: FF_X58_Y52_N13
\i_pixreg|vcnt_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_linecounter|vcnti\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(2));

-- Location: FF_X58_Y52_N23
\i_pixreg|vcnt_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|vcnt_d[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(3));

-- Location: FF_X58_Y52_N27
\i_pixreg|vcnt_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_linecounter|vcnti\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(0));

-- Location: FF_X58_Y52_N21
\i_pixreg|vcnt_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_linecounter|vcnti\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(1));

-- Location: LCCOMB_X58_Y52_N20
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\i_pixreg|vcnt_d\(3)) # ((\i_pixreg|vcnt_d\(0)) # ((\i_pixreg|vcnt_d\(1)) # (\i_pixreg|vcnt_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datab => \i_pixreg|vcnt_d\(0),
	datac => \i_pixreg|vcnt_d\(1),
	datad => \i_pixreg|vcnt_d\(4),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X58_Y52_N12
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\i_pixreg|vcnt_d\(6)) # ((\i_pixreg|vcnt_d\(5) & ((\inst|LessThan0~0_combout\) # (\i_pixreg|vcnt_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \i_pixreg|vcnt_d\(5),
	datac => \i_pixreg|vcnt_d\(2),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|LessThan0~1_combout\);

-- Location: FF_X62_Y50_N7
\inst|h_limit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|h_limit[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_limit\(2));

-- Location: FF_X61_Y50_N7
\i_pixreg|hcnt_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_pixcounter|hcnti\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(1));

-- Location: FF_X62_Y50_N11
\inst|h_limit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|h_limit[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_limit\(0));

-- Location: FF_X58_Y52_N11
\i_pixreg|vcnt_d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|vcnt_d[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(8));

-- Location: LCCOMB_X61_Y52_N8
\i_pixreg|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~18_combout\ = (\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(6) & !\i_pixcounter|hcnti\(4))) # (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~18_combout\);

-- Location: LCCOMB_X60_Y53_N0
\i_pixreg|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~19_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(6)) # ((\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(6) & 
-- !\i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~19_combout\);

-- Location: LCCOMB_X61_Y52_N26
\i_pixreg|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~20_combout\ = (\i_pixreg|Mux0~18_combout\ & ((\i_pixreg|Mux0~19_combout\ & (!\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(6))) # (!\i_pixreg|Mux0~19_combout\ & (\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~19_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~18_combout\,
	combout => \i_pixreg|Mux0~20_combout\);

-- Location: LCCOMB_X62_Y52_N30
\i_pixreg|Mux0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~27_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~2_combout\ & \i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~27_combout\);

-- Location: LCCOMB_X61_Y52_N20
\i_pixreg|Mux0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~30_combout\ = (\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~30_combout\);

-- Location: LCCOMB_X61_Y52_N22
\i_pixreg|Mux0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~31_combout\ = (\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~10_combout\ $ (!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~4_combout\ & 
-- !\i_pixreg|Add1~6_combout\)) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~4_combout\ & \i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~31_combout\);

-- Location: LCCOMB_X61_Y52_N0
\i_pixreg|Mux0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~32_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~6_combout\))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~4_combout\ & 
-- \i_pixreg|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~32_combout\);

-- Location: LCCOMB_X61_Y52_N10
\i_pixreg|Mux0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~33_combout\ = (\i_pixreg|Mux0~30_combout\ & ((\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~31_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~31_combout\,
	datab => \i_pixreg|Mux0~30_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~32_combout\,
	combout => \i_pixreg|Mux0~33_combout\);

-- Location: LCCOMB_X61_Y52_N4
\i_pixreg|Mux0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~34_combout\ = (\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ $ (!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\ & 
-- \i_pixreg|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~34_combout\);

-- Location: LCCOMB_X61_Y52_N6
\i_pixreg|Mux0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~35_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~34_combout\ & \i_pixreg|Mux0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~34_combout\,
	datad => \i_pixreg|Mux0~30_combout\,
	combout => \i_pixreg|Mux0~35_combout\);

-- Location: LCCOMB_X63_Y51_N8
\i_pixreg|Mux0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~36_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(6)) # ((\i_pixcounter|hcnti\(3) & \i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(5) & (((\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~36_combout\);

-- Location: LCCOMB_X63_Y51_N10
\i_pixreg|Mux0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~37_combout\ = (\i_pixreg|Add1~10_combout\ & (((!\i_pixreg|Mux0~36_combout\) # (!\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Mux0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~36_combout\,
	combout => \i_pixreg|Mux0~37_combout\);

-- Location: LCCOMB_X63_Y51_N28
\i_pixreg|Mux0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~38_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~2_combout\ $ (!\i_pixcounter|hcnti\(5)))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~2_combout\ & \i_pixcounter|hcnti\(5))))) # 
-- (!\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~2_combout\ & \i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~38_combout\);

-- Location: LCCOMB_X63_Y51_N22
\i_pixreg|Mux0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~39_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(6)) # ((\i_pixcounter|hcnti\(5)) # (!\i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(5)) # 
-- (!\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~2_combout\ & \i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~39_combout\);

-- Location: LCCOMB_X63_Y51_N16
\i_pixreg|Mux0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~40_combout\ = (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~38_combout\))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Mux0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~39_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~38_combout\,
	combout => \i_pixreg|Mux0~40_combout\);

-- Location: LCCOMB_X63_Y51_N2
\i_pixreg|Mux0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~41_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\) # (!\i_pixreg|Mux0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~22_combout\,
	combout => \i_pixreg|Mux0~41_combout\);

-- Location: LCCOMB_X63_Y51_N4
\i_pixreg|Mux0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~42_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~37_combout\)) # (!\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Mux0~40_combout\) # (\i_pixreg|Mux0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~37_combout\,
	datab => \i_pixreg|Mux0~40_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~41_combout\,
	combout => \i_pixreg|Mux0~42_combout\);

-- Location: LCCOMB_X59_Y51_N0
\i_pixreg|Mux0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~43_combout\ = (\i_pixcounter|hcnti\(6) & (((!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(5)) # (\i_pixcounter|hcnti\(3)))) # 
-- (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~43_combout\);

-- Location: LCCOMB_X59_Y51_N10
\i_pixreg|Mux0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~44_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(3)))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(6) $ (((\i_pixcounter|hcnti\(5)) # 
-- (\i_pixcounter|hcnti\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~44_combout\);

-- Location: LCCOMB_X59_Y51_N4
\i_pixreg|Mux0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~45_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~173_combout\))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~44_combout\,
	datab => \i_pixreg|Mux0~173_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~45_combout\);

-- Location: LCCOMB_X59_Y51_N14
\i_pixreg|Mux0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~46_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~0_combout\) # ((\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~46_combout\);

-- Location: LCCOMB_X59_Y51_N8
\i_pixreg|Mux0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~47_combout\ = (\i_pixreg|Mux0~45_combout\ & ((\i_pixreg|Mux0~46_combout\) # ((!\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Mux0~45_combout\ & (((\i_pixreg|Add1~4_combout\ & \i_pixreg|Mux0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~45_combout\,
	datab => \i_pixreg|Mux0~46_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~43_combout\,
	combout => \i_pixreg|Mux0~47_combout\);

-- Location: LCCOMB_X60_Y52_N20
\i_pixreg|Mux0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~48_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixreg|Mux0~42_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~47_combout\ & (!\i_pixreg|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~47_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~42_combout\,
	combout => \i_pixreg|Mux0~48_combout\);

-- Location: LCCOMB_X60_Y52_N22
\i_pixreg|Mux0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~49_combout\ = (\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Mux0~35_combout\) # ((\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Add1~8_combout\ & (((!\i_pixreg|Add1~12_combout\ & \i_pixreg|Mux0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~35_combout\,
	datab => \i_pixreg|Add1~8_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~48_combout\,
	combout => \i_pixreg|Mux0~49_combout\);

-- Location: LCCOMB_X61_Y52_N16
\i_pixreg|Mux0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~50_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~10_combout\ $ (!\i_pixreg|Add1~6_combout\))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~10_combout\ & !\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~50_combout\);

-- Location: LCCOMB_X61_Y52_N18
\i_pixreg|Mux0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~51_combout\ = (\i_pixreg|Mux0~30_combout\ & ((\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~50_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~31_combout\,
	datab => \i_pixreg|Mux0~50_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~30_combout\,
	combout => \i_pixreg|Mux0~51_combout\);

-- Location: LCCOMB_X60_Y52_N16
\i_pixreg|Mux0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~52_combout\ = (\i_pixreg|Mux0~49_combout\ & (((\i_pixreg|Mux0~51_combout\) # (!\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Mux0~49_combout\ & (\i_pixreg|Mux0~33_combout\ & (\i_pixreg|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~49_combout\,
	datab => \i_pixreg|Mux0~33_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~51_combout\,
	combout => \i_pixreg|Mux0~52_combout\);

-- Location: LCCOMB_X60_Y53_N18
\i_pixreg|Mux0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~53_combout\ = (\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~8_combout\ $ (\i_pixreg|Add1~6_combout\)))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~8_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~53_combout\);

-- Location: LCCOMB_X60_Y53_N4
\i_pixreg|Mux0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~54_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~8_combout\ & (!\i_pixcounter|hcnti\(3) & !\i_pixreg|Add1~6_combout\)) # (!\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~8_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~54_combout\);

-- Location: LCCOMB_X63_Y52_N8
\i_pixreg|Mux0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~55_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & \i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~4_combout\) # (\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~55_combout\);

-- Location: LCCOMB_X63_Y52_N2
\i_pixreg|Mux0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~56_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\ $ ((\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~56_combout\);

-- Location: LCCOMB_X63_Y52_N20
\i_pixreg|Mux0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~57_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~8_combout\))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~8_combout\ & ((!\i_pixreg|Add1~4_combout\) # 
-- (!\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~8_combout\,
	combout => \i_pixreg|Mux0~57_combout\);

-- Location: LCCOMB_X63_Y52_N22
\i_pixreg|Mux0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~58_combout\ = (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~4_combout\ & ((!\i_pixreg|Add1~8_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~8_combout\ & (\i_pixreg|Add1~4_combout\ $ (\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~8_combout\,
	combout => \i_pixreg|Mux0~58_combout\);

-- Location: LCCOMB_X63_Y52_N24
\i_pixreg|Mux0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~59_combout\ = (\i_pixreg|Mux0~58_combout\ & (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~57_combout\) # (!\i_pixcounter|hcnti\(3))))) # (!\i_pixreg|Mux0~58_combout\ & (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~57_combout\ & 
-- !\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Mux0~57_combout\,
	datac => \i_pixreg|Mux0~58_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~59_combout\);

-- Location: LCCOMB_X63_Y52_N10
\i_pixreg|Mux0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~60_combout\ = (\i_pixreg|Add1~10_combout\ & (((\i_pixcounter|hcnti\(6))))) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixcounter|hcnti\(6) & ((\i_pixreg|Mux0~179_combout\))) # (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Mux0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~59_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~179_combout\,
	combout => \i_pixreg|Mux0~60_combout\);

-- Location: LCCOMB_X60_Y53_N14
\i_pixreg|Mux0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~61_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~8_combout\ & (\i_pixreg|Add1~4_combout\ $ (!\i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Add1~8_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~8_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~61_combout\);

-- Location: LCCOMB_X60_Y53_N8
\i_pixreg|Mux0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~62_combout\ = (\i_pixreg|Mux0~61_combout\ & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\)) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~61_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~62_combout\);

-- Location: LCCOMB_X60_Y52_N18
\i_pixreg|Mux0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~63_combout\ = (\i_pixreg|Mux0~60_combout\ & (((\i_pixreg|Mux0~62_combout\)) # (!\i_pixreg|Add1~10_combout\))) # (!\i_pixreg|Mux0~60_combout\ & (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~60_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~174_combout\,
	datad => \i_pixreg|Mux0~62_combout\,
	combout => \i_pixreg|Mux0~63_combout\);

-- Location: LCCOMB_X63_Y53_N0
\i_pixreg|Mux0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~64_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Add1~6_combout\) # (\i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Add1~8_combout\ & ((!\i_pixreg|Add1~4_combout\))))) # (!\i_pixreg|Add1~0_combout\ & 
-- ((\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~6_combout\)) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~64_combout\);

-- Location: LCCOMB_X63_Y53_N2
\i_pixreg|Mux0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~65_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~64_combout\)) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\ & !\i_pixreg|Mux0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~64_combout\,
	combout => \i_pixreg|Mux0~65_combout\);

-- Location: LCCOMB_X63_Y53_N12
\i_pixreg|Mux0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~66_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~8_combout\ & (!\i_pixcounter|hcnti\(3) & !\i_pixreg|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~8_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~66_combout\);

-- Location: LCCOMB_X63_Y53_N6
\i_pixreg|Mux0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~67_combout\ = (\i_pixreg|Mux0~65_combout\) # ((!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~65_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~66_combout\,
	combout => \i_pixreg|Mux0~67_combout\);

-- Location: LCCOMB_X63_Y53_N8
\i_pixreg|Mux0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~68_combout\ = (\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(3) & \i_pixreg|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~68_combout\);

-- Location: LCCOMB_X63_Y53_N26
\i_pixreg|Mux0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~69_combout\ = (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~68_combout\ & \i_pixreg|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~68_combout\,
	datad => \i_pixreg|Add1~8_combout\,
	combout => \i_pixreg|Mux0~69_combout\);

-- Location: LCCOMB_X63_Y53_N20
\i_pixreg|Mux0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~70_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~8_combout\ $ (\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~8_combout\ & 
-- \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~70_combout\);

-- Location: LCCOMB_X63_Y53_N22
\i_pixreg|Mux0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~71_combout\ = (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~8_combout\ & !\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~71_combout\);

-- Location: LCCOMB_X63_Y53_N24
\i_pixreg|Mux0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~72_combout\ = (\i_pixreg|Add1~6_combout\ & (\i_pixcounter|hcnti\(3) & (!\i_pixreg|Mux0~71_combout\ & \i_pixreg|Mux0~70_combout\))) # (!\i_pixreg|Add1~6_combout\ & (((\i_pixreg|Mux0~71_combout\ & !\i_pixreg|Mux0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~71_combout\,
	datad => \i_pixreg|Mux0~70_combout\,
	combout => \i_pixreg|Mux0~72_combout\);

-- Location: LCCOMB_X63_Y53_N10
\i_pixreg|Mux0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~73_combout\ = (\i_pixreg|Add1~10_combout\ & (((\i_pixcounter|hcnti\(6))))) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixcounter|hcnti\(6) & (\i_pixreg|Mux0~69_combout\)) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Mux0~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~69_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~72_combout\,
	combout => \i_pixreg|Mux0~73_combout\);

-- Location: LCCOMB_X63_Y53_N28
\i_pixreg|Mux0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~74_combout\ = (\i_pixreg|Add1~0_combout\ & (((!\i_pixreg|Add1~6_combout\ & \i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~4_combout\) # ((\i_pixreg|Add1~6_combout\ & 
-- \i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~74_combout\);

-- Location: LCCOMB_X63_Y53_N30
\i_pixreg|Mux0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~75_combout\ = (\i_pixreg|Add1~8_combout\) # ((\i_pixreg|Mux0~74_combout\) # (\i_pixreg|Add1~2_combout\ $ (\i_pixreg|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~74_combout\,
	combout => \i_pixreg|Mux0~75_combout\);

-- Location: LCCOMB_X63_Y53_N16
\i_pixreg|Mux0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~76_combout\ = (\i_pixreg|Mux0~73_combout\ & (((!\i_pixreg|Mux0~75_combout\)) # (!\i_pixreg|Add1~10_combout\))) # (!\i_pixreg|Mux0~73_combout\ & (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~73_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~75_combout\,
	datad => \i_pixreg|Mux0~67_combout\,
	combout => \i_pixreg|Mux0~76_combout\);

-- Location: LCCOMB_X60_Y53_N26
\i_pixreg|Mux0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~77_combout\ = (\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Add1~0_combout\) # ((\i_pixcounter|hcnti\(6) & !\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~8_combout\ & ((\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\))) # 
-- (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~8_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~77_combout\);

-- Location: LCCOMB_X60_Y53_N12
\i_pixreg|Mux0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~78_combout\ = (\i_pixreg|Mux0~77_combout\ & (\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~6_combout\ & !\i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Mux0~77_combout\ & (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ $ 
-- (!\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~77_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~78_combout\);

-- Location: LCCOMB_X60_Y53_N22
\i_pixreg|Mux0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~79_combout\ = (\i_pixreg|Add1~0_combout\ & (((\i_pixreg|Add1~6_combout\ & \i_pixcounter|hcnti\(6))))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\ $ (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~79_combout\);

-- Location: LCCOMB_X60_Y53_N24
\i_pixreg|Mux0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~80_combout\ = (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(6)))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~80_combout\);

-- Location: LCCOMB_X60_Y53_N2
\i_pixreg|Mux0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~81_combout\ = (\i_pixreg|Mux0~80_combout\ & (\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~79_combout\ $ (\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Mux0~80_combout\ & (\i_pixreg|Mux0~79_combout\ & (\i_pixreg|Add1~4_combout\ & 
-- !\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~79_combout\,
	datab => \i_pixreg|Mux0~80_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~81_combout\);

-- Location: LCCOMB_X60_Y53_N20
\i_pixreg|Mux0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~82_combout\ = (\i_pixreg|Add1~10_combout\ & (((\i_pixcounter|hcnti\(3))))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~8_combout\ & (\i_pixreg|Mux0~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~8_combout\,
	datab => \i_pixreg|Mux0~81_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~82_combout\);

-- Location: LCCOMB_X60_Y53_N6
\i_pixreg|Mux0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~83_combout\ = (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~6_combout\ & \i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\ & !\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~83_combout\);

-- Location: LCCOMB_X60_Y53_N16
\i_pixreg|Mux0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~84_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~4_combout\) # (\i_pixreg|Add1~6_combout\ $ (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ $ (((\i_pixreg|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~84_combout\);

-- Location: LCCOMB_X60_Y53_N10
\i_pixreg|Mux0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~85_combout\ = (!\i_pixreg|Add1~8_combout\ & ((\i_pixcounter|hcnti\(6) & (!\i_pixreg|Mux0~84_combout\)) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Mux0~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~8_combout\,
	datab => \i_pixreg|Mux0~84_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~83_combout\,
	combout => \i_pixreg|Mux0~85_combout\);

-- Location: LCCOMB_X60_Y53_N28
\i_pixreg|Mux0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~86_combout\ = (\i_pixreg|Mux0~82_combout\ & ((\i_pixreg|Mux0~85_combout\) # ((!\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Mux0~82_combout\ & (((\i_pixreg|Add1~10_combout\ & \i_pixreg|Mux0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~85_combout\,
	datab => \i_pixreg|Mux0~82_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~78_combout\,
	combout => \i_pixreg|Mux0~86_combout\);

-- Location: LCCOMB_X60_Y52_N4
\i_pixreg|Mux0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~87_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixreg|Add1~12_combout\) # (\i_pixreg|Mux0~76_combout\)))) # (!\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~86_combout\ & (!\i_pixreg|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixreg|Mux0~86_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~76_combout\,
	combout => \i_pixreg|Mux0~87_combout\);

-- Location: LCCOMB_X63_Y52_N12
\i_pixreg|Mux0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~88_combout\ = (\i_pixreg|Add1~6_combout\ & (\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~8_combout\))) # (!\i_pixreg|Add1~6_combout\ & (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~8_combout\ & \i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~88_combout\);

-- Location: LCCOMB_X63_Y52_N6
\i_pixreg|Mux0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~89_combout\ = (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~89_combout\);

-- Location: LCCOMB_X63_Y52_N16
\i_pixreg|Mux0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~90_combout\ = (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~4_combout\ $ (\i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~10_combout\))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~10_combout\) # (\i_pixreg|Add1~4_combout\ $ 
-- (\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~90_combout\);

-- Location: LCCOMB_X63_Y52_N18
\i_pixreg|Mux0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~91_combout\ = (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~10_combout\ & !\i_pixcounter|hcnti\(3)))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~10_combout\ & 
-- \i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~91_combout\);

-- Location: LCCOMB_X63_Y52_N4
\i_pixreg|Mux0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~92_combout\ = (\i_pixreg|Mux0~89_combout\ & ((\i_pixreg|Mux0~88_combout\) # ((\i_pixreg|Mux0~177_combout\ & !\i_pixcounter|hcnti\(6))))) # (!\i_pixreg|Mux0~89_combout\ & (\i_pixreg|Mux0~177_combout\ & (!\i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~89_combout\,
	datab => \i_pixreg|Mux0~177_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~88_combout\,
	combout => \i_pixreg|Mux0~92_combout\);

-- Location: LCCOMB_X60_Y52_N6
\i_pixreg|Mux0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~93_combout\ = (\i_pixreg|Add1~12_combout\ & ((\i_pixreg|Mux0~87_combout\ & ((\i_pixreg|Mux0~92_combout\))) # (!\i_pixreg|Mux0~87_combout\ & (\i_pixreg|Mux0~63_combout\)))) # (!\i_pixreg|Add1~12_combout\ & (((\i_pixreg|Mux0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~12_combout\,
	datab => \i_pixreg|Mux0~63_combout\,
	datac => \i_pixreg|Mux0~87_combout\,
	datad => \i_pixreg|Mux0~92_combout\,
	combout => \i_pixreg|Mux0~93_combout\);

-- Location: LCCOMB_X59_Y51_N26
\i_pixreg|Mux0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~94_combout\ = (\i_pixcounter|hcnti\(5) & (((!\i_pixreg|Add1~0_combout\ & !\i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) $ (((\i_pixreg|Add1~2_combout\ & 
-- \i_pixreg|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~94_combout\);

-- Location: LCCOMB_X59_Y51_N12
\i_pixreg|Mux0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~95_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(5) $ (\i_pixcounter|hcnti\(3)))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(3))))) # 
-- (!\i_pixreg|Add1~2_combout\ & (((\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~95_combout\);

-- Location: LCCOMB_X59_Y51_N6
\i_pixreg|Mux0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~96_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(6) & ((!\i_pixreg|Add1~4_combout\) # (!\i_pixreg|Mux0~95_combout\)))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ $ (((!\i_pixreg|Mux0~95_combout\ & 
-- \i_pixcounter|hcnti\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~95_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~96_combout\);

-- Location: LCCOMB_X59_Y51_N24
\i_pixreg|Mux0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~97_combout\ = (\i_pixreg|Mux0~94_combout\ & (\i_pixreg|Mux0~95_combout\ & !\i_pixreg|Mux0~96_combout\)) # (!\i_pixreg|Mux0~94_combout\ & ((\i_pixreg|Mux0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~95_combout\,
	datac => \i_pixreg|Mux0~94_combout\,
	datad => \i_pixreg|Mux0~96_combout\,
	combout => \i_pixreg|Mux0~97_combout\);

-- Location: LCCOMB_X59_Y51_N18
\i_pixreg|Mux0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~98_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(6) 
-- & (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(5) $ (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~98_combout\);

-- Location: LCCOMB_X59_Y51_N28
\i_pixreg|Mux0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~99_combout\ = (\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~98_combout\ & (\i_pixreg|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~98_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~99_combout\);

-- Location: LCCOMB_X59_Y51_N30
\i_pixreg|Mux0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~100_combout\ = (\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(5) $ (\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(5) & 
-- !\i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~100_combout\);

-- Location: LCCOMB_X59_Y51_N16
\i_pixreg|Mux0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~101_combout\ = (\i_pixreg|Mux0~99_combout\ & (((\i_pixreg|Mux0~100_combout\) # (!\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Mux0~99_combout\ & (\i_pixreg|Mux0~175_combout\ & ((\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~175_combout\,
	datab => \i_pixreg|Mux0~99_combout\,
	datac => \i_pixreg|Mux0~100_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~101_combout\);

-- Location: LCCOMB_X59_Y51_N2
\i_pixreg|Mux0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~102_combout\ = (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Mux0~97_combout\))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~101_combout\,
	datab => \i_pixreg|Mux0~97_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~102_combout\);

-- Location: LCCOMB_X61_Y52_N28
\i_pixreg|Mux0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~103_combout\ = (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~4_combout\ & \i_pixreg|Mux0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~30_combout\,
	combout => \i_pixreg|Mux0~103_combout\);

-- Location: LCCOMB_X61_Y52_N14
\i_pixreg|Mux0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~104_combout\ = (\i_pixcounter|hcnti\(3) & (((!\i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(6) & \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~104_combout\);

-- Location: LCCOMB_X61_Y52_N24
\i_pixreg|Mux0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~105_combout\ = (\i_pixreg|Mux0~103_combout\) # ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~104_combout\ & \i_pixreg|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~104_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~103_combout\,
	combout => \i_pixreg|Mux0~105_combout\);

-- Location: LCCOMB_X60_Y52_N0
\i_pixreg|Mux0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~106_combout\ = (\i_pixreg|Mux0~102_combout\) # ((\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~102_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~105_combout\,
	combout => \i_pixreg|Mux0~106_combout\);

-- Location: LCCOMB_X61_Y51_N8
\i_pixreg|Mux0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~107_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(5)))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(5))) 
-- # (!\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(3) $ (\i_pixcounter|hcnti\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~107_combout\);

-- Location: LCCOMB_X61_Y51_N18
\i_pixreg|Mux0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~108_combout\ = (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~107_combout\ & !\i_pixreg|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Mux0~107_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~108_combout\);

-- Location: LCCOMB_X61_Y51_N28
\i_pixreg|Mux0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~109_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) $ (((\i_pixreg|Add1~0_combout\) # (!\i_pixreg|Add1~2_combout\))))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3)) # ((\i_pixreg|Add1~0_combout\ & 
-- !\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~109_combout\);

-- Location: LCCOMB_X61_Y51_N22
\i_pixreg|Mux0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~110_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~0_combout\)) # (!\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~2_combout\))))) # (!\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~0_combout\ & 
-- ((\i_pixreg|Add1~2_combout\) # (!\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~110_combout\);

-- Location: LCCOMB_X61_Y51_N24
\i_pixreg|Mux0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~111_combout\ = (\i_pixreg|Add1~6_combout\ & ((!\i_pixreg|Mux0~109_combout\))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~110_combout\ & \i_pixreg|Mux0~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~110_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~109_combout\,
	combout => \i_pixreg|Mux0~111_combout\);

-- Location: LCCOMB_X61_Y51_N10
\i_pixreg|Mux0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~112_combout\ = (\i_pixreg|Mux0~110_combout\ & ((!\i_pixreg|Mux0~109_combout\) # (!\i_pixreg|Add1~6_combout\))) # (!\i_pixreg|Mux0~110_combout\ & ((\i_pixreg|Mux0~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~110_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~109_combout\,
	combout => \i_pixreg|Mux0~112_combout\);

-- Location: LCCOMB_X61_Y51_N12
\i_pixreg|Mux0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~113_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~112_combout\ & (\i_pixcounter|hcnti\(6) $ (\i_pixreg|Mux0~111_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~111_combout\ & (\i_pixreg|Mux0~112_combout\ $ 
-- (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~112_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~111_combout\,
	combout => \i_pixreg|Mux0~113_combout\);

-- Location: LCCOMB_X61_Y51_N6
\i_pixreg|Mux0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~114_combout\ = (\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(5)))) # (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~114_combout\);

-- Location: LCCOMB_X63_Y51_N6
\i_pixreg|Mux0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~115_combout\ = (\i_pixreg|Add1~2_combout\ & (((!\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(6) & ((!\i_pixreg|Add1~0_combout\))) # (!\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~115_combout\);

-- Location: LCCOMB_X61_Y51_N16
\i_pixreg|Mux0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~116_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~6_combout\) # ((\i_pixcounter|hcnti\(5) & \i_pixreg|Mux0~115_combout\)))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(5) & (!\i_pixreg|Add1~6_combout\ & 
-- !\i_pixreg|Mux0~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~115_combout\,
	combout => \i_pixreg|Mux0~116_combout\);

-- Location: LCCOMB_X60_Y51_N16
\i_pixreg|Mux0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~117_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(6)) # (!\i_pixcounter|hcnti\(3)))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3)) # (!\i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~117_combout\);

-- Location: LCCOMB_X61_Y51_N26
\i_pixreg|Mux0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~118_combout\ = (\i_pixreg|Mux0~116_combout\ & (((!\i_pixreg|Add1~6_combout\)) # (!\i_pixreg|Mux0~117_combout\))) # (!\i_pixreg|Mux0~116_combout\ & (((\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~117_combout\,
	datab => \i_pixreg|Mux0~116_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~114_combout\,
	combout => \i_pixreg|Mux0~118_combout\);

-- Location: LCCOMB_X61_Y51_N20
\i_pixreg|Mux0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~119_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~10_combout\) # ((\i_pixreg|Mux0~113_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~118_combout\,
	datad => \i_pixreg|Mux0~113_combout\,
	combout => \i_pixreg|Mux0~119_combout\);

-- Location: LCCOMB_X60_Y51_N2
\i_pixreg|Mux0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~120_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ & \i_pixcounter|hcnti\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~120_combout\);

-- Location: LCCOMB_X61_Y51_N14
\i_pixreg|Mux0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~121_combout\ = (!\i_pixreg|Add1~6_combout\ & (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) & \i_pixreg|Mux0~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~120_combout\,
	combout => \i_pixreg|Mux0~121_combout\);

-- Location: LCCOMB_X61_Y51_N0
\i_pixreg|Mux0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~122_combout\ = (\i_pixreg|Mux0~119_combout\ & (((\i_pixreg|Mux0~121_combout\) # (!\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Mux0~119_combout\ & (\i_pixreg|Mux0~108_combout\ & ((\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~108_combout\,
	datab => \i_pixreg|Mux0~119_combout\,
	datac => \i_pixreg|Mux0~121_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~122_combout\);

-- Location: LCCOMB_X60_Y51_N4
\i_pixreg|Mux0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~123_combout\ = (!\i_pixreg|Add1~0_combout\ & \i_pixreg|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~123_combout\);

-- Location: LCCOMB_X60_Y51_N22
\i_pixreg|Mux0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~124_combout\ = (\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~0_combout\ & \i_pixcounter|hcnti\(5))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~0_combout\ & !\i_pixcounter|hcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~124_combout\);

-- Location: LCCOMB_X60_Y51_N0
\i_pixreg|Mux0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~125_combout\ = (\i_pixreg|Mux0~124_combout\ & ((\i_pixcounter|hcnti\(3)))) # (!\i_pixreg|Mux0~124_combout\ & (\i_pixcounter|hcnti\(6) & !\i_pixcounter|hcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Mux0~124_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~125_combout\);

-- Location: LCCOMB_X60_Y51_N18
\i_pixreg|Mux0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~126_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(6)) # ((\i_pixreg|Add1~4_combout\ & !\i_pixreg|Mux0~124_combout\)))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~124_combout\ & ((\i_pixreg|Add1~4_combout\) # 
-- (!\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Mux0~124_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~126_combout\);

-- Location: LCCOMB_X60_Y51_N12
\i_pixreg|Mux0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~127_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~125_combout\))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Mux0~126_combout\ & !\i_pixreg|Mux0~125_combout\)))) # (!\i_pixreg|Add1~4_combout\ & 
-- (\i_pixreg|Mux0~125_combout\ & ((\i_pixreg|Mux0~126_combout\) # (!\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~126_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~125_combout\,
	combout => \i_pixreg|Mux0~127_combout\);

-- Location: LCCOMB_X60_Y51_N6
\i_pixreg|Mux0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~128_combout\ = (\i_pixreg|Mux0~126_combout\ & ((\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~125_combout\))) # (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Mux0~125_combout\)))) # (!\i_pixreg|Mux0~126_combout\ & 
-- (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ $ (\i_pixreg|Mux0~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~126_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~125_combout\,
	combout => \i_pixreg|Mux0~128_combout\);

-- Location: LCCOMB_X60_Y51_N24
\i_pixreg|Mux0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~129_combout\ = (\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~128_combout\ & (\i_pixreg|Mux0~127_combout\ $ (\i_pixreg|Mux0~123_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~127_combout\ & (\i_pixreg|Mux0~123_combout\ & 
-- !\i_pixreg|Mux0~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~127_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~123_combout\,
	datad => \i_pixreg|Mux0~128_combout\,
	combout => \i_pixreg|Mux0~129_combout\);

-- Location: LCCOMB_X60_Y51_N10
\i_pixreg|Mux0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~130_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixcounter|hcnti\(6)) # (!\i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~4_combout\))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3)) # (\i_pixreg|Add1~4_combout\ $ 
-- (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~130_combout\);

-- Location: LCCOMB_X60_Y51_N28
\i_pixreg|Mux0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~131_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~4_combout\ $ (!\i_pixcounter|hcnti\(5))))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(5) & 
-- !\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~131_combout\);

-- Location: LCCOMB_X60_Y51_N30
\i_pixreg|Mux0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~132_combout\ = (\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Mux0~131_combout\) # (\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Mux0~117_combout\ & ((!\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~117_combout\,
	datab => \i_pixreg|Mux0~131_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~132_combout\);

-- Location: LCCOMB_X60_Y51_N8
\i_pixreg|Mux0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~133_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(3)) # (!\i_pixreg|Add1~4_combout\))) # (!\i_pixcounter|hcnti\(6) & ((!\i_pixcounter|hcnti\(3)))))) # (!\i_pixcounter|hcnti\(5) & 
-- ((\i_pixreg|Add1~4_combout\ & ((!\i_pixcounter|hcnti\(3)) # (!\i_pixcounter|hcnti\(6)))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixcounter|hcnti\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~133_combout\);

-- Location: LCCOMB_X60_Y51_N26
\i_pixreg|Mux0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~134_combout\ = (\i_pixreg|Mux0~132_combout\ & (((!\i_pixreg|Mux0~133_combout\)) # (!\i_pixreg|Add1~6_combout\))) # (!\i_pixreg|Mux0~132_combout\ & (\i_pixreg|Add1~6_combout\ & ((!\i_pixreg|Mux0~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~132_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~133_combout\,
	datad => \i_pixreg|Mux0~130_combout\,
	combout => \i_pixreg|Mux0~134_combout\);

-- Location: LCCOMB_X60_Y51_N20
\i_pixreg|Mux0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~135_combout\ = (\i_pixreg|Mux0~129_combout\) # ((\i_pixreg|Mux0~134_combout\ & (\i_pixreg|Add1~10_combout\ & \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~134_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~129_combout\,
	combout => \i_pixreg|Mux0~135_combout\);

-- Location: LCCOMB_X60_Y52_N26
\i_pixreg|Mux0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~136_combout\ = (\i_pixreg|Add1~12_combout\ & (\i_pixreg|Add1~8_combout\)) # (!\i_pixreg|Add1~12_combout\ & ((\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Mux0~122_combout\))) # (!\i_pixreg|Add1~8_combout\ & (\i_pixreg|Mux0~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~12_combout\,
	datab => \i_pixreg|Add1~8_combout\,
	datac => \i_pixreg|Mux0~135_combout\,
	datad => \i_pixreg|Mux0~122_combout\,
	combout => \i_pixreg|Mux0~136_combout\);

-- Location: LCCOMB_X62_Y51_N24
\i_pixreg|Mux0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~137_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~0_combout\ & \i_pixcounter|hcnti\(3))) # (!\i_pixcounter|hcnti\(5) & ((!\i_pixcounter|hcnti\(3)))))) # (!\i_pixcounter|hcnti\(6) & 
-- ((\i_pixcounter|hcnti\(3)) # ((\i_pixreg|Add1~0_combout\ & \i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~137_combout\);

-- Location: LCCOMB_X62_Y51_N26
\i_pixreg|Mux0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~138_combout\ = (\i_pixcounter|hcnti\(6) & (((\i_pixcounter|hcnti\(5)) # (\i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~0_combout\))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~138_combout\);

-- Location: LCCOMB_X62_Y51_N12
\i_pixreg|Mux0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~139_combout\ = (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~138_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((!\i_pixreg|Mux0~137_combout\))))) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~138_combout\ $ 
-- (\i_pixreg|Mux0~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Mux0~138_combout\,
	datad => \i_pixreg|Mux0~137_combout\,
	combout => \i_pixreg|Mux0~139_combout\);

-- Location: LCCOMB_X62_Y51_N30
\i_pixreg|Mux0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~140_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~137_combout\ & (\i_pixreg|Add1~0_combout\ $ (\i_pixreg|Mux0~138_combout\)))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Mux0~138_combout\ & 
-- !\i_pixreg|Mux0~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Mux0~138_combout\,
	datad => \i_pixreg|Mux0~137_combout\,
	combout => \i_pixreg|Mux0~140_combout\);

-- Location: LCCOMB_X62_Y51_N0
\i_pixreg|Mux0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~141_combout\ = (\i_pixreg|Mux0~140_combout\ & (\i_pixreg|Add1~2_combout\ $ (\i_pixreg|Mux0~139_combout\))) # (!\i_pixreg|Mux0~140_combout\ & (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Mux0~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~140_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~139_combout\,
	combout => \i_pixreg|Mux0~141_combout\);

-- Location: LCCOMB_X62_Y52_N10
\i_pixreg|Mux0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~142_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3)) # ((!\i_pixreg|Add1~0_combout\ & !\i_pixcounter|hcnti\(6))))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~0_combout\ & 
-- !\i_pixcounter|hcnti\(6))) # (!\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~142_combout\);

-- Location: LCCOMB_X62_Y52_N4
\i_pixreg|Mux0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~143_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(3)) # (\i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~143_combout\);

-- Location: LCCOMB_X62_Y52_N22
\i_pixreg|Mux0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~144_combout\ = (\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Mux0~143_combout\ & (\i_pixreg|Add1~0_combout\ $ (!\i_pixreg|Mux0~142_combout\)))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~143_combout\ & (\i_pixreg|Add1~0_combout\ $ 
-- (\i_pixreg|Mux0~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~143_combout\,
	datad => \i_pixreg|Mux0~142_combout\,
	combout => \i_pixreg|Mux0~144_combout\);

-- Location: LCCOMB_X62_Y52_N8
\i_pixreg|Mux0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~145_combout\ = (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Mux0~142_combout\ & ((\i_pixreg|Add1~10_combout\) # (!\i_pixreg|Mux0~143_combout\)))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~143_combout\ $ (((!\i_pixreg|Add1~10_combout\ & 
-- \i_pixreg|Mux0~142_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~143_combout\,
	datad => \i_pixreg|Mux0~142_combout\,
	combout => \i_pixreg|Mux0~145_combout\);

-- Location: LCCOMB_X62_Y52_N2
\i_pixreg|Mux0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~146_combout\ = (\i_pixreg|Mux0~144_combout\ & (\i_pixreg|Mux0~145_combout\ $ (!\i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Mux0~144_combout\ & (!\i_pixreg|Mux0~145_combout\ & \i_pixreg|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~144_combout\,
	datab => \i_pixreg|Mux0~145_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~146_combout\);

-- Location: LCCOMB_X62_Y51_N2
\i_pixreg|Mux0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~147_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~146_combout\))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~17_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~146_combout\,
	combout => \i_pixreg|Mux0~147_combout\);

-- Location: LCCOMB_X62_Y51_N20
\i_pixreg|Mux0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~148_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~10_combout\ $ (\i_pixreg|Add1~2_combout\ $ (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~2_combout\)) # 
-- (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~2_combout\) # (\i_pixreg|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~148_combout\);

-- Location: LCCOMB_X62_Y51_N14
\i_pixreg|Mux0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~149_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\) # ((\i_pixreg|Add1~10_combout\ & \i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~10_combout\ & ((!\i_pixreg|Add1~0_combout\) # 
-- (!\i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~149_combout\);

-- Location: LCCOMB_X62_Y51_N8
\i_pixreg|Mux0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~150_combout\ = (\i_pixcounter|hcnti\(3) & (!\i_pixreg|Mux0~149_combout\ & (\i_pixcounter|hcnti\(5) $ (\i_pixreg|Mux0~148_combout\)))) # (!\i_pixcounter|hcnti\(3) & ((\i_pixreg|Mux0~149_combout\ & (!\i_pixcounter|hcnti\(5) & 
-- !\i_pixreg|Mux0~148_combout\)) # (!\i_pixreg|Mux0~149_combout\ & (\i_pixcounter|hcnti\(5) & \i_pixreg|Mux0~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Mux0~149_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Mux0~148_combout\,
	combout => \i_pixreg|Mux0~150_combout\);

-- Location: LCCOMB_X62_Y51_N10
\i_pixreg|Mux0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~151_combout\ = (\i_pixreg|Mux0~147_combout\ & (((\i_pixreg|Mux0~150_combout\) # (!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~147_combout\ & (\i_pixreg|Mux0~141_combout\ & ((\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~141_combout\,
	datab => \i_pixreg|Mux0~147_combout\,
	datac => \i_pixreg|Mux0~150_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~151_combout\);

-- Location: LCCOMB_X60_Y52_N28
\i_pixreg|Mux0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~152_combout\ = (\i_pixreg|Mux0~136_combout\ & (((\i_pixreg|Mux0~151_combout\) # (!\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Mux0~136_combout\ & (\i_pixreg|Mux0~106_combout\ & (\i_pixreg|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~136_combout\,
	datab => \i_pixreg|Mux0~106_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~151_combout\,
	combout => \i_pixreg|Mux0~152_combout\);

-- Location: LCCOMB_X60_Y52_N14
\i_pixreg|Mux0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~153_combout\ = (\i_pixcounter|hcnti\(4) & ((\i_pixreg|Mux0~93_combout\) # ((\i_pixreg|Add1~14_combout\)))) # (!\i_pixcounter|hcnti\(4) & (((\i_pixreg|Mux0~152_combout\ & !\i_pixreg|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~93_combout\,
	datab => \i_pixreg|Mux0~152_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixreg|Add1~14_combout\,
	combout => \i_pixreg|Mux0~153_combout\);

-- Location: LCCOMB_X61_Y51_N2
\i_pixreg|Mux0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~154_combout\ = (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~154_combout\);

-- Location: LCCOMB_X61_Y52_N2
\i_pixreg|Mux0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~155_combout\ = (\i_pixreg|Mux0~154_combout\ & ((\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~50_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~154_combout\,
	datab => \i_pixreg|Mux0~50_combout\,
	datac => \i_pixreg|Mux0~31_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~155_combout\);

-- Location: LCCOMB_X61_Y51_N4
\i_pixreg|Mux0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~156_combout\ = (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\ $ (!\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\ & 
-- !\i_pixreg|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~156_combout\);

-- Location: LCCOMB_X61_Y51_N30
\i_pixreg|Mux0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~157_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~156_combout\ & \i_pixreg|Mux0~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~156_combout\,
	datad => \i_pixreg|Mux0~154_combout\,
	combout => \i_pixreg|Mux0~157_combout\);

-- Location: LCCOMB_X63_Y51_N0
\i_pixreg|Mux0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~158_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(5)) # (!\i_pixreg|Add1~4_combout\))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~4_combout\ & \i_pixcounter|hcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~158_combout\);

-- Location: LCCOMB_X63_Y51_N18
\i_pixreg|Mux0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~159_combout\ = \i_pixreg|Add1~4_combout\ $ (((\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\) # (\i_pixreg|Mux0~158_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~158_combout\,
	combout => \i_pixreg|Mux0~159_combout\);

-- Location: LCCOMB_X63_Y51_N20
\i_pixreg|Mux0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~160_combout\ = (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(3)))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~0_combout\)) # 
-- (!\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~160_combout\);

-- Location: LCCOMB_X63_Y51_N14
\i_pixreg|Mux0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~161_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~160_combout\ & (\i_pixreg|Add1~4_combout\ $ (!\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~160_combout\,
	combout => \i_pixreg|Mux0~161_combout\);

-- Location: LCCOMB_X63_Y51_N24
\i_pixreg|Mux0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~162_combout\ = (\i_pixreg|Add1~6_combout\ & (((!\i_pixcounter|hcnti\(6))))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(6) & !\i_pixreg|Add1~4_combout\)) # (!\i_pixreg|Add1~0_combout\ & 
-- ((\i_pixreg|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~162_combout\);

-- Location: LCCOMB_X63_Y51_N26
\i_pixreg|Mux0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~163_combout\ = (\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~2_combout\ & ((!\i_pixreg|Mux0~162_combout\) # (!\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Mux0~162_combout\ & ((!\i_pixreg|Add1~2_combout\))) # 
-- (!\i_pixreg|Mux0~162_combout\ & (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~162_combout\,
	combout => \i_pixreg|Mux0~163_combout\);

-- Location: LCCOMB_X63_Y51_N12
\i_pixreg|Mux0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~164_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~163_combout\ & (\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Mux0~161_combout\) # ((!\i_pixreg|Mux0~163_combout\ & !\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~163_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Mux0~161_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~164_combout\);

-- Location: LCCOMB_X63_Y51_N30
\i_pixreg|Mux0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~165_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~159_combout\ & (\i_pixreg|Add1~6_combout\))) # (!\i_pixreg|Add1~10_combout\ & (((\i_pixreg|Mux0~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~159_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~164_combout\,
	combout => \i_pixreg|Mux0~165_combout\);

-- Location: LCCOMB_X60_Y52_N24
\i_pixreg|Mux0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~166_combout\ = (\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Mux0~157_combout\) # ((\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Add1~8_combout\ & (((!\i_pixreg|Add1~12_combout\ & \i_pixreg|Mux0~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~157_combout\,
	datab => \i_pixreg|Add1~8_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~165_combout\,
	combout => \i_pixreg|Mux0~166_combout\);

-- Location: LCCOMB_X61_Y52_N12
\i_pixreg|Mux0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~167_combout\ = (\i_pixreg|Add1~4_combout\) # ((\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~10_combout\) # (!\i_pixreg|Add1~6_combout\))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~10_combout\ $ (\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~167_combout\);

-- Location: LCCOMB_X61_Y52_N30
\i_pixreg|Mux0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~168_combout\ = (\i_pixreg|Mux0~154_combout\ & ((\i_pixreg|Add1~0_combout\ & ((!\i_pixreg|Mux0~167_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~154_combout\,
	datab => \i_pixreg|Mux0~50_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~167_combout\,
	combout => \i_pixreg|Mux0~168_combout\);

-- Location: LCCOMB_X60_Y52_N10
\i_pixreg|Mux0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~169_combout\ = (\i_pixreg|Mux0~166_combout\ & ((\i_pixreg|Mux0~168_combout\) # ((!\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Mux0~166_combout\ & (((\i_pixreg|Add1~12_combout\ & \i_pixreg|Mux0~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~168_combout\,
	datab => \i_pixreg|Mux0~166_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~155_combout\,
	combout => \i_pixreg|Mux0~169_combout\);

-- Location: LCCOMB_X60_Y52_N12
\i_pixreg|Mux0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~170_combout\ = (\i_pixreg|Add1~14_combout\ & ((\i_pixreg|Mux0~153_combout\ & (\i_pixreg|Mux0~169_combout\)) # (!\i_pixreg|Mux0~153_combout\ & ((\i_pixreg|Mux0~52_combout\))))) # (!\i_pixreg|Add1~14_combout\ & 
-- (((\i_pixreg|Mux0~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~169_combout\,
	datab => \i_pixreg|Add1~14_combout\,
	datac => \i_pixreg|Mux0~153_combout\,
	datad => \i_pixreg|Mux0~52_combout\,
	combout => \i_pixreg|Mux0~170_combout\);

-- Location: LCCOMB_X66_Y53_N12
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|counter\(5)) # (\inst|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(5),
	datad => \inst|counter\(4),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X66_Y52_N22
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|counter\(8)) # ((\inst|counter\(10)) # ((\inst|counter\(11)) # (!\inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(8),
	datab => \inst|counter\(10),
	datac => \inst|counter\(9),
	datad => \inst|counter\(11),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X62_Y50_N12
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|h_limit\(2) & (\inst|h_limit\(1) & (\inst|h_limit\(3) & \inst|h_limit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(2),
	datab => \inst|h_limit\(1),
	datac => \inst|h_limit\(3),
	datad => \inst|h_limit\(0),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X62_Y50_N6
\inst|h_limit[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[2]~8_combout\ = (\inst|Add1~4_combout\ & (\inst|h_limit[7]~0_combout\ & (\inst|h_limit\(2)))) # (!\inst|Add1~4_combout\ & (((\inst|h_limit[7]~0_combout\ & \inst|h_limit\(2))) # (!\inst|h_limit[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~4_combout\,
	datab => \inst|h_limit[7]~0_combout\,
	datac => \inst|h_limit\(2),
	datad => \inst|h_limit[0]~1_combout\,
	combout => \inst|h_limit[2]~8_combout\);

-- Location: LCCOMB_X62_Y50_N10
\inst|h_limit[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[0]~10_combout\ = (\inst|Add1~0_combout\ & (\inst|h_limit[7]~0_combout\ & (\inst|h_limit\(0)))) # (!\inst|Add1~0_combout\ & (((\inst|h_limit[7]~0_combout\ & \inst|h_limit\(0))) # (!\inst|h_limit[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|h_limit[7]~0_combout\,
	datac => \inst|h_limit\(0),
	datad => \inst|h_limit[0]~1_combout\,
	combout => \inst|h_limit[0]~10_combout\);

-- Location: LCCOMB_X59_Y53_N30
\i_linecounter|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~0_combout\ = (((!\i_linecounter|vcnti\(0) & !\i_linecounter|vcnti\(1))) # (!\i_linecounter|vcnti\(2))) # (!\i_linecounter|vcnti\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(0),
	datab => \i_linecounter|vcnti\(3),
	datac => \i_linecounter|vcnti\(2),
	datad => \i_linecounter|vcnti\(1),
	combout => \i_linecounter|LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y51_N20
\i_pixreg|Mux0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~173_combout\ = (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~173_combout\);

-- Location: LCCOMB_X60_Y53_N30
\i_pixreg|Mux0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~174_combout\ = (\i_pixreg|Add1~0_combout\ & (((!\i_pixreg|Add1~4_combout\ & \i_pixreg|Mux0~53_combout\)))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~54_combout\ & (\i_pixreg|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~54_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~53_combout\,
	combout => \i_pixreg|Mux0~174_combout\);

-- Location: LCCOMB_X59_Y51_N22
\i_pixreg|Mux0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~175_combout\ = (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~175_combout\);

-- Location: LCCOMB_X62_Y51_N28
\i_pixreg|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~11_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) $ (((\i_pixcounter|hcnti\(3)))))) # (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(3)) # (!\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~11_combout\);

-- Location: LCCOMB_X62_Y51_N6
\i_pixreg|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~12_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(6)) # (!\i_pixreg|Add1~10_combout\)))) # (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~10_combout\ & 
-- !\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~12_combout\);

-- Location: LCCOMB_X62_Y51_N16
\i_pixreg|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~14_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~10_combout\ & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(3)))) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~10_combout\ & ((!\i_pixcounter|hcnti\(3)) # 
-- (!\i_pixcounter|hcnti\(5)))) # (!\i_pixreg|Add1~10_combout\ & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~14_combout\);

-- Location: LCCOMB_X62_Y51_N18
\i_pixreg|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~15_combout\ = (\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(5) & (((!\i_pixreg|Add1~10_combout\ & !\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~15_combout\);

-- Location: LCCOMB_X62_Y51_N4
\i_pixreg|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~16_combout\ = (\i_pixreg|Add1~0_combout\ & (((\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~12_combout\)) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~12_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~11_combout\,
	combout => \i_pixreg|Mux0~16_combout\);

-- Location: LCCOMB_X62_Y51_N22
\i_pixreg|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~17_combout\ = (\i_pixreg|Mux0~16_combout\ & (((\i_pixreg|Mux0~15_combout\) # (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Mux0~16_combout\ & (\i_pixreg|Mux0~14_combout\ & ((\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~14_combout\,
	datab => \i_pixreg|Mux0~15_combout\,
	datac => \i_pixreg|Mux0~16_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~17_combout\);

-- Location: LCCOMB_X63_Y52_N14
\i_pixreg|Mux0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~176_combout\ = (\i_pixreg|Add1~2_combout\ & (((!\i_pixreg|Add1~8_combout\ & \i_pixreg|Mux0~91_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~91_combout\,
	combout => \i_pixreg|Mux0~176_combout\);

-- Location: LCCOMB_X63_Y52_N0
\i_pixreg|Mux0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~177_combout\ = (\i_pixreg|Mux0~176_combout\ & ((\i_pixreg|Add1~8_combout\ & ((!\i_pixreg|Mux0~90_combout\))) # (!\i_pixreg|Add1~8_combout\ & (\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Mux0~90_combout\,
	datac => \i_pixreg|Mux0~176_combout\,
	datad => \i_pixreg|Add1~8_combout\,
	combout => \i_pixreg|Mux0~177_combout\);

-- Location: LCCOMB_X63_Y52_N26
\i_pixreg|Mux0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~178_combout\ = (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Mux0~55_combout\ & (!\i_pixreg|Add1~8_combout\ & !\i_pixreg|Mux0~56_combout\)) # (!\i_pixreg|Mux0~55_combout\ & (\i_pixreg|Add1~8_combout\ & \i_pixreg|Mux0~56_combout\)))) # 
-- (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~8_combout\ & (\i_pixreg|Mux0~55_combout\ $ (!\i_pixreg|Mux0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Mux0~55_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~56_combout\,
	combout => \i_pixreg|Mux0~178_combout\);

-- Location: LCCOMB_X63_Y52_N28
\i_pixreg|Mux0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~179_combout\ = (\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~178_combout\ & (\i_pixreg|Add1~2_combout\ $ (!\i_pixreg|Mux0~56_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~178_combout\ $ (((\i_pixreg|Add1~2_combout\ & 
-- !\i_pixreg|Mux0~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~178_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~56_combout\,
	combout => \i_pixreg|Mux0~179_combout\);

-- Location: LCCOMB_X58_Y52_N10
\i_pixreg|vcnt_d[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|vcnt_d[8]~feeder_combout\ = \i_linecounter|vcnti\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_linecounter|vcnti\(8),
	combout => \i_pixreg|vcnt_d[8]~feeder_combout\);

-- Location: LCCOMB_X58_Y52_N22
\i_pixreg|vcnt_d[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|vcnt_d[3]~feeder_combout\ = \i_linecounter|vcnti\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_linecounter|vcnti\(3),
	combout => \i_pixreg|vcnt_d[3]~feeder_combout\);

-- Location: IOOBUF_X38_Y73_N16
\hsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_hs4~q\,
	devoe => ww_devoe,
	o => \hsync~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\vsync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_vs4~q\,
	devoe => ww_devoe,
	o => \vsync~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\vga_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_ce_gen|counter\(0),
	devoe => ww_devoe,
	o => \vga_clk~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\vga_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_blank3~q\,
	devoe => ww_devoe,
	o => \vga_blank~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\vga_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_sync~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\vga_b[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(7),
	devoe => ww_devoe,
	o => \vga_b[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\vga_b[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(6),
	devoe => ww_devoe,
	o => \vga_b[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\vga_b[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(5),
	devoe => ww_devoe,
	o => \vga_b[5]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\vga_b[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(4),
	devoe => ww_devoe,
	o => \vga_b[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\vga_b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(3),
	devoe => ww_devoe,
	o => \vga_b[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\vga_b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(2),
	devoe => ww_devoe,
	o => \vga_b[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\vga_b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(1),
	devoe => ww_devoe,
	o => \vga_b[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\vga_b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_b\(0),
	devoe => ww_devoe,
	o => \vga_b[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\vga_g[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(7),
	devoe => ww_devoe,
	o => \vga_g[7]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\vga_g[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(6),
	devoe => ww_devoe,
	o => \vga_g[6]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\vga_g[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(5),
	devoe => ww_devoe,
	o => \vga_g[5]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\vga_g[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(4),
	devoe => ww_devoe,
	o => \vga_g[4]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\vga_g[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(3),
	devoe => ww_devoe,
	o => \vga_g[3]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\vga_g[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(2),
	devoe => ww_devoe,
	o => \vga_g[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\vga_g[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(1),
	devoe => ww_devoe,
	o => \vga_g[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\vga_g[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_g\(0),
	devoe => ww_devoe,
	o => \vga_g[0]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\vga_r[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(7),
	devoe => ww_devoe,
	o => \vga_r[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\vga_r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(6),
	devoe => ww_devoe,
	o => \vga_r[6]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\vga_r[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(5),
	devoe => ww_devoe,
	o => \vga_r[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\vga_r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(4),
	devoe => ww_devoe,
	o => \vga_r[4]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\vga_r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(3),
	devoe => ww_devoe,
	o => \vga_r[3]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\vga_r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(2),
	devoe => ww_devoe,
	o => \vga_r[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\vga_r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(1),
	devoe => ww_devoe,
	o => \vga_r[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\vga_r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_RGB_gen|vga_r\(0),
	devoe => ww_devoe,
	o => \vga_r[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\fpga_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_clk,
	o => \fpga_clk~input_o\);

-- Location: CLKCTRL_G4
\fpga_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fpga_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fpga_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X61_Y53_N2
\i_pixcounter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~0_combout\ = \i_pixcounter|hcnti\(0) $ (VCC)
-- \i_pixcounter|Add0~1\ = CARRY(\i_pixcounter|hcnti\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(0),
	datad => VCC,
	combout => \i_pixcounter|Add0~0_combout\,
	cout => \i_pixcounter|Add0~1\);

-- Location: IOIBUF_X115_Y40_N8
\KEY0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: LCCOMB_X58_Y53_N28
\i_ce_gen|counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_ce_gen|counter[0]~0_combout\ = !\i_ce_gen|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ce_gen|counter\(0),
	combout => \i_ce_gen|counter[0]~0_combout\);

-- Location: FF_X58_Y53_N29
\i_ce_gen|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_ce_gen|counter[0]~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_ce_gen|counter\(0));

-- Location: FF_X61_Y53_N3
\i_pixcounter|hcnti[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|Add0~0_combout\,
	clrn => \KEY0~input_o\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(0));

-- Location: LCCOMB_X61_Y53_N4
\i_pixcounter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~2_combout\ = (\i_pixcounter|hcnti\(1) & (!\i_pixcounter|Add0~1\)) # (!\i_pixcounter|hcnti\(1) & ((\i_pixcounter|Add0~1\) # (GND)))
-- \i_pixcounter|Add0~3\ = CARRY((!\i_pixcounter|Add0~1\) # (!\i_pixcounter|hcnti\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(1),
	datad => VCC,
	cin => \i_pixcounter|Add0~1\,
	combout => \i_pixcounter|Add0~2_combout\,
	cout => \i_pixcounter|Add0~3\);

-- Location: LCCOMB_X61_Y53_N6
\i_pixcounter|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~4_combout\ = (\i_pixcounter|hcnti\(2) & (\i_pixcounter|Add0~3\ $ (GND))) # (!\i_pixcounter|hcnti\(2) & (!\i_pixcounter|Add0~3\ & VCC))
-- \i_pixcounter|Add0~5\ = CARRY((\i_pixcounter|hcnti\(2) & !\i_pixcounter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(2),
	datad => VCC,
	cin => \i_pixcounter|Add0~3\,
	combout => \i_pixcounter|Add0~4_combout\,
	cout => \i_pixcounter|Add0~5\);

-- Location: LCCOMB_X61_Y53_N0
\i_pixcounter|hcnti~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~4_combout\ = (\i_pixcounter|Add0~4_combout\ & (((!\i_pixcounter|Equal0~0_combout\) # (!\i_pixcounter|Equal0~1_combout\)) # (!\i_pixcounter|hcnti\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_pixcounter|Add0~4_combout\,
	datac => \i_pixcounter|Equal0~1_combout\,
	datad => \i_pixcounter|Equal0~0_combout\,
	combout => \i_pixcounter|hcnti~4_combout\);

-- Location: FF_X61_Y53_N1
\i_pixcounter|hcnti[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti~4_combout\,
	clrn => \KEY0~input_o\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(2));

-- Location: LCCOMB_X61_Y53_N8
\i_pixcounter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~6_combout\ = (\i_pixcounter|hcnti\(3) & (!\i_pixcounter|Add0~5\)) # (!\i_pixcounter|hcnti\(3) & ((\i_pixcounter|Add0~5\) # (GND)))
-- \i_pixcounter|Add0~7\ = CARRY((!\i_pixcounter|Add0~5\) # (!\i_pixcounter|hcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(3),
	datad => VCC,
	cin => \i_pixcounter|Add0~5\,
	combout => \i_pixcounter|Add0~6_combout\,
	cout => \i_pixcounter|Add0~7\);

-- Location: LCCOMB_X61_Y53_N24
\i_pixcounter|hcnti~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~2_combout\ = (\i_pixcounter|Add0~6_combout\ & (((!\i_pixcounter|Equal0~0_combout\) # (!\i_pixcounter|Equal0~1_combout\)) # (!\i_pixcounter|hcnti\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_pixcounter|Add0~6_combout\,
	datac => \i_pixcounter|Equal0~1_combout\,
	datad => \i_pixcounter|Equal0~0_combout\,
	combout => \i_pixcounter|hcnti~2_combout\);

-- Location: FF_X61_Y53_N25
\i_pixcounter|hcnti[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti~2_combout\,
	clrn => \KEY0~input_o\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(3));

-- Location: LCCOMB_X61_Y53_N10
\i_pixcounter|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~8_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixcounter|Add0~7\ $ (GND))) # (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|Add0~7\ & VCC))
-- \i_pixcounter|Add0~9\ = CARRY((\i_pixcounter|hcnti\(4) & !\i_pixcounter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datad => VCC,
	cin => \i_pixcounter|Add0~7\,
	combout => \i_pixcounter|Add0~8_combout\,
	cout => \i_pixcounter|Add0~9\);

-- Location: LCCOMB_X61_Y53_N12
\i_pixcounter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~10_combout\ = (\i_pixcounter|hcnti\(5) & (!\i_pixcounter|Add0~9\)) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|Add0~9\) # (GND)))
-- \i_pixcounter|Add0~11\ = CARRY((!\i_pixcounter|Add0~9\) # (!\i_pixcounter|hcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(5),
	datad => VCC,
	cin => \i_pixcounter|Add0~9\,
	combout => \i_pixcounter|Add0~10_combout\,
	cout => \i_pixcounter|Add0~11\);

-- Location: FF_X61_Y53_N13
\i_pixcounter|hcnti[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|Add0~10_combout\,
	clrn => \KEY0~input_o\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(5));

-- Location: LCCOMB_X62_Y52_N12
\i_pixreg|Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~22_combout\ = (!\i_pixcounter|hcnti\(6) & !\i_pixcounter|hcnti\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~22_combout\);

-- Location: LCCOMB_X61_Y53_N14
\i_pixcounter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~12_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|Add0~11\ $ (GND))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|Add0~11\ & VCC))
-- \i_pixcounter|Add0~13\ = CARRY((\i_pixcounter|hcnti\(6) & !\i_pixcounter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(6),
	datad => VCC,
	cin => \i_pixcounter|Add0~11\,
	combout => \i_pixcounter|Add0~12_combout\,
	cout => \i_pixcounter|Add0~13\);

-- Location: FF_X61_Y53_N15
\i_pixcounter|hcnti[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|Add0~12_combout\,
	clrn => \KEY0~input_o\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(6));

-- Location: LCCOMB_X61_Y53_N16
\i_pixcounter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~14_combout\ = (\i_pixcounter|hcnti\(7) & (!\i_pixcounter|Add0~13\)) # (!\i_pixcounter|hcnti\(7) & ((\i_pixcounter|Add0~13\) # (GND)))
-- \i_pixcounter|Add0~15\ = CARRY((!\i_pixcounter|Add0~13\) # (!\i_pixcounter|hcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(7),
	datad => VCC,
	cin => \i_pixcounter|Add0~13\,
	combout => \i_pixcounter|Add0~14_combout\,
	cout => \i_pixcounter|Add0~15\);

-- Location: LCCOMB_X61_Y53_N18
\i_pixcounter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~16_combout\ = (\i_pixcounter|hcnti\(8) & (\i_pixcounter|Add0~15\ $ (GND))) # (!\i_pixcounter|hcnti\(8) & (!\i_pixcounter|Add0~15\ & VCC))
-- \i_pixcounter|Add0~17\ = CARRY((\i_pixcounter|hcnti\(8) & !\i_pixcounter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datad => VCC,
	cin => \i_pixcounter|Add0~15\,
	combout => \i_pixcounter|Add0~16_combout\,
	cout => \i_pixcounter|Add0~17\);

-- Location: LCCOMB_X61_Y53_N20
\i_pixcounter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~18_combout\ = \i_pixcounter|Add0~17\ $ (\i_pixcounter|hcnti\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_pixcounter|hcnti\(9),
	cin => \i_pixcounter|Add0~17\,
	combout => \i_pixcounter|Add0~18_combout\);

-- Location: LCCOMB_X58_Y53_N4
\i_pixcounter|hcnti~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~0_combout\ = (\i_pixcounter|Add0~16_combout\ & (((!\i_pixcounter|Equal0~1_combout\) # (!\i_pixcounter|hcnti\(8))) # (!\i_pixcounter|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|Equal0~0_combout\,
	datab => \i_pixcounter|Add0~16_combout\,
	datac => \i_pixcounter|hcnti\(8),
	datad => \i_pixcounter|Equal0~1_combout\,
	combout => \i_pixcounter|hcnti~0_combout\);

-- Location: FF_X58_Y53_N5
\i_pixcounter|hcnti[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti~0_combout\,
	clrn => \KEY0~input_o\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(8));

-- Location: LCCOMB_X58_Y53_N30
\i_pixcounter|hcnti~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~1_combout\ = (\i_pixcounter|Add0~18_combout\ & (((!\i_pixcounter|hcnti\(8)) # (!\i_pixcounter|Equal0~0_combout\)) # (!\i_pixcounter|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|Equal0~1_combout\,
	datab => \i_pixcounter|Add0~18_combout\,
	datac => \i_pixcounter|Equal0~0_combout\,
	datad => \i_pixcounter|hcnti\(8),
	combout => \i_pixcounter|hcnti~1_combout\);

-- Location: FF_X58_Y53_N31
\i_pixcounter|hcnti[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti~1_combout\,
	clrn => \KEY0~input_o\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(9));

-- Location: LCCOMB_X61_Y53_N28
\i_pixcounter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~0_combout\ = (\i_pixcounter|hcnti\(2) & (\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~22_combout\ & \i_pixcounter|hcnti\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(2),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Mux0~22_combout\,
	datad => \i_pixcounter|hcnti\(9),
	combout => \i_pixcounter|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y53_N30
\i_pixcounter|hcnti~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~3_combout\ = (\i_pixcounter|Add0~8_combout\ & (((!\i_pixcounter|Equal0~1_combout\) # (!\i_pixcounter|Equal0~0_combout\)) # (!\i_pixcounter|hcnti\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_pixcounter|Equal0~0_combout\,
	datac => \i_pixcounter|Equal0~1_combout\,
	datad => \i_pixcounter|Add0~8_combout\,
	combout => \i_pixcounter|hcnti~3_combout\);

-- Location: FF_X61_Y53_N31
\i_pixcounter|hcnti[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti~3_combout\,
	clrn => \KEY0~input_o\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(4));

-- Location: LCCOMB_X61_Y50_N28
\i_pixcounter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~1_combout\ = (!\i_pixcounter|hcnti\(7) & (!\i_pixcounter|hcnti\(1) & (\i_pixcounter|hcnti\(0) & \i_pixcounter|hcnti\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(7),
	datab => \i_pixcounter|hcnti\(1),
	datac => \i_pixcounter|hcnti\(0),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixcounter|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y53_N26
\i_pixcounter|hcnti~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~5_combout\ = (\i_pixcounter|Add0~2_combout\ & (((!\i_pixcounter|Equal0~0_combout\) # (!\i_pixcounter|Equal0~1_combout\)) # (!\i_pixcounter|hcnti\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_pixcounter|Add0~2_combout\,
	datac => \i_pixcounter|Equal0~1_combout\,
	datad => \i_pixcounter|Equal0~0_combout\,
	combout => \i_pixcounter|hcnti~5_combout\);

-- Location: FF_X61_Y53_N27
\i_pixcounter|hcnti[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|hcnti~5_combout\,
	clrn => \KEY0~input_o\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(1));

-- Location: LCCOMB_X62_Y52_N14
\i_hs_gen|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~3_combout\ = (!\i_pixcounter|hcnti\(4) & (((!\i_pixcounter|hcnti\(2)) # (!\i_pixcounter|hcnti\(1))) # (!\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(1),
	datac => \i_pixcounter|hcnti\(2),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_hs_gen|process_0~3_combout\);

-- Location: FF_X61_Y53_N17
\i_pixcounter|hcnti[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixcounter|Add0~14_combout\,
	clrn => \KEY0~input_o\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixcounter|hcnti\(7));

-- Location: LCCOMB_X58_Y53_N18
\i_hs_gen|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~2_combout\ = ((\i_pixcounter|hcnti\(8)) # (!\i_pixcounter|hcnti\(7))) # (!\i_pixcounter|hcnti\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(9),
	datac => \i_pixcounter|hcnti\(8),
	datad => \i_pixcounter|hcnti\(7),
	combout => \i_hs_gen|process_0~2_combout\);

-- Location: LCCOMB_X61_Y50_N24
\i_hs_gen|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~0_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(2) & ((\i_pixcounter|hcnti\(1)) # (\i_pixcounter|hcnti\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(1),
	datac => \i_pixcounter|hcnti\(0),
	datad => \i_pixcounter|hcnti\(2),
	combout => \i_hs_gen|process_0~0_combout\);

-- Location: LCCOMB_X62_Y52_N20
\i_hs_gen|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~1_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(5) & ((\i_hs_gen|process_0~0_combout\) # (\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_hs_gen|process_0~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_hs_gen|process_0~1_combout\);

-- Location: LCCOMB_X62_Y52_N0
\i_hs_gen|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~4_combout\ = (!\i_hs_gen|process_0~2_combout\ & (!\i_hs_gen|process_0~1_combout\ & ((!\i_hs_gen|process_0~3_combout\) # (!\i_pixreg|Mux0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~22_combout\,
	datab => \i_hs_gen|process_0~3_combout\,
	datac => \i_hs_gen|process_0~2_combout\,
	datad => \i_hs_gen|process_0~1_combout\,
	combout => \i_hs_gen|process_0~4_combout\);

-- Location: FF_X62_Y52_N1
\i_hs_gen|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_hs_gen|process_0~4_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs_gen|hsync~q\);

-- Location: LCCOMB_X58_Y53_N14
\i_blank6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_blank6~0_combout\ = !\i_hs_gen|hsync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_hs_gen|hsync~q\,
	combout => \i_blank6~0_combout\);

-- Location: FF_X58_Y53_N15
i_blank6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_blank6~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_blank6~q\);

-- Location: FF_X58_Y53_N25
i_hs3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_blank6~q\,
	clrn => \KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs3~q\);

-- Location: LCCOMB_X58_Y53_N0
\i_hs4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs4~feeder_combout\ = \i_hs3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_hs3~q\,
	combout => \i_hs4~feeder_combout\);

-- Location: FF_X58_Y53_N1
i_hs4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_hs4~feeder_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs4~q\);

-- Location: LCCOMB_X59_Y53_N12
\i_linecounter|vcnti[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[1]~12_combout\ = (\i_linecounter|vcnti\(1) & (!\i_linecounter|vcnti[0]~11\)) # (!\i_linecounter|vcnti\(1) & ((\i_linecounter|vcnti[0]~11\) # (GND)))
-- \i_linecounter|vcnti[1]~13\ = CARRY((!\i_linecounter|vcnti[0]~11\) # (!\i_linecounter|vcnti\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(1),
	datad => VCC,
	cin => \i_linecounter|vcnti[0]~11\,
	combout => \i_linecounter|vcnti[1]~12_combout\,
	cout => \i_linecounter|vcnti[1]~13\);

-- Location: LCCOMB_X59_Y53_N14
\i_linecounter|vcnti[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[2]~14_combout\ = (\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti[1]~13\ $ (GND))) # (!\i_linecounter|vcnti\(2) & (!\i_linecounter|vcnti[1]~13\ & VCC))
-- \i_linecounter|vcnti[2]~15\ = CARRY((\i_linecounter|vcnti\(2) & !\i_linecounter|vcnti[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(2),
	datad => VCC,
	cin => \i_linecounter|vcnti[1]~13\,
	combout => \i_linecounter|vcnti[2]~14_combout\,
	cout => \i_linecounter|vcnti[2]~15\);

-- Location: LCCOMB_X59_Y53_N22
\i_linecounter|vcnti[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[6]~22_combout\ = (\i_linecounter|vcnti\(6) & (\i_linecounter|vcnti[5]~21\ $ (GND))) # (!\i_linecounter|vcnti\(6) & (!\i_linecounter|vcnti[5]~21\ & VCC))
-- \i_linecounter|vcnti[6]~23\ = CARRY((\i_linecounter|vcnti\(6) & !\i_linecounter|vcnti[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(6),
	datad => VCC,
	cin => \i_linecounter|vcnti[5]~21\,
	combout => \i_linecounter|vcnti[6]~22_combout\,
	cout => \i_linecounter|vcnti[6]~23\);

-- Location: LCCOMB_X59_Y53_N24
\i_linecounter|vcnti[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[7]~24_combout\ = (\i_linecounter|vcnti\(7) & (!\i_linecounter|vcnti[6]~23\)) # (!\i_linecounter|vcnti\(7) & ((\i_linecounter|vcnti[6]~23\) # (GND)))
-- \i_linecounter|vcnti[7]~25\ = CARRY((!\i_linecounter|vcnti[6]~23\) # (!\i_linecounter|vcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(7),
	datad => VCC,
	cin => \i_linecounter|vcnti[6]~23\,
	combout => \i_linecounter|vcnti[7]~24_combout\,
	cout => \i_linecounter|vcnti[7]~25\);

-- Location: LCCOMB_X61_Y50_N26
\i_linecounter|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~0_combout\ = (!\i_pixcounter|hcnti\(8) & (\i_pixcounter|hcnti\(1) & (!\i_pixcounter|hcnti\(0) & \i_pixcounter|hcnti\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_pixcounter|hcnti\(1),
	datac => \i_pixcounter|hcnti\(0),
	datad => \i_pixcounter|hcnti\(7),
	combout => \i_linecounter|process_0~0_combout\);

-- Location: LCCOMB_X61_Y53_N22
\i_linecounter|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~1_combout\ = (!\i_pixcounter|hcnti\(4) & (\i_linecounter|process_0~0_combout\ & (\i_ce_gen|counter\(0) & \i_pixcounter|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_linecounter|process_0~0_combout\,
	datac => \i_ce_gen|counter\(0),
	datad => \i_pixcounter|Equal0~0_combout\,
	combout => \i_linecounter|process_0~1_combout\);

-- Location: FF_X59_Y53_N25
\i_linecounter|vcnti[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[7]~24_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(7));

-- Location: LCCOMB_X59_Y53_N0
\i_linecounter|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~1_combout\ = (!\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti\(4) & (!\i_linecounter|vcnti\(6) & !\i_linecounter|vcnti\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(4),
	datac => \i_linecounter|vcnti\(6),
	datad => \i_linecounter|vcnti\(7),
	combout => \i_linecounter|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y53_N26
\i_linecounter|vcnti[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[8]~26_combout\ = (\i_linecounter|vcnti\(8) & (\i_linecounter|vcnti[7]~25\ $ (GND))) # (!\i_linecounter|vcnti\(8) & (!\i_linecounter|vcnti[7]~25\ & VCC))
-- \i_linecounter|vcnti[8]~27\ = CARRY((\i_linecounter|vcnti\(8) & !\i_linecounter|vcnti[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(8),
	datad => VCC,
	cin => \i_linecounter|vcnti[7]~25\,
	combout => \i_linecounter|vcnti[8]~26_combout\,
	cout => \i_linecounter|vcnti[8]~27\);

-- Location: FF_X59_Y53_N27
\i_linecounter|vcnti[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[8]~26_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(8));

-- Location: LCCOMB_X59_Y53_N28
\i_linecounter|vcnti[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[9]~28_combout\ = \i_linecounter|vcnti[8]~27\ $ (\i_linecounter|vcnti\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_linecounter|vcnti\(9),
	cin => \i_linecounter|vcnti[8]~27\,
	combout => \i_linecounter|vcnti[9]~28_combout\);

-- Location: FF_X59_Y53_N29
\i_linecounter|vcnti[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[9]~28_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(9));

-- Location: LCCOMB_X59_Y53_N6
\i_linecounter|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~2_combout\ = (\i_linecounter|vcnti\(9) & (((\i_linecounter|vcnti\(8)) # (!\i_linecounter|LessThan0~1_combout\)) # (!\i_linecounter|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|LessThan0~0_combout\,
	datab => \i_linecounter|LessThan0~1_combout\,
	datac => \i_linecounter|vcnti\(8),
	datad => \i_linecounter|vcnti\(9),
	combout => \i_linecounter|LessThan0~2_combout\);

-- Location: FF_X59_Y53_N15
\i_linecounter|vcnti[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[2]~14_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(2));

-- Location: LCCOMB_X59_Y53_N16
\i_linecounter|vcnti[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[3]~16_combout\ = (\i_linecounter|vcnti\(3) & (!\i_linecounter|vcnti[2]~15\)) # (!\i_linecounter|vcnti\(3) & ((\i_linecounter|vcnti[2]~15\) # (GND)))
-- \i_linecounter|vcnti[3]~17\ = CARRY((!\i_linecounter|vcnti[2]~15\) # (!\i_linecounter|vcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(3),
	datad => VCC,
	cin => \i_linecounter|vcnti[2]~15\,
	combout => \i_linecounter|vcnti[3]~16_combout\,
	cout => \i_linecounter|vcnti[3]~17\);

-- Location: FF_X59_Y53_N17
\i_linecounter|vcnti[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[3]~16_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(3));

-- Location: LCCOMB_X59_Y53_N18
\i_linecounter|vcnti[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[4]~18_combout\ = (\i_linecounter|vcnti\(4) & (\i_linecounter|vcnti[3]~17\ $ (GND))) # (!\i_linecounter|vcnti\(4) & (!\i_linecounter|vcnti[3]~17\ & VCC))
-- \i_linecounter|vcnti[4]~19\ = CARRY((\i_linecounter|vcnti\(4) & !\i_linecounter|vcnti[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(4),
	datad => VCC,
	cin => \i_linecounter|vcnti[3]~17\,
	combout => \i_linecounter|vcnti[4]~18_combout\,
	cout => \i_linecounter|vcnti[4]~19\);

-- Location: FF_X59_Y53_N19
\i_linecounter|vcnti[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[4]~18_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(4));

-- Location: LCCOMB_X59_Y53_N20
\i_linecounter|vcnti[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[5]~20_combout\ = (\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti[4]~19\)) # (!\i_linecounter|vcnti\(5) & ((\i_linecounter|vcnti[4]~19\) # (GND)))
-- \i_linecounter|vcnti[5]~21\ = CARRY((!\i_linecounter|vcnti[4]~19\) # (!\i_linecounter|vcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datad => VCC,
	cin => \i_linecounter|vcnti[4]~19\,
	combout => \i_linecounter|vcnti[5]~20_combout\,
	cout => \i_linecounter|vcnti[5]~21\);

-- Location: FF_X59_Y53_N23
\i_linecounter|vcnti[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[6]~22_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(6));

-- Location: LCCOMB_X58_Y52_N2
\i_vs_gen|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~0_combout\ = (\i_linecounter|vcnti\(5) & (\i_linecounter|vcnti\(6) & (!\i_linecounter|vcnti\(9) & \i_linecounter|vcnti\(8)))) # (!\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti\(6) & (\i_linecounter|vcnti\(9) & 
-- !\i_linecounter|vcnti\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(6),
	datac => \i_linecounter|vcnti\(9),
	datad => \i_linecounter|vcnti\(8),
	combout => \i_vs_gen|process_0~0_combout\);

-- Location: FF_X59_Y53_N13
\i_linecounter|vcnti[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[1]~12_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(1));

-- Location: LCCOMB_X59_Y53_N2
\i_vs_gen|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~1_combout\ = (\i_linecounter|vcnti\(2) & (((\i_linecounter|vcnti\(6)) # (\i_linecounter|vcnti\(1))))) # (!\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti\(0) & (\i_linecounter|vcnti\(6) & \i_linecounter|vcnti\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(0),
	datab => \i_linecounter|vcnti\(2),
	datac => \i_linecounter|vcnti\(6),
	datad => \i_linecounter|vcnti\(1),
	combout => \i_vs_gen|process_0~1_combout\);

-- Location: LCCOMB_X59_Y53_N4
\i_vs_gen|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~2_combout\ = (\i_linecounter|vcnti\(4)) # ((\i_vs_gen|process_0~1_combout\ & \i_linecounter|vcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(4),
	datac => \i_vs_gen|process_0~1_combout\,
	datad => \i_linecounter|vcnti\(3),
	combout => \i_vs_gen|process_0~2_combout\);

-- Location: LCCOMB_X59_Y53_N8
\i_vs_gen|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~3_combout\ = (\i_vs_gen|process_0~0_combout\ & ((\i_linecounter|vcnti\(6) & (\i_vs_gen|process_0~2_combout\ & \i_linecounter|vcnti\(7))) # (!\i_linecounter|vcnti\(6) & (!\i_vs_gen|process_0~2_combout\ & !\i_linecounter|vcnti\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(6),
	datab => \i_vs_gen|process_0~0_combout\,
	datac => \i_vs_gen|process_0~2_combout\,
	datad => \i_linecounter|vcnti\(7),
	combout => \i_vs_gen|process_0~3_combout\);

-- Location: FF_X59_Y53_N9
\i_vs_gen|vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_vs_gen|process_0~3_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_vs_gen|vsync~q\);

-- Location: LCCOMB_X58_Y53_N16
\i_blank5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_blank5~0_combout\ = !\i_vs_gen|vsync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_vs_gen|vsync~q\,
	combout => \i_blank5~0_combout\);

-- Location: FF_X58_Y53_N17
i_blank5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_blank5~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_blank5~q\);

-- Location: LCCOMB_X58_Y53_N2
\i_vs3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs3~feeder_combout\ = \i_blank5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_blank5~q\,
	combout => \i_vs3~feeder_combout\);

-- Location: FF_X58_Y53_N3
i_vs3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_vs3~feeder_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_vs3~q\);

-- Location: LCCOMB_X58_Y53_N26
\i_vs4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs4~feeder_combout\ = \i_vs3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_vs3~q\,
	combout => \i_vs4~feeder_combout\);

-- Location: FF_X58_Y53_N27
i_vs4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_vs4~feeder_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_vs4~q\);

-- Location: LCCOMB_X58_Y52_N0
\iBlank_gen|blank~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~0_combout\ = (((!\i_linecounter|vcnti\(8)) # (!\i_linecounter|vcnti\(7))) # (!\i_linecounter|vcnti\(6))) # (!\i_linecounter|vcnti\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(6),
	datac => \i_linecounter|vcnti\(7),
	datad => \i_linecounter|vcnti\(8),
	combout => \iBlank_gen|blank~0_combout\);

-- Location: LCCOMB_X58_Y53_N8
\iBlank_gen|blank~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~1_combout\ = (!\i_linecounter|vcnti\(9) & (((!\i_pixcounter|hcnti\(8) & !\i_pixcounter|hcnti\(7))) # (!\i_pixcounter|hcnti\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(9),
	datab => \i_linecounter|vcnti\(9),
	datac => \i_pixcounter|hcnti\(8),
	datad => \i_pixcounter|hcnti\(7),
	combout => \iBlank_gen|blank~1_combout\);

-- Location: LCCOMB_X58_Y53_N10
\iBlank_gen|blank~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~2_combout\ = (\iBlank_gen|blank~0_combout\ & \iBlank_gen|blank~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iBlank_gen|blank~0_combout\,
	datac => \iBlank_gen|blank~1_combout\,
	combout => \iBlank_gen|blank~2_combout\);

-- Location: FF_X58_Y53_N11
i_blank2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \iBlank_gen|blank~2_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_blank2~q\);

-- Location: LCCOMB_X58_Y53_N12
\i_blank4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_blank4~feeder_combout\ = \i_blank2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_blank2~q\,
	combout => \i_blank4~feeder_combout\);

-- Location: FF_X58_Y53_N13
i_blank4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_blank4~feeder_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_blank4~q\);

-- Location: LCCOMB_X58_Y53_N22
\i_blank3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_blank3~feeder_combout\ = \i_blank4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_blank4~q\,
	combout => \i_blank3~feeder_combout\);

-- Location: FF_X58_Y53_N23
i_blank3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_blank3~feeder_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_blank3~q\);

-- Location: FF_X58_Y52_N17
\i_pixreg|vcnt_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_linecounter|vcnti\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(7));

-- Location: FF_X58_Y52_N29
\i_pixreg|vcnt_d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_linecounter|vcnti\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(9));

-- Location: FF_X58_Y52_N7
\i_pixreg|hcnt_d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_pixcounter|hcnti\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(9));

-- Location: LCCOMB_X58_Y52_N28
\inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (!\i_pixreg|vcnt_d\(8) & (!\i_pixreg|vcnt_d\(7) & (!\i_pixreg|vcnt_d\(9) & !\i_pixreg|hcnt_d\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(8),
	datab => \i_pixreg|vcnt_d\(7),
	datac => \i_pixreg|vcnt_d\(9),
	datad => \i_pixreg|hcnt_d\(9),
	combout => \inst|process_0~1_combout\);

-- Location: FF_X61_Y50_N21
\i_pixreg|hcnt_d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_pixcounter|hcnti\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(8));

-- Location: LCCOMB_X62_Y50_N28
\inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|h_limit\(7) & ((\inst|Add1~13\) # (GND))) # (!\inst|h_limit\(7) & (!\inst|Add1~13\))
-- \inst|Add1~15\ = CARRY((\inst|h_limit\(7)) # (!\inst|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(7),
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X66_Y53_N0
\inst|counter[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~57_combout\ = !\inst|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(0),
	combout => \inst|counter[0]~57_combout\);

-- Location: FF_X66_Y53_N1
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X66_Y53_N14
\inst|counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~19_combout\ = (\inst|counter\(1) & (\inst|counter\(0) $ (VCC))) # (!\inst|counter\(1) & (\inst|counter\(0) & VCC))
-- \inst|counter[1]~20\ = CARRY((\inst|counter\(1) & \inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(0),
	datad => VCC,
	combout => \inst|counter[1]~19_combout\,
	cout => \inst|counter[1]~20\);

-- Location: LCCOMB_X66_Y53_N16
\inst|counter[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[2]~21_combout\ = (\inst|counter\(2) & (!\inst|counter[1]~20\)) # (!\inst|counter\(2) & ((\inst|counter[1]~20\) # (GND)))
-- \inst|counter[2]~22\ = CARRY((!\inst|counter[1]~20\) # (!\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datad => VCC,
	cin => \inst|counter[1]~20\,
	combout => \inst|counter[2]~21_combout\,
	cout => \inst|counter[2]~22\);

-- Location: FF_X66_Y53_N17
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X66_Y53_N18
\inst|counter[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[3]~23_combout\ = (\inst|counter\(3) & (\inst|counter[2]~22\ $ (GND))) # (!\inst|counter\(3) & (!\inst|counter[2]~22\ & VCC))
-- \inst|counter[3]~24\ = CARRY((\inst|counter\(3) & !\inst|counter[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(3),
	datad => VCC,
	cin => \inst|counter[2]~22\,
	combout => \inst|counter[3]~23_combout\,
	cout => \inst|counter[3]~24\);

-- Location: FF_X66_Y53_N19
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X66_Y53_N20
\inst|counter[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[4]~25_combout\ = (\inst|counter\(4) & (!\inst|counter[3]~24\)) # (!\inst|counter\(4) & ((\inst|counter[3]~24\) # (GND)))
-- \inst|counter[4]~26\ = CARRY((!\inst|counter[3]~24\) # (!\inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(4),
	datad => VCC,
	cin => \inst|counter[3]~24\,
	combout => \inst|counter[4]~25_combout\,
	cout => \inst|counter[4]~26\);

-- Location: FF_X66_Y53_N21
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X66_Y53_N24
\inst|counter[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[6]~29_combout\ = (\inst|counter\(6) & (!\inst|counter[5]~28\)) # (!\inst|counter\(6) & ((\inst|counter[5]~28\) # (GND)))
-- \inst|counter[6]~30\ = CARRY((!\inst|counter[5]~28\) # (!\inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(6),
	datad => VCC,
	cin => \inst|counter[5]~28\,
	combout => \inst|counter[6]~29_combout\,
	cout => \inst|counter[6]~30\);

-- Location: FF_X66_Y53_N25
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X66_Y53_N26
\inst|counter[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[7]~31_combout\ = (\inst|counter\(7) & (\inst|counter[6]~30\ $ (GND))) # (!\inst|counter\(7) & (!\inst|counter[6]~30\ & VCC))
-- \inst|counter[7]~32\ = CARRY((\inst|counter\(7) & !\inst|counter[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datad => VCC,
	cin => \inst|counter[6]~30\,
	combout => \inst|counter[7]~31_combout\,
	cout => \inst|counter[7]~32\);

-- Location: LCCOMB_X66_Y53_N28
\inst|counter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[8]~33_combout\ = (\inst|counter\(8) & (!\inst|counter[7]~32\)) # (!\inst|counter\(8) & ((\inst|counter[7]~32\) # (GND)))
-- \inst|counter[8]~34\ = CARRY((!\inst|counter[7]~32\) # (!\inst|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(8),
	datad => VCC,
	cin => \inst|counter[7]~32\,
	combout => \inst|counter[8]~33_combout\,
	cout => \inst|counter[8]~34\);

-- Location: FF_X66_Y53_N29
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X66_Y52_N0
\inst|counter[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~37_combout\ = (\inst|counter\(10) & (!\inst|counter[9]~36\)) # (!\inst|counter\(10) & ((\inst|counter[9]~36\) # (GND)))
-- \inst|counter[10]~38\ = CARRY((!\inst|counter[9]~36\) # (!\inst|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(10),
	datad => VCC,
	cin => \inst|counter[9]~36\,
	combout => \inst|counter[10]~37_combout\,
	cout => \inst|counter[10]~38\);

-- Location: FF_X66_Y52_N1
\inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(10));

-- Location: LCCOMB_X66_Y52_N2
\inst|counter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[11]~39_combout\ = (\inst|counter\(11) & (\inst|counter[10]~38\ $ (GND))) # (!\inst|counter\(11) & (!\inst|counter[10]~38\ & VCC))
-- \inst|counter[11]~40\ = CARRY((\inst|counter\(11) & !\inst|counter[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(11),
	datad => VCC,
	cin => \inst|counter[10]~38\,
	combout => \inst|counter[11]~39_combout\,
	cout => \inst|counter[11]~40\);

-- Location: FF_X66_Y52_N3
\inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[11]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(11));

-- Location: LCCOMB_X66_Y52_N4
\inst|counter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[12]~41_combout\ = (\inst|counter\(12) & (!\inst|counter[11]~40\)) # (!\inst|counter\(12) & ((\inst|counter[11]~40\) # (GND)))
-- \inst|counter[12]~42\ = CARRY((!\inst|counter[11]~40\) # (!\inst|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(12),
	datad => VCC,
	cin => \inst|counter[11]~40\,
	combout => \inst|counter[12]~41_combout\,
	cout => \inst|counter[12]~42\);

-- Location: FF_X66_Y52_N5
\inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(12));

-- Location: LCCOMB_X66_Y52_N6
\inst|counter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[13]~43_combout\ = (\inst|counter\(13) & (\inst|counter[12]~42\ $ (GND))) # (!\inst|counter\(13) & (!\inst|counter[12]~42\ & VCC))
-- \inst|counter[13]~44\ = CARRY((\inst|counter\(13) & !\inst|counter[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datad => VCC,
	cin => \inst|counter[12]~42\,
	combout => \inst|counter[13]~43_combout\,
	cout => \inst|counter[13]~44\);

-- Location: LCCOMB_X66_Y52_N8
\inst|counter[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[14]~45_combout\ = (\inst|counter\(14) & (!\inst|counter[13]~44\)) # (!\inst|counter\(14) & ((\inst|counter[13]~44\) # (GND)))
-- \inst|counter[14]~46\ = CARRY((!\inst|counter[13]~44\) # (!\inst|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(14),
	datad => VCC,
	cin => \inst|counter[13]~44\,
	combout => \inst|counter[14]~45_combout\,
	cout => \inst|counter[14]~46\);

-- Location: FF_X66_Y52_N9
\inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[14]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(14));

-- Location: FF_X66_Y52_N7
\inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[13]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(13));

-- Location: LCCOMB_X66_Y52_N24
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|counter\(15)) # (((\inst|counter\(12)) # (\inst|counter\(13))) # (!\inst|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datab => \inst|counter\(14),
	datac => \inst|counter\(12),
	datad => \inst|counter\(13),
	combout => \inst|Equal0~5_combout\);

-- Location: FF_X66_Y53_N27
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: FF_X66_Y53_N15
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X66_Y53_N2
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|counter\(3)) # ((\inst|counter\(2)) # ((\inst|counter\(1)) # (\inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|counter\(0),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y53_N6
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|Equal0~2_combout\) # (((\inst|counter\(7)) # (\inst|Equal0~1_combout\)) # (!\inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|counter\(6),
	datac => \inst|counter\(7),
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X66_Y52_N14
\inst|counter[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[17]~51_combout\ = (\inst|counter\(17) & (\inst|counter[16]~50\ $ (GND))) # (!\inst|counter\(17) & (!\inst|counter[16]~50\ & VCC))
-- \inst|counter[17]~52\ = CARRY((\inst|counter\(17) & !\inst|counter[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(17),
	datad => VCC,
	cin => \inst|counter[16]~50\,
	combout => \inst|counter[17]~51_combout\,
	cout => \inst|counter[17]~52\);

-- Location: FF_X66_Y52_N15
\inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[17]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(17));

-- Location: LCCOMB_X66_Y52_N16
\inst|counter[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[18]~53_combout\ = (\inst|counter\(18) & (!\inst|counter[17]~52\)) # (!\inst|counter\(18) & ((\inst|counter[17]~52\) # (GND)))
-- \inst|counter[18]~54\ = CARRY((!\inst|counter[17]~52\) # (!\inst|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(18),
	datad => VCC,
	cin => \inst|counter[17]~52\,
	combout => \inst|counter[18]~53_combout\,
	cout => \inst|counter[18]~54\);

-- Location: FF_X66_Y52_N17
\inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[18]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(18));

-- Location: LCCOMB_X66_Y52_N18
\inst|counter[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[19]~55_combout\ = \inst|counter[18]~54\ $ (!\inst|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(19),
	cin => \inst|counter[18]~54\,
	combout => \inst|counter[19]~55_combout\);

-- Location: FF_X66_Y52_N19
\inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|counter[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(19));

-- Location: LCCOMB_X66_Y52_N28
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (((!\inst|counter\(18)) # (!\inst|counter\(17))) # (!\inst|counter\(19))) # (!\inst|counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(16),
	datab => \inst|counter\(19),
	datac => \inst|counter\(17),
	datad => \inst|counter\(18),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X66_Y52_N26
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|Equal0~4_combout\) # ((\inst|Equal0~5_combout\) # ((\inst|Equal0~3_combout\) # (\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X63_Y50_N16
\inst|h_limit[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[0]~1_combout\ = (\inst|Equal0~6_combout\) # ((\inst|Equal1~0_combout\ & (\inst|h_limit\(8) & \inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|h_limit\(8),
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|h_limit[0]~1_combout\);

-- Location: LCCOMB_X63_Y50_N2
\inst|h_limit[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[7]~3_combout\ = (\inst|h_limit[7]~0_combout\ & ((\inst|h_limit\(7)) # ((!\inst|Add1~14_combout\ & !\inst|h_limit[0]~1_combout\)))) # (!\inst|h_limit[7]~0_combout\ & (!\inst|Add1~14_combout\ & ((!\inst|h_limit[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit[7]~0_combout\,
	datab => \inst|Add1~14_combout\,
	datac => \inst|h_limit\(7),
	datad => \inst|h_limit[0]~1_combout\,
	combout => \inst|h_limit[7]~3_combout\);

-- Location: FF_X63_Y50_N3
\inst|h_limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|h_limit[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_limit\(7));

-- Location: LCCOMB_X62_Y50_N2
\inst|h_limit[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[4]~6_combout\ = (\inst|Add1~8_combout\ & (((\inst|h_limit[7]~0_combout\ & \inst|h_limit\(4))) # (!\inst|h_limit[0]~1_combout\))) # (!\inst|Add1~8_combout\ & (\inst|h_limit[7]~0_combout\ & (\inst|h_limit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~8_combout\,
	datab => \inst|h_limit[7]~0_combout\,
	datac => \inst|h_limit\(4),
	datad => \inst|h_limit[0]~1_combout\,
	combout => \inst|h_limit[4]~6_combout\);

-- Location: FF_X62_Y50_N3
\inst|h_limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|h_limit[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_limit\(4));

-- Location: LCCOMB_X61_Y50_N30
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|h_limit\(5) & (!\inst|h_limit\(6) & (\inst|h_limit\(7) & !\inst|h_limit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(5),
	datab => \inst|h_limit\(6),
	datac => \inst|h_limit\(7),
	datad => \inst|h_limit\(4),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X63_Y50_N22
\inst|h_limit[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[7]~0_combout\ = (\inst|Equal0~6_combout\ & (((!\inst|Equal1~1_combout\) # (!\inst|h_limit\(8))) # (!\inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|h_limit\(8),
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|h_limit[7]~0_combout\);

-- Location: LCCOMB_X62_Y50_N8
\inst|h_limit[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[6]~4_combout\ = (\inst|Add1~12_combout\ & (((\inst|h_limit[7]~0_combout\ & \inst|h_limit\(6))) # (!\inst|h_limit[0]~1_combout\))) # (!\inst|Add1~12_combout\ & (\inst|h_limit[7]~0_combout\ & (\inst|h_limit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~12_combout\,
	datab => \inst|h_limit[7]~0_combout\,
	datac => \inst|h_limit\(6),
	datad => \inst|h_limit[0]~1_combout\,
	combout => \inst|h_limit[6]~4_combout\);

-- Location: FF_X62_Y50_N9
\inst|h_limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|h_limit[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_limit\(6));

-- Location: LCCOMB_X62_Y50_N4
\inst|h_limit[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[3]~7_combout\ = (\inst|Add1~6_combout\ & (((\inst|h_limit[7]~0_combout\ & \inst|h_limit\(3))) # (!\inst|h_limit[0]~1_combout\))) # (!\inst|Add1~6_combout\ & (\inst|h_limit[7]~0_combout\ & (\inst|h_limit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~6_combout\,
	datab => \inst|h_limit[7]~0_combout\,
	datac => \inst|h_limit\(3),
	datad => \inst|h_limit[0]~1_combout\,
	combout => \inst|h_limit[3]~7_combout\);

-- Location: FF_X62_Y50_N5
\inst|h_limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|h_limit[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_limit\(3));

-- Location: LCCOMB_X62_Y50_N0
\inst|h_limit[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[1]~9_combout\ = (\inst|Add1~2_combout\ & (\inst|h_limit[7]~0_combout\ & (\inst|h_limit\(1)))) # (!\inst|Add1~2_combout\ & (((\inst|h_limit[7]~0_combout\ & \inst|h_limit\(1))) # (!\inst|h_limit[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|h_limit[7]~0_combout\,
	datac => \inst|h_limit\(1),
	datad => \inst|h_limit[0]~1_combout\,
	combout => \inst|h_limit[1]~9_combout\);

-- Location: FF_X62_Y50_N1
\inst|h_limit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|h_limit[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_limit\(1));

-- Location: LCCOMB_X62_Y50_N24
\inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|h_limit\(5) & (!\inst|Add1~9\)) # (!\inst|h_limit\(5) & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|h_limit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_limit\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X63_Y50_N28
\inst|h_limit[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[5]~5_combout\ = (\inst|h_limit[7]~0_combout\ & ((\inst|h_limit\(5)) # ((\inst|Add1~10_combout\ & !\inst|h_limit[0]~1_combout\)))) # (!\inst|h_limit[7]~0_combout\ & (\inst|Add1~10_combout\ & ((!\inst|h_limit[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit[7]~0_combout\,
	datab => \inst|Add1~10_combout\,
	datac => \inst|h_limit\(5),
	datad => \inst|h_limit[0]~1_combout\,
	combout => \inst|h_limit[5]~5_combout\);

-- Location: FF_X63_Y50_N29
\inst|h_limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|h_limit[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_limit\(5));

-- Location: LCCOMB_X62_Y50_N30
\inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = \inst|Add1~15\ $ (!\inst|h_limit\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|h_limit\(8),
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\);

-- Location: LCCOMB_X63_Y50_N24
\inst|h_limit[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|h_limit[8]~2_combout\ = (\inst|h_limit[7]~0_combout\ & ((\inst|h_limit\(8)) # ((\inst|Add1~16_combout\ & !\inst|h_limit[0]~1_combout\)))) # (!\inst|h_limit[7]~0_combout\ & (\inst|Add1~16_combout\ & ((!\inst|h_limit[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit[7]~0_combout\,
	datab => \inst|Add1~16_combout\,
	datac => \inst|h_limit\(8),
	datad => \inst|h_limit[0]~1_combout\,
	combout => \inst|h_limit[8]~2_combout\);

-- Location: FF_X63_Y50_N25
\inst|h_limit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|h_limit[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_limit\(8));

-- Location: FF_X61_Y50_N19
\i_pixreg|hcnt_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_pixcounter|hcnti\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(7));

-- Location: FF_X61_Y50_N17
\i_pixreg|hcnt_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_pixcounter|hcnti\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(6));

-- Location: FF_X61_Y50_N15
\i_pixreg|hcnt_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_pixcounter|hcnti\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(5));

-- Location: FF_X61_Y50_N13
\i_pixreg|hcnt_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_pixcounter|hcnti\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(4));

-- Location: FF_X61_Y50_N11
\i_pixreg|hcnt_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_pixcounter|hcnti\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(3));

-- Location: FF_X61_Y50_N9
\i_pixreg|hcnt_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_pixcounter|hcnti\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(2));

-- Location: FF_X61_Y50_N5
\i_pixreg|hcnt_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_pixcounter|hcnti\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(0));

-- Location: LCCOMB_X61_Y50_N4
\inst|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_cout\ = CARRY((!\inst|h_limit\(0) & !\i_pixreg|hcnt_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(0),
	datab => \i_pixreg|hcnt_d\(0),
	datad => VCC,
	cout => \inst|LessThan3~1_cout\);

-- Location: LCCOMB_X61_Y50_N6
\inst|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_cout\ = CARRY((\i_pixreg|hcnt_d\(1) & ((\inst|h_limit\(1)) # (!\inst|LessThan3~1_cout\))) # (!\i_pixreg|hcnt_d\(1) & (\inst|h_limit\(1) & !\inst|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(1),
	datab => \inst|h_limit\(1),
	datad => VCC,
	cin => \inst|LessThan3~1_cout\,
	cout => \inst|LessThan3~3_cout\);

-- Location: LCCOMB_X61_Y50_N8
\inst|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_cout\ = CARRY((\inst|h_limit\(2) & (!\i_pixreg|hcnt_d\(2) & !\inst|LessThan3~3_cout\)) # (!\inst|h_limit\(2) & ((!\inst|LessThan3~3_cout\) # (!\i_pixreg|hcnt_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(2),
	datab => \i_pixreg|hcnt_d\(2),
	datad => VCC,
	cin => \inst|LessThan3~3_cout\,
	cout => \inst|LessThan3~5_cout\);

-- Location: LCCOMB_X61_Y50_N10
\inst|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_cout\ = CARRY((\inst|h_limit\(3) & (\i_pixreg|hcnt_d\(3) & !\inst|LessThan3~5_cout\)) # (!\inst|h_limit\(3) & ((\i_pixreg|hcnt_d\(3)) # (!\inst|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(3),
	datab => \i_pixreg|hcnt_d\(3),
	datad => VCC,
	cin => \inst|LessThan3~5_cout\,
	cout => \inst|LessThan3~7_cout\);

-- Location: LCCOMB_X61_Y50_N12
\inst|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~9_cout\ = CARRY((\inst|h_limit\(4) & ((!\inst|LessThan3~7_cout\) # (!\i_pixreg|hcnt_d\(4)))) # (!\inst|h_limit\(4) & (!\i_pixreg|hcnt_d\(4) & !\inst|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(4),
	datab => \i_pixreg|hcnt_d\(4),
	datad => VCC,
	cin => \inst|LessThan3~7_cout\,
	cout => \inst|LessThan3~9_cout\);

-- Location: LCCOMB_X61_Y50_N14
\inst|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~11_cout\ = CARRY((\inst|h_limit\(5) & (\i_pixreg|hcnt_d\(5) & !\inst|LessThan3~9_cout\)) # (!\inst|h_limit\(5) & ((\i_pixreg|hcnt_d\(5)) # (!\inst|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(5),
	datab => \i_pixreg|hcnt_d\(5),
	datad => VCC,
	cin => \inst|LessThan3~9_cout\,
	cout => \inst|LessThan3~11_cout\);

-- Location: LCCOMB_X61_Y50_N16
\inst|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~13_cout\ = CARRY((\inst|h_limit\(6) & ((!\inst|LessThan3~11_cout\) # (!\i_pixreg|hcnt_d\(6)))) # (!\inst|h_limit\(6) & (!\i_pixreg|hcnt_d\(6) & !\inst|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(6),
	datab => \i_pixreg|hcnt_d\(6),
	datad => VCC,
	cin => \inst|LessThan3~11_cout\,
	cout => \inst|LessThan3~13_cout\);

-- Location: LCCOMB_X61_Y50_N18
\inst|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~15_cout\ = CARRY((\inst|h_limit\(7) & ((\i_pixreg|hcnt_d\(7)) # (!\inst|LessThan3~13_cout\))) # (!\inst|h_limit\(7) & (\i_pixreg|hcnt_d\(7) & !\inst|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_limit\(7),
	datab => \i_pixreg|hcnt_d\(7),
	datad => VCC,
	cin => \inst|LessThan3~13_cout\,
	cout => \inst|LessThan3~15_cout\);

-- Location: LCCOMB_X61_Y50_N20
\inst|LessThan3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~16_combout\ = (\i_pixreg|hcnt_d\(8) & (!\inst|LessThan3~15_cout\ & \inst|h_limit\(8))) # (!\i_pixreg|hcnt_d\(8) & ((\inst|h_limit\(8)) # (!\inst|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|hcnt_d\(8),
	datad => \inst|h_limit\(8),
	cin => \inst|LessThan3~15_cout\,
	combout => \inst|LessThan3~16_combout\);

-- Location: LCCOMB_X61_Y50_N0
\inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (\i_pixreg|hcnt_d\(3)) # ((\i_pixreg|hcnt_d\(6)) # ((\i_pixreg|hcnt_d\(5)) # (\i_pixreg|hcnt_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \i_pixreg|hcnt_d\(6),
	datac => \i_pixreg|hcnt_d\(5),
	datad => \i_pixreg|hcnt_d\(4),
	combout => \inst|LessThan2~0_combout\);

-- Location: FF_X59_Y53_N21
\i_linecounter|vcnti[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_linecounter|vcnti[5]~20_combout\,
	clrn => \KEY0~input_o\,
	sclr => \i_linecounter|LessThan0~2_combout\,
	ena => \i_linecounter|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(5));

-- Location: LCCOMB_X58_Y52_N18
\i_pixreg|vcnt_d[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|vcnt_d[5]~feeder_combout\ = \i_linecounter|vcnti\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_linecounter|vcnti\(5),
	combout => \i_pixreg|vcnt_d[5]~feeder_combout\);

-- Location: FF_X58_Y52_N19
\i_pixreg|vcnt_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|vcnt_d[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(5));

-- Location: FF_X58_Y52_N25
\i_pixreg|vcnt_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_linecounter|vcnti\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(6));

-- Location: LCCOMB_X58_Y52_N8
\i_pixreg|vcnt_d[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|vcnt_d[4]~feeder_combout\ = \i_linecounter|vcnti\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_linecounter|vcnti\(4),
	combout => \i_pixreg|vcnt_d[4]~feeder_combout\);

-- Location: FF_X58_Y52_N9
\i_pixreg|vcnt_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|vcnt_d[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(4));

-- Location: LCCOMB_X58_Y52_N24
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = ((!\i_pixreg|vcnt_d\(3) & (!\i_pixreg|vcnt_d\(5) & !\i_pixreg|vcnt_d\(4)))) # (!\i_pixreg|vcnt_d\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datab => \i_pixreg|vcnt_d\(5),
	datac => \i_pixreg|vcnt_d\(6),
	datad => \i_pixreg|vcnt_d\(4),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X61_Y50_N2
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst|LessThan1~0_combout\ & ((\i_pixreg|hcnt_d\(8)) # ((\i_pixreg|hcnt_d\(7) & \inst|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(7),
	datab => \inst|LessThan2~0_combout\,
	datac => \inst|LessThan1~0_combout\,
	datad => \i_pixreg|hcnt_d\(8),
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X58_Y52_N14
\inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|LessThan0~1_combout\ & (\inst|process_0~1_combout\ & (\inst|LessThan3~16_combout\ & \inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~1_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|LessThan3~16_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X59_Y52_N0
\i_pixreg|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~0_combout\ = (\i_linecounter|vcnti\(3) & (\i_linecounter|vcnti\(5) $ (VCC))) # (!\i_linecounter|vcnti\(3) & (\i_linecounter|vcnti\(5) & VCC))
-- \i_pixreg|Add0~1\ = CARRY((\i_linecounter|vcnti\(3) & \i_linecounter|vcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(3),
	datab => \i_linecounter|vcnti\(5),
	datad => VCC,
	combout => \i_pixreg|Add0~0_combout\,
	cout => \i_pixreg|Add0~1\);

-- Location: LCCOMB_X59_Y52_N2
\i_pixreg|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~2_combout\ = (\i_linecounter|vcnti\(6) & ((\i_linecounter|vcnti\(4) & (\i_pixreg|Add0~1\ & VCC)) # (!\i_linecounter|vcnti\(4) & (!\i_pixreg|Add0~1\)))) # (!\i_linecounter|vcnti\(6) & ((\i_linecounter|vcnti\(4) & (!\i_pixreg|Add0~1\)) # 
-- (!\i_linecounter|vcnti\(4) & ((\i_pixreg|Add0~1\) # (GND)))))
-- \i_pixreg|Add0~3\ = CARRY((\i_linecounter|vcnti\(6) & (!\i_linecounter|vcnti\(4) & !\i_pixreg|Add0~1\)) # (!\i_linecounter|vcnti\(6) & ((!\i_pixreg|Add0~1\) # (!\i_linecounter|vcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(6),
	datab => \i_linecounter|vcnti\(4),
	datad => VCC,
	cin => \i_pixreg|Add0~1\,
	combout => \i_pixreg|Add0~2_combout\,
	cout => \i_pixreg|Add0~3\);

-- Location: LCCOMB_X59_Y52_N4
\i_pixreg|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~4_combout\ = ((\i_linecounter|vcnti\(5) $ (\i_linecounter|vcnti\(7) $ (!\i_pixreg|Add0~3\)))) # (GND)
-- \i_pixreg|Add0~5\ = CARRY((\i_linecounter|vcnti\(5) & ((\i_linecounter|vcnti\(7)) # (!\i_pixreg|Add0~3\))) # (!\i_linecounter|vcnti\(5) & (\i_linecounter|vcnti\(7) & !\i_pixreg|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(7),
	datad => VCC,
	cin => \i_pixreg|Add0~3\,
	combout => \i_pixreg|Add0~4_combout\,
	cout => \i_pixreg|Add0~5\);

-- Location: LCCOMB_X59_Y52_N8
\i_pixreg|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~8_combout\ = ((\i_linecounter|vcnti\(9) $ (\i_linecounter|vcnti\(7) $ (!\i_pixreg|Add0~7\)))) # (GND)
-- \i_pixreg|Add0~9\ = CARRY((\i_linecounter|vcnti\(9) & ((\i_linecounter|vcnti\(7)) # (!\i_pixreg|Add0~7\))) # (!\i_linecounter|vcnti\(9) & (\i_linecounter|vcnti\(7) & !\i_pixreg|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(9),
	datab => \i_linecounter|vcnti\(7),
	datad => VCC,
	cin => \i_pixreg|Add0~7\,
	combout => \i_pixreg|Add0~8_combout\,
	cout => \i_pixreg|Add0~9\);

-- Location: LCCOMB_X59_Y52_N12
\i_pixreg|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~12_combout\ = \i_linecounter|vcnti\(9) $ (!\i_pixreg|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(9),
	cin => \i_pixreg|Add0~11\,
	combout => \i_pixreg|Add0~12_combout\);

-- Location: LCCOMB_X59_Y52_N14
\i_pixreg|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~0_combout\ = (\i_linecounter|vcnti\(3) & (\i_pixcounter|hcnti\(7) $ (VCC))) # (!\i_linecounter|vcnti\(3) & (\i_pixcounter|hcnti\(7) & VCC))
-- \i_pixreg|Add1~1\ = CARRY((\i_linecounter|vcnti\(3) & \i_pixcounter|hcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(3),
	datab => \i_pixcounter|hcnti\(7),
	datad => VCC,
	combout => \i_pixreg|Add1~0_combout\,
	cout => \i_pixreg|Add1~1\);

-- Location: LCCOMB_X59_Y52_N16
\i_pixreg|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~2_combout\ = (\i_pixcounter|hcnti\(8) & ((\i_linecounter|vcnti\(4) & (\i_pixreg|Add1~1\ & VCC)) # (!\i_linecounter|vcnti\(4) & (!\i_pixreg|Add1~1\)))) # (!\i_pixcounter|hcnti\(8) & ((\i_linecounter|vcnti\(4) & (!\i_pixreg|Add1~1\)) # 
-- (!\i_linecounter|vcnti\(4) & ((\i_pixreg|Add1~1\) # (GND)))))
-- \i_pixreg|Add1~3\ = CARRY((\i_pixcounter|hcnti\(8) & (!\i_linecounter|vcnti\(4) & !\i_pixreg|Add1~1\)) # (!\i_pixcounter|hcnti\(8) & ((!\i_pixreg|Add1~1\) # (!\i_linecounter|vcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_linecounter|vcnti\(4),
	datad => VCC,
	cin => \i_pixreg|Add1~1\,
	combout => \i_pixreg|Add1~2_combout\,
	cout => \i_pixreg|Add1~3\);

-- Location: LCCOMB_X59_Y52_N20
\i_pixreg|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~6_combout\ = (\i_pixreg|Add0~2_combout\ & (!\i_pixreg|Add1~5\)) # (!\i_pixreg|Add0~2_combout\ & ((\i_pixreg|Add1~5\) # (GND)))
-- \i_pixreg|Add1~7\ = CARRY((!\i_pixreg|Add1~5\) # (!\i_pixreg|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add0~2_combout\,
	datad => VCC,
	cin => \i_pixreg|Add1~5\,
	combout => \i_pixreg|Add1~6_combout\,
	cout => \i_pixreg|Add1~7\);

-- Location: LCCOMB_X59_Y52_N22
\i_pixreg|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~8_combout\ = (\i_pixreg|Add0~4_combout\ & (\i_pixreg|Add1~7\ $ (GND))) # (!\i_pixreg|Add0~4_combout\ & (!\i_pixreg|Add1~7\ & VCC))
-- \i_pixreg|Add1~9\ = CARRY((\i_pixreg|Add0~4_combout\ & !\i_pixreg|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add0~4_combout\,
	datad => VCC,
	cin => \i_pixreg|Add1~7\,
	combout => \i_pixreg|Add1~8_combout\,
	cout => \i_pixreg|Add1~9\);

-- Location: LCCOMB_X59_Y52_N26
\i_pixreg|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~12_combout\ = (\i_pixreg|Add0~8_combout\ & (\i_pixreg|Add1~11\ $ (GND))) # (!\i_pixreg|Add0~8_combout\ & (!\i_pixreg|Add1~11\ & VCC))
-- \i_pixreg|Add1~13\ = CARRY((\i_pixreg|Add0~8_combout\ & !\i_pixreg|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add0~8_combout\,
	datad => VCC,
	cin => \i_pixreg|Add1~11\,
	combout => \i_pixreg|Add1~12_combout\,
	cout => \i_pixreg|Add1~13\);

-- Location: LCCOMB_X59_Y52_N28
\i_pixreg|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~14_combout\ = (\i_pixreg|Add0~10_combout\ & (!\i_pixreg|Add1~13\)) # (!\i_pixreg|Add0~10_combout\ & ((\i_pixreg|Add1~13\) # (GND)))
-- \i_pixreg|Add1~15\ = CARRY((!\i_pixreg|Add1~13\) # (!\i_pixreg|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add0~10_combout\,
	datad => VCC,
	cin => \i_pixreg|Add1~13\,
	combout => \i_pixreg|Add1~14_combout\,
	cout => \i_pixreg|Add1~15\);

-- Location: LCCOMB_X59_Y52_N30
\i_pixreg|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~16_combout\ = \i_pixreg|Add1~15\ $ (!\i_pixreg|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|Add0~12_combout\,
	cin => \i_pixreg|Add1~15\,
	combout => \i_pixreg|Add1~16_combout\);

-- Location: LCCOMB_X62_Y52_N16
\i_pixreg|Mux0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~24_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(5)) # ((\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(4))))) # (!\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3)) # (\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~24_combout\);

-- Location: LCCOMB_X62_Y52_N18
\i_pixreg|Mux0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~25_combout\ = (\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~2_combout\ & \i_pixreg|Mux0~24_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(5) & (!\i_pixreg|Add1~2_combout\ & 
-- !\i_pixreg|Mux0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~24_combout\,
	combout => \i_pixreg|Mux0~25_combout\);

-- Location: LCCOMB_X62_Y52_N28
\i_pixreg|Mux0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~26_combout\ = (\i_pixreg|Add1~8_combout\ & (\i_pixreg|Add1~4_combout\)) # (!\i_pixreg|Add1~8_combout\ & (\i_pixreg|Mux0~25_combout\ & (\i_pixreg|Add1~4_combout\ $ (\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~25_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~26_combout\);

-- Location: LCCOMB_X62_Y52_N26
\i_pixreg|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~21_combout\ = (\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~21_combout\);

-- Location: LCCOMB_X62_Y52_N6
\i_pixreg|Mux0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~23_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~21_combout\) # ((\i_pixreg|Add1~0_combout\ & !\i_pixreg|Mux0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Mux0~21_combout\,
	datad => \i_pixreg|Mux0~22_combout\,
	combout => \i_pixreg|Mux0~23_combout\);

-- Location: LCCOMB_X62_Y52_N24
\i_pixreg|Mux0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~28_combout\ = (\i_pixreg|Mux0~26_combout\ & (((!\i_pixreg|Add1~8_combout\)) # (!\i_pixreg|Mux0~27_combout\))) # (!\i_pixreg|Mux0~26_combout\ & (((\i_pixreg|Add1~8_combout\ & \i_pixreg|Mux0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~27_combout\,
	datab => \i_pixreg|Mux0~26_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~23_combout\,
	combout => \i_pixreg|Mux0~28_combout\);

-- Location: LCCOMB_X60_Y52_N30
\i_pixreg|Mux0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~172_combout\ = (\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~20_combout\ & (!\i_pixreg|Add1~8_combout\))) # (!\i_pixreg|Add1~6_combout\ & (((\i_pixreg|Mux0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~20_combout\,
	datab => \i_pixreg|Add1~8_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~28_combout\,
	combout => \i_pixreg|Mux0~172_combout\);

-- Location: LCCOMB_X60_Y52_N2
\i_pixreg|Mux0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~29_combout\ = (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~14_combout\ & (!\i_pixreg|Add1~12_combout\ & \i_pixreg|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~14_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Add1~16_combout\,
	combout => \i_pixreg|Mux0~29_combout\);

-- Location: LCCOMB_X60_Y52_N8
\i_pixreg|Mux0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~171_combout\ = (\i_pixreg|Mux0~170_combout\ & (((\i_pixreg|Mux0~172_combout\ & \i_pixreg|Mux0~29_combout\)) # (!\i_pixreg|Add1~16_combout\))) # (!\i_pixreg|Mux0~170_combout\ & (((\i_pixreg|Mux0~172_combout\ & \i_pixreg|Mux0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~170_combout\,
	datab => \i_pixreg|Add1~16_combout\,
	datac => \i_pixreg|Mux0~172_combout\,
	datad => \i_pixreg|Mux0~29_combout\,
	combout => \i_pixreg|Mux0~171_combout\);

-- Location: FF_X60_Y52_N9
\i_pixreg|pixcode_single\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|Mux0~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode_single~q\);

-- Location: LCCOMB_X26_Y72_N20
\inst|pixcode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~0_combout\ = (\inst|process_0~2_combout\) # (\i_pixreg|pixcode_single~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_0~2_combout\,
	datad => \i_pixreg|pixcode_single~q\,
	combout => \inst|pixcode~0_combout\);

-- Location: FF_X26_Y72_N21
\inst|pixcode[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(7));

-- Location: LCCOMB_X26_Y72_N6
\inst|pixcode~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~1_combout\ = (!\inst|process_0~2_combout\ & \i_pixreg|pixcode_single~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_0~2_combout\,
	datad => \i_pixreg|pixcode_single~q\,
	combout => \inst|pixcode~1_combout\);

-- Location: FF_X26_Y72_N7
\inst|pixcode[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(4));

-- Location: LCCOMB_X26_Y72_N18
\i_RGB_gen|vga_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~0_combout\ = (\inst|pixcode\(7) & \inst|pixcode\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixcode\(7),
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_b~0_combout\);

-- Location: LCCOMB_X26_Y72_N8
\i_RGB_gen|vga_b[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[7]~feeder_combout\ = \i_RGB_gen|vga_b~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RGB_gen|vga_b~0_combout\,
	combout => \i_RGB_gen|vga_b[7]~feeder_combout\);

-- Location: FF_X26_Y72_N9
\i_RGB_gen|vga_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(7));

-- Location: FF_X26_Y72_N19
\i_RGB_gen|vga_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(6));

-- Location: LCCOMB_X29_Y72_N0
\i_RGB_gen|vga_b[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[5]~feeder_combout\ = \inst|pixcode\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_b[5]~feeder_combout\);

-- Location: FF_X29_Y72_N1
\i_RGB_gen|vga_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(5));

-- Location: LCCOMB_X29_Y72_N26
\i_RGB_gen|vga_b[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[4]~feeder_combout\ = \inst|pixcode\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_b[4]~feeder_combout\);

-- Location: FF_X29_Y72_N27
\i_RGB_gen|vga_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(4));

-- Location: LCCOMB_X29_Y72_N28
\i_RGB_gen|vga_b[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[3]~feeder_combout\ = \inst|pixcode\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_b[3]~feeder_combout\);

-- Location: FF_X29_Y72_N29
\i_RGB_gen|vga_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(3));

-- Location: LCCOMB_X29_Y72_N6
\i_RGB_gen|vga_b[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[2]~feeder_combout\ = \inst|pixcode\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_b[2]~feeder_combout\);

-- Location: FF_X29_Y72_N7
\i_RGB_gen|vga_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(2));

-- Location: LCCOMB_X29_Y72_N8
\i_RGB_gen|vga_b[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[1]~feeder_combout\ = \inst|pixcode\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_b[1]~feeder_combout\);

-- Location: FF_X29_Y72_N9
\i_RGB_gen|vga_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(1));

-- Location: LCCOMB_X26_Y72_N12
\i_RGB_gen|vga_b[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[0]~feeder_combout\ = \i_RGB_gen|vga_b~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RGB_gen|vga_b~0_combout\,
	combout => \i_RGB_gen|vga_b[0]~feeder_combout\);

-- Location: FF_X26_Y72_N13
\i_RGB_gen|vga_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(0));

-- Location: LCCOMB_X26_Y72_N30
\i_RGB_gen|vga_g[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[7]~feeder_combout\ = \i_RGB_gen|vga_b~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RGB_gen|vga_b~0_combout\,
	combout => \i_RGB_gen|vga_g[7]~feeder_combout\);

-- Location: FF_X26_Y72_N31
\i_RGB_gen|vga_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(7));

-- Location: LCCOMB_X26_Y72_N0
\i_RGB_gen|vga_g[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[6]~feeder_combout\ = \i_RGB_gen|vga_b~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RGB_gen|vga_b~0_combout\,
	combout => \i_RGB_gen|vga_g[6]~feeder_combout\);

-- Location: FF_X26_Y72_N1
\i_RGB_gen|vga_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(6));

-- Location: LCCOMB_X29_Y72_N18
\i_RGB_gen|vga_g[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[5]~feeder_combout\ = \inst|pixcode\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_g[5]~feeder_combout\);

-- Location: FF_X29_Y72_N19
\i_RGB_gen|vga_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(5));

-- Location: LCCOMB_X29_Y72_N20
\i_RGB_gen|vga_g[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[4]~feeder_combout\ = \inst|pixcode\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_g[4]~feeder_combout\);

-- Location: FF_X29_Y72_N21
\i_RGB_gen|vga_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(4));

-- Location: LCCOMB_X29_Y72_N30
\i_RGB_gen|vga_g[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[3]~feeder_combout\ = \inst|pixcode\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_g[3]~feeder_combout\);

-- Location: FF_X29_Y72_N31
\i_RGB_gen|vga_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(3));

-- Location: LCCOMB_X29_Y72_N16
\i_RGB_gen|vga_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[2]~feeder_combout\ = \inst|pixcode\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_g[2]~feeder_combout\);

-- Location: FF_X29_Y72_N17
\i_RGB_gen|vga_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(2));

-- Location: LCCOMB_X29_Y72_N2
\i_RGB_gen|vga_g[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[1]~feeder_combout\ = \inst|pixcode\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_g[1]~feeder_combout\);

-- Location: FF_X29_Y72_N3
\i_RGB_gen|vga_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(1));

-- Location: LCCOMB_X26_Y72_N2
\i_RGB_gen|vga_g[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[0]~feeder_combout\ = \i_RGB_gen|vga_b~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RGB_gen|vga_b~0_combout\,
	combout => \i_RGB_gen|vga_g[0]~feeder_combout\);

-- Location: FF_X26_Y72_N3
\i_RGB_gen|vga_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(0));

-- Location: LCCOMB_X26_Y72_N4
\i_RGB_gen|vga_r[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[7]~feeder_combout\ = \inst|pixcode\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_r[7]~feeder_combout\);

-- Location: FF_X26_Y72_N5
\i_RGB_gen|vga_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(7));

-- Location: LCCOMB_X26_Y72_N14
\i_RGB_gen|vga_r[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[6]~feeder_combout\ = \inst|pixcode\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_r[6]~feeder_combout\);

-- Location: FF_X26_Y72_N15
\i_RGB_gen|vga_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(6));

-- Location: LCCOMB_X26_Y72_N28
\i_RGB_gen|vga_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~0_combout\ = (\inst|pixcode\(7)) # (\inst|pixcode\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixcode\(7),
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_r~0_combout\);

-- Location: LCCOMB_X26_Y72_N16
\i_RGB_gen|vga_r[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[5]~feeder_combout\ = \i_RGB_gen|vga_r~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RGB_gen|vga_r~0_combout\,
	combout => \i_RGB_gen|vga_r[5]~feeder_combout\);

-- Location: FF_X26_Y72_N17
\i_RGB_gen|vga_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(5));

-- Location: LCCOMB_X26_Y72_N26
\i_RGB_gen|vga_r[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[4]~feeder_combout\ = \i_RGB_gen|vga_r~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RGB_gen|vga_r~0_combout\,
	combout => \i_RGB_gen|vga_r[4]~feeder_combout\);

-- Location: FF_X26_Y72_N27
\i_RGB_gen|vga_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(4));

-- Location: FF_X26_Y72_N29
\i_RGB_gen|vga_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(3));

-- Location: LCCOMB_X26_Y72_N22
\i_RGB_gen|vga_r[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[2]~feeder_combout\ = \i_RGB_gen|vga_r~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RGB_gen|vga_r~0_combout\,
	combout => \i_RGB_gen|vga_r[2]~feeder_combout\);

-- Location: FF_X26_Y72_N23
\i_RGB_gen|vga_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(2));

-- Location: LCCOMB_X26_Y72_N24
\i_RGB_gen|vga_r[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[1]~feeder_combout\ = \i_RGB_gen|vga_r~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RGB_gen|vga_r~0_combout\,
	combout => \i_RGB_gen|vga_r[1]~feeder_combout\);

-- Location: FF_X26_Y72_N25
\i_RGB_gen|vga_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(1));

-- Location: LCCOMB_X26_Y72_N10
\i_RGB_gen|vga_r[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[0]~feeder_combout\ = \inst|pixcode\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_r[0]~feeder_combout\);

-- Location: FF_X26_Y72_N11
\i_RGB_gen|vga_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(0));

ww_hsync <= \hsync~output_o\;

ww_vsync <= \vsync~output_o\;

ww_vga_clk <= \vga_clk~output_o\;

ww_vga_blank <= \vga_blank~output_o\;

ww_vga_sync <= \vga_sync~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_vga_b(7) <= \vga_b[7]~output_o\;

ww_vga_b(6) <= \vga_b[6]~output_o\;

ww_vga_b(5) <= \vga_b[5]~output_o\;

ww_vga_b(4) <= \vga_b[4]~output_o\;

ww_vga_b(3) <= \vga_b[3]~output_o\;

ww_vga_b(2) <= \vga_b[2]~output_o\;

ww_vga_b(1) <= \vga_b[1]~output_o\;

ww_vga_b(0) <= \vga_b[0]~output_o\;

ww_vga_g(7) <= \vga_g[7]~output_o\;

ww_vga_g(6) <= \vga_g[6]~output_o\;

ww_vga_g(5) <= \vga_g[5]~output_o\;

ww_vga_g(4) <= \vga_g[4]~output_o\;

ww_vga_g(3) <= \vga_g[3]~output_o\;

ww_vga_g(2) <= \vga_g[2]~output_o\;

ww_vga_g(1) <= \vga_g[1]~output_o\;

ww_vga_g(0) <= \vga_g[0]~output_o\;

ww_vga_r(7) <= \vga_r[7]~output_o\;

ww_vga_r(6) <= \vga_r[6]~output_o\;

ww_vga_r(5) <= \vga_r[5]~output_o\;

ww_vga_r(4) <= \vga_r[4]~output_o\;

ww_vga_r(3) <= \vga_r[3]~output_o\;

ww_vga_r(2) <= \vga_r[2]~output_o\;

ww_vga_r(1) <= \vga_r[1]~output_o\;

ww_vga_r(0) <= \vga_r[0]~output_o\;
END structure;


