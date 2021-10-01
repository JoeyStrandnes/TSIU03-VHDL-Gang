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

-- DATE "10/01/2021 12:05:43"

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
	sram_ce : OUT std_logic;
	sram_oe : OUT std_logic;
	sram_lb : OUT std_logic;
	sram_ub : OUT std_logic;
	sram_we : OUT std_logic;
	vga_clk : OUT std_logic;
	vga_blank : OUT std_logic;
	vga_sync : OUT std_logic;
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6);
	sram_addr : OUT std_logic_vector(19 DOWNTO 0);
	vga_b : OUT std_logic_vector(7 DOWNTO 0);
	vga_g : OUT std_logic_vector(7 DOWNTO 0);
	vga_r : OUT std_logic_vector(7 DOWNTO 0)
	);
END VGA_contr;

-- Design Ports Information
-- hsync	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_ce	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_oe	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_lb	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_ub	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_we	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- sram_addr[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_sram_ce : std_logic;
SIGNAL ww_sram_oe : std_logic;
SIGNAL ww_sram_lb : std_logic;
SIGNAL ww_sram_ub : std_logic;
SIGNAL ww_sram_we : std_logic;
SIGNAL ww_vga_clk : std_logic;
SIGNAL ww_vga_blank : std_logic;
SIGNAL ww_vga_sync : std_logic;
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_sram_addr : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_r : std_logic_vector(7 DOWNTO 0);
SIGNAL \fpga_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_linecounter|vcnti[2]~14_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~4_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~6_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~6_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~10_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~1_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~1_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~0_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~1_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~2_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~3_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~4_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~5_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~6_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~7_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~8_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~9_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~10_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~11_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~12_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~16_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~18_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~20_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~21_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~22_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~23_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~24_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~25_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~26_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~27_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~35_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~36_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~42_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~43_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~44_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~45_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~46_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~47_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~48_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~55_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~56_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~57_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~58_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~59_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~65_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~69_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~70_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~71_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~77_combout\ : std_logic;
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
SIGNAL \i_vs_gen|process_0~0_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~159_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~160_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~161_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~162_combout\ : std_logic;
SIGNAL \hsync~output_o\ : std_logic;
SIGNAL \vsync~output_o\ : std_logic;
SIGNAL \sram_ce~output_o\ : std_logic;
SIGNAL \sram_oe~output_o\ : std_logic;
SIGNAL \sram_lb~output_o\ : std_logic;
SIGNAL \sram_ub~output_o\ : std_logic;
SIGNAL \sram_we~output_o\ : std_logic;
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
SIGNAL \sram_addr[19]~output_o\ : std_logic;
SIGNAL \sram_addr[18]~output_o\ : std_logic;
SIGNAL \sram_addr[17]~output_o\ : std_logic;
SIGNAL \sram_addr[16]~output_o\ : std_logic;
SIGNAL \sram_addr[15]~output_o\ : std_logic;
SIGNAL \sram_addr[14]~output_o\ : std_logic;
SIGNAL \sram_addr[13]~output_o\ : std_logic;
SIGNAL \sram_addr[12]~output_o\ : std_logic;
SIGNAL \sram_addr[11]~output_o\ : std_logic;
SIGNAL \sram_addr[10]~output_o\ : std_logic;
SIGNAL \sram_addr[9]~output_o\ : std_logic;
SIGNAL \sram_addr[8]~output_o\ : std_logic;
SIGNAL \sram_addr[7]~output_o\ : std_logic;
SIGNAL \sram_addr[6]~output_o\ : std_logic;
SIGNAL \sram_addr[5]~output_o\ : std_logic;
SIGNAL \sram_addr[4]~output_o\ : std_logic;
SIGNAL \sram_addr[3]~output_o\ : std_logic;
SIGNAL \sram_addr[2]~output_o\ : std_logic;
SIGNAL \sram_addr[1]~output_o\ : std_logic;
SIGNAL \sram_addr[0]~output_o\ : std_logic;
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
SIGNAL \i_pixcounter|hcnti~4_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \i_ce_gen|counter[0]~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~1\ : std_logic;
SIGNAL \i_pixcounter|Add0~3\ : std_logic;
SIGNAL \i_pixcounter|Add0~5\ : std_logic;
SIGNAL \i_pixcounter|Add0~7\ : std_logic;
SIGNAL \i_pixcounter|Add0~8_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~2_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~9\ : std_logic;
SIGNAL \i_pixcounter|Add0~10_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~11\ : std_logic;
SIGNAL \i_pixcounter|Add0~12_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~13\ : std_logic;
SIGNAL \i_pixcounter|Add0~14_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~15\ : std_logic;
SIGNAL \i_pixcounter|Add0~17\ : std_logic;
SIGNAL \i_pixcounter|Add0~18_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~16_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~1_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~2_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~3_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~2_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~5_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~1_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~2_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~0_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~3_combout\ : std_logic;
SIGNAL \i_hs_gen|hsync~q\ : std_logic;
SIGNAL \i_hs3~0_combout\ : std_logic;
SIGNAL \i_hs3~q\ : std_logic;
SIGNAL \i_hs4~q\ : std_logic;
SIGNAL \i_linecounter|vcnti[0]~10_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~0_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~1_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[7]~25\ : std_logic;
SIGNAL \i_linecounter|vcnti[8]~27\ : std_logic;
SIGNAL \i_linecounter|vcnti[9]~28_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~0_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~0_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~2_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~2_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[0]~11\ : std_logic;
SIGNAL \i_linecounter|vcnti[1]~12_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[1]~13\ : std_logic;
SIGNAL \i_linecounter|vcnti[2]~15\ : std_logic;
SIGNAL \i_linecounter|vcnti[3]~16_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[3]~17\ : std_logic;
SIGNAL \i_linecounter|vcnti[4]~19\ : std_logic;
SIGNAL \i_linecounter|vcnti[5]~20_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[5]~21\ : std_logic;
SIGNAL \i_linecounter|vcnti[6]~22_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[6]~23\ : std_logic;
SIGNAL \i_linecounter|vcnti[7]~24_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~1_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~2_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~3_combout\ : std_logic;
SIGNAL \i_vs_gen|vsync~q\ : std_logic;
SIGNAL \i_vs3~0_combout\ : std_logic;
SIGNAL \i_vs3~q\ : std_logic;
SIGNAL \i_vs4~feeder_combout\ : std_logic;
SIGNAL \i_vs4~q\ : std_logic;
SIGNAL \i_linecounter|vcnti[8]~26_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~0_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~1_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~2_combout\ : std_logic;
SIGNAL \i_blank2~q\ : std_logic;
SIGNAL \i_blank3~feeder_combout\ : std_logic;
SIGNAL \i_blank3~q\ : std_logic;
SIGNAL \i_linecounter|vcnti[4]~18_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~1\ : std_logic;
SIGNAL \iRAMcontrol|Add0~3\ : std_logic;
SIGNAL \iRAMcontrol|Add0~5\ : std_logic;
SIGNAL \iRAMcontrol|Add0~7\ : std_logic;
SIGNAL \iRAMcontrol|Add0~9\ : std_logic;
SIGNAL \iRAMcontrol|Add0~11\ : std_logic;
SIGNAL \iRAMcontrol|Add0~13\ : std_logic;
SIGNAL \iRAMcontrol|Add0~15\ : std_logic;
SIGNAL \iRAMcontrol|Add0~17\ : std_logic;
SIGNAL \iRAMcontrol|Add0~19\ : std_logic;
SIGNAL \iRAMcontrol|Add0~20_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~16_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~14_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~10_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~8_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~6_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~4_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~2_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~0_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~1\ : std_logic;
SIGNAL \iRAMcontrol|Add1~3\ : std_logic;
SIGNAL \iRAMcontrol|Add1~5\ : std_logic;
SIGNAL \iRAMcontrol|Add1~7\ : std_logic;
SIGNAL \iRAMcontrol|Add1~9\ : std_logic;
SIGNAL \iRAMcontrol|Add1~11\ : std_logic;
SIGNAL \iRAMcontrol|Add1~13\ : std_logic;
SIGNAL \iRAMcontrol|Add1~15\ : std_logic;
SIGNAL \iRAMcontrol|Add1~17\ : std_logic;
SIGNAL \iRAMcontrol|Add1~19\ : std_logic;
SIGNAL \iRAMcontrol|Add1~21\ : std_logic;
SIGNAL \iRAMcontrol|Add1~23\ : std_logic;
SIGNAL \iRAMcontrol|Add1~24_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~18_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~22_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~20_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~18_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add0~12_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~16_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~14_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~12_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~10_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~8_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~6_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~4_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~2_combout\ : std_logic;
SIGNAL \iRAMcontrol|Add1~0_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~1\ : std_logic;
SIGNAL \i_pixreg|Add0~3\ : std_logic;
SIGNAL \i_pixreg|Add0~5\ : std_logic;
SIGNAL \i_pixreg|Add0~7\ : std_logic;
SIGNAL \i_pixreg|Add0~8_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~4_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~2_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~0_combout\ : std_logic;
SIGNAL \i_pixreg|index[4]~10\ : std_logic;
SIGNAL \i_pixreg|index[5]~12\ : std_logic;
SIGNAL \i_pixreg|index[6]~14\ : std_logic;
SIGNAL \i_pixreg|index[7]~16\ : std_logic;
SIGNAL \i_pixreg|index[8]~18\ : std_logic;
SIGNAL \i_pixreg|index[9]~20\ : std_logic;
SIGNAL \i_pixreg|index[10]~22\ : std_logic;
SIGNAL \i_pixreg|index[11]~23_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~9\ : std_logic;
SIGNAL \i_pixreg|Add0~11\ : std_logic;
SIGNAL \i_pixreg|Add0~12_combout\ : std_logic;
SIGNAL \i_pixreg|index[11]~24\ : std_logic;
SIGNAL \i_pixreg|index[12]~25_combout\ : std_logic;
SIGNAL \i_pixreg|index[9]~19_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~13_combout\ : std_logic;
SIGNAL \i_pixreg|index[6]~13_combout\ : std_logic;
SIGNAL \i_pixreg|index[8]~17_combout\ : std_logic;
SIGNAL \i_pixreg|index[5]~11_combout\ : std_logic;
SIGNAL \i_pixreg|index[7]~15_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~38_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~39_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~40_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~41_combout\ : std_logic;
SIGNAL \i_pixreg|index[4]~9_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~49_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~50_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~66_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~67_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~68_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~63_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~64_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~72_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~60_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~61_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~51_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~52_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~53_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~54_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~62_combout\ : std_logic;
SIGNAL \i_pixreg|index[10]~21_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~73_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~74_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~75_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~76_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~78_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~79_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~80_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~141_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~15_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~14_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~17_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~28_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~29_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~31_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~30_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~32_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~33_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~19_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~34_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~37_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~157_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~158_combout\ : std_logic;
SIGNAL \i_pixreg|pixcode~q\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[7]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[6]~feeder_combout\ : std_logic;
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
SIGNAL \i_RGB_gen|vga_r[5]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[4]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[3]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[2]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[1]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[0]~feeder_combout\ : std_logic;
SIGNAL \i_ce_gen|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_pixreg|index\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \i_linecounter|vcnti\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_pixcounter|hcnti\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_g\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_r\ : std_logic_vector(7 DOWNTO 0);

BEGIN

hsync <= ww_hsync;
ww_KEY0 <= KEY0;
ww_fpga_clk <= fpga_clk;
vsync <= ww_vsync;
sram_ce <= ww_sram_ce;
sram_oe <= ww_sram_oe;
sram_lb <= ww_sram_lb;
sram_ub <= ww_sram_ub;
sram_we <= ww_sram_we;
vga_clk <= ww_vga_clk;
vga_blank <= ww_vga_blank;
vga_sync <= ww_vga_sync;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
sram_addr <= ww_sram_addr;
vga_b <= ww_vga_b;
vga_g <= ww_vga_g;
vga_r <= ww_vga_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fpga_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fpga_clk~input_o\);

-- Location: FF_X14_Y19_N7
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
	ena => \i_linecounter|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(2));

-- Location: LCCOMB_X14_Y19_N6
\i_linecounter|vcnti[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[2]~14_combout\ = (\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti[1]~13\ $ (GND))) # (!\i_linecounter|vcnti\(2) & (!\i_linecounter|vcnti[1]~13\ & VCC))
-- \i_linecounter|vcnti[2]~15\ = CARRY((\i_linecounter|vcnti\(2) & !\i_linecounter|vcnti[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(2),
	datad => VCC,
	cin => \i_linecounter|vcnti[1]~13\,
	combout => \i_linecounter|vcnti[2]~14_combout\,
	cout => \i_linecounter|vcnti[2]~15\);

-- Location: LCCOMB_X11_Y19_N10
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

-- Location: LCCOMB_X11_Y19_N12
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

-- Location: LCCOMB_X17_Y19_N6
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

-- Location: LCCOMB_X17_Y19_N10
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

-- Location: LCCOMB_X16_Y19_N30
\i_linecounter|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~1_combout\ = (!\i_pixcounter|hcnti\(4) & \i_ce_gen|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_ce_gen|counter\(0),
	combout => \i_linecounter|process_0~1_combout\);

-- Location: LCCOMB_X16_Y19_N26
\i_pixcounter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~1_combout\ = (!\i_pixcounter|hcnti\(1) & (!\i_pixcounter|hcnti\(7) & (\i_pixcounter|hcnti\(4) & \i_pixcounter|hcnti\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(1),
	datab => \i_pixcounter|hcnti\(7),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(0),
	combout => \i_pixcounter|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y18_N12
\i_pixreg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~0_combout\ = (\i_pixreg|index\(5) & ((\i_pixreg|index\(2) & ((\i_pixreg|index\(4)))) # (!\i_pixreg|index\(2) & (\i_pixreg|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y18_N6
\i_pixreg|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~1_combout\ = (\i_pixreg|Mux0~0_combout\ & ((\i_pixreg|index\(4)) # ((\i_pixreg|index\(1) & \i_pixreg|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~0_combout\,
	datab => \i_pixreg|index\(1),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y18_N8
\i_pixreg|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~2_combout\ = (\i_pixreg|index\(3)) # ((\i_pixreg|index\(5)) # (\i_pixreg|index\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y18_N2
\i_pixreg|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~3_combout\ = (\i_pixreg|index\(2) & (!\i_pixreg|Mux0~2_combout\ & (!\i_pixreg|index\(0) & !\i_pixreg|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|Mux0~2_combout\,
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(1),
	combout => \i_pixreg|Mux0~3_combout\);

-- Location: LCCOMB_X14_Y18_N18
\i_pixreg|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~4_combout\ = (\i_pixreg|index\(3) & (!\i_pixreg|index\(2) & \i_pixreg|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(2),
	datad => \i_pixreg|index\(0),
	combout => \i_pixreg|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y18_N26
\i_pixreg|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~5_combout\ = (\i_pixreg|index\(5) & (\i_pixreg|Mux0~4_combout\ & (\i_pixreg|index\(1) & \i_pixreg|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|Mux0~4_combout\,
	datac => \i_pixreg|index\(1),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~5_combout\);

-- Location: LCCOMB_X16_Y18_N4
\i_pixreg|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~6_combout\ = (\i_pixreg|index\(6) & (((\i_pixreg|Mux0~3_combout\) # (\i_pixreg|index\(8))))) # (!\i_pixreg|index\(6) & (\i_pixreg|Mux0~5_combout\ & ((!\i_pixreg|index\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~5_combout\,
	datab => \i_pixreg|Mux0~3_combout\,
	datac => \i_pixreg|index\(6),
	datad => \i_pixreg|index\(8),
	combout => \i_pixreg|Mux0~6_combout\);

-- Location: LCCOMB_X16_Y18_N30
\i_pixreg|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~7_combout\ = (\i_pixreg|index\(2) & (\i_pixreg|index\(5) & (\i_pixreg|index\(3) & \i_pixreg|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~7_combout\);

-- Location: LCCOMB_X16_Y18_N16
\i_pixreg|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~8_combout\ = (\i_pixreg|Mux0~6_combout\ & (((!\i_pixreg|index\(8)) # (!\i_pixreg|Mux0~7_combout\)))) # (!\i_pixreg|Mux0~6_combout\ & (\i_pixreg|Mux0~1_combout\ & ((\i_pixreg|index\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~1_combout\,
	datab => \i_pixreg|Mux0~6_combout\,
	datac => \i_pixreg|Mux0~7_combout\,
	datad => \i_pixreg|index\(8),
	combout => \i_pixreg|Mux0~8_combout\);

-- Location: LCCOMB_X16_Y18_N18
\i_pixreg|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~9_combout\ = (\i_pixreg|index\(2) & (!\i_pixreg|index\(3) & !\i_pixreg|index\(1))) # (!\i_pixreg|index\(2) & (\i_pixreg|index\(3) & \i_pixreg|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(1),
	combout => \i_pixreg|Mux0~9_combout\);

-- Location: LCCOMB_X16_Y18_N28
\i_pixreg|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~10_combout\ = (\i_pixreg|index\(5) & ((\i_pixreg|index\(3)) # ((\i_pixreg|index\(6) & !\i_pixreg|index\(4))))) # (!\i_pixreg|index\(5) & ((\i_pixreg|index\(6) & (\i_pixreg|index\(3) & !\i_pixreg|index\(4))) # (!\i_pixreg|index\(6) & 
-- ((\i_pixreg|index\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(6),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~10_combout\);

-- Location: LCCOMB_X16_Y18_N14
\i_pixreg|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~11_combout\ = (\i_pixreg|Mux0~9_combout\ & ((\i_pixreg|index\(3) & (!\i_pixreg|Mux0~10_combout\ & \i_pixreg|index\(0))) # (!\i_pixreg|index\(3) & (\i_pixreg|Mux0~10_combout\ & !\i_pixreg|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|Mux0~10_combout\,
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|Mux0~9_combout\,
	combout => \i_pixreg|Mux0~11_combout\);

-- Location: LCCOMB_X18_Y18_N26
\i_pixreg|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~12_combout\ = (\i_pixreg|index\(7) & (((!\i_pixreg|index\(8) & \i_pixreg|Mux0~11_combout\)))) # (!\i_pixreg|index\(7) & (\i_pixreg|Mux0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~8_combout\,
	datab => \i_pixreg|index\(8),
	datac => \i_pixreg|index\(7),
	datad => \i_pixreg|Mux0~11_combout\,
	combout => \i_pixreg|Mux0~12_combout\);

-- Location: LCCOMB_X17_Y18_N18
\i_pixreg|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~16_combout\ = (\i_pixreg|index\(7) & (!\i_pixreg|index\(5) & (!\i_pixreg|index\(9) & !\i_pixreg|index\(6)))) # (!\i_pixreg|index\(7) & (\i_pixreg|index\(5) & (\i_pixreg|index\(9) & \i_pixreg|index\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~16_combout\);

-- Location: LCCOMB_X19_Y17_N0
\i_pixreg|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~18_combout\ = (\i_pixreg|index\(4) & (!\i_pixreg|index\(5) & (\i_pixreg|index\(7) & !\i_pixreg|index\(6)))) # (!\i_pixreg|index\(4) & (\i_pixreg|index\(6) & (\i_pixreg|index\(5) $ (!\i_pixreg|index\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~18_combout\);

-- Location: LCCOMB_X17_Y17_N24
\i_pixreg|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~20_combout\ = (\i_pixreg|index\(2) & ((\i_pixreg|index\(3)) # ((\i_pixreg|index\(4) & \i_pixreg|index\(0))))) # (!\i_pixreg|index\(2) & (((\i_pixreg|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|index\(0),
	combout => \i_pixreg|Mux0~20_combout\);

-- Location: LCCOMB_X17_Y17_N10
\i_pixreg|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~21_combout\ = (\i_pixreg|index\(5) & (((\i_pixreg|index\(9) & !\i_pixreg|Mux0~20_combout\)))) # (!\i_pixreg|index\(5) & ((\i_pixreg|index\(9)) # ((\i_pixreg|index\(3) & !\i_pixreg|Mux0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|Mux0~20_combout\,
	combout => \i_pixreg|Mux0~21_combout\);

-- Location: LCCOMB_X17_Y17_N28
\i_pixreg|Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~22_combout\ = (\i_pixreg|index\(2) & ((\i_pixreg|index\(3) & (\i_pixreg|index\(0) $ (!\i_pixreg|index\(5)))) # (!\i_pixreg|index\(3) & (\i_pixreg|index\(0) & !\i_pixreg|index\(5))))) # (!\i_pixreg|index\(2) & (\i_pixreg|index\(3) & 
-- (\i_pixreg|index\(0) & !\i_pixreg|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~22_combout\);

-- Location: LCCOMB_X17_Y17_N22
\i_pixreg|Mux0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~23_combout\ = (\i_pixreg|index\(2) & ((\i_pixreg|index\(3)) # ((\i_pixreg|index\(0)) # (!\i_pixreg|index\(5))))) # (!\i_pixreg|index\(2) & ((\i_pixreg|index\(3) & ((\i_pixreg|index\(0)) # (!\i_pixreg|index\(5)))) # (!\i_pixreg|index\(3) & 
-- (\i_pixreg|index\(0) & !\i_pixreg|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~23_combout\);

-- Location: LCCOMB_X17_Y17_N8
\i_pixreg|Mux0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~24_combout\ = (!\i_pixreg|index\(9) & ((\i_pixreg|index\(4) & (\i_pixreg|Mux0~22_combout\)) # (!\i_pixreg|index\(4) & ((!\i_pixreg|Mux0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|Mux0~22_combout\,
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|Mux0~23_combout\,
	combout => \i_pixreg|Mux0~24_combout\);

-- Location: LCCOMB_X17_Y17_N26
\i_pixreg|Mux0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~25_combout\ = (!\i_pixreg|index\(2) & !\i_pixreg|index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datad => \i_pixreg|index\(3),
	combout => \i_pixreg|Mux0~25_combout\);

-- Location: LCCOMB_X17_Y17_N20
\i_pixreg|Mux0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~26_combout\ = (\i_pixreg|index\(9) & (\i_pixreg|index\(5) & ((\i_pixreg|index\(4)) # (!\i_pixreg|Mux0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~25_combout\,
	datab => \i_pixreg|index\(9),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~26_combout\);

-- Location: LCCOMB_X17_Y17_N14
\i_pixreg|Mux0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~27_combout\ = (\i_pixreg|index\(6) & (\i_pixreg|Mux0~21_combout\)) # (!\i_pixreg|index\(6) & (((\i_pixreg|Mux0~26_combout\) # (\i_pixreg|Mux0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~21_combout\,
	datab => \i_pixreg|Mux0~26_combout\,
	datac => \i_pixreg|index\(6),
	datad => \i_pixreg|Mux0~24_combout\,
	combout => \i_pixreg|Mux0~27_combout\);

-- Location: LCCOMB_X17_Y18_N6
\i_pixreg|Mux0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~35_combout\ = (\i_pixreg|index\(6) & ((\i_pixreg|index\(7) & (\i_pixreg|index\(5) & \i_pixreg|index\(9))) # (!\i_pixreg|index\(7) & (\i_pixreg|index\(5) $ (\i_pixreg|index\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~35_combout\);

-- Location: LCCOMB_X17_Y18_N8
\i_pixreg|Mux0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~36_combout\ = (\i_pixreg|Mux0~14_combout\ & ((\i_pixreg|index\(4) & (\i_pixreg|Mux0~35_combout\)) # (!\i_pixreg|index\(4) & ((\i_pixreg|Mux0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~35_combout\,
	datab => \i_pixreg|Mux0~15_combout\,
	datac => \i_pixreg|Mux0~14_combout\,
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~36_combout\);

-- Location: LCCOMB_X19_Y19_N16
\i_pixreg|Mux0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~42_combout\ = (\i_pixreg|index\(6) & ((\i_pixreg|index\(0)) # (!\i_pixreg|index\(4)))) # (!\i_pixreg|index\(6) & (!\i_pixreg|index\(4) & \i_pixreg|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(6),
	datab => \i_pixreg|index\(4),
	datad => \i_pixreg|index\(0),
	combout => \i_pixreg|Mux0~42_combout\);

-- Location: LCCOMB_X19_Y19_N2
\i_pixreg|Mux0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~43_combout\ = (\i_pixreg|index\(5) & (\i_pixreg|index\(6) $ (((\i_pixreg|index\(4)))))) # (!\i_pixreg|index\(5) & (\i_pixreg|index\(6) & (!\i_pixreg|index\(0) & \i_pixreg|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(6),
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~43_combout\);

-- Location: LCCOMB_X19_Y19_N12
\i_pixreg|Mux0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~44_combout\ = (\i_pixreg|index\(5) & (\i_pixreg|index\(7) & (\i_pixreg|index\(6) & !\i_pixreg|index\(8)))) # (!\i_pixreg|index\(5) & (\i_pixreg|index\(8) & ((!\i_pixreg|index\(6)) # (!\i_pixreg|index\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(6),
	datad => \i_pixreg|index\(8),
	combout => \i_pixreg|Mux0~44_combout\);

-- Location: LCCOMB_X19_Y19_N6
\i_pixreg|Mux0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~45_combout\ = (\i_pixreg|index\(7) & (((!\i_pixreg|index\(6) & !\i_pixreg|index\(8))))) # (!\i_pixreg|index\(7) & (\i_pixreg|index\(8) & (\i_pixreg|index\(5) $ (\i_pixreg|index\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(6),
	datad => \i_pixreg|index\(8),
	combout => \i_pixreg|Mux0~45_combout\);

-- Location: LCCOMB_X19_Y19_N24
\i_pixreg|Mux0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~46_combout\ = (\i_pixreg|Mux0~45_combout\ & (\i_pixreg|index\(4) & ((\i_pixreg|Mux0~44_combout\) # (!\i_pixreg|index\(0))))) # (!\i_pixreg|Mux0~45_combout\ & (!\i_pixreg|index\(0) & (!\i_pixreg|index\(4) & \i_pixreg|Mux0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~45_combout\,
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|Mux0~44_combout\,
	combout => \i_pixreg|Mux0~46_combout\);

-- Location: LCCOMB_X19_Y19_N26
\i_pixreg|Mux0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~47_combout\ = (\i_pixreg|index\(9) & (((\i_pixreg|index\(3))))) # (!\i_pixreg|index\(9) & ((\i_pixreg|index\(3) & ((\i_pixreg|Mux0~162_combout\))) # (!\i_pixreg|index\(3) & (\i_pixreg|Mux0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(9),
	datab => \i_pixreg|Mux0~46_combout\,
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|Mux0~162_combout\,
	combout => \i_pixreg|Mux0~47_combout\);

-- Location: LCCOMB_X19_Y17_N10
\i_pixreg|Mux0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~48_combout\ = (\i_pixreg|index\(0) & ((\i_pixreg|index\(5) & ((\i_pixreg|index\(7)))) # (!\i_pixreg|index\(5) & (\i_pixreg|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~48_combout\);

-- Location: LCCOMB_X18_Y19_N8
\i_pixreg|Mux0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~55_combout\ = (\i_pixreg|index\(4) & (\i_pixreg|index\(7) & \i_pixreg|Mux0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(7),
	datad => \i_pixreg|Mux0~53_combout\,
	combout => \i_pixreg|Mux0~55_combout\);

-- Location: LCCOMB_X18_Y19_N2
\i_pixreg|Mux0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~56_combout\ = (\i_pixreg|index\(7) & ((\i_pixreg|index\(5) & ((\i_pixreg|index\(6)))) # (!\i_pixreg|index\(5) & (\i_pixreg|index\(8) & !\i_pixreg|index\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(8),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~56_combout\);

-- Location: LCCOMB_X18_Y19_N4
\i_pixreg|Mux0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~57_combout\ = (\i_pixreg|index\(8) & (\i_pixreg|index\(6) & (\i_pixreg|index\(7) $ (!\i_pixreg|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(8),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~57_combout\);

-- Location: LCCOMB_X18_Y19_N6
\i_pixreg|Mux0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~58_combout\ = (\i_pixreg|Mux0~56_combout\ & (\i_pixreg|index\(0) & (\i_pixreg|index\(4) $ (\i_pixreg|Mux0~57_combout\)))) # (!\i_pixreg|Mux0~56_combout\ & (!\i_pixreg|index\(4) & (\i_pixreg|Mux0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|Mux0~57_combout\,
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|Mux0~56_combout\,
	combout => \i_pixreg|Mux0~58_combout\);

-- Location: LCCOMB_X18_Y19_N0
\i_pixreg|Mux0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~59_combout\ = (\i_pixreg|index\(3) & ((\i_pixreg|index\(9)) # ((\i_pixreg|Mux0~55_combout\)))) # (!\i_pixreg|index\(3) & (!\i_pixreg|index\(9) & ((\i_pixreg|Mux0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(9),
	datac => \i_pixreg|Mux0~55_combout\,
	datad => \i_pixreg|Mux0~58_combout\,
	combout => \i_pixreg|Mux0~59_combout\);

-- Location: LCCOMB_X19_Y17_N26
\i_pixreg|Mux0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~65_combout\ = (\i_pixreg|index\(4) & (\i_pixreg|index\(7) & (\i_pixreg|index\(3)))) # (!\i_pixreg|index\(4) & (!\i_pixreg|index\(5) & (\i_pixreg|index\(7) $ (\i_pixreg|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~65_combout\);

-- Location: LCCOMB_X19_Y17_N2
\i_pixreg|Mux0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~69_combout\ = (!\i_pixreg|index\(6) & ((\i_pixreg|index\(5) & (!\i_pixreg|index\(7) & \i_pixreg|index\(4))) # (!\i_pixreg|index\(5) & (\i_pixreg|index\(7) & !\i_pixreg|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(6),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~69_combout\);

-- Location: LCCOMB_X19_Y17_N12
\i_pixreg|Mux0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~70_combout\ = (\i_pixreg|index\(5) & ((\i_pixreg|index\(6)) # (\i_pixreg|index\(7) $ (!\i_pixreg|index\(4))))) # (!\i_pixreg|index\(5) & ((\i_pixreg|index\(6) $ (\i_pixreg|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(6),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~70_combout\);

-- Location: LCCOMB_X19_Y17_N22
\i_pixreg|Mux0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~71_combout\ = (!\i_pixreg|index\(8) & ((\i_pixreg|index\(3) & (!\i_pixreg|Mux0~70_combout\)) # (!\i_pixreg|index\(3) & ((\i_pixreg|Mux0~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~70_combout\,
	datab => \i_pixreg|index\(8),
	datac => \i_pixreg|Mux0~69_combout\,
	datad => \i_pixreg|index\(3),
	combout => \i_pixreg|Mux0~71_combout\);

-- Location: LCCOMB_X19_Y19_N10
\i_pixreg|Mux0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~77_combout\ = (\i_pixreg|index\(0) & (\i_pixreg|Mux0~74_combout\ & (\i_pixreg|index\(6) $ (!\i_pixreg|Mux0~75_combout\)))) # (!\i_pixreg|index\(0) & (!\i_pixreg|index\(6) & (\i_pixreg|Mux0~74_combout\ $ (\i_pixreg|Mux0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(6),
	datab => \i_pixreg|Mux0~74_combout\,
	datac => \i_pixreg|Mux0~75_combout\,
	datad => \i_pixreg|index\(0),
	combout => \i_pixreg|Mux0~77_combout\);

-- Location: LCCOMB_X19_Y18_N18
\i_pixreg|Mux0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~81_combout\ = (\i_pixreg|index\(3) & ((\i_pixreg|index\(2) & ((\i_pixreg|index\(0)) # (!\i_pixreg|index\(5)))) # (!\i_pixreg|index\(2) & (\i_pixreg|index\(0) & !\i_pixreg|index\(5))))) # (!\i_pixreg|index\(3) & (\i_pixreg|index\(2) $ 
-- ((\i_pixreg|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~81_combout\);

-- Location: LCCOMB_X19_Y18_N28
\i_pixreg|Mux0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~82_combout\ = (\i_pixreg|index\(2) & ((\i_pixreg|index\(5) & (\i_pixreg|index\(3))) # (!\i_pixreg|index\(5) & ((\i_pixreg|index\(0)))))) # (!\i_pixreg|index\(2) & (\i_pixreg|index\(3) & (\i_pixreg|index\(0) $ (!\i_pixreg|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~82_combout\);

-- Location: LCCOMB_X19_Y18_N6
\i_pixreg|Mux0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~83_combout\ = (!\i_pixreg|index\(3) & (!\i_pixreg|index\(2) & (!\i_pixreg|index\(0) & !\i_pixreg|index\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~83_combout\);

-- Location: LCCOMB_X19_Y18_N16
\i_pixreg|Mux0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~84_combout\ = (\i_pixreg|index\(3) & ((\i_pixreg|index\(2) & (\i_pixreg|index\(0) & \i_pixreg|index\(4))) # (!\i_pixreg|index\(2) & (!\i_pixreg|index\(0) & !\i_pixreg|index\(4))))) # (!\i_pixreg|index\(3) & (!\i_pixreg|index\(4) & 
-- (\i_pixreg|index\(2) $ (\i_pixreg|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~84_combout\);

-- Location: LCCOMB_X19_Y18_N10
\i_pixreg|Mux0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~85_combout\ = (\i_pixreg|index\(5) & (((\i_pixreg|index\(4))))) # (!\i_pixreg|index\(5) & (\i_pixreg|index\(6) & ((\i_pixreg|Mux0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(6),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|Mux0~84_combout\,
	combout => \i_pixreg|Mux0~85_combout\);

-- Location: LCCOMB_X19_Y18_N4
\i_pixreg|Mux0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~86_combout\ = (\i_pixreg|index\(3) & (!\i_pixreg|index\(6) & (\i_pixreg|index\(2) $ (\i_pixreg|index\(0))))) # (!\i_pixreg|index\(3) & ((\i_pixreg|index\(2) & (\i_pixreg|index\(0) & !\i_pixreg|index\(6))) # (!\i_pixreg|index\(2) & 
-- (!\i_pixreg|index\(0) & \i_pixreg|index\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~86_combout\);

-- Location: LCCOMB_X19_Y18_N22
\i_pixreg|Mux0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~87_combout\ = (\i_pixreg|Mux0~85_combout\ & (((\i_pixreg|Mux0~86_combout\)) # (!\i_pixreg|index\(5)))) # (!\i_pixreg|Mux0~85_combout\ & (\i_pixreg|index\(5) & ((\i_pixreg|Mux0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~85_combout\,
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|Mux0~86_combout\,
	datad => \i_pixreg|Mux0~83_combout\,
	combout => \i_pixreg|Mux0~87_combout\);

-- Location: LCCOMB_X19_Y18_N0
\i_pixreg|Mux0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~88_combout\ = (!\i_pixreg|index\(9) & ((\i_pixreg|index\(7) & ((\i_pixreg|Mux0~160_combout\))) # (!\i_pixreg|index\(7) & (\i_pixreg|Mux0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|index\(9),
	datac => \i_pixreg|Mux0~87_combout\,
	datad => \i_pixreg|Mux0~160_combout\,
	combout => \i_pixreg|Mux0~88_combout\);

-- Location: LCCOMB_X19_Y18_N2
\i_pixreg|Mux0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~89_combout\ = (!\i_pixreg|index\(5) & (!\i_pixreg|index\(6) & (\i_pixreg|Mux0~14_combout\ & \i_pixreg|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(6),
	datac => \i_pixreg|Mux0~14_combout\,
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~89_combout\);

-- Location: LCCOMB_X19_Y18_N20
\i_pixreg|Mux0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~90_combout\ = (\i_pixreg|index\(0) & (((!\i_pixreg|index\(4))))) # (!\i_pixreg|index\(0) & (!\i_pixreg|index\(3) & (!\i_pixreg|index\(2) & \i_pixreg|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~90_combout\);

-- Location: LCCOMB_X19_Y18_N14
\i_pixreg|Mux0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~91_combout\ = (\i_pixreg|Mux0~89_combout\) # ((\i_pixreg|index\(5) & (\i_pixreg|Mux0~90_combout\ & \i_pixreg|index\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|Mux0~90_combout\,
	datac => \i_pixreg|index\(6),
	datad => \i_pixreg|Mux0~89_combout\,
	combout => \i_pixreg|Mux0~91_combout\);

-- Location: LCCOMB_X19_Y18_N8
\i_pixreg|Mux0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~92_combout\ = (\i_pixreg|Mux0~88_combout\) # ((\i_pixreg|index\(7) & (\i_pixreg|Mux0~91_combout\ & \i_pixreg|index\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|Mux0~91_combout\,
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|Mux0~88_combout\,
	combout => \i_pixreg|Mux0~92_combout\);

-- Location: LCCOMB_X16_Y17_N24
\i_pixreg|Mux0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~93_combout\ = (\i_pixreg|index\(3) & ((\i_pixreg|index\(0) & (\i_pixreg|index\(2) & \i_pixreg|index\(4))) # (!\i_pixreg|index\(0) & (!\i_pixreg|index\(2) & !\i_pixreg|index\(4))))) # (!\i_pixreg|index\(3) & (!\i_pixreg|index\(4) & 
-- (\i_pixreg|index\(0) $ (\i_pixreg|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(2),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~93_combout\);

-- Location: LCCOMB_X17_Y18_N2
\i_pixreg|Mux0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~94_combout\ = (\i_pixreg|Mux0~93_combout\ & (!\i_pixreg|index\(5) & !\i_pixreg|index\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~93_combout\,
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|index\(7),
	combout => \i_pixreg|Mux0~94_combout\);

-- Location: LCCOMB_X16_Y18_N0
\i_pixreg|Mux0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~95_combout\ = (\i_pixreg|index\(2) & (\i_pixreg|index\(0) $ (((\i_pixreg|index\(4)) # (!\i_pixreg|index\(5)))))) # (!\i_pixreg|index\(2) & ((\i_pixreg|index\(0)) # ((!\i_pixreg|index\(5) & \i_pixreg|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~95_combout\);

-- Location: LCCOMB_X16_Y18_N24
\i_pixreg|Mux0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~96_combout\ = (\i_pixreg|index\(2) & ((\i_pixreg|index\(0) & ((!\i_pixreg|index\(4)))) # (!\i_pixreg|index\(0) & (\i_pixreg|index\(5))))) # (!\i_pixreg|index\(2) & (\i_pixreg|index\(4) & ((\i_pixreg|index\(5)) # (!\i_pixreg|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~96_combout\);

-- Location: LCCOMB_X16_Y18_N10
\i_pixreg|Mux0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~97_combout\ = (\i_pixreg|index\(7) & ((!\i_pixreg|Mux0~95_combout\))) # (!\i_pixreg|index\(7) & (\i_pixreg|Mux0~96_combout\ & \i_pixreg|Mux0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|Mux0~96_combout\,
	datad => \i_pixreg|Mux0~95_combout\,
	combout => \i_pixreg|Mux0~97_combout\);

-- Location: LCCOMB_X16_Y18_N20
\i_pixreg|Mux0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~98_combout\ = (\i_pixreg|Mux0~96_combout\ & ((!\i_pixreg|Mux0~95_combout\) # (!\i_pixreg|index\(7)))) # (!\i_pixreg|Mux0~96_combout\ & ((\i_pixreg|Mux0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|Mux0~96_combout\,
	datad => \i_pixreg|Mux0~95_combout\,
	combout => \i_pixreg|Mux0~98_combout\);

-- Location: LCCOMB_X16_Y18_N22
\i_pixreg|Mux0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~99_combout\ = (\i_pixreg|index\(5) & (\i_pixreg|Mux0~98_combout\ & (\i_pixreg|Mux0~97_combout\ $ (\i_pixreg|index\(3))))) # (!\i_pixreg|index\(5) & (\i_pixreg|Mux0~97_combout\ & (\i_pixreg|index\(3) $ (\i_pixreg|Mux0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~97_combout\,
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|Mux0~98_combout\,
	combout => \i_pixreg|Mux0~99_combout\);

-- Location: LCCOMB_X17_Y17_N16
\i_pixreg|Mux0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~100_combout\ = (\i_pixreg|index\(7) & (!\i_pixreg|index\(4) & (\i_pixreg|index\(5) $ (!\i_pixreg|index\(3))))) # (!\i_pixreg|index\(7) & ((\i_pixreg|index\(5)) # ((\i_pixreg|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|index\(7),
	combout => \i_pixreg|Mux0~100_combout\);

-- Location: LCCOMB_X17_Y17_N18
\i_pixreg|Mux0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~101_combout\ = (\i_pixreg|index\(3) & (!\i_pixreg|index\(5) & (!\i_pixreg|index\(4) & \i_pixreg|index\(7)))) # (!\i_pixreg|index\(3) & (\i_pixreg|index\(4) & ((\i_pixreg|index\(7)) # (!\i_pixreg|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|index\(7),
	combout => \i_pixreg|Mux0~101_combout\);

-- Location: LCCOMB_X17_Y17_N12
\i_pixreg|Mux0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~102_combout\ = (\i_pixreg|index\(2) & (\i_pixreg|Mux0~101_combout\ & (\i_pixreg|index\(0) & !\i_pixreg|Mux0~100_combout\))) # (!\i_pixreg|index\(2) & (!\i_pixreg|index\(0) & (\i_pixreg|Mux0~101_combout\ $ (!\i_pixreg|Mux0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|Mux0~101_combout\,
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|Mux0~100_combout\,
	combout => \i_pixreg|Mux0~102_combout\);

-- Location: LCCOMB_X17_Y18_N12
\i_pixreg|Mux0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~103_combout\ = (\i_pixreg|index\(9) & (((\i_pixreg|index\(6))))) # (!\i_pixreg|index\(9) & ((\i_pixreg|index\(6) & ((\i_pixreg|Mux0~99_combout\))) # (!\i_pixreg|index\(6) & (\i_pixreg|Mux0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~102_combout\,
	datab => \i_pixreg|Mux0~99_combout\,
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~103_combout\);

-- Location: LCCOMB_X17_Y18_N22
\i_pixreg|Mux0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~104_combout\ = (\i_pixreg|Mux0~4_combout\ & (\i_pixreg|index\(4) & (\i_pixreg|index\(5) & !\i_pixreg|index\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~4_combout\,
	datab => \i_pixreg|index\(4),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|index\(7),
	combout => \i_pixreg|Mux0~104_combout\);

-- Location: LCCOMB_X17_Y18_N16
\i_pixreg|Mux0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~105_combout\ = (\i_pixreg|index\(9) & ((\i_pixreg|Mux0~103_combout\ & ((\i_pixreg|Mux0~104_combout\))) # (!\i_pixreg|Mux0~103_combout\ & (\i_pixreg|Mux0~94_combout\)))) # (!\i_pixreg|index\(9) & (((\i_pixreg|Mux0~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(9),
	datab => \i_pixreg|Mux0~94_combout\,
	datac => \i_pixreg|Mux0~104_combout\,
	datad => \i_pixreg|Mux0~103_combout\,
	combout => \i_pixreg|Mux0~105_combout\);

-- Location: LCCOMB_X14_Y18_N12
\i_pixreg|Mux0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~106_combout\ = (\i_pixreg|index\(9) & ((\i_pixreg|index\(2) & (\i_pixreg|index\(0))) # (!\i_pixreg|index\(2) & ((\i_pixreg|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(0),
	datab => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(9),
	combout => \i_pixreg|Mux0~106_combout\);

-- Location: LCCOMB_X14_Y18_N22
\i_pixreg|Mux0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~107_combout\ = (\i_pixreg|index\(9) & (\i_pixreg|index\(0) $ (((\i_pixreg|index\(2) & !\i_pixreg|index\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(0),
	datab => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(9),
	combout => \i_pixreg|Mux0~107_combout\);

-- Location: LCCOMB_X14_Y18_N0
\i_pixreg|Mux0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~108_combout\ = (\i_pixreg|index\(9) & (\i_pixreg|index\(0) $ (((!\i_pixreg|index\(3)) # (!\i_pixreg|index\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(0),
	datab => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(9),
	combout => \i_pixreg|Mux0~108_combout\);

-- Location: LCCOMB_X17_Y18_N10
\i_pixreg|Mux0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~109_combout\ = (\i_pixreg|index\(5) & ((\i_pixreg|Mux0~4_combout\) # (\i_pixreg|index\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~4_combout\,
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|index\(9),
	combout => \i_pixreg|Mux0~109_combout\);

-- Location: LCCOMB_X14_Y18_N8
\i_pixreg|Mux0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~110_combout\ = (\i_pixreg|index\(7) & ((\i_pixreg|index\(4) & (\i_pixreg|Mux0~109_combout\ & !\i_pixreg|index\(6))) # (!\i_pixreg|index\(4) & (!\i_pixreg|Mux0~109_combout\)))) # (!\i_pixreg|index\(7) & (\i_pixreg|Mux0~109_combout\ & 
-- ((\i_pixreg|index\(4)) # (!\i_pixreg|index\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|index\(4),
	datac => \i_pixreg|Mux0~109_combout\,
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~110_combout\);

-- Location: LCCOMB_X14_Y18_N26
\i_pixreg|Mux0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~111_combout\ = (\i_pixreg|index\(4) & ((\i_pixreg|Mux0~109_combout\ & ((\i_pixreg|index\(6)))) # (!\i_pixreg|Mux0~109_combout\ & (\i_pixreg|index\(7) & !\i_pixreg|index\(6))))) # (!\i_pixreg|index\(4) & (\i_pixreg|index\(6) $ 
-- (((!\i_pixreg|index\(7) & \i_pixreg|Mux0~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|index\(4),
	datac => \i_pixreg|Mux0~109_combout\,
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~111_combout\);

-- Location: LCCOMB_X14_Y18_N20
\i_pixreg|Mux0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~112_combout\ = (\i_pixreg|Mux0~109_combout\ & (\i_pixreg|index\(7) $ (((!\i_pixreg|index\(4) & \i_pixreg|index\(6)))))) # (!\i_pixreg|Mux0~109_combout\ & (\i_pixreg|index\(4) & ((\i_pixreg|index\(6)) # (!\i_pixreg|index\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|index\(4),
	datac => \i_pixreg|Mux0~109_combout\,
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~112_combout\);

-- Location: LCCOMB_X14_Y18_N30
\i_pixreg|Mux0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~113_combout\ = (\i_pixreg|Mux0~112_combout\ & (\i_pixreg|Mux0~111_combout\ & (\i_pixreg|Mux0~110_combout\ $ (!\i_pixreg|Mux0~108_combout\)))) # (!\i_pixreg|Mux0~112_combout\ & (\i_pixreg|Mux0~108_combout\ & ((!\i_pixreg|Mux0~110_combout\) # 
-- (!\i_pixreg|Mux0~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~111_combout\,
	datab => \i_pixreg|Mux0~112_combout\,
	datac => \i_pixreg|Mux0~110_combout\,
	datad => \i_pixreg|Mux0~108_combout\,
	combout => \i_pixreg|Mux0~113_combout\);

-- Location: LCCOMB_X14_Y18_N24
\i_pixreg|Mux0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~114_combout\ = (\i_pixreg|Mux0~111_combout\ & ((\i_pixreg|Mux0~112_combout\ & (!\i_pixreg|Mux0~110_combout\ & !\i_pixreg|Mux0~108_combout\)) # (!\i_pixreg|Mux0~112_combout\ & (\i_pixreg|Mux0~110_combout\ & \i_pixreg|Mux0~108_combout\)))) # 
-- (!\i_pixreg|Mux0~111_combout\ & (\i_pixreg|Mux0~110_combout\ & ((\i_pixreg|Mux0~108_combout\) # (!\i_pixreg|Mux0~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~111_combout\,
	datab => \i_pixreg|Mux0~112_combout\,
	datac => \i_pixreg|Mux0~110_combout\,
	datad => \i_pixreg|Mux0~108_combout\,
	combout => \i_pixreg|Mux0~114_combout\);

-- Location: LCCOMB_X14_Y18_N10
\i_pixreg|Mux0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~115_combout\ = (\i_pixreg|Mux0~111_combout\ & (((!\i_pixreg|Mux0~112_combout\ & !\i_pixreg|Mux0~108_combout\)) # (!\i_pixreg|Mux0~110_combout\))) # (!\i_pixreg|Mux0~111_combout\ & (\i_pixreg|Mux0~112_combout\ & (\i_pixreg|Mux0~110_combout\ 
-- & \i_pixreg|Mux0~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~111_combout\,
	datab => \i_pixreg|Mux0~112_combout\,
	datac => \i_pixreg|Mux0~110_combout\,
	datad => \i_pixreg|Mux0~108_combout\,
	combout => \i_pixreg|Mux0~115_combout\);

-- Location: LCCOMB_X14_Y18_N28
\i_pixreg|Mux0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~116_combout\ = (\i_pixreg|Mux0~113_combout\ & ((\i_pixreg|Mux0~107_combout\ & (\i_pixreg|Mux0~115_combout\ & !\i_pixreg|Mux0~114_combout\)) # (!\i_pixreg|Mux0~107_combout\ & ((\i_pixreg|Mux0~114_combout\))))) # (!\i_pixreg|Mux0~113_combout\ 
-- & ((\i_pixreg|Mux0~115_combout\) # (\i_pixreg|Mux0~107_combout\ $ (\i_pixreg|Mux0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~113_combout\,
	datab => \i_pixreg|Mux0~115_combout\,
	datac => \i_pixreg|Mux0~107_combout\,
	datad => \i_pixreg|Mux0~114_combout\,
	combout => \i_pixreg|Mux0~116_combout\);

-- Location: LCCOMB_X14_Y18_N6
\i_pixreg|Mux0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~117_combout\ = (\i_pixreg|Mux0~115_combout\ & (!\i_pixreg|Mux0~107_combout\ & ((\i_pixreg|Mux0~113_combout\) # (\i_pixreg|Mux0~114_combout\)))) # (!\i_pixreg|Mux0~115_combout\ & (\i_pixreg|Mux0~113_combout\ & (\i_pixreg|Mux0~107_combout\ & 
-- \i_pixreg|Mux0~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~113_combout\,
	datab => \i_pixreg|Mux0~115_combout\,
	datac => \i_pixreg|Mux0~107_combout\,
	datad => \i_pixreg|Mux0~114_combout\,
	combout => \i_pixreg|Mux0~117_combout\);

-- Location: LCCOMB_X14_Y18_N16
\i_pixreg|Mux0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~118_combout\ = \i_pixreg|Mux0~117_combout\ $ (((!\i_pixreg|Mux0~116_combout\ & \i_pixreg|Mux0~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~117_combout\,
	datab => \i_pixreg|Mux0~116_combout\,
	datad => \i_pixreg|Mux0~106_combout\,
	combout => \i_pixreg|Mux0~118_combout\);

-- Location: LCCOMB_X18_Y18_N18
\i_pixreg|Mux0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~119_combout\ = (\i_pixreg|index\(8) & ((\i_pixreg|Mux0~105_combout\) # ((\i_pixreg|index\(10))))) # (!\i_pixreg|index\(8) & (((\i_pixreg|Mux0~118_combout\ & !\i_pixreg|index\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~105_combout\,
	datab => \i_pixreg|Mux0~118_combout\,
	datac => \i_pixreg|index\(8),
	datad => \i_pixreg|index\(10),
	combout => \i_pixreg|Mux0~119_combout\);

-- Location: LCCOMB_X16_Y17_N18
\i_pixreg|Mux0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~120_combout\ = (\i_pixreg|index\(3) & ((\i_pixreg|index\(0) & (\i_pixreg|index\(2) & \i_pixreg|index\(4))) # (!\i_pixreg|index\(0) & (!\i_pixreg|index\(2))))) # (!\i_pixreg|index\(3) & ((\i_pixreg|index\(0)) # ((\i_pixreg|index\(2) & 
-- \i_pixreg|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(2),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~120_combout\);

-- Location: LCCOMB_X16_Y17_N4
\i_pixreg|Mux0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~121_combout\ = (\i_pixreg|index\(3) & ((\i_pixreg|index\(0)) # ((\i_pixreg|index\(2)) # (!\i_pixreg|index\(4))))) # (!\i_pixreg|index\(3) & (((\i_pixreg|index\(2) & !\i_pixreg|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(2),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~121_combout\);

-- Location: LCCOMB_X16_Y17_N14
\i_pixreg|Mux0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~122_combout\ = (\i_pixreg|index\(9) & ((\i_pixreg|index\(4) & ((\i_pixreg|Mux0~121_combout\))) # (!\i_pixreg|index\(4) & (!\i_pixreg|Mux0~120_combout\)))) # (!\i_pixreg|index\(9) & (\i_pixreg|Mux0~120_combout\ $ 
-- ((\i_pixreg|Mux0~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~120_combout\,
	datab => \i_pixreg|Mux0~121_combout\,
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~122_combout\);

-- Location: LCCOMB_X16_Y17_N0
\i_pixreg|Mux0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~123_combout\ = (\i_pixreg|Mux0~120_combout\ & (\i_pixreg|index\(9) & (\i_pixreg|Mux0~121_combout\ $ (\i_pixreg|index\(4))))) # (!\i_pixreg|Mux0~120_combout\ & (!\i_pixreg|Mux0~121_combout\ & (!\i_pixreg|index\(9) & \i_pixreg|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~120_combout\,
	datab => \i_pixreg|Mux0~121_combout\,
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~123_combout\);

-- Location: LCCOMB_X16_Y17_N2
\i_pixreg|Mux0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~124_combout\ = (\i_pixreg|Mux0~123_combout\ & (\i_pixreg|Mux0~122_combout\ $ (\i_pixreg|index\(5)))) # (!\i_pixreg|Mux0~123_combout\ & (!\i_pixreg|Mux0~122_combout\ & !\i_pixreg|index\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~123_combout\,
	datac => \i_pixreg|Mux0~122_combout\,
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~124_combout\);

-- Location: LCCOMB_X16_Y17_N12
\i_pixreg|Mux0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~125_combout\ = (\i_pixreg|index\(3) & (\i_pixreg|index\(0) $ ((!\i_pixreg|index\(2))))) # (!\i_pixreg|index\(3) & ((\i_pixreg|index\(0) & ((\i_pixreg|index\(2)) # (!\i_pixreg|index\(4)))) # (!\i_pixreg|index\(0) & (\i_pixreg|index\(2) & 
-- !\i_pixreg|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(2),
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~125_combout\);

-- Location: LCCOMB_X16_Y17_N6
\i_pixreg|Mux0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~126_combout\ = (\i_pixreg|index\(3) & ((\i_pixreg|index\(2)) # (\i_pixreg|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(2),
	datad => \i_pixreg|index\(0),
	combout => \i_pixreg|Mux0~126_combout\);

-- Location: LCCOMB_X16_Y17_N16
\i_pixreg|Mux0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~127_combout\ = (\i_pixreg|index\(9) & (!\i_pixreg|Mux0~126_combout\ & (\i_pixreg|Mux0~125_combout\ $ (!\i_pixreg|index\(4))))) # (!\i_pixreg|index\(9) & (\i_pixreg|Mux0~126_combout\ & (\i_pixreg|Mux0~125_combout\ $ (\i_pixreg|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~125_combout\,
	datab => \i_pixreg|index\(4),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|Mux0~126_combout\,
	combout => \i_pixreg|Mux0~127_combout\);

-- Location: LCCOMB_X16_Y17_N26
\i_pixreg|Mux0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~128_combout\ = (\i_pixreg|index\(4) & (!\i_pixreg|Mux0~125_combout\ & ((\i_pixreg|index\(9)) # (!\i_pixreg|Mux0~126_combout\)))) # (!\i_pixreg|index\(4) & (\i_pixreg|Mux0~126_combout\ $ (((\i_pixreg|Mux0~125_combout\ & 
-- !\i_pixreg|index\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~125_combout\,
	datab => \i_pixreg|index\(4),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|Mux0~126_combout\,
	combout => \i_pixreg|Mux0~128_combout\);

-- Location: LCCOMB_X19_Y17_N18
\i_pixreg|Mux0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~129_combout\ = (\i_pixreg|Mux0~127_combout\ & (\i_pixreg|Mux0~128_combout\ $ (!\i_pixreg|index\(5)))) # (!\i_pixreg|Mux0~127_combout\ & (!\i_pixreg|Mux0~128_combout\ & \i_pixreg|index\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~127_combout\,
	datac => \i_pixreg|Mux0~128_combout\,
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~129_combout\);

-- Location: LCCOMB_X16_Y17_N28
\i_pixreg|Mux0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~130_combout\ = (\i_pixreg|index\(9) & ((\i_pixreg|index\(5)) # ((\i_pixreg|index\(2) & \i_pixreg|index\(0))))) # (!\i_pixreg|index\(9) & ((\i_pixreg|index\(2) & ((!\i_pixreg|index\(5)) # (!\i_pixreg|index\(0)))) # (!\i_pixreg|index\(2) & 
-- (\i_pixreg|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~130_combout\);

-- Location: LCCOMB_X16_Y17_N30
\i_pixreg|Mux0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~131_combout\ = (\i_pixreg|index\(2) & (\i_pixreg|index\(0))) # (!\i_pixreg|index\(2) & (!\i_pixreg|index\(0) & (\i_pixreg|index\(9) & !\i_pixreg|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~131_combout\);

-- Location: LCCOMB_X16_Y17_N8
\i_pixreg|Mux0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~132_combout\ = (\i_pixreg|index\(3) & ((\i_pixreg|Mux0~130_combout\) # (\i_pixreg|index\(5) $ (!\i_pixreg|Mux0~131_combout\)))) # (!\i_pixreg|index\(3) & (\i_pixreg|Mux0~130_combout\ & ((!\i_pixreg|Mux0~131_combout\) # 
-- (!\i_pixreg|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|Mux0~131_combout\,
	datad => \i_pixreg|Mux0~130_combout\,
	combout => \i_pixreg|Mux0~132_combout\);

-- Location: LCCOMB_X16_Y17_N10
\i_pixreg|Mux0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~133_combout\ = (\i_pixreg|index\(5) & (\i_pixreg|Mux0~131_combout\ $ (((\i_pixreg|index\(3)) # (\i_pixreg|Mux0~130_combout\))))) # (!\i_pixreg|index\(5) & (\i_pixreg|Mux0~130_combout\ & (\i_pixreg|index\(3) $ 
-- (!\i_pixreg|Mux0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|Mux0~131_combout\,
	datad => \i_pixreg|Mux0~130_combout\,
	combout => \i_pixreg|Mux0~133_combout\);

-- Location: LCCOMB_X16_Y17_N20
\i_pixreg|Mux0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~134_combout\ = \i_pixreg|Mux0~132_combout\ $ (((\i_pixreg|Mux0~133_combout\) # (\i_pixreg|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~133_combout\,
	datac => \i_pixreg|Mux0~132_combout\,
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~134_combout\);

-- Location: LCCOMB_X19_Y17_N20
\i_pixreg|Mux0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~135_combout\ = (\i_pixreg|index\(6) & ((\i_pixreg|index\(7)) # ((\i_pixreg|Mux0~129_combout\)))) # (!\i_pixreg|index\(6) & (!\i_pixreg|index\(7) & (\i_pixreg|Mux0~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(6),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|Mux0~134_combout\,
	datad => \i_pixreg|Mux0~129_combout\,
	combout => \i_pixreg|Mux0~135_combout\);

-- Location: LCCOMB_X17_Y17_N6
\i_pixreg|Mux0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~136_combout\ = (\i_pixreg|index\(4) & ((\i_pixreg|index\(9) & ((!\i_pixreg|index\(5)))) # (!\i_pixreg|index\(9) & ((\i_pixreg|index\(5)) # (!\i_pixreg|index\(3)))))) # (!\i_pixreg|index\(4) & (\i_pixreg|index\(3) $ (\i_pixreg|index\(9) $ 
-- (\i_pixreg|index\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~136_combout\);

-- Location: LCCOMB_X17_Y17_N0
\i_pixreg|Mux0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~137_combout\ = (\i_pixreg|index\(3) & ((\i_pixreg|index\(4)) # ((\i_pixreg|index\(9) & \i_pixreg|index\(5))))) # (!\i_pixreg|index\(3) & ((\i_pixreg|index\(9) & ((!\i_pixreg|index\(5)) # (!\i_pixreg|index\(4)))) # (!\i_pixreg|index\(9) & 
-- ((\i_pixreg|index\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(3),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~137_combout\);

-- Location: LCCOMB_X17_Y17_N2
\i_pixreg|Mux0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~138_combout\ = (\i_pixreg|index\(2) & (!\i_pixreg|Mux0~137_combout\ & (\i_pixreg|index\(0) $ (\i_pixreg|Mux0~136_combout\)))) # (!\i_pixreg|index\(2) & ((\i_pixreg|Mux0~137_combout\ & (!\i_pixreg|index\(0) & !\i_pixreg|Mux0~136_combout\)) # 
-- (!\i_pixreg|Mux0~137_combout\ & (\i_pixreg|index\(0) & \i_pixreg|Mux0~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|Mux0~137_combout\,
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|Mux0~136_combout\,
	combout => \i_pixreg|Mux0~138_combout\);

-- Location: LCCOMB_X18_Y18_N4
\i_pixreg|Mux0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~139_combout\ = (\i_pixreg|index\(7) & ((\i_pixreg|Mux0~135_combout\ & ((\i_pixreg|Mux0~138_combout\))) # (!\i_pixreg|Mux0~135_combout\ & (\i_pixreg|Mux0~124_combout\)))) # (!\i_pixreg|index\(7) & (((\i_pixreg|Mux0~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~124_combout\,
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|Mux0~138_combout\,
	datad => \i_pixreg|Mux0~135_combout\,
	combout => \i_pixreg|Mux0~139_combout\);

-- Location: LCCOMB_X18_Y18_N30
\i_pixreg|Mux0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~140_combout\ = (\i_pixreg|index\(10) & ((\i_pixreg|Mux0~119_combout\ & (\i_pixreg|Mux0~139_combout\)) # (!\i_pixreg|Mux0~119_combout\ & ((\i_pixreg|Mux0~92_combout\))))) # (!\i_pixreg|index\(10) & (((\i_pixreg|Mux0~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(10),
	datab => \i_pixreg|Mux0~139_combout\,
	datac => \i_pixreg|Mux0~92_combout\,
	datad => \i_pixreg|Mux0~119_combout\,
	combout => \i_pixreg|Mux0~140_combout\);

-- Location: LCCOMB_X17_Y18_N20
\i_pixreg|Mux0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~142_combout\ = (\i_pixreg|Mux0~4_combout\ & ((\i_pixreg|index\(4) & (\i_pixreg|Mux0~35_combout\)) # (!\i_pixreg|index\(4) & ((\i_pixreg|Mux0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~35_combout\,
	datab => \i_pixreg|Mux0~15_combout\,
	datac => \i_pixreg|Mux0~4_combout\,
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~142_combout\);

-- Location: LCCOMB_X17_Y18_N14
\i_pixreg|Mux0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~143_combout\ = (\i_pixreg|index\(7) & (!\i_pixreg|index\(5) & (\i_pixreg|index\(4) $ (!\i_pixreg|index\(6))))) # (!\i_pixreg|index\(7) & (\i_pixreg|index\(4) & (\i_pixreg|index\(5) & !\i_pixreg|index\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|index\(4),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~143_combout\);

-- Location: LCCOMB_X17_Y18_N24
\i_pixreg|Mux0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~144_combout\ = (\i_pixreg|Mux0~143_combout\ & (\i_pixreg|Mux0~4_combout\ & \i_pixreg|index\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~143_combout\,
	datac => \i_pixreg|Mux0~4_combout\,
	datad => \i_pixreg|index\(9),
	combout => \i_pixreg|Mux0~144_combout\);

-- Location: LCCOMB_X18_Y17_N28
\i_pixreg|Mux0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~145_combout\ = (\i_pixreg|index\(2) & ((\i_pixreg|index\(3)) # (!\i_pixreg|index\(6)))) # (!\i_pixreg|index\(2) & (\i_pixreg|index\(3) & !\i_pixreg|index\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~145_combout\);

-- Location: LCCOMB_X18_Y17_N22
\i_pixreg|Mux0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~146_combout\ = \i_pixreg|index\(6) $ (((\i_pixreg|index\(5) & ((\i_pixreg|index\(4)) # (\i_pixreg|Mux0~145_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(6),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|Mux0~145_combout\,
	combout => \i_pixreg|Mux0~146_combout\);

-- Location: LCCOMB_X18_Y17_N16
\i_pixreg|Mux0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~147_combout\ = (\i_pixreg|index\(3) & (!\i_pixreg|index\(7) & ((\i_pixreg|index\(4)) # (!\i_pixreg|index\(0))))) # (!\i_pixreg|index\(3) & (\i_pixreg|index\(0) & (\i_pixreg|index\(4) $ (\i_pixreg|index\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(4),
	datac => \i_pixreg|index\(7),
	datad => \i_pixreg|index\(0),
	combout => \i_pixreg|Mux0~147_combout\);

-- Location: LCCOMB_X18_Y17_N18
\i_pixreg|Mux0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~148_combout\ = (\i_pixreg|Mux0~147_combout\ & (\i_pixreg|index\(6) $ (!\i_pixreg|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|index\(6),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|Mux0~147_combout\,
	combout => \i_pixreg|Mux0~148_combout\);

-- Location: LCCOMB_X18_Y17_N12
\i_pixreg|Mux0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~149_combout\ = (\i_pixreg|index\(7) & (!\i_pixreg|index\(3))) # (!\i_pixreg|index\(7) & ((\i_pixreg|index\(4) & (!\i_pixreg|index\(3) & !\i_pixreg|index\(6))) # (!\i_pixreg|index\(4) & ((\i_pixreg|index\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(3),
	datab => \i_pixreg|index\(4),
	datac => \i_pixreg|index\(7),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~149_combout\);

-- Location: LCCOMB_X18_Y17_N6
\i_pixreg|Mux0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~150_combout\ = (\i_pixreg|index\(3) & (!\i_pixreg|index\(2) & ((!\i_pixreg|Mux0~149_combout\) # (!\i_pixreg|index\(0))))) # (!\i_pixreg|index\(3) & ((\i_pixreg|Mux0~149_combout\ & (!\i_pixreg|index\(2))) # (!\i_pixreg|Mux0~149_combout\ & 
-- ((\i_pixreg|index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|Mux0~149_combout\,
	combout => \i_pixreg|Mux0~150_combout\);

-- Location: LCCOMB_X18_Y17_N24
\i_pixreg|Mux0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~151_combout\ = (\i_pixreg|index\(2) & (((\i_pixreg|index\(5) & \i_pixreg|Mux0~150_combout\)))) # (!\i_pixreg|index\(2) & ((\i_pixreg|index\(5) & (\i_pixreg|Mux0~148_combout\)) # (!\i_pixreg|index\(5) & ((!\i_pixreg|Mux0~150_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|Mux0~148_combout\,
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|Mux0~150_combout\,
	combout => \i_pixreg|Mux0~151_combout\);

-- Location: LCCOMB_X18_Y17_N26
\i_pixreg|Mux0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~152_combout\ = (\i_pixreg|index\(9) & (\i_pixreg|index\(7) & ((\i_pixreg|Mux0~146_combout\)))) # (!\i_pixreg|index\(9) & (((\i_pixreg|Mux0~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|Mux0~151_combout\,
	datac => \i_pixreg|Mux0~146_combout\,
	datad => \i_pixreg|index\(9),
	combout => \i_pixreg|Mux0~152_combout\);

-- Location: LCCOMB_X18_Y18_N10
\i_pixreg|Mux0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~153_combout\ = (\i_pixreg|index\(10) & (((\i_pixreg|index\(8))))) # (!\i_pixreg|index\(10) & ((\i_pixreg|index\(8) & (\i_pixreg|Mux0~144_combout\)) # (!\i_pixreg|index\(8) & ((\i_pixreg|Mux0~152_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(10),
	datab => \i_pixreg|Mux0~144_combout\,
	datac => \i_pixreg|index\(8),
	datad => \i_pixreg|Mux0~152_combout\,
	combout => \i_pixreg|Mux0~153_combout\);

-- Location: LCCOMB_X17_Y18_N26
\i_pixreg|Mux0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~154_combout\ = (\i_pixreg|index\(6)) # ((\i_pixreg|index\(7) & (\i_pixreg|index\(5) $ (!\i_pixreg|index\(9)))) # (!\i_pixreg|index\(7) & ((\i_pixreg|index\(5)) # (\i_pixreg|index\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~154_combout\);

-- Location: LCCOMB_X17_Y18_N28
\i_pixreg|Mux0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~155_combout\ = (\i_pixreg|Mux0~4_combout\ & ((\i_pixreg|index\(4) & (!\i_pixreg|Mux0~154_combout\)) # (!\i_pixreg|index\(4) & ((\i_pixreg|Mux0~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~154_combout\,
	datab => \i_pixreg|index\(4),
	datac => \i_pixreg|Mux0~4_combout\,
	datad => \i_pixreg|Mux0~35_combout\,
	combout => \i_pixreg|Mux0~155_combout\);

-- Location: LCCOMB_X18_Y18_N12
\i_pixreg|Mux0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~156_combout\ = (\i_pixreg|Mux0~153_combout\ & (((\i_pixreg|Mux0~155_combout\) # (!\i_pixreg|index\(10))))) # (!\i_pixreg|Mux0~153_combout\ & (\i_pixreg|Mux0~142_combout\ & ((\i_pixreg|index\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~153_combout\,
	datab => \i_pixreg|Mux0~142_combout\,
	datac => \i_pixreg|Mux0~155_combout\,
	datad => \i_pixreg|index\(10),
	combout => \i_pixreg|Mux0~156_combout\);

-- Location: LCCOMB_X13_Y19_N2
\i_vs_gen|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~0_combout\ = (\i_linecounter|vcnti\(9) & (!\i_linecounter|vcnti\(7) & (!\i_linecounter|vcnti\(5) & !\i_linecounter|vcnti\(8)))) # (!\i_linecounter|vcnti\(9) & (\i_linecounter|vcnti\(7) & (\i_linecounter|vcnti\(5) & 
-- \i_linecounter|vcnti\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(9),
	datab => \i_linecounter|vcnti\(7),
	datac => \i_linecounter|vcnti\(5),
	datad => \i_linecounter|vcnti\(8),
	combout => \i_vs_gen|process_0~0_combout\);

-- Location: LCCOMB_X19_Y18_N26
\i_pixreg|Mux0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~159_combout\ = (\i_pixreg|Mux0~81_combout\ & ((\i_pixreg|index\(6) & ((\i_pixreg|index\(4)))) # (!\i_pixreg|index\(6) & ((\i_pixreg|index\(5)) # (!\i_pixreg|index\(4)))))) # (!\i_pixreg|Mux0~81_combout\ & ((\i_pixreg|index\(6) $ 
-- (\i_pixreg|index\(4))) # (!\i_pixreg|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(6),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|Mux0~81_combout\,
	combout => \i_pixreg|Mux0~159_combout\);

-- Location: LCCOMB_X19_Y18_N12
\i_pixreg|Mux0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~160_combout\ = (\i_pixreg|Mux0~159_combout\ & (\i_pixreg|Mux0~82_combout\ $ (((!\i_pixreg|index\(4) & \i_pixreg|index\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(6),
	datac => \i_pixreg|Mux0~159_combout\,
	datad => \i_pixreg|Mux0~82_combout\,
	combout => \i_pixreg|Mux0~160_combout\);

-- Location: LCCOMB_X19_Y19_N8
\i_pixreg|Mux0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~161_combout\ = (\i_pixreg|Mux0~42_combout\ & ((\i_pixreg|index\(7) & (!\i_pixreg|index\(8) & !\i_pixreg|Mux0~43_combout\)) # (!\i_pixreg|index\(7) & (\i_pixreg|index\(8) & \i_pixreg|Mux0~43_combout\)))) # (!\i_pixreg|Mux0~42_combout\ & 
-- (\i_pixreg|index\(8) & (\i_pixreg|index\(7) $ (!\i_pixreg|Mux0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~42_combout\,
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(8),
	datad => \i_pixreg|Mux0~43_combout\,
	combout => \i_pixreg|Mux0~161_combout\);

-- Location: LCCOMB_X19_Y19_N18
\i_pixreg|Mux0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~162_combout\ = (\i_pixreg|index\(7) & (\i_pixreg|Mux0~161_combout\ & (\i_pixreg|index\(5) $ (!\i_pixreg|Mux0~43_combout\)))) # (!\i_pixreg|index\(7) & (\i_pixreg|Mux0~161_combout\ $ (((\i_pixreg|index\(5) & !\i_pixreg|Mux0~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|Mux0~161_combout\,
	datad => \i_pixreg|Mux0~43_combout\,
	combout => \i_pixreg|Mux0~162_combout\);

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

-- Location: IOOBUF_X23_Y0_N23
\sram_we~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sram_we~output_o\);

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

-- Location: IOOBUF_X0_Y20_N16
\sram_addr[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_addr[19]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\sram_addr[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~24_combout\,
	devoe => ww_devoe,
	o => \sram_addr[18]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\sram_addr[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~22_combout\,
	devoe => ww_devoe,
	o => \sram_addr[17]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\sram_addr[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~20_combout\,
	devoe => ww_devoe,
	o => \sram_addr[16]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\sram_addr[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~18_combout\,
	devoe => ww_devoe,
	o => \sram_addr[15]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\sram_addr[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~16_combout\,
	devoe => ww_devoe,
	o => \sram_addr[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\sram_addr[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~14_combout\,
	devoe => ww_devoe,
	o => \sram_addr[13]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\sram_addr[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~12_combout\,
	devoe => ww_devoe,
	o => \sram_addr[12]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\sram_addr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~10_combout\,
	devoe => ww_devoe,
	o => \sram_addr[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\sram_addr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~8_combout\,
	devoe => ww_devoe,
	o => \sram_addr[10]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\sram_addr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~6_combout\,
	devoe => ww_devoe,
	o => \sram_addr[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\sram_addr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~4_combout\,
	devoe => ww_devoe,
	o => \sram_addr[8]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\sram_addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~2_combout\,
	devoe => ww_devoe,
	o => \sram_addr[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\sram_addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iRAMcontrol|Add1~0_combout\,
	devoe => ww_devoe,
	o => \sram_addr[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\sram_addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(6),
	devoe => ww_devoe,
	o => \sram_addr[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\sram_addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(5),
	devoe => ww_devoe,
	o => \sram_addr[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\sram_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(4),
	devoe => ww_devoe,
	o => \sram_addr[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\sram_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(3),
	devoe => ww_devoe,
	o => \sram_addr[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\sram_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(2),
	devoe => ww_devoe,
	o => \sram_addr[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\sram_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_pixcounter|hcnti\(1),
	devoe => ww_devoe,
	o => \sram_addr[0]~output_o\);

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

-- Location: LCCOMB_X11_Y19_N4
\i_pixcounter|hcnti~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~4_combout\ = (\i_pixcounter|Add0~4_combout\ & !\i_pixcounter|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|Add0~4_combout\,
	datac => \i_pixcounter|Equal0~2_combout\,
	combout => \i_pixcounter|hcnti~4_combout\);

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

-- Location: LCCOMB_X16_Y19_N12
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

-- Location: FF_X16_Y19_N13
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

-- Location: FF_X11_Y19_N5
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

-- Location: LCCOMB_X11_Y19_N6
\i_pixcounter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~0_combout\ = \i_pixcounter|hcnti\(0) $ (VCC)
-- \i_pixcounter|Add0~1\ = CARRY(\i_pixcounter|hcnti\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datad => VCC,
	combout => \i_pixcounter|Add0~0_combout\,
	cout => \i_pixcounter|Add0~1\);

-- Location: LCCOMB_X11_Y19_N8
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

-- Location: LCCOMB_X11_Y19_N14
\i_pixcounter|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~8_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixcounter|Add0~7\ $ (GND))) # (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|Add0~7\ & VCC))
-- \i_pixcounter|Add0~9\ = CARRY((\i_pixcounter|hcnti\(4) & !\i_pixcounter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(4),
	datad => VCC,
	cin => \i_pixcounter|Add0~7\,
	combout => \i_pixcounter|Add0~8_combout\,
	cout => \i_pixcounter|Add0~9\);

-- Location: LCCOMB_X11_Y19_N28
\i_pixcounter|hcnti~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~2_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|Equal0~2_combout\,
	datac => \i_pixcounter|Add0~8_combout\,
	combout => \i_pixcounter|hcnti~2_combout\);

-- Location: FF_X11_Y19_N29
\i_pixcounter|hcnti[4]\ : dffeas
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
	q => \i_pixcounter|hcnti\(4));

-- Location: LCCOMB_X11_Y19_N16
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

-- Location: FF_X11_Y19_N17
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

-- Location: LCCOMB_X11_Y19_N18
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

-- Location: FF_X11_Y19_N19
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

-- Location: LCCOMB_X11_Y19_N20
\i_pixcounter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~14_combout\ = (\i_pixcounter|hcnti\(7) & (!\i_pixcounter|Add0~13\)) # (!\i_pixcounter|hcnti\(7) & ((\i_pixcounter|Add0~13\) # (GND)))
-- \i_pixcounter|Add0~15\ = CARRY((!\i_pixcounter|Add0~13\) # (!\i_pixcounter|hcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(7),
	datad => VCC,
	cin => \i_pixcounter|Add0~13\,
	combout => \i_pixcounter|Add0~14_combout\,
	cout => \i_pixcounter|Add0~15\);

-- Location: FF_X11_Y19_N21
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

-- Location: LCCOMB_X11_Y19_N22
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

-- Location: LCCOMB_X11_Y19_N24
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

-- Location: LCCOMB_X11_Y19_N0
\i_pixcounter|hcnti~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~0_combout\ = (\i_pixcounter|Add0~18_combout\ & !\i_pixcounter|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|Add0~18_combout\,
	datac => \i_pixcounter|Equal0~2_combout\,
	combout => \i_pixcounter|hcnti~0_combout\);

-- Location: FF_X11_Y19_N1
\i_pixcounter|hcnti[9]\ : dffeas
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
	q => \i_pixcounter|hcnti\(9));

-- Location: LCCOMB_X11_Y19_N26
\i_pixcounter|hcnti~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~1_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|Equal0~2_combout\,
	datac => \i_pixcounter|Add0~16_combout\,
	combout => \i_pixcounter|hcnti~1_combout\);

-- Location: FF_X11_Y19_N27
\i_pixcounter|hcnti[8]\ : dffeas
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
	q => \i_pixcounter|hcnti\(8));

-- Location: LCCOMB_X16_Y19_N18
\i_pixcounter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~0_combout\ = (\i_pixcounter|hcnti\(2) & (!\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(2),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixcounter|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y19_N4
\i_pixcounter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~2_combout\ = (\i_pixcounter|Equal0~1_combout\ & (\i_pixcounter|hcnti\(9) & (\i_pixcounter|hcnti\(8) & \i_pixcounter|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|Equal0~1_combout\,
	datab => \i_pixcounter|hcnti\(9),
	datac => \i_pixcounter|hcnti\(8),
	datad => \i_pixcounter|Equal0~0_combout\,
	combout => \i_pixcounter|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y19_N2
\i_pixcounter|hcnti~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~3_combout\ = (\i_pixcounter|Add0~6_combout\ & !\i_pixcounter|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|Add0~6_combout\,
	datac => \i_pixcounter|Equal0~2_combout\,
	combout => \i_pixcounter|hcnti~3_combout\);

-- Location: FF_X11_Y19_N3
\i_pixcounter|hcnti[3]\ : dffeas
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
	q => \i_pixcounter|hcnti\(3));

-- Location: LCCOMB_X11_Y19_N30
\i_pixcounter|hcnti~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~5_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|Equal0~2_combout\,
	datac => \i_pixcounter|Add0~2_combout\,
	combout => \i_pixcounter|hcnti~5_combout\);

-- Location: FF_X11_Y19_N31
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

-- Location: LCCOMB_X16_Y19_N10
\i_hs_gen|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~1_combout\ = (\i_pixcounter|hcnti\(2) & ((\i_pixcounter|hcnti\(1)) # ((\i_pixcounter|hcnti\(0) & \i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(1),
	datad => \i_pixcounter|hcnti\(2),
	combout => \i_hs_gen|process_0~1_combout\);

-- Location: LCCOMB_X16_Y19_N20
\i_hs_gen|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~2_combout\ = (\i_pixcounter|hcnti\(4)) # ((\i_pixcounter|hcnti\(3) & \i_hs_gen|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_hs_gen|process_0~1_combout\,
	combout => \i_hs_gen|process_0~2_combout\);

-- Location: LCCOMB_X16_Y19_N16
\i_hs_gen|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~0_combout\ = (!\i_pixcounter|hcnti\(8) & (\i_pixcounter|hcnti\(9) & \i_pixcounter|hcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_pixcounter|hcnti\(9),
	datac => \i_pixcounter|hcnti\(7),
	combout => \i_hs_gen|process_0~0_combout\);

-- Location: LCCOMB_X16_Y19_N6
\i_hs_gen|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~3_combout\ = (\i_hs_gen|process_0~0_combout\ & ((\i_pixcounter|hcnti\(5) & ((!\i_pixcounter|hcnti\(6)) # (!\i_hs_gen|process_0~2_combout\))) # (!\i_pixcounter|hcnti\(5) & ((\i_hs_gen|process_0~2_combout\) # 
-- (\i_pixcounter|hcnti\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_hs_gen|process_0~2_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_hs_gen|process_0~0_combout\,
	combout => \i_hs_gen|process_0~3_combout\);

-- Location: FF_X16_Y19_N7
\i_hs_gen|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_hs_gen|process_0~3_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs_gen|hsync~q\);

-- Location: LCCOMB_X16_Y19_N22
\i_hs3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs3~0_combout\ = !\i_hs_gen|hsync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_hs_gen|hsync~q\,
	combout => \i_hs3~0_combout\);

-- Location: FF_X16_Y19_N23
i_hs3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_hs3~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs3~q\);

-- Location: FF_X16_Y19_N1
i_hs4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_hs3~q\,
	clrn => \KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs4~q\);

-- Location: LCCOMB_X14_Y19_N2
\i_linecounter|vcnti[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[0]~10_combout\ = \i_linecounter|vcnti\(0) $ (VCC)
-- \i_linecounter|vcnti[0]~11\ = CARRY(\i_linecounter|vcnti\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(0),
	datad => VCC,
	combout => \i_linecounter|vcnti[0]~10_combout\,
	cout => \i_linecounter|vcnti[0]~11\);

-- Location: LCCOMB_X14_Y19_N24
\i_linecounter|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~0_combout\ = (((!\i_linecounter|vcnti\(1) & !\i_linecounter|vcnti\(0))) # (!\i_linecounter|vcnti\(3))) # (!\i_linecounter|vcnti\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(2),
	datab => \i_linecounter|vcnti\(3),
	datac => \i_linecounter|vcnti\(1),
	datad => \i_linecounter|vcnti\(0),
	combout => \i_linecounter|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y19_N22
\i_linecounter|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~1_combout\ = (!\i_linecounter|vcnti\(4) & (!\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti\(6) & !\i_linecounter|vcnti\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(4),
	datab => \i_linecounter|vcnti\(5),
	datac => \i_linecounter|vcnti\(6),
	datad => \i_linecounter|vcnti\(7),
	combout => \i_linecounter|LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y19_N16
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

-- Location: LCCOMB_X14_Y19_N18
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

-- Location: LCCOMB_X14_Y19_N20
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

-- Location: FF_X11_Y19_N7
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

-- Location: LCCOMB_X16_Y19_N28
\i_linecounter|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~0_combout\ = (!\i_pixcounter|hcnti\(8) & (\i_pixcounter|hcnti\(7) & (\i_pixcounter|hcnti\(1) & !\i_pixcounter|hcnti\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_pixcounter|hcnti\(7),
	datac => \i_pixcounter|hcnti\(1),
	datad => \i_pixcounter|hcnti\(0),
	combout => \i_linecounter|process_0~0_combout\);

-- Location: LCCOMB_X16_Y19_N8
\i_linecounter|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~2_combout\ = (\i_linecounter|process_0~1_combout\ & (\i_linecounter|process_0~0_combout\ & (\i_pixcounter|hcnti\(9) & \i_pixcounter|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|process_0~1_combout\,
	datab => \i_linecounter|process_0~0_combout\,
	datac => \i_pixcounter|hcnti\(9),
	datad => \i_pixcounter|Equal0~0_combout\,
	combout => \i_linecounter|process_0~2_combout\);

-- Location: FF_X14_Y19_N21
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
	ena => \i_linecounter|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(9));

-- Location: LCCOMB_X14_Y19_N0
\i_linecounter|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~2_combout\ = (\i_linecounter|vcnti\(9) & ((\i_linecounter|vcnti\(8)) # ((!\i_linecounter|LessThan0~1_combout\) # (!\i_linecounter|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(8),
	datab => \i_linecounter|LessThan0~0_combout\,
	datac => \i_linecounter|LessThan0~1_combout\,
	datad => \i_linecounter|vcnti\(9),
	combout => \i_linecounter|LessThan0~2_combout\);

-- Location: FF_X14_Y19_N3
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
	ena => \i_linecounter|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(0));

-- Location: LCCOMB_X14_Y19_N4
\i_linecounter|vcnti[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[1]~12_combout\ = (\i_linecounter|vcnti\(1) & (!\i_linecounter|vcnti[0]~11\)) # (!\i_linecounter|vcnti\(1) & ((\i_linecounter|vcnti[0]~11\) # (GND)))
-- \i_linecounter|vcnti[1]~13\ = CARRY((!\i_linecounter|vcnti[0]~11\) # (!\i_linecounter|vcnti\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(1),
	datad => VCC,
	cin => \i_linecounter|vcnti[0]~11\,
	combout => \i_linecounter|vcnti[1]~12_combout\,
	cout => \i_linecounter|vcnti[1]~13\);

-- Location: FF_X14_Y19_N5
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
	ena => \i_linecounter|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(1));

-- Location: LCCOMB_X14_Y19_N8
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

-- Location: FF_X14_Y19_N9
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
	ena => \i_linecounter|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(3));

-- Location: LCCOMB_X14_Y19_N10
\i_linecounter|vcnti[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[4]~18_combout\ = (\i_linecounter|vcnti\(4) & (\i_linecounter|vcnti[3]~17\ $ (GND))) # (!\i_linecounter|vcnti\(4) & (!\i_linecounter|vcnti[3]~17\ & VCC))
-- \i_linecounter|vcnti[4]~19\ = CARRY((\i_linecounter|vcnti\(4) & !\i_linecounter|vcnti[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(4),
	datad => VCC,
	cin => \i_linecounter|vcnti[3]~17\,
	combout => \i_linecounter|vcnti[4]~18_combout\,
	cout => \i_linecounter|vcnti[4]~19\);

-- Location: LCCOMB_X14_Y19_N12
\i_linecounter|vcnti[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[5]~20_combout\ = (\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti[4]~19\)) # (!\i_linecounter|vcnti\(5) & ((\i_linecounter|vcnti[4]~19\) # (GND)))
-- \i_linecounter|vcnti[5]~21\ = CARRY((!\i_linecounter|vcnti[4]~19\) # (!\i_linecounter|vcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(5),
	datad => VCC,
	cin => \i_linecounter|vcnti[4]~19\,
	combout => \i_linecounter|vcnti[5]~20_combout\,
	cout => \i_linecounter|vcnti[5]~21\);

-- Location: FF_X14_Y19_N13
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
	ena => \i_linecounter|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(5));

-- Location: LCCOMB_X14_Y19_N14
\i_linecounter|vcnti[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[6]~22_combout\ = (\i_linecounter|vcnti\(6) & (\i_linecounter|vcnti[5]~21\ $ (GND))) # (!\i_linecounter|vcnti\(6) & (!\i_linecounter|vcnti[5]~21\ & VCC))
-- \i_linecounter|vcnti[6]~23\ = CARRY((\i_linecounter|vcnti\(6) & !\i_linecounter|vcnti[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(6),
	datad => VCC,
	cin => \i_linecounter|vcnti[5]~21\,
	combout => \i_linecounter|vcnti[6]~22_combout\,
	cout => \i_linecounter|vcnti[6]~23\);

-- Location: FF_X14_Y19_N15
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
	ena => \i_linecounter|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(6));

-- Location: FF_X14_Y19_N17
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
	ena => \i_linecounter|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(7));

-- Location: LCCOMB_X14_Y19_N28
\i_vs_gen|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~1_combout\ = (\i_linecounter|vcnti\(2) & (((\i_linecounter|vcnti\(1)) # (\i_linecounter|vcnti\(7))))) # (!\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti\(0) & (\i_linecounter|vcnti\(1) & \i_linecounter|vcnti\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(2),
	datab => \i_linecounter|vcnti\(0),
	datac => \i_linecounter|vcnti\(1),
	datad => \i_linecounter|vcnti\(7),
	combout => \i_vs_gen|process_0~1_combout\);

-- Location: LCCOMB_X14_Y19_N30
\i_vs_gen|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~2_combout\ = (\i_linecounter|vcnti\(4)) # ((\i_linecounter|vcnti\(3) & \i_vs_gen|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(4),
	datac => \i_linecounter|vcnti\(3),
	datad => \i_vs_gen|process_0~1_combout\,
	combout => \i_vs_gen|process_0~2_combout\);

-- Location: LCCOMB_X14_Y19_N26
\i_vs_gen|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~3_combout\ = (\i_vs_gen|process_0~0_combout\ & ((\i_linecounter|vcnti\(7) & (\i_vs_gen|process_0~2_combout\ & \i_linecounter|vcnti\(6))) # (!\i_linecounter|vcnti\(7) & (!\i_vs_gen|process_0~2_combout\ & !\i_linecounter|vcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_vs_gen|process_0~0_combout\,
	datab => \i_linecounter|vcnti\(7),
	datac => \i_vs_gen|process_0~2_combout\,
	datad => \i_linecounter|vcnti\(6),
	combout => \i_vs_gen|process_0~3_combout\);

-- Location: FF_X14_Y19_N27
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

-- Location: LCCOMB_X16_Y19_N24
\i_vs3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs3~0_combout\ = !\i_vs_gen|vsync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_vs_gen|vsync~q\,
	combout => \i_vs3~0_combout\);

-- Location: FF_X16_Y19_N25
i_vs3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_vs3~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_vs3~q\);

-- Location: LCCOMB_X16_Y19_N2
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

-- Location: FF_X16_Y19_N3
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

-- Location: FF_X14_Y19_N19
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
	ena => \i_linecounter|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(8));

-- Location: LCCOMB_X13_Y19_N0
\iBlank_gen|blank~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~0_combout\ = (((!\i_linecounter|vcnti\(8)) # (!\i_linecounter|vcnti\(6))) # (!\i_linecounter|vcnti\(7))) # (!\i_linecounter|vcnti\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(7),
	datac => \i_linecounter|vcnti\(6),
	datad => \i_linecounter|vcnti\(8),
	combout => \iBlank_gen|blank~0_combout\);

-- Location: LCCOMB_X12_Y19_N30
\iBlank_gen|blank~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~1_combout\ = (!\i_linecounter|vcnti\(9) & (((!\i_pixcounter|hcnti\(8) & !\i_pixcounter|hcnti\(7))) # (!\i_pixcounter|hcnti\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_pixcounter|hcnti\(7),
	datac => \i_pixcounter|hcnti\(9),
	datad => \i_linecounter|vcnti\(9),
	combout => \iBlank_gen|blank~1_combout\);

-- Location: LCCOMB_X12_Y19_N28
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

-- Location: FF_X12_Y19_N29
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

-- Location: LCCOMB_X12_Y19_N0
\i_blank3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_blank3~feeder_combout\ = \i_blank2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_blank2~q\,
	combout => \i_blank3~feeder_combout\);

-- Location: FF_X12_Y19_N1
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

-- Location: FF_X14_Y19_N11
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
	ena => \i_linecounter|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(4));

-- Location: LCCOMB_X13_Y19_N8
\iRAMcontrol|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~0_combout\ = (\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti\(0) $ (VCC))) # (!\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti\(0) & VCC))
-- \iRAMcontrol|Add0~1\ = CARRY((\i_linecounter|vcnti\(2) & \i_linecounter|vcnti\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(2),
	datab => \i_linecounter|vcnti\(0),
	datad => VCC,
	combout => \iRAMcontrol|Add0~0_combout\,
	cout => \iRAMcontrol|Add0~1\);

-- Location: LCCOMB_X13_Y19_N10
\iRAMcontrol|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~2_combout\ = (\i_linecounter|vcnti\(1) & ((\i_linecounter|vcnti\(3) & (\iRAMcontrol|Add0~1\ & VCC)) # (!\i_linecounter|vcnti\(3) & (!\iRAMcontrol|Add0~1\)))) # (!\i_linecounter|vcnti\(1) & ((\i_linecounter|vcnti\(3) & 
-- (!\iRAMcontrol|Add0~1\)) # (!\i_linecounter|vcnti\(3) & ((\iRAMcontrol|Add0~1\) # (GND)))))
-- \iRAMcontrol|Add0~3\ = CARRY((\i_linecounter|vcnti\(1) & (!\i_linecounter|vcnti\(3) & !\iRAMcontrol|Add0~1\)) # (!\i_linecounter|vcnti\(1) & ((!\iRAMcontrol|Add0~1\) # (!\i_linecounter|vcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(1),
	datab => \i_linecounter|vcnti\(3),
	datad => VCC,
	cin => \iRAMcontrol|Add0~1\,
	combout => \iRAMcontrol|Add0~2_combout\,
	cout => \iRAMcontrol|Add0~3\);

-- Location: LCCOMB_X13_Y19_N12
\iRAMcontrol|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~4_combout\ = ((\i_linecounter|vcnti\(2) $ (\i_linecounter|vcnti\(4) $ (!\iRAMcontrol|Add0~3\)))) # (GND)
-- \iRAMcontrol|Add0~5\ = CARRY((\i_linecounter|vcnti\(2) & ((\i_linecounter|vcnti\(4)) # (!\iRAMcontrol|Add0~3\))) # (!\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti\(4) & !\iRAMcontrol|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(2),
	datab => \i_linecounter|vcnti\(4),
	datad => VCC,
	cin => \iRAMcontrol|Add0~3\,
	combout => \iRAMcontrol|Add0~4_combout\,
	cout => \iRAMcontrol|Add0~5\);

-- Location: LCCOMB_X13_Y19_N14
\iRAMcontrol|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~6_combout\ = (\i_linecounter|vcnti\(3) & ((\i_linecounter|vcnti\(5) & (\iRAMcontrol|Add0~5\ & VCC)) # (!\i_linecounter|vcnti\(5) & (!\iRAMcontrol|Add0~5\)))) # (!\i_linecounter|vcnti\(3) & ((\i_linecounter|vcnti\(5) & 
-- (!\iRAMcontrol|Add0~5\)) # (!\i_linecounter|vcnti\(5) & ((\iRAMcontrol|Add0~5\) # (GND)))))
-- \iRAMcontrol|Add0~7\ = CARRY((\i_linecounter|vcnti\(3) & (!\i_linecounter|vcnti\(5) & !\iRAMcontrol|Add0~5\)) # (!\i_linecounter|vcnti\(3) & ((!\iRAMcontrol|Add0~5\) # (!\i_linecounter|vcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(3),
	datab => \i_linecounter|vcnti\(5),
	datad => VCC,
	cin => \iRAMcontrol|Add0~5\,
	combout => \iRAMcontrol|Add0~6_combout\,
	cout => \iRAMcontrol|Add0~7\);

-- Location: LCCOMB_X13_Y19_N16
\iRAMcontrol|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~8_combout\ = ((\i_linecounter|vcnti\(4) $ (\i_linecounter|vcnti\(6) $ (!\iRAMcontrol|Add0~7\)))) # (GND)
-- \iRAMcontrol|Add0~9\ = CARRY((\i_linecounter|vcnti\(4) & ((\i_linecounter|vcnti\(6)) # (!\iRAMcontrol|Add0~7\))) # (!\i_linecounter|vcnti\(4) & (\i_linecounter|vcnti\(6) & !\iRAMcontrol|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(4),
	datab => \i_linecounter|vcnti\(6),
	datad => VCC,
	cin => \iRAMcontrol|Add0~7\,
	combout => \iRAMcontrol|Add0~8_combout\,
	cout => \iRAMcontrol|Add0~9\);

-- Location: LCCOMB_X13_Y19_N18
\iRAMcontrol|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~10_combout\ = (\i_linecounter|vcnti\(5) & ((\i_linecounter|vcnti\(7) & (\iRAMcontrol|Add0~9\ & VCC)) # (!\i_linecounter|vcnti\(7) & (!\iRAMcontrol|Add0~9\)))) # (!\i_linecounter|vcnti\(5) & ((\i_linecounter|vcnti\(7) & 
-- (!\iRAMcontrol|Add0~9\)) # (!\i_linecounter|vcnti\(7) & ((\iRAMcontrol|Add0~9\) # (GND)))))
-- \iRAMcontrol|Add0~11\ = CARRY((\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti\(7) & !\iRAMcontrol|Add0~9\)) # (!\i_linecounter|vcnti\(5) & ((!\iRAMcontrol|Add0~9\) # (!\i_linecounter|vcnti\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(7),
	datad => VCC,
	cin => \iRAMcontrol|Add0~9\,
	combout => \iRAMcontrol|Add0~10_combout\,
	cout => \iRAMcontrol|Add0~11\);

-- Location: LCCOMB_X13_Y19_N20
\iRAMcontrol|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~12_combout\ = ((\i_linecounter|vcnti\(6) $ (\i_linecounter|vcnti\(8) $ (!\iRAMcontrol|Add0~11\)))) # (GND)
-- \iRAMcontrol|Add0~13\ = CARRY((\i_linecounter|vcnti\(6) & ((\i_linecounter|vcnti\(8)) # (!\iRAMcontrol|Add0~11\))) # (!\i_linecounter|vcnti\(6) & (\i_linecounter|vcnti\(8) & !\iRAMcontrol|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(6),
	datab => \i_linecounter|vcnti\(8),
	datad => VCC,
	cin => \iRAMcontrol|Add0~11\,
	combout => \iRAMcontrol|Add0~12_combout\,
	cout => \iRAMcontrol|Add0~13\);

-- Location: LCCOMB_X13_Y19_N22
\iRAMcontrol|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~14_combout\ = (\i_linecounter|vcnti\(9) & ((\i_linecounter|vcnti\(7) & (\iRAMcontrol|Add0~13\ & VCC)) # (!\i_linecounter|vcnti\(7) & (!\iRAMcontrol|Add0~13\)))) # (!\i_linecounter|vcnti\(9) & ((\i_linecounter|vcnti\(7) & 
-- (!\iRAMcontrol|Add0~13\)) # (!\i_linecounter|vcnti\(7) & ((\iRAMcontrol|Add0~13\) # (GND)))))
-- \iRAMcontrol|Add0~15\ = CARRY((\i_linecounter|vcnti\(9) & (!\i_linecounter|vcnti\(7) & !\iRAMcontrol|Add0~13\)) # (!\i_linecounter|vcnti\(9) & ((!\iRAMcontrol|Add0~13\) # (!\i_linecounter|vcnti\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(9),
	datab => \i_linecounter|vcnti\(7),
	datad => VCC,
	cin => \iRAMcontrol|Add0~13\,
	combout => \iRAMcontrol|Add0~14_combout\,
	cout => \iRAMcontrol|Add0~15\);

-- Location: LCCOMB_X13_Y19_N24
\iRAMcontrol|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~16_combout\ = (\i_linecounter|vcnti\(8) & (\iRAMcontrol|Add0~15\ $ (GND))) # (!\i_linecounter|vcnti\(8) & (!\iRAMcontrol|Add0~15\ & VCC))
-- \iRAMcontrol|Add0~17\ = CARRY((\i_linecounter|vcnti\(8) & !\iRAMcontrol|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(8),
	datad => VCC,
	cin => \iRAMcontrol|Add0~15\,
	combout => \iRAMcontrol|Add0~16_combout\,
	cout => \iRAMcontrol|Add0~17\);

-- Location: LCCOMB_X13_Y19_N26
\iRAMcontrol|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~18_combout\ = (\i_linecounter|vcnti\(9) & (!\iRAMcontrol|Add0~17\)) # (!\i_linecounter|vcnti\(9) & ((\iRAMcontrol|Add0~17\) # (GND)))
-- \iRAMcontrol|Add0~19\ = CARRY((!\iRAMcontrol|Add0~17\) # (!\i_linecounter|vcnti\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(9),
	datad => VCC,
	cin => \iRAMcontrol|Add0~17\,
	combout => \iRAMcontrol|Add0~18_combout\,
	cout => \iRAMcontrol|Add0~19\);

-- Location: LCCOMB_X13_Y19_N28
\iRAMcontrol|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add0~20_combout\ = !\iRAMcontrol|Add0~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \iRAMcontrol|Add0~19\,
	combout => \iRAMcontrol|Add0~20_combout\);

-- Location: LCCOMB_X12_Y19_N2
\iRAMcontrol|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~0_combout\ = (\i_linecounter|vcnti\(0) & (\i_pixcounter|hcnti\(7) $ (VCC))) # (!\i_linecounter|vcnti\(0) & (\i_pixcounter|hcnti\(7) & VCC))
-- \iRAMcontrol|Add1~1\ = CARRY((\i_linecounter|vcnti\(0) & \i_pixcounter|hcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(0),
	datab => \i_pixcounter|hcnti\(7),
	datad => VCC,
	combout => \iRAMcontrol|Add1~0_combout\,
	cout => \iRAMcontrol|Add1~1\);

-- Location: LCCOMB_X12_Y19_N4
\iRAMcontrol|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~2_combout\ = (\i_pixcounter|hcnti\(8) & ((\i_linecounter|vcnti\(1) & (\iRAMcontrol|Add1~1\ & VCC)) # (!\i_linecounter|vcnti\(1) & (!\iRAMcontrol|Add1~1\)))) # (!\i_pixcounter|hcnti\(8) & ((\i_linecounter|vcnti\(1) & 
-- (!\iRAMcontrol|Add1~1\)) # (!\i_linecounter|vcnti\(1) & ((\iRAMcontrol|Add1~1\) # (GND)))))
-- \iRAMcontrol|Add1~3\ = CARRY((\i_pixcounter|hcnti\(8) & (!\i_linecounter|vcnti\(1) & !\iRAMcontrol|Add1~1\)) # (!\i_pixcounter|hcnti\(8) & ((!\iRAMcontrol|Add1~1\) # (!\i_linecounter|vcnti\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_linecounter|vcnti\(1),
	datad => VCC,
	cin => \iRAMcontrol|Add1~1\,
	combout => \iRAMcontrol|Add1~2_combout\,
	cout => \iRAMcontrol|Add1~3\);

-- Location: LCCOMB_X12_Y19_N6
\iRAMcontrol|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~4_combout\ = ((\i_pixcounter|hcnti\(9) $ (\iRAMcontrol|Add0~0_combout\ $ (!\iRAMcontrol|Add1~3\)))) # (GND)
-- \iRAMcontrol|Add1~5\ = CARRY((\i_pixcounter|hcnti\(9) & ((\iRAMcontrol|Add0~0_combout\) # (!\iRAMcontrol|Add1~3\))) # (!\i_pixcounter|hcnti\(9) & (\iRAMcontrol|Add0~0_combout\ & !\iRAMcontrol|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(9),
	datab => \iRAMcontrol|Add0~0_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~3\,
	combout => \iRAMcontrol|Add1~4_combout\,
	cout => \iRAMcontrol|Add1~5\);

-- Location: LCCOMB_X12_Y19_N8
\iRAMcontrol|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~6_combout\ = (\iRAMcontrol|Add0~2_combout\ & (!\iRAMcontrol|Add1~5\)) # (!\iRAMcontrol|Add0~2_combout\ & ((\iRAMcontrol|Add1~5\) # (GND)))
-- \iRAMcontrol|Add1~7\ = CARRY((!\iRAMcontrol|Add1~5\) # (!\iRAMcontrol|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~2_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~5\,
	combout => \iRAMcontrol|Add1~6_combout\,
	cout => \iRAMcontrol|Add1~7\);

-- Location: LCCOMB_X12_Y19_N10
\iRAMcontrol|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~8_combout\ = (\iRAMcontrol|Add0~4_combout\ & (\iRAMcontrol|Add1~7\ $ (GND))) # (!\iRAMcontrol|Add0~4_combout\ & (!\iRAMcontrol|Add1~7\ & VCC))
-- \iRAMcontrol|Add1~9\ = CARRY((\iRAMcontrol|Add0~4_combout\ & !\iRAMcontrol|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~4_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~7\,
	combout => \iRAMcontrol|Add1~8_combout\,
	cout => \iRAMcontrol|Add1~9\);

-- Location: LCCOMB_X12_Y19_N12
\iRAMcontrol|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~10_combout\ = (\iRAMcontrol|Add0~6_combout\ & (!\iRAMcontrol|Add1~9\)) # (!\iRAMcontrol|Add0~6_combout\ & ((\iRAMcontrol|Add1~9\) # (GND)))
-- \iRAMcontrol|Add1~11\ = CARRY((!\iRAMcontrol|Add1~9\) # (!\iRAMcontrol|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~6_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~9\,
	combout => \iRAMcontrol|Add1~10_combout\,
	cout => \iRAMcontrol|Add1~11\);

-- Location: LCCOMB_X12_Y19_N14
\iRAMcontrol|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~12_combout\ = (\iRAMcontrol|Add0~8_combout\ & (\iRAMcontrol|Add1~11\ $ (GND))) # (!\iRAMcontrol|Add0~8_combout\ & (!\iRAMcontrol|Add1~11\ & VCC))
-- \iRAMcontrol|Add1~13\ = CARRY((\iRAMcontrol|Add0~8_combout\ & !\iRAMcontrol|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~8_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~11\,
	combout => \iRAMcontrol|Add1~12_combout\,
	cout => \iRAMcontrol|Add1~13\);

-- Location: LCCOMB_X12_Y19_N16
\iRAMcontrol|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~14_combout\ = (\iRAMcontrol|Add0~10_combout\ & (!\iRAMcontrol|Add1~13\)) # (!\iRAMcontrol|Add0~10_combout\ & ((\iRAMcontrol|Add1~13\) # (GND)))
-- \iRAMcontrol|Add1~15\ = CARRY((!\iRAMcontrol|Add1~13\) # (!\iRAMcontrol|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~10_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~13\,
	combout => \iRAMcontrol|Add1~14_combout\,
	cout => \iRAMcontrol|Add1~15\);

-- Location: LCCOMB_X12_Y19_N18
\iRAMcontrol|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~16_combout\ = (\iRAMcontrol|Add0~12_combout\ & (\iRAMcontrol|Add1~15\ $ (GND))) # (!\iRAMcontrol|Add0~12_combout\ & (!\iRAMcontrol|Add1~15\ & VCC))
-- \iRAMcontrol|Add1~17\ = CARRY((\iRAMcontrol|Add0~12_combout\ & !\iRAMcontrol|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iRAMcontrol|Add0~12_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~15\,
	combout => \iRAMcontrol|Add1~16_combout\,
	cout => \iRAMcontrol|Add1~17\);

-- Location: LCCOMB_X12_Y19_N20
\iRAMcontrol|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~18_combout\ = (\iRAMcontrol|Add0~14_combout\ & (!\iRAMcontrol|Add1~17\)) # (!\iRAMcontrol|Add0~14_combout\ & ((\iRAMcontrol|Add1~17\) # (GND)))
-- \iRAMcontrol|Add1~19\ = CARRY((!\iRAMcontrol|Add1~17\) # (!\iRAMcontrol|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~14_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~17\,
	combout => \iRAMcontrol|Add1~18_combout\,
	cout => \iRAMcontrol|Add1~19\);

-- Location: LCCOMB_X12_Y19_N22
\iRAMcontrol|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~20_combout\ = (\iRAMcontrol|Add0~16_combout\ & (\iRAMcontrol|Add1~19\ $ (GND))) # (!\iRAMcontrol|Add0~16_combout\ & (!\iRAMcontrol|Add1~19\ & VCC))
-- \iRAMcontrol|Add1~21\ = CARRY((\iRAMcontrol|Add0~16_combout\ & !\iRAMcontrol|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \iRAMcontrol|Add0~16_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~19\,
	combout => \iRAMcontrol|Add1~20_combout\,
	cout => \iRAMcontrol|Add1~21\);

-- Location: LCCOMB_X12_Y19_N24
\iRAMcontrol|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~22_combout\ = (\iRAMcontrol|Add0~18_combout\ & (!\iRAMcontrol|Add1~21\)) # (!\iRAMcontrol|Add0~18_combout\ & ((\iRAMcontrol|Add1~21\) # (GND)))
-- \iRAMcontrol|Add1~23\ = CARRY((!\iRAMcontrol|Add1~21\) # (!\iRAMcontrol|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \iRAMcontrol|Add0~18_combout\,
	datad => VCC,
	cin => \iRAMcontrol|Add1~21\,
	combout => \iRAMcontrol|Add1~22_combout\,
	cout => \iRAMcontrol|Add1~23\);

-- Location: LCCOMB_X12_Y19_N26
\iRAMcontrol|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \iRAMcontrol|Add1~24_combout\ = \iRAMcontrol|Add1~23\ $ (!\iRAMcontrol|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \iRAMcontrol|Add0~20_combout\,
	cin => \iRAMcontrol|Add1~23\,
	combout => \iRAMcontrol|Add1~24_combout\);

-- Location: LCCOMB_X17_Y19_N0
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

-- Location: LCCOMB_X17_Y19_N2
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

-- Location: LCCOMB_X17_Y19_N4
\i_pixreg|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~4_combout\ = ((\i_linecounter|vcnti\(7) $ (\i_linecounter|vcnti\(5) $ (!\i_pixreg|Add0~3\)))) # (GND)
-- \i_pixreg|Add0~5\ = CARRY((\i_linecounter|vcnti\(7) & ((\i_linecounter|vcnti\(5)) # (!\i_pixreg|Add0~3\))) # (!\i_linecounter|vcnti\(7) & (\i_linecounter|vcnti\(5) & !\i_pixreg|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(7),
	datab => \i_linecounter|vcnti\(5),
	datad => VCC,
	cin => \i_pixreg|Add0~3\,
	combout => \i_pixreg|Add0~4_combout\,
	cout => \i_pixreg|Add0~5\);

-- Location: LCCOMB_X17_Y19_N8
\i_pixreg|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~8_combout\ = ((\i_linecounter|vcnti\(7) $ (\i_linecounter|vcnti\(9) $ (!\i_pixreg|Add0~7\)))) # (GND)
-- \i_pixreg|Add0~9\ = CARRY((\i_linecounter|vcnti\(7) & ((\i_linecounter|vcnti\(9)) # (!\i_pixreg|Add0~7\))) # (!\i_linecounter|vcnti\(7) & (\i_linecounter|vcnti\(9) & !\i_pixreg|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(7),
	datab => \i_linecounter|vcnti\(9),
	datad => VCC,
	cin => \i_pixreg|Add0~7\,
	combout => \i_pixreg|Add0~8_combout\,
	cout => \i_pixreg|Add0~9\);

-- Location: LCCOMB_X17_Y19_N14
\i_pixreg|index[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|index[4]~9_combout\ = (\i_linecounter|vcnti\(3) & (\i_pixcounter|hcnti\(7) $ (VCC))) # (!\i_linecounter|vcnti\(3) & (\i_pixcounter|hcnti\(7) & VCC))
-- \i_pixreg|index[4]~10\ = CARRY((\i_linecounter|vcnti\(3) & \i_pixcounter|hcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(3),
	datab => \i_pixcounter|hcnti\(7),
	datad => VCC,
	combout => \i_pixreg|index[4]~9_combout\,
	cout => \i_pixreg|index[4]~10\);

-- Location: LCCOMB_X17_Y19_N16
\i_pixreg|index[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|index[5]~11_combout\ = (\i_pixcounter|hcnti\(8) & ((\i_linecounter|vcnti\(4) & (\i_pixreg|index[4]~10\ & VCC)) # (!\i_linecounter|vcnti\(4) & (!\i_pixreg|index[4]~10\)))) # (!\i_pixcounter|hcnti\(8) & ((\i_linecounter|vcnti\(4) & 
-- (!\i_pixreg|index[4]~10\)) # (!\i_linecounter|vcnti\(4) & ((\i_pixreg|index[4]~10\) # (GND)))))
-- \i_pixreg|index[5]~12\ = CARRY((\i_pixcounter|hcnti\(8) & (!\i_linecounter|vcnti\(4) & !\i_pixreg|index[4]~10\)) # (!\i_pixcounter|hcnti\(8) & ((!\i_pixreg|index[4]~10\) # (!\i_linecounter|vcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_linecounter|vcnti\(4),
	datad => VCC,
	cin => \i_pixreg|index[4]~10\,
	combout => \i_pixreg|index[5]~11_combout\,
	cout => \i_pixreg|index[5]~12\);

-- Location: LCCOMB_X17_Y19_N18
\i_pixreg|index[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|index[6]~13_combout\ = ((\i_pixcounter|hcnti\(9) $ (\i_pixreg|Add0~0_combout\ $ (!\i_pixreg|index[5]~12\)))) # (GND)
-- \i_pixreg|index[6]~14\ = CARRY((\i_pixcounter|hcnti\(9) & ((\i_pixreg|Add0~0_combout\) # (!\i_pixreg|index[5]~12\))) # (!\i_pixcounter|hcnti\(9) & (\i_pixreg|Add0~0_combout\ & !\i_pixreg|index[5]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(9),
	datab => \i_pixreg|Add0~0_combout\,
	datad => VCC,
	cin => \i_pixreg|index[5]~12\,
	combout => \i_pixreg|index[6]~13_combout\,
	cout => \i_pixreg|index[6]~14\);

-- Location: LCCOMB_X17_Y19_N20
\i_pixreg|index[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|index[7]~15_combout\ = (\i_pixreg|Add0~2_combout\ & (!\i_pixreg|index[6]~14\)) # (!\i_pixreg|Add0~2_combout\ & ((\i_pixreg|index[6]~14\) # (GND)))
-- \i_pixreg|index[7]~16\ = CARRY((!\i_pixreg|index[6]~14\) # (!\i_pixreg|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add0~2_combout\,
	datad => VCC,
	cin => \i_pixreg|index[6]~14\,
	combout => \i_pixreg|index[7]~15_combout\,
	cout => \i_pixreg|index[7]~16\);

-- Location: LCCOMB_X17_Y19_N22
\i_pixreg|index[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|index[8]~17_combout\ = (\i_pixreg|Add0~4_combout\ & (\i_pixreg|index[7]~16\ $ (GND))) # (!\i_pixreg|Add0~4_combout\ & (!\i_pixreg|index[7]~16\ & VCC))
-- \i_pixreg|index[8]~18\ = CARRY((\i_pixreg|Add0~4_combout\ & !\i_pixreg|index[7]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add0~4_combout\,
	datad => VCC,
	cin => \i_pixreg|index[7]~16\,
	combout => \i_pixreg|index[8]~17_combout\,
	cout => \i_pixreg|index[8]~18\);

-- Location: LCCOMB_X17_Y19_N24
\i_pixreg|index[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|index[9]~19_combout\ = (\i_pixreg|Add0~6_combout\ & (!\i_pixreg|index[8]~18\)) # (!\i_pixreg|Add0~6_combout\ & ((\i_pixreg|index[8]~18\) # (GND)))
-- \i_pixreg|index[9]~20\ = CARRY((!\i_pixreg|index[8]~18\) # (!\i_pixreg|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add0~6_combout\,
	datad => VCC,
	cin => \i_pixreg|index[8]~18\,
	combout => \i_pixreg|index[9]~19_combout\,
	cout => \i_pixreg|index[9]~20\);

-- Location: LCCOMB_X17_Y19_N26
\i_pixreg|index[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|index[10]~21_combout\ = (\i_pixreg|Add0~8_combout\ & (\i_pixreg|index[9]~20\ $ (GND))) # (!\i_pixreg|Add0~8_combout\ & (!\i_pixreg|index[9]~20\ & VCC))
-- \i_pixreg|index[10]~22\ = CARRY((\i_pixreg|Add0~8_combout\ & !\i_pixreg|index[9]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add0~8_combout\,
	datad => VCC,
	cin => \i_pixreg|index[9]~20\,
	combout => \i_pixreg|index[10]~21_combout\,
	cout => \i_pixreg|index[10]~22\);

-- Location: LCCOMB_X17_Y19_N28
\i_pixreg|index[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|index[11]~23_combout\ = (\i_pixreg|Add0~10_combout\ & (!\i_pixreg|index[10]~22\)) # (!\i_pixreg|Add0~10_combout\ & ((\i_pixreg|index[10]~22\) # (GND)))
-- \i_pixreg|index[11]~24\ = CARRY((!\i_pixreg|index[10]~22\) # (!\i_pixreg|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add0~10_combout\,
	datad => VCC,
	cin => \i_pixreg|index[10]~22\,
	combout => \i_pixreg|index[11]~23_combout\,
	cout => \i_pixreg|index[11]~24\);

-- Location: FF_X17_Y19_N29
\i_pixreg|index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|index[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|index\(11));

-- Location: LCCOMB_X17_Y19_N12
\i_pixreg|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~12_combout\ = \i_pixreg|Add0~11\ $ (!\i_linecounter|vcnti\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_linecounter|vcnti\(9),
	cin => \i_pixreg|Add0~11\,
	combout => \i_pixreg|Add0~12_combout\);

-- Location: LCCOMB_X17_Y19_N30
\i_pixreg|index[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|index[12]~25_combout\ = \i_pixreg|index[11]~24\ $ (!\i_pixreg|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|Add0~12_combout\,
	cin => \i_pixreg|index[11]~24\,
	combout => \i_pixreg|index[12]~25_combout\);

-- Location: FF_X17_Y19_N31
\i_pixreg|index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|index[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|index\(12));

-- Location: FF_X17_Y19_N25
\i_pixreg|index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|index[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|index\(9));

-- Location: LCCOMB_X18_Y18_N20
\i_pixreg|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~13_combout\ = (!\i_pixreg|index\(10) & (!\i_pixreg|index\(11) & (\i_pixreg|index\(12) & !\i_pixreg|index\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(10),
	datab => \i_pixreg|index\(11),
	datac => \i_pixreg|index\(12),
	datad => \i_pixreg|index\(9),
	combout => \i_pixreg|Mux0~13_combout\);

-- Location: FF_X16_Y18_N27
\i_pixreg|index[1]\ : dffeas
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
	q => \i_pixreg|index\(1));

-- Location: FF_X17_Y19_N19
\i_pixreg|index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|index[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|index\(6));

-- Location: FF_X17_Y19_N23
\i_pixreg|index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|index[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|index\(8));

-- Location: FF_X17_Y19_N17
\i_pixreg|index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|index[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|index\(5));

-- Location: FF_X17_Y19_N21
\i_pixreg|index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|index[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|index\(7));

-- Location: LCCOMB_X18_Y19_N24
\i_pixreg|Mux0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~38_combout\ = (\i_pixreg|index\(0) & (!\i_pixreg|index\(5) & (\i_pixreg|index\(8) $ (\i_pixreg|index\(7))))) # (!\i_pixreg|index\(0) & (\i_pixreg|index\(8) & (\i_pixreg|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(0),
	datab => \i_pixreg|index\(8),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|index\(7),
	combout => \i_pixreg|Mux0~38_combout\);

-- Location: LCCOMB_X18_Y19_N18
\i_pixreg|Mux0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~39_combout\ = (\i_pixreg|index\(4) & (!\i_pixreg|index\(6) & \i_pixreg|Mux0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(6),
	datad => \i_pixreg|Mux0~38_combout\,
	combout => \i_pixreg|Mux0~39_combout\);

-- Location: FF_X16_Y18_N1
\i_pixreg|index[0]\ : dffeas
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
	q => \i_pixreg|index\(0));

-- Location: LCCOMB_X18_Y19_N12
\i_pixreg|Mux0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~40_combout\ = (\i_pixreg|index\(6) & ((\i_pixreg|index\(8) & (!\i_pixreg|index\(7) & !\i_pixreg|index\(0))) # (!\i_pixreg|index\(8) & (\i_pixreg|index\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(8),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~40_combout\);

-- Location: LCCOMB_X18_Y19_N22
\i_pixreg|Mux0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~41_combout\ = (\i_pixreg|Mux0~39_combout\) # ((!\i_pixreg|index\(4) & (\i_pixreg|index\(5) & \i_pixreg|Mux0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|Mux0~39_combout\,
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|Mux0~40_combout\,
	combout => \i_pixreg|Mux0~41_combout\);

-- Location: FF_X17_Y19_N15
\i_pixreg|index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|index[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|index\(4));

-- Location: LCCOMB_X19_Y17_N4
\i_pixreg|Mux0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~49_combout\ = (\i_pixreg|Mux0~48_combout\ & ((\i_pixreg|index\(8) & (\i_pixreg|index\(4) $ (!\i_pixreg|index\(6)))) # (!\i_pixreg|index\(8) & (!\i_pixreg|index\(4) & \i_pixreg|index\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~48_combout\,
	datab => \i_pixreg|index\(8),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~49_combout\);

-- Location: LCCOMB_X18_Y18_N28
\i_pixreg|Mux0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~50_combout\ = (\i_pixreg|Mux0~47_combout\ & (((\i_pixreg|Mux0~49_combout\)) # (!\i_pixreg|index\(9)))) # (!\i_pixreg|Mux0~47_combout\ & (\i_pixreg|index\(9) & (\i_pixreg|Mux0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~47_combout\,
	datab => \i_pixreg|index\(9),
	datac => \i_pixreg|Mux0~41_combout\,
	datad => \i_pixreg|Mux0~49_combout\,
	combout => \i_pixreg|Mux0~50_combout\);

-- Location: FF_X14_Y18_N1
\i_pixreg|index[3]\ : dffeas
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
	q => \i_pixreg|index\(3));

-- Location: LCCOMB_X19_Y17_N28
\i_pixreg|Mux0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~66_combout\ = (\i_pixreg|index\(7) & ((\i_pixreg|index\(4) & (\i_pixreg|index\(3))) # (!\i_pixreg|index\(4) & ((\i_pixreg|index\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(5),
	combout => \i_pixreg|Mux0~66_combout\);

-- Location: LCCOMB_X19_Y17_N14
\i_pixreg|Mux0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~67_combout\ = (\i_pixreg|index\(0) & (\i_pixreg|Mux0~66_combout\ & (\i_pixreg|Mux0~65_combout\ $ (\i_pixreg|index\(6))))) # (!\i_pixreg|index\(0) & (\i_pixreg|Mux0~65_combout\ & (\i_pixreg|index\(6) & !\i_pixreg|Mux0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~65_combout\,
	datab => \i_pixreg|index\(0),
	datac => \i_pixreg|index\(6),
	datad => \i_pixreg|Mux0~66_combout\,
	combout => \i_pixreg|Mux0~67_combout\);

-- Location: LCCOMB_X19_Y17_N24
\i_pixreg|Mux0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~68_combout\ = (\i_pixreg|index\(9) & (((\i_pixreg|index\(0))))) # (!\i_pixreg|index\(9) & (\i_pixreg|index\(8) & (\i_pixreg|Mux0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(9),
	datab => \i_pixreg|index\(8),
	datac => \i_pixreg|Mux0~67_combout\,
	datad => \i_pixreg|index\(0),
	combout => \i_pixreg|Mux0~68_combout\);

-- Location: LCCOMB_X19_Y17_N6
\i_pixreg|Mux0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~63_combout\ = (\i_pixreg|index\(8) & ((\i_pixreg|index\(4)) # ((!\i_pixreg|index\(6) & \i_pixreg|index\(3))))) # (!\i_pixreg|index\(8) & ((\i_pixreg|index\(3) & (\i_pixreg|index\(4))) # (!\i_pixreg|index\(3) & ((\i_pixreg|index\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(8),
	datac => \i_pixreg|index\(6),
	datad => \i_pixreg|index\(3),
	combout => \i_pixreg|Mux0~63_combout\);

-- Location: LCCOMB_X19_Y17_N16
\i_pixreg|Mux0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~64_combout\ = (\i_pixreg|index\(4) & (!\i_pixreg|Mux0~63_combout\ & (\i_pixreg|index\(5) $ (!\i_pixreg|index\(7))))) # (!\i_pixreg|index\(4) & (\i_pixreg|index\(5) & (!\i_pixreg|index\(7) & \i_pixreg|Mux0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|Mux0~63_combout\,
	combout => \i_pixreg|Mux0~64_combout\);

-- Location: LCCOMB_X19_Y17_N8
\i_pixreg|Mux0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~72_combout\ = (\i_pixreg|Mux0~68_combout\ & ((\i_pixreg|Mux0~71_combout\) # ((!\i_pixreg|index\(9))))) # (!\i_pixreg|Mux0~68_combout\ & (((\i_pixreg|index\(9) & \i_pixreg|Mux0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~71_combout\,
	datab => \i_pixreg|Mux0~68_combout\,
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|Mux0~64_combout\,
	combout => \i_pixreg|Mux0~72_combout\);

-- Location: LCCOMB_X18_Y19_N10
\i_pixreg|Mux0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~60_combout\ = (\i_pixreg|index\(4) & (((!\i_pixreg|index\(7) & \i_pixreg|index\(0))) # (!\i_pixreg|index\(6)))) # (!\i_pixreg|index\(4) & ((\i_pixreg|index\(6)) # ((\i_pixreg|index\(7) & \i_pixreg|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~60_combout\);

-- Location: LCCOMB_X18_Y19_N20
\i_pixreg|Mux0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~61_combout\ = (\i_pixreg|index\(8)) # ((\i_pixreg|Mux0~60_combout\) # (\i_pixreg|index\(7) $ (\i_pixreg|index\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(8),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|Mux0~60_combout\,
	combout => \i_pixreg|Mux0~61_combout\);

-- Location: LCCOMB_X18_Y19_N16
\i_pixreg|Mux0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~51_combout\ = (\i_pixreg|index\(4) & ((\i_pixreg|index\(8) & ((\i_pixreg|index\(7)) # (\i_pixreg|index\(6)))) # (!\i_pixreg|index\(8) & ((!\i_pixreg|index\(6)))))) # (!\i_pixreg|index\(4) & ((\i_pixreg|index\(6) & (\i_pixreg|index\(7))) # 
-- (!\i_pixreg|index\(6) & ((\i_pixreg|index\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(8),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~51_combout\);

-- Location: LCCOMB_X18_Y19_N26
\i_pixreg|Mux0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~52_combout\ = (\i_pixreg|index\(0) & ((\i_pixreg|index\(7) & (!\i_pixreg|index\(5) & !\i_pixreg|Mux0~51_combout\)) # (!\i_pixreg|index\(7) & (\i_pixreg|index\(5) & \i_pixreg|Mux0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(0),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|Mux0~51_combout\,
	combout => \i_pixreg|Mux0~52_combout\);

-- Location: LCCOMB_X18_Y19_N28
\i_pixreg|Mux0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~53_combout\ = (!\i_pixreg|index\(0) & (\i_pixreg|index\(8) & (\i_pixreg|index\(5) & !\i_pixreg|index\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(0),
	datab => \i_pixreg|index\(8),
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~53_combout\);

-- Location: LCCOMB_X18_Y19_N14
\i_pixreg|Mux0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~54_combout\ = (\i_pixreg|Mux0~52_combout\) # ((!\i_pixreg|index\(4) & (!\i_pixreg|index\(7) & \i_pixreg|Mux0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|index\(7),
	datac => \i_pixreg|Mux0~52_combout\,
	datad => \i_pixreg|Mux0~53_combout\,
	combout => \i_pixreg|Mux0~54_combout\);

-- Location: LCCOMB_X18_Y19_N30
\i_pixreg|Mux0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~62_combout\ = (\i_pixreg|Mux0~59_combout\ & (((!\i_pixreg|index\(9))) # (!\i_pixreg|Mux0~61_combout\))) # (!\i_pixreg|Mux0~59_combout\ & (((\i_pixreg|Mux0~54_combout\ & \i_pixreg|index\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~59_combout\,
	datab => \i_pixreg|Mux0~61_combout\,
	datac => \i_pixreg|Mux0~54_combout\,
	datad => \i_pixreg|index\(9),
	combout => \i_pixreg|Mux0~62_combout\);

-- Location: FF_X17_Y19_N27
\i_pixreg|index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|index[10]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|index\(10));

-- Location: LCCOMB_X18_Y18_N14
\i_pixreg|Mux0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~73_combout\ = (\i_pixreg|index\(2) & (((\i_pixreg|Mux0~62_combout\) # (\i_pixreg|index\(10))))) # (!\i_pixreg|index\(2) & (\i_pixreg|Mux0~72_combout\ & ((!\i_pixreg|index\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|Mux0~72_combout\,
	datac => \i_pixreg|Mux0~62_combout\,
	datad => \i_pixreg|index\(10),
	combout => \i_pixreg|Mux0~73_combout\);

-- Location: LCCOMB_X19_Y19_N20
\i_pixreg|Mux0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~74_combout\ = (\i_pixreg|index\(8) & ((\i_pixreg|index\(9) & ((\i_pixreg|index\(7)))) # (!\i_pixreg|index\(9) & (\i_pixreg|index\(4) & !\i_pixreg|index\(7))))) # (!\i_pixreg|index\(8) & (((!\i_pixreg|index\(4) & \i_pixreg|index\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(9),
	datab => \i_pixreg|index\(8),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|index\(7),
	combout => \i_pixreg|Mux0~74_combout\);

-- Location: LCCOMB_X19_Y19_N30
\i_pixreg|Mux0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~75_combout\ = (\i_pixreg|index\(9) & ((\i_pixreg|index\(7) & ((!\i_pixreg|index\(4)))) # (!\i_pixreg|index\(7) & (\i_pixreg|index\(8))))) # (!\i_pixreg|index\(9) & (\i_pixreg|index\(7) & ((\i_pixreg|index\(8)) # (\i_pixreg|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(9),
	datab => \i_pixreg|index\(8),
	datac => \i_pixreg|index\(4),
	datad => \i_pixreg|index\(7),
	combout => \i_pixreg|Mux0~75_combout\);

-- Location: LCCOMB_X19_Y19_N0
\i_pixreg|Mux0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~76_combout\ = (\i_pixreg|index\(6) & (((\i_pixreg|Mux0~75_combout\) # (\i_pixreg|index\(0))) # (!\i_pixreg|Mux0~74_combout\))) # (!\i_pixreg|index\(6) & (\i_pixreg|Mux0~75_combout\ & ((\i_pixreg|index\(0)) # (!\i_pixreg|Mux0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(6),
	datab => \i_pixreg|Mux0~74_combout\,
	datac => \i_pixreg|Mux0~75_combout\,
	datad => \i_pixreg|index\(0),
	combout => \i_pixreg|Mux0~76_combout\);

-- Location: LCCOMB_X19_Y19_N28
\i_pixreg|Mux0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~78_combout\ = (\i_pixreg|Mux0~77_combout\ & (!\i_pixreg|index\(8) & (\i_pixreg|index\(3) $ (\i_pixreg|Mux0~76_combout\)))) # (!\i_pixreg|Mux0~77_combout\ & (\i_pixreg|index\(8) & (!\i_pixreg|index\(3) & !\i_pixreg|Mux0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~77_combout\,
	datab => \i_pixreg|index\(8),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|Mux0~76_combout\,
	combout => \i_pixreg|Mux0~78_combout\);

-- Location: LCCOMB_X19_Y19_N14
\i_pixreg|Mux0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~79_combout\ = (\i_pixreg|Mux0~78_combout\ & (\i_pixreg|index\(5) $ (!\i_pixreg|Mux0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(5),
	datab => \i_pixreg|Mux0~78_combout\,
	datad => \i_pixreg|Mux0~76_combout\,
	combout => \i_pixreg|Mux0~79_combout\);

-- Location: LCCOMB_X18_Y18_N0
\i_pixreg|Mux0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~80_combout\ = (\i_pixreg|index\(10) & ((\i_pixreg|Mux0~73_combout\ & ((\i_pixreg|Mux0~79_combout\))) # (!\i_pixreg|Mux0~73_combout\ & (\i_pixreg|Mux0~50_combout\)))) # (!\i_pixreg|index\(10) & (((\i_pixreg|Mux0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(10),
	datab => \i_pixreg|Mux0~50_combout\,
	datac => \i_pixreg|Mux0~73_combout\,
	datad => \i_pixreg|Mux0~79_combout\,
	combout => \i_pixreg|Mux0~80_combout\);

-- Location: LCCOMB_X18_Y18_N24
\i_pixreg|Mux0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~141_combout\ = (\i_pixreg|index\(1) & (((\i_pixreg|index\(11)) # (\i_pixreg|Mux0~80_combout\)))) # (!\i_pixreg|index\(1) & (\i_pixreg|Mux0~140_combout\ & (!\i_pixreg|index\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~140_combout\,
	datab => \i_pixreg|index\(1),
	datac => \i_pixreg|index\(11),
	datad => \i_pixreg|Mux0~80_combout\,
	combout => \i_pixreg|Mux0~141_combout\);

-- Location: LCCOMB_X17_Y18_N0
\i_pixreg|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~15_combout\ = (\i_pixreg|index\(7) & ((\i_pixreg|index\(5) & (\i_pixreg|index\(9) & !\i_pixreg|index\(6))) # (!\i_pixreg|index\(5) & (!\i_pixreg|index\(9) & \i_pixreg|index\(6))))) # (!\i_pixreg|index\(7) & (!\i_pixreg|index\(6) & 
-- (\i_pixreg|index\(5) $ (\i_pixreg|index\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(7),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(9),
	datad => \i_pixreg|index\(6),
	combout => \i_pixreg|Mux0~15_combout\);

-- Location: FF_X14_Y18_N19
\i_pixreg|index[2]\ : dffeas
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
	q => \i_pixreg|index\(2));

-- Location: LCCOMB_X19_Y18_N24
\i_pixreg|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~14_combout\ = (\i_pixreg|index\(2) & (!\i_pixreg|index\(0) & !\i_pixreg|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|index\(2),
	datac => \i_pixreg|index\(0),
	datad => \i_pixreg|index\(3),
	combout => \i_pixreg|Mux0~14_combout\);

-- Location: LCCOMB_X17_Y18_N4
\i_pixreg|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~17_combout\ = (\i_pixreg|Mux0~14_combout\ & ((\i_pixreg|index\(4) & ((\i_pixreg|Mux0~15_combout\))) # (!\i_pixreg|index\(4) & (\i_pixreg|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~16_combout\,
	datab => \i_pixreg|Mux0~15_combout\,
	datac => \i_pixreg|Mux0~14_combout\,
	datad => \i_pixreg|index\(4),
	combout => \i_pixreg|Mux0~17_combout\);

-- Location: LCCOMB_X18_Y17_N0
\i_pixreg|Mux0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~28_combout\ = (\i_pixreg|index\(2) & (\i_pixreg|index\(0) $ (((!\i_pixreg|index\(5) & !\i_pixreg|index\(3)))))) # (!\i_pixreg|index\(2) & (\i_pixreg|index\(0) & ((\i_pixreg|index\(5)) # (!\i_pixreg|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(0),
	combout => \i_pixreg|Mux0~28_combout\);

-- Location: LCCOMB_X18_Y17_N10
\i_pixreg|Mux0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~29_combout\ = (\i_pixreg|index\(2) & ((\i_pixreg|index\(5) & ((\i_pixreg|index\(3)) # (!\i_pixreg|index\(0)))) # (!\i_pixreg|index\(5) & ((\i_pixreg|index\(0)))))) # (!\i_pixreg|index\(2) & (((\i_pixreg|index\(3) & !\i_pixreg|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(2),
	datab => \i_pixreg|index\(5),
	datac => \i_pixreg|index\(3),
	datad => \i_pixreg|index\(0),
	combout => \i_pixreg|Mux0~29_combout\);

-- Location: LCCOMB_X18_Y17_N14
\i_pixreg|Mux0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~31_combout\ = (\i_pixreg|Mux0~29_combout\ & ((\i_pixreg|Mux0~28_combout\ $ (!\i_pixreg|index\(5))))) # (!\i_pixreg|Mux0~29_combout\ & (\i_pixreg|index\(4) & (\i_pixreg|Mux0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|Mux0~28_combout\,
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|Mux0~29_combout\,
	combout => \i_pixreg|Mux0~31_combout\);

-- Location: LCCOMB_X18_Y17_N20
\i_pixreg|Mux0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~30_combout\ = (\i_pixreg|index\(4) & ((\i_pixreg|Mux0~28_combout\ & (!\i_pixreg|index\(5) & \i_pixreg|Mux0~29_combout\)) # (!\i_pixreg|Mux0~28_combout\ & (\i_pixreg|index\(5) & !\i_pixreg|Mux0~29_combout\)))) # (!\i_pixreg|index\(4) & 
-- (!\i_pixreg|index\(5) & (\i_pixreg|Mux0~28_combout\ $ (\i_pixreg|Mux0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(4),
	datab => \i_pixreg|Mux0~28_combout\,
	datac => \i_pixreg|index\(5),
	datad => \i_pixreg|Mux0~29_combout\,
	combout => \i_pixreg|Mux0~30_combout\);

-- Location: LCCOMB_X18_Y17_N8
\i_pixreg|Mux0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~32_combout\ = (\i_pixreg|index\(6) & (\i_pixreg|Mux0~31_combout\)) # (!\i_pixreg|index\(6) & ((\i_pixreg|Mux0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|index\(6),
	datac => \i_pixreg|Mux0~31_combout\,
	datad => \i_pixreg|Mux0~30_combout\,
	combout => \i_pixreg|Mux0~32_combout\);

-- Location: LCCOMB_X18_Y17_N2
\i_pixreg|Mux0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~33_combout\ = (\i_pixreg|index\(7) & (\i_pixreg|Mux0~27_combout\)) # (!\i_pixreg|index\(7) & (((\i_pixreg|Mux0~32_combout\ & !\i_pixreg|index\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~27_combout\,
	datab => \i_pixreg|Mux0~32_combout\,
	datac => \i_pixreg|index\(7),
	datad => \i_pixreg|index\(9),
	combout => \i_pixreg|Mux0~33_combout\);

-- Location: LCCOMB_X18_Y18_N6
\i_pixreg|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~19_combout\ = (\i_pixreg|Mux0~18_combout\ & (\i_pixreg|index\(9) & \i_pixreg|Mux0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~18_combout\,
	datab => \i_pixreg|index\(9),
	datad => \i_pixreg|Mux0~14_combout\,
	combout => \i_pixreg|Mux0~19_combout\);

-- Location: LCCOMB_X18_Y18_N8
\i_pixreg|Mux0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~34_combout\ = (\i_pixreg|index\(10) & (((\i_pixreg|index\(8))))) # (!\i_pixreg|index\(10) & ((\i_pixreg|index\(8) & ((\i_pixreg|Mux0~19_combout\))) # (!\i_pixreg|index\(8) & (\i_pixreg|Mux0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|index\(10),
	datab => \i_pixreg|Mux0~33_combout\,
	datac => \i_pixreg|index\(8),
	datad => \i_pixreg|Mux0~19_combout\,
	combout => \i_pixreg|Mux0~34_combout\);

-- Location: LCCOMB_X18_Y18_N2
\i_pixreg|Mux0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~37_combout\ = (\i_pixreg|Mux0~34_combout\ & ((\i_pixreg|Mux0~36_combout\) # ((!\i_pixreg|index\(10))))) # (!\i_pixreg|Mux0~34_combout\ & (((\i_pixreg|Mux0~17_combout\ & \i_pixreg|index\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~36_combout\,
	datab => \i_pixreg|Mux0~17_combout\,
	datac => \i_pixreg|Mux0~34_combout\,
	datad => \i_pixreg|index\(10),
	combout => \i_pixreg|Mux0~37_combout\);

-- Location: LCCOMB_X18_Y18_N22
\i_pixreg|Mux0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~157_combout\ = (\i_pixreg|Mux0~141_combout\ & ((\i_pixreg|Mux0~156_combout\) # ((!\i_pixreg|index\(11))))) # (!\i_pixreg|Mux0~141_combout\ & (((\i_pixreg|index\(11) & \i_pixreg|Mux0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~156_combout\,
	datab => \i_pixreg|Mux0~141_combout\,
	datac => \i_pixreg|index\(11),
	datad => \i_pixreg|Mux0~37_combout\,
	combout => \i_pixreg|Mux0~157_combout\);

-- Location: LCCOMB_X18_Y18_N16
\i_pixreg|Mux0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~158_combout\ = (\i_pixreg|Mux0~12_combout\ & ((\i_pixreg|Mux0~13_combout\) # ((\i_pixreg|Mux0~157_combout\ & !\i_pixreg|index\(12))))) # (!\i_pixreg|Mux0~12_combout\ & (((\i_pixreg|Mux0~157_combout\ & !\i_pixreg|index\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~12_combout\,
	datab => \i_pixreg|Mux0~13_combout\,
	datac => \i_pixreg|Mux0~157_combout\,
	datad => \i_pixreg|index\(12),
	combout => \i_pixreg|Mux0~158_combout\);

-- Location: FF_X18_Y18_N17
\i_pixreg|pixcode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|Mux0~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode~q\);

-- Location: LCCOMB_X27_Y72_N24
\i_RGB_gen|vga_b[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[7]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_b[7]~feeder_combout\);

-- Location: FF_X27_Y72_N25
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

-- Location: LCCOMB_X27_Y72_N2
\i_RGB_gen|vga_b[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[6]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_b[6]~feeder_combout\);

-- Location: FF_X27_Y72_N3
\i_RGB_gen|vga_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(6));

-- Location: LCCOMB_X27_Y72_N12
\i_RGB_gen|vga_b[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[5]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_b[5]~feeder_combout\);

-- Location: FF_X27_Y72_N13
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

-- Location: LCCOMB_X27_Y72_N22
\i_RGB_gen|vga_b[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[4]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_b[4]~feeder_combout\);

-- Location: FF_X27_Y72_N23
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

-- Location: LCCOMB_X27_Y72_N16
\i_RGB_gen|vga_b[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[3]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_b[3]~feeder_combout\);

-- Location: FF_X27_Y72_N17
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

-- Location: LCCOMB_X27_Y72_N10
\i_RGB_gen|vga_b[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[2]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_b[2]~feeder_combout\);

-- Location: FF_X27_Y72_N11
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

-- Location: LCCOMB_X27_Y72_N4
\i_RGB_gen|vga_b[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[1]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_b[1]~feeder_combout\);

-- Location: FF_X27_Y72_N5
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

-- Location: LCCOMB_X27_Y72_N6
\i_RGB_gen|vga_b[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[0]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_b[0]~feeder_combout\);

-- Location: FF_X27_Y72_N7
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

-- Location: LCCOMB_X27_Y72_N0
\i_RGB_gen|vga_g[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[7]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_g[7]~feeder_combout\);

-- Location: FF_X27_Y72_N1
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

-- Location: LCCOMB_X27_Y72_N26
\i_RGB_gen|vga_g[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[6]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_g[6]~feeder_combout\);

-- Location: FF_X27_Y72_N27
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

-- Location: LCCOMB_X21_Y72_N24
\i_RGB_gen|vga_g[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[5]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_g[5]~feeder_combout\);

-- Location: FF_X21_Y72_N25
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

-- Location: LCCOMB_X27_Y72_N28
\i_RGB_gen|vga_g[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[4]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_g[4]~feeder_combout\);

-- Location: FF_X27_Y72_N29
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

-- Location: LCCOMB_X27_Y72_N14
\i_RGB_gen|vga_g[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[3]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_g[3]~feeder_combout\);

-- Location: FF_X27_Y72_N15
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

-- Location: LCCOMB_X27_Y72_N8
\i_RGB_gen|vga_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[2]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_g[2]~feeder_combout\);

-- Location: FF_X27_Y72_N9
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

-- Location: LCCOMB_X21_Y72_N10
\i_RGB_gen|vga_g[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[1]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_g[1]~feeder_combout\);

-- Location: FF_X21_Y72_N11
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

-- Location: LCCOMB_X21_Y72_N20
\i_RGB_gen|vga_g[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g[0]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_g[0]~feeder_combout\);

-- Location: FF_X21_Y72_N21
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

-- Location: LCCOMB_X21_Y72_N6
\i_RGB_gen|vga_r[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[7]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_r[7]~feeder_combout\);

-- Location: FF_X21_Y72_N7
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

-- Location: LCCOMB_X27_Y72_N18
\i_RGB_gen|vga_r[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[6]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_r[6]~feeder_combout\);

-- Location: FF_X27_Y72_N19
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

-- Location: LCCOMB_X21_Y72_N8
\i_RGB_gen|vga_r[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[5]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_r[5]~feeder_combout\);

-- Location: FF_X21_Y72_N9
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

-- Location: LCCOMB_X21_Y72_N2
\i_RGB_gen|vga_r[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[4]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_r[4]~feeder_combout\);

-- Location: FF_X21_Y72_N3
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

-- Location: LCCOMB_X21_Y72_N12
\i_RGB_gen|vga_r[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[3]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_r[3]~feeder_combout\);

-- Location: FF_X21_Y72_N13
\i_RGB_gen|vga_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(3));

-- Location: LCCOMB_X27_Y72_N20
\i_RGB_gen|vga_r[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[2]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_r[2]~feeder_combout\);

-- Location: FF_X27_Y72_N21
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

-- Location: LCCOMB_X21_Y72_N14
\i_RGB_gen|vga_r[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[1]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_r[1]~feeder_combout\);

-- Location: FF_X21_Y72_N15
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

-- Location: LCCOMB_X27_Y72_N30
\i_RGB_gen|vga_r[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[0]~feeder_combout\ = \i_pixreg|pixcode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_pixreg|pixcode~q\,
	combout => \i_RGB_gen|vga_r[0]~feeder_combout\);

-- Location: FF_X27_Y72_N31
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

ww_sram_ce <= \sram_ce~output_o\;

ww_sram_oe <= \sram_oe~output_o\;

ww_sram_lb <= \sram_lb~output_o\;

ww_sram_ub <= \sram_ub~output_o\;

ww_sram_we <= \sram_we~output_o\;

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

ww_sram_addr(19) <= \sram_addr[19]~output_o\;

ww_sram_addr(18) <= \sram_addr[18]~output_o\;

ww_sram_addr(17) <= \sram_addr[17]~output_o\;

ww_sram_addr(16) <= \sram_addr[16]~output_o\;

ww_sram_addr(15) <= \sram_addr[15]~output_o\;

ww_sram_addr(14) <= \sram_addr[14]~output_o\;

ww_sram_addr(13) <= \sram_addr[13]~output_o\;

ww_sram_addr(12) <= \sram_addr[12]~output_o\;

ww_sram_addr(11) <= \sram_addr[11]~output_o\;

ww_sram_addr(10) <= \sram_addr[10]~output_o\;

ww_sram_addr(9) <= \sram_addr[9]~output_o\;

ww_sram_addr(8) <= \sram_addr[8]~output_o\;

ww_sram_addr(7) <= \sram_addr[7]~output_o\;

ww_sram_addr(6) <= \sram_addr[6]~output_o\;

ww_sram_addr(5) <= \sram_addr[5]~output_o\;

ww_sram_addr(4) <= \sram_addr[4]~output_o\;

ww_sram_addr(3) <= \sram_addr[3]~output_o\;

ww_sram_addr(2) <= \sram_addr[2]~output_o\;

ww_sram_addr(1) <= \sram_addr[1]~output_o\;

ww_sram_addr(0) <= \sram_addr[0]~output_o\;

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


