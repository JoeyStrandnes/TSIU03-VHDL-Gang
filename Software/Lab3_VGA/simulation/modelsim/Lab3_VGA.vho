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

-- DATE "10/12/2021 13:06:18"

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
	PS2_CLK : IN std_logic;
	PS2_DAT : IN std_logic;
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
-- PS2_CLK	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_DAT	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_PS2_CLK : std_logic;
SIGNAL ww_PS2_DAT : std_logic;
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_vga_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_r : std_logic_vector(7 DOWNTO 0);
SIGNAL \fpga_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|LessThan27~1_cout\ : std_logic;
SIGNAL \inst|LessThan27~3_cout\ : std_logic;
SIGNAL \inst|LessThan27~5_cout\ : std_logic;
SIGNAL \inst|LessThan27~7_cout\ : std_logic;
SIGNAL \inst|LessThan27~9_cout\ : std_logic;
SIGNAL \inst|LessThan27~11_cout\ : std_logic;
SIGNAL \inst|LessThan27~13_cout\ : std_logic;
SIGNAL \inst|LessThan27~15_cout\ : std_logic;
SIGNAL \inst|LessThan27~17_cout\ : std_logic;
SIGNAL \inst|LessThan27~18_combout\ : std_logic;
SIGNAL \inst|LessThan16~1_cout\ : std_logic;
SIGNAL \inst|LessThan16~3_cout\ : std_logic;
SIGNAL \inst|LessThan16~5_cout\ : std_logic;
SIGNAL \inst|LessThan16~7_cout\ : std_logic;
SIGNAL \inst|LessThan16~9_cout\ : std_logic;
SIGNAL \inst|LessThan16~11_cout\ : std_logic;
SIGNAL \inst|LessThan16~13_cout\ : std_logic;
SIGNAL \inst|LessThan16~14_combout\ : std_logic;
SIGNAL \inst|Add12~0_combout\ : std_logic;
SIGNAL \inst|Add12~1\ : std_logic;
SIGNAL \inst|Add12~2_combout\ : std_logic;
SIGNAL \inst|Add12~3\ : std_logic;
SIGNAL \inst|Add12~4_combout\ : std_logic;
SIGNAL \inst|Add12~5\ : std_logic;
SIGNAL \inst|Add12~6_combout\ : std_logic;
SIGNAL \inst|LessThan17~1_cout\ : std_logic;
SIGNAL \inst|LessThan17~3_cout\ : std_logic;
SIGNAL \inst|LessThan17~5_cout\ : std_logic;
SIGNAL \inst|LessThan17~7_cout\ : std_logic;
SIGNAL \inst|LessThan17~9_cout\ : std_logic;
SIGNAL \inst|LessThan17~11_cout\ : std_logic;
SIGNAL \inst|LessThan17~13_cout\ : std_logic;
SIGNAL \inst|LessThan17~15_cout\ : std_logic;
SIGNAL \inst|LessThan17~16_combout\ : std_logic;
SIGNAL \inst|Add10~0_combout\ : std_logic;
SIGNAL \inst|Add10~1\ : std_logic;
SIGNAL \inst|Add10~2_combout\ : std_logic;
SIGNAL \inst|Add10~3\ : std_logic;
SIGNAL \inst|Add10~4_combout\ : std_logic;
SIGNAL \inst|Add10~5\ : std_logic;
SIGNAL \inst|Add10~6_combout\ : std_logic;
SIGNAL \inst|Add10~7\ : std_logic;
SIGNAL \inst|Add10~8_combout\ : std_logic;
SIGNAL \inst|Add10~9\ : std_logic;
SIGNAL \inst|Add10~10_combout\ : std_logic;
SIGNAL \inst|Add10~11\ : std_logic;
SIGNAL \inst|Add10~12_combout\ : std_logic;
SIGNAL \inst|Add10~13\ : std_logic;
SIGNAL \inst|Add10~14_combout\ : std_logic;
SIGNAL \inst|Add10~15\ : std_logic;
SIGNAL \inst|Add10~16_combout\ : std_logic;
SIGNAL \inst|Add8~2_combout\ : std_logic;
SIGNAL \inst|Add8~8_combout\ : std_logic;
SIGNAL \inst|Add8~12_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~0_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~4_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~8_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~11\ : std_logic;
SIGNAL \i_pixreg|Add0~12_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~12_combout\ : std_logic;
SIGNAL \inst|Add6~6_combout\ : std_logic;
SIGNAL \inst|LessThan44~0_combout\ : std_logic;
SIGNAL \inst|LessThan23~2_combout\ : std_logic;
SIGNAL \inst|LessThan36~0_combout\ : std_logic;
SIGNAL \inst|LessThan36~1_combout\ : std_logic;
SIGNAL \inst|LessThan26~0_combout\ : std_logic;
SIGNAL \inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|LessThan34~0_combout\ : std_logic;
SIGNAL \inst|LessThan37~2_combout\ : std_logic;
SIGNAL \inst|pixcode~3_combout\ : std_logic;
SIGNAL \inst|pixcode~4_combout\ : std_logic;
SIGNAL \inst|pixcode~5_combout\ : std_logic;
SIGNAL \inst|pixcode~6_combout\ : std_logic;
SIGNAL \inst|pixcode~7_combout\ : std_logic;
SIGNAL \inst|LessThan48~0_combout\ : std_logic;
SIGNAL \inst|process_0~7_combout\ : std_logic;
SIGNAL \inst|process_0~8_combout\ : std_logic;
SIGNAL \inst|process_0~9_combout\ : std_logic;
SIGNAL \inst|pixcode~8_combout\ : std_logic;
SIGNAL \inst|process_0~10_combout\ : std_logic;
SIGNAL \inst|pixcode~9_combout\ : std_logic;
SIGNAL \inst|LessThan44~1_combout\ : std_logic;
SIGNAL \inst|pixcode~10_combout\ : std_logic;
SIGNAL \inst|pixcode~11_combout\ : std_logic;
SIGNAL \inst|process_0~11_combout\ : std_logic;
SIGNAL \inst|process_0~12_combout\ : std_logic;
SIGNAL \inst|pixcode~12_combout\ : std_logic;
SIGNAL \inst|process_0~14_combout\ : std_logic;
SIGNAL \inst|pixcode~13_combout\ : std_logic;
SIGNAL \inst|process_0~15_combout\ : std_logic;
SIGNAL \inst|process_0~20_combout\ : std_logic;
SIGNAL \inst|process_0~21_combout\ : std_logic;
SIGNAL \inst|process_0~22_combout\ : std_logic;
SIGNAL \inst|process_0~23_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~1_combout\ : std_logic;
SIGNAL \inst|process_0~24_combout\ : std_logic;
SIGNAL \inst|process_0~25_combout\ : std_logic;
SIGNAL \inst|process_0~26_combout\ : std_logic;
SIGNAL \inst|process_0~29_combout\ : std_logic;
SIGNAL \inst|process_0~30_combout\ : std_logic;
SIGNAL \inst|process_0~31_combout\ : std_logic;
SIGNAL \inst|process_0~32_combout\ : std_logic;
SIGNAL \inst|EN_Limit[4]~0_combout\ : std_logic;
SIGNAL \inst|EN_Limit[4]~1_combout\ : std_logic;
SIGNAL \inst|EN_Limit[4]~2_combout\ : std_logic;
SIGNAL \inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|process_0~34_combout\ : std_logic;
SIGNAL \inst|process_0~35_combout\ : std_logic;
SIGNAL \inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|process_0~36_combout\ : std_logic;
SIGNAL \inst|process_0~42_combout\ : std_logic;
SIGNAL \inst|process_0~43_combout\ : std_logic;
SIGNAL \inst|EN_Limit[1]~4_combout\ : std_logic;
SIGNAL \inst|Menu_Counter[2]~2_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~2_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~3_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~4_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~6_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~7_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~9_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~10_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~11_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~12_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~13_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~14_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~15_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~16_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~18_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~19_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~25_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~26_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~27_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~28_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~29_combout\ : std_logic;
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
SIGNAL \i_pixreg|Mux0~171_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~172_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~173_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~174_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~175_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~176_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~177_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~178_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~179_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~180_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~181_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~182_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~183_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~184_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~185_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~186_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~187_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~188_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~189_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~190_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~191_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~192_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~193_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~194_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~195_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~196_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~197_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~198_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~199_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~200_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~201_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~202_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~203_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~204_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~205_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~206_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~207_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~208_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~209_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~210_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~211_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~212_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~213_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~214_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~215_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~216_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~217_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~218_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~219_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~220_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~221_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~222_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~223_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~224_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~225_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~226_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~227_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~228_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~229_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~230_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~231_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~232_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~233_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~234_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~235_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~236_combout\ : std_logic;
SIGNAL \inst|process_0~46_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~0_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~1_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~2_combout\ : std_logic;
SIGNAL \i_pixreg|counter[1]~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Number~3_combout\ : std_logic;
SIGNAL \inst1|Equal4~1_combout\ : std_logic;
SIGNAL \inst1|shiftreg~4_combout\ : std_logic;
SIGNAL \inst|LessThan23~3_combout\ : std_logic;
SIGNAL \inst|LessThan37~3_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~238_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~239_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~240_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~241_combout\ : std_logic;
SIGNAL \inst|EN_Limit[9]~5_combout\ : std_logic;
SIGNAL \inst|EN_Limit[6]~6_combout\ : std_logic;
SIGNAL \inst|EN_Limit[5]~7_combout\ : std_logic;
SIGNAL \inst|EN_Limit[3]~8_combout\ : std_logic;
SIGNAL \inst|ED_Limit[7]~2_combout\ : std_logic;
SIGNAL \inst|ED_Limit[2]~5_combout\ : std_logic;
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
SIGNAL \i_pixcounter|Add0~11\ : std_logic;
SIGNAL \i_pixcounter|Add0~12_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \i_ce_gen|counter[0]~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~1\ : std_logic;
SIGNAL \i_pixcounter|Add0~2_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~5_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~1_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~13\ : std_logic;
SIGNAL \i_pixcounter|Add0~14_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~15\ : std_logic;
SIGNAL \i_pixcounter|Add0~16_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~8_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~3_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~3\ : std_logic;
SIGNAL \i_pixcounter|Add0~4_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~4_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~2_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~5\ : std_logic;
SIGNAL \i_pixcounter|Add0~6_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~2_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~7\ : std_logic;
SIGNAL \i_pixcounter|Add0~9\ : std_logic;
SIGNAL \i_pixcounter|Add0~10_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~1_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~1_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~0_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~2_combout\ : std_logic;
SIGNAL \i_hs_gen|hsync~q\ : std_logic;
SIGNAL \i_blank6~0_combout\ : std_logic;
SIGNAL \i_blank6~q\ : std_logic;
SIGNAL \i_hs3~feeder_combout\ : std_logic;
SIGNAL \i_hs3~q\ : std_logic;
SIGNAL \i_hs4~feeder_combout\ : std_logic;
SIGNAL \i_hs4~q\ : std_logic;
SIGNAL \i_linecounter|vcnti[0]~10_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[6]~23\ : std_logic;
SIGNAL \i_linecounter|vcnti[7]~24_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~2_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~3_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~1_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[2]~14_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~0_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[7]~25\ : std_logic;
SIGNAL \i_linecounter|vcnti[8]~26_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~2_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[0]~11\ : std_logic;
SIGNAL \i_linecounter|vcnti[1]~13\ : std_logic;
SIGNAL \i_linecounter|vcnti[2]~15\ : std_logic;
SIGNAL \i_linecounter|vcnti[3]~16_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[3]~17\ : std_logic;
SIGNAL \i_linecounter|vcnti[4]~18_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[4]~19\ : std_logic;
SIGNAL \i_linecounter|vcnti[5]~20_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[5]~21\ : std_logic;
SIGNAL \i_linecounter|vcnti[6]~22_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[8]~27\ : std_logic;
SIGNAL \i_linecounter|vcnti[9]~28_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~0_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~3_combout\ : std_logic;
SIGNAL \i_vs_gen|vsync~q\ : std_logic;
SIGNAL \i_blank5~0_combout\ : std_logic;
SIGNAL \i_blank5~q\ : std_logic;
SIGNAL \i_vs3~feeder_combout\ : std_logic;
SIGNAL \i_vs3~q\ : std_logic;
SIGNAL \i_vs4~q\ : std_logic;
SIGNAL \iBlank_gen|blank~0_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~2_combout\ : std_logic;
SIGNAL \i_blank2~q\ : std_logic;
SIGNAL \i_blank4~feeder_combout\ : std_logic;
SIGNAL \i_blank4~q\ : std_logic;
SIGNAL \i_blank3~feeder_combout\ : std_logic;
SIGNAL \i_blank3~q\ : std_logic;
SIGNAL \i_pixcounter|Add0~17\ : std_logic;
SIGNAL \i_pixcounter|Add0~18_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~1_combout\ : std_logic;
SIGNAL \i_pixreg|counter[0]~1_combout\ : std_logic;
SIGNAL \i_pixreg|Equal0~0_combout\ : std_logic;
SIGNAL \inst|LessThan20~0_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|LessThan43~0_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \i_pixreg|vcnt_d[0]~feeder_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[1]~12_combout\ : std_logic;
SIGNAL \inst|LessThan46~0_combout\ : std_logic;
SIGNAL \inst|LessThan18~0_combout\ : std_logic;
SIGNAL \inst|process_0~19_combout\ : std_logic;
SIGNAL \PS2_CLK~input_o\ : std_logic;
SIGNAL \inst1|PS2_CLK2~feeder_combout\ : std_logic;
SIGNAL \inst1|PS2_CLK2~q\ : std_logic;
SIGNAL \inst1|PS2_CLK2_old~q\ : std_logic;
SIGNAL \inst1|shiftreg~3_combout\ : std_logic;
SIGNAL \inst1|shiftreg[8]~2_combout\ : std_logic;
SIGNAL \inst1|shiftreg~1_combout\ : std_logic;
SIGNAL \inst1|shiftreg[0]~0_combout\ : std_logic;
SIGNAL \inst1|shiftreg~8_combout\ : std_logic;
SIGNAL \PS2_DAT~input_o\ : std_logic;
SIGNAL \inst1|shiftreg~10_combout\ : std_logic;
SIGNAL \inst1|shiftreg~9_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|break~0_combout\ : std_logic;
SIGNAL \inst1|break~q\ : std_logic;
SIGNAL \inst1|Number~2_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|Equal2~1_combout\ : std_logic;
SIGNAL \inst1|shiftreg~5_combout\ : std_logic;
SIGNAL \inst1|shiftreg~6_combout\ : std_logic;
SIGNAL \inst1|shiftreg~7_combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|Number~8_combout\ : std_logic;
SIGNAL \inst1|Number~6_combout\ : std_logic;
SIGNAL \inst1|new_number~0_combout\ : std_logic;
SIGNAL \inst1|new_number~q\ : std_logic;
SIGNAL \inst1|Number~4_combout\ : std_logic;
SIGNAL \inst1|Number~7_combout\ : std_logic;
SIGNAL \inst|process_0~28_combout\ : std_logic;
SIGNAL \inst1|Number~5_combout\ : std_logic;
SIGNAL \inst|process_0~45_combout\ : std_logic;
SIGNAL \inst|Menu_Counter[1]~1_combout\ : std_logic;
SIGNAL \inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[1]~1_combout\ : std_logic;
SIGNAL \inst|Menu_Counter[0]~0_combout\ : std_logic;
SIGNAL \inst|Menu_Counter[2]~3_combout\ : std_logic;
SIGNAL \inst|Menu_Counter[2]~4_combout\ : std_logic;
SIGNAL \inst|Add6~0_combout\ : std_logic;
SIGNAL \inst|DIST_Limit[1]~6_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|LR_Limit[1]~6_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[1]~7_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[1]~2_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[2]~6_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[3]~5_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[6]~4_combout\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[7]~3_combout\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|process_0~27_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[7]~0_combout\ : std_logic;
SIGNAL \inst|LR_Limit[1]~1_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|LR_Limit[2]~5_combout\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|LR_Limit[3]~4_combout\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|Add4~9\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|LR_Limit[6]~3_combout\ : std_logic;
SIGNAL \inst|Add4~11\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|LR_Limit[7]~2_combout\ : std_logic;
SIGNAL \inst|Add4~13\ : std_logic;
SIGNAL \inst|Add4~14_combout\ : std_logic;
SIGNAL \inst|Equal6~0_combout\ : std_logic;
SIGNAL \inst|process_0~33_combout\ : std_logic;
SIGNAL \inst|Equal8~2_combout\ : std_logic;
SIGNAL \inst|LR_Limit[2]~0_combout\ : std_logic;
SIGNAL \inst|Equal8~3_combout\ : std_logic;
SIGNAL \inst|DIST_Limit[1]~0_combout\ : std_logic;
SIGNAL \inst|DIST_Limit[1]~1_combout\ : std_logic;
SIGNAL \inst|Add6~1\ : std_logic;
SIGNAL \inst|Add6~3\ : std_logic;
SIGNAL \inst|Add6~5\ : std_logic;
SIGNAL \inst|Add6~7\ : std_logic;
SIGNAL \inst|Add6~8_combout\ : std_logic;
SIGNAL \inst|Add6~4_combout\ : std_logic;
SIGNAL \inst|DIST_Limit[3]~4_combout\ : std_logic;
SIGNAL \inst|Add6~9\ : std_logic;
SIGNAL \inst|Add6~10_combout\ : std_logic;
SIGNAL \inst|DIST_Limit[6]~3_combout\ : std_logic;
SIGNAL \inst|process_0~37_combout\ : std_logic;
SIGNAL \inst|Add6~11\ : std_logic;
SIGNAL \inst|Add6~12_combout\ : std_logic;
SIGNAL \inst|DIST_Limit[7]~2_combout\ : std_logic;
SIGNAL \inst|process_0~38_combout\ : std_logic;
SIGNAL \inst|process_0~47_combout\ : std_logic;
SIGNAL \inst|Add6~13\ : std_logic;
SIGNAL \inst|Add6~14_combout\ : std_logic;
SIGNAL \inst|Add6~2_combout\ : std_logic;
SIGNAL \inst|DIST_Limit[2]~5_combout\ : std_logic;
SIGNAL \inst|LessThan21~1_cout\ : std_logic;
SIGNAL \inst|LessThan21~3_cout\ : std_logic;
SIGNAL \inst|LessThan21~5_cout\ : std_logic;
SIGNAL \inst|LessThan21~7_cout\ : std_logic;
SIGNAL \inst|LessThan21~9_cout\ : std_logic;
SIGNAL \inst|LessThan21~11_cout\ : std_logic;
SIGNAL \inst|LessThan21~13_cout\ : std_logic;
SIGNAL \inst|LessThan21~15_cout\ : std_logic;
SIGNAL \inst|LessThan21~16_combout\ : std_logic;
SIGNAL \inst|pixcode~15_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~1\ : std_logic;
SIGNAL \i_pixreg|Add1~2_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~1\ : std_logic;
SIGNAL \i_pixreg|Add0~3\ : std_logic;
SIGNAL \i_pixreg|Add0~5\ : std_logic;
SIGNAL \i_pixreg|Add0~6_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~2_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~3\ : std_logic;
SIGNAL \i_pixreg|Add1~5\ : std_logic;
SIGNAL \i_pixreg|Add1~7\ : std_logic;
SIGNAL \i_pixreg|Add1~9\ : std_logic;
SIGNAL \i_pixreg|Add1~10_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~8_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~0_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~17_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~20_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~6_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~21_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~4_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~5_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~0_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~1_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~8_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~22_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~23_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~7\ : std_logic;
SIGNAL \i_pixreg|Add0~9\ : std_logic;
SIGNAL \i_pixreg|Add0~10_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~11\ : std_logic;
SIGNAL \i_pixreg|Add1~13\ : std_logic;
SIGNAL \i_pixreg|Add1~14_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~15\ : std_logic;
SIGNAL \i_pixreg|Add1~16_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~24_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~237_combout\ : std_logic;
SIGNAL \i_pixreg|pixcode_single~q\ : std_logic;
SIGNAL \inst|process_0~16_combout\ : std_logic;
SIGNAL \inst|process_0~17_combout\ : std_logic;
SIGNAL \inst|LessThan46~1_combout\ : std_logic;
SIGNAL \inst|process_0~13_combout\ : std_logic;
SIGNAL \inst|process_0~18_combout\ : std_logic;
SIGNAL \inst|LessThan25~0_combout\ : std_logic;
SIGNAL \inst|LessThan26~1_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|Add8~0_combout\ : std_logic;
SIGNAL \inst|ED_Limit[1]~6_combout\ : std_logic;
SIGNAL \inst|EN_Limit[1]~3_combout\ : std_logic;
SIGNAL \inst|Add8~10_combout\ : std_logic;
SIGNAL \inst|ED_Limit[6]~3_combout\ : std_logic;
SIGNAL \inst|Add8~4_combout\ : std_logic;
SIGNAL \inst|ED_Limit[3]~4_combout\ : std_logic;
SIGNAL \inst|Add8~6_combout\ : std_logic;
SIGNAL \inst|process_0~39_combout\ : std_logic;
SIGNAL \inst|process_0~40_combout\ : std_logic;
SIGNAL \inst|Equal8~1_combout\ : std_logic;
SIGNAL \inst|ED_Limit[6]~0_combout\ : std_logic;
SIGNAL \inst|ED_Limit[1]~1_combout\ : std_logic;
SIGNAL \inst|Add8~1\ : std_logic;
SIGNAL \inst|Add8~3\ : std_logic;
SIGNAL \inst|Add8~5\ : std_logic;
SIGNAL \inst|Add8~7\ : std_logic;
SIGNAL \inst|Add8~9\ : std_logic;
SIGNAL \inst|Add8~11\ : std_logic;
SIGNAL \inst|Add8~13\ : std_logic;
SIGNAL \inst|Add8~14_combout\ : std_logic;
SIGNAL \inst|process_0~41_combout\ : std_logic;
SIGNAL \inst|process_0~44_combout\ : std_logic;
SIGNAL \inst|Add8~15\ : std_logic;
SIGNAL \inst|Add8~16_combout\ : std_logic;
SIGNAL \inst|LessThan31~1_cout\ : std_logic;
SIGNAL \inst|LessThan31~3_cout\ : std_logic;
SIGNAL \inst|LessThan31~5_cout\ : std_logic;
SIGNAL \inst|LessThan31~7_cout\ : std_logic;
SIGNAL \inst|LessThan31~9_cout\ : std_logic;
SIGNAL \inst|LessThan31~11_cout\ : std_logic;
SIGNAL \inst|LessThan31~13_cout\ : std_logic;
SIGNAL \inst|LessThan31~15_cout\ : std_logic;
SIGNAL \inst|LessThan31~17_cout\ : std_logic;
SIGNAL \inst|LessThan31~18_combout\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|pixcode~2_combout\ : std_logic;
SIGNAL \inst|pixcode~14_combout\ : std_logic;
SIGNAL \inst|LessThan38~0_combout\ : std_logic;
SIGNAL \inst|LessThan13~1_cout\ : std_logic;
SIGNAL \inst|LessThan13~3_cout\ : std_logic;
SIGNAL \inst|LessThan13~5_cout\ : std_logic;
SIGNAL \inst|LessThan13~7_cout\ : std_logic;
SIGNAL \inst|LessThan13~9_cout\ : std_logic;
SIGNAL \inst|LessThan13~11_cout\ : std_logic;
SIGNAL \inst|LessThan13~13_cout\ : std_logic;
SIGNAL \inst|LessThan13~15_cout\ : std_logic;
SIGNAL \inst|LessThan13~16_combout\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|pixcode~16_combout\ : std_logic;
SIGNAL \inst|pixcode~19_combout\ : std_logic;
SIGNAL \inst|pixcode~18_combout\ : std_logic;
SIGNAL \inst|pixcode~20_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~0_combout\ : std_logic;
SIGNAL \inst|pixcode~21_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~1_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~2_combout\ : std_logic;
SIGNAL \inst|pixcode~22_combout\ : std_logic;
SIGNAL \inst|pixcode~23_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~3_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[3]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b[0]~feeder_combout\ : std_logic;
SIGNAL \inst|pixcode~24_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~0_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~1_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g[5]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~2_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~3_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~4_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~5_combout\ : std_logic;
SIGNAL \inst|pixcode~17_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[7]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[6]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~0_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[5]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~1_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~2_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~3_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~4_combout\ : std_logic;
SIGNAL \inst|pixcode\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|DIST_Limit\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_pixcounter|hcnti\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|VOL_Limit\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|Number\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_ce_gen|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_pixreg|vcnt_d\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|shiftreg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Menu_Counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|LR_Limit\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ED_Limit\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_g\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_pixreg|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_pixreg|hcnt_d\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_linecounter|vcnti\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|EN_Limit\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|ALT_INV_shiftreg\ : std_logic_vector(0 DOWNTO 0);

BEGIN

hsync <= ww_hsync;
ww_KEY0 <= KEY0;
ww_fpga_clk <= fpga_clk;
vsync <= ww_vsync;
vga_clk <= ww_vga_clk;
vga_blank <= ww_vga_blank;
vga_sync <= ww_vga_sync;
ww_PS2_CLK <= PS2_CLK;
ww_PS2_DAT <= PS2_DAT;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
vga_b <= ww_vga_b;
vga_g <= ww_vga_g;
vga_r <= ww_vga_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fpga_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fpga_clk~input_o\);
\inst1|ALT_INV_shiftreg\(0) <= NOT \inst1|shiftreg\(0);

-- Location: LCCOMB_X74_Y45_N10
\inst|LessThan27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan27~1_cout\ = CARRY(\i_pixreg|hcnt_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(0),
	datad => VCC,
	cout => \inst|LessThan27~1_cout\);

-- Location: LCCOMB_X74_Y45_N12
\inst|LessThan27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan27~3_cout\ = CARRY((\i_pixreg|hcnt_d\(1) & (\inst|EN_Limit\(1) & !\inst|LessThan27~1_cout\)) # (!\i_pixreg|hcnt_d\(1) & ((\inst|EN_Limit\(1)) # (!\inst|LessThan27~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(1),
	datab => \inst|EN_Limit\(1),
	datad => VCC,
	cin => \inst|LessThan27~1_cout\,
	cout => \inst|LessThan27~3_cout\);

-- Location: LCCOMB_X74_Y45_N14
\inst|LessThan27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan27~5_cout\ = CARRY((\i_pixreg|hcnt_d\(2) & ((!\inst|LessThan27~3_cout\) # (!\inst|EN_Limit\(2)))) # (!\i_pixreg|hcnt_d\(2) & (!\inst|EN_Limit\(2) & !\inst|LessThan27~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(2),
	datab => \inst|EN_Limit\(2),
	datad => VCC,
	cin => \inst|LessThan27~3_cout\,
	cout => \inst|LessThan27~5_cout\);

-- Location: LCCOMB_X74_Y45_N16
\inst|LessThan27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan27~7_cout\ = CARRY((\i_pixreg|hcnt_d\(3) & (!\inst|EN_Limit\(3) & !\inst|LessThan27~5_cout\)) # (!\i_pixreg|hcnt_d\(3) & ((!\inst|LessThan27~5_cout\) # (!\inst|EN_Limit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \inst|EN_Limit\(3),
	datad => VCC,
	cin => \inst|LessThan27~5_cout\,
	cout => \inst|LessThan27~7_cout\);

-- Location: LCCOMB_X74_Y45_N18
\inst|LessThan27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan27~9_cout\ = CARRY((\i_pixreg|hcnt_d\(4) & ((!\inst|LessThan27~7_cout\) # (!\inst|EN_Limit\(4)))) # (!\i_pixreg|hcnt_d\(4) & (!\inst|EN_Limit\(4) & !\inst|LessThan27~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(4),
	datab => \inst|EN_Limit\(4),
	datad => VCC,
	cin => \inst|LessThan27~7_cout\,
	cout => \inst|LessThan27~9_cout\);

-- Location: LCCOMB_X74_Y45_N20
\inst|LessThan27~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan27~11_cout\ = CARRY((\i_pixreg|hcnt_d\(5) & (!\inst|EN_Limit\(5) & !\inst|LessThan27~9_cout\)) # (!\i_pixreg|hcnt_d\(5) & ((!\inst|LessThan27~9_cout\) # (!\inst|EN_Limit\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(5),
	datab => \inst|EN_Limit\(5),
	datad => VCC,
	cin => \inst|LessThan27~9_cout\,
	cout => \inst|LessThan27~11_cout\);

-- Location: LCCOMB_X74_Y45_N22
\inst|LessThan27~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan27~13_cout\ = CARRY((\inst|EN_Limit\(6) & ((\i_pixreg|hcnt_d\(6)) # (!\inst|LessThan27~11_cout\))) # (!\inst|EN_Limit\(6) & (\i_pixreg|hcnt_d\(6) & !\inst|LessThan27~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(6),
	datab => \i_pixreg|hcnt_d\(6),
	datad => VCC,
	cin => \inst|LessThan27~11_cout\,
	cout => \inst|LessThan27~13_cout\);

-- Location: LCCOMB_X74_Y45_N24
\inst|LessThan27~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan27~15_cout\ = CARRY((\i_pixreg|hcnt_d\(7) & (\inst|EN_Limit\(7) & !\inst|LessThan27~13_cout\)) # (!\i_pixreg|hcnt_d\(7) & ((\inst|EN_Limit\(7)) # (!\inst|LessThan27~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(7),
	datab => \inst|EN_Limit\(7),
	datad => VCC,
	cin => \inst|LessThan27~13_cout\,
	cout => \inst|LessThan27~15_cout\);

-- Location: LCCOMB_X74_Y45_N26
\inst|LessThan27~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan27~17_cout\ = CARRY((\inst|EN_Limit\(8) & (\i_pixreg|hcnt_d\(8) & !\inst|LessThan27~15_cout\)) # (!\inst|EN_Limit\(8) & ((\i_pixreg|hcnt_d\(8)) # (!\inst|LessThan27~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(8),
	datab => \i_pixreg|hcnt_d\(8),
	datad => VCC,
	cin => \inst|LessThan27~15_cout\,
	cout => \inst|LessThan27~17_cout\);

-- Location: LCCOMB_X74_Y45_N28
\inst|LessThan27~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan27~18_combout\ = (\inst|EN_Limit\(9) & (!\inst|LessThan27~17_cout\ & !\i_pixreg|hcnt_d\(9))) # (!\inst|EN_Limit\(9) & ((!\i_pixreg|hcnt_d\(9)) # (!\inst|LessThan27~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EN_Limit\(9),
	datad => \i_pixreg|hcnt_d\(9),
	cin => \inst|LessThan27~17_cout\,
	combout => \inst|LessThan27~18_combout\);

-- Location: LCCOMB_X70_Y46_N10
\inst|LessThan16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~1_cout\ = CARRY((\i_pixreg|hcnt_d\(1) & \inst|LR_Limit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(1),
	datab => \inst|LR_Limit\(1),
	datad => VCC,
	cout => \inst|LessThan16~1_cout\);

-- Location: LCCOMB_X70_Y46_N12
\inst|LessThan16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~3_cout\ = CARRY((\i_pixreg|hcnt_d\(2) & (!\inst|LR_Limit\(2) & !\inst|LessThan16~1_cout\)) # (!\i_pixreg|hcnt_d\(2) & ((!\inst|LessThan16~1_cout\) # (!\inst|LR_Limit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(2),
	datab => \inst|LR_Limit\(2),
	datad => VCC,
	cin => \inst|LessThan16~1_cout\,
	cout => \inst|LessThan16~3_cout\);

-- Location: LCCOMB_X70_Y46_N14
\inst|LessThan16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~5_cout\ = CARRY((\inst|LR_Limit\(3) & ((\i_pixreg|hcnt_d\(3)) # (!\inst|LessThan16~3_cout\))) # (!\inst|LR_Limit\(3) & (\i_pixreg|hcnt_d\(3) & !\inst|LessThan16~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(3),
	datab => \i_pixreg|hcnt_d\(3),
	datad => VCC,
	cin => \inst|LessThan16~3_cout\,
	cout => \inst|LessThan16~5_cout\);

-- Location: LCCOMB_X70_Y46_N16
\inst|LessThan16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~7_cout\ = CARRY((\i_pixreg|hcnt_d\(4) & (\inst|LR_Limit\(4) & !\inst|LessThan16~5_cout\)) # (!\i_pixreg|hcnt_d\(4) & ((\inst|LR_Limit\(4)) # (!\inst|LessThan16~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(4),
	datab => \inst|LR_Limit\(4),
	datad => VCC,
	cin => \inst|LessThan16~5_cout\,
	cout => \inst|LessThan16~7_cout\);

-- Location: LCCOMB_X70_Y46_N18
\inst|LessThan16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~9_cout\ = CARRY((\inst|LR_Limit\(5) & (\i_pixreg|hcnt_d\(5) & !\inst|LessThan16~7_cout\)) # (!\inst|LR_Limit\(5) & ((\i_pixreg|hcnt_d\(5)) # (!\inst|LessThan16~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(5),
	datab => \i_pixreg|hcnt_d\(5),
	datad => VCC,
	cin => \inst|LessThan16~7_cout\,
	cout => \inst|LessThan16~9_cout\);

-- Location: LCCOMB_X70_Y46_N20
\inst|LessThan16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~11_cout\ = CARRY((\inst|LR_Limit\(6) & (!\i_pixreg|hcnt_d\(6) & !\inst|LessThan16~9_cout\)) # (!\inst|LR_Limit\(6) & ((!\inst|LessThan16~9_cout\) # (!\i_pixreg|hcnt_d\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(6),
	datab => \i_pixreg|hcnt_d\(6),
	datad => VCC,
	cin => \inst|LessThan16~9_cout\,
	cout => \inst|LessThan16~11_cout\);

-- Location: LCCOMB_X70_Y46_N22
\inst|LessThan16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~13_cout\ = CARRY((\inst|LR_Limit\(7) & ((\i_pixreg|hcnt_d\(7)) # (!\inst|LessThan16~11_cout\))) # (!\inst|LR_Limit\(7) & (\i_pixreg|hcnt_d\(7) & !\inst|LessThan16~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(7),
	datab => \i_pixreg|hcnt_d\(7),
	datad => VCC,
	cin => \inst|LessThan16~11_cout\,
	cout => \inst|LessThan16~13_cout\);

-- Location: LCCOMB_X70_Y46_N24
\inst|LessThan16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~14_combout\ = (\inst|LR_Limit\(8) & (\inst|LessThan16~13_cout\ & \i_pixreg|hcnt_d\(8))) # (!\inst|LR_Limit\(8) & ((\inst|LessThan16~13_cout\) # (\i_pixreg|hcnt_d\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(8),
	datad => \i_pixreg|hcnt_d\(8),
	cin => \inst|LessThan16~13_cout\,
	combout => \inst|LessThan16~14_combout\);

-- Location: LCCOMB_X69_Y47_N24
\inst|Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add12~0_combout\ = (\inst|LR_Limit\(5) & (\inst|LR_Limit\(4) $ (VCC))) # (!\inst|LR_Limit\(5) & (\inst|LR_Limit\(4) & VCC))
-- \inst|Add12~1\ = CARRY((\inst|LR_Limit\(5) & \inst|LR_Limit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(5),
	datab => \inst|LR_Limit\(4),
	datad => VCC,
	combout => \inst|Add12~0_combout\,
	cout => \inst|Add12~1\);

-- Location: LCCOMB_X69_Y47_N26
\inst|Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add12~2_combout\ = (\inst|LR_Limit\(6) & ((\inst|Add12~1\) # (GND))) # (!\inst|LR_Limit\(6) & (!\inst|Add12~1\))
-- \inst|Add12~3\ = CARRY((\inst|LR_Limit\(6)) # (!\inst|Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(6),
	datad => VCC,
	cin => \inst|Add12~1\,
	combout => \inst|Add12~2_combout\,
	cout => \inst|Add12~3\);

-- Location: LCCOMB_X69_Y47_N28
\inst|Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add12~4_combout\ = (\inst|LR_Limit\(7) & (!\inst|Add12~3\ & VCC)) # (!\inst|LR_Limit\(7) & (\inst|Add12~3\ $ (GND)))
-- \inst|Add12~5\ = CARRY((!\inst|LR_Limit\(7) & !\inst|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LR_Limit\(7),
	datad => VCC,
	cin => \inst|Add12~3\,
	combout => \inst|Add12~4_combout\,
	cout => \inst|Add12~5\);

-- Location: LCCOMB_X69_Y47_N30
\inst|Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add12~6_combout\ = \inst|LR_Limit\(8) $ (\inst|Add12~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(8),
	cin => \inst|Add12~5\,
	combout => \inst|Add12~6_combout\);

-- Location: LCCOMB_X69_Y46_N2
\inst|LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan17~1_cout\ = CARRY(\i_pixreg|hcnt_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(0),
	datad => VCC,
	cout => \inst|LessThan17~1_cout\);

-- Location: LCCOMB_X69_Y46_N4
\inst|LessThan17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan17~3_cout\ = CARRY((\i_pixreg|hcnt_d\(1) & (!\inst|LR_Limit\(1) & !\inst|LessThan17~1_cout\)) # (!\i_pixreg|hcnt_d\(1) & ((!\inst|LessThan17~1_cout\) # (!\inst|LR_Limit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(1),
	datab => \inst|LR_Limit\(1),
	datad => VCC,
	cin => \inst|LessThan17~1_cout\,
	cout => \inst|LessThan17~3_cout\);

-- Location: LCCOMB_X69_Y46_N6
\inst|LessThan17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan17~5_cout\ = CARRY((\inst|LR_Limit\(2) & ((\i_pixreg|hcnt_d\(2)) # (!\inst|LessThan17~3_cout\))) # (!\inst|LR_Limit\(2) & (\i_pixreg|hcnt_d\(2) & !\inst|LessThan17~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(2),
	datab => \i_pixreg|hcnt_d\(2),
	datad => VCC,
	cin => \inst|LessThan17~3_cout\,
	cout => \inst|LessThan17~5_cout\);

-- Location: LCCOMB_X69_Y46_N8
\inst|LessThan17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan17~7_cout\ = CARRY((\i_pixreg|hcnt_d\(3) & (!\inst|LR_Limit\(3) & !\inst|LessThan17~5_cout\)) # (!\i_pixreg|hcnt_d\(3) & ((!\inst|LessThan17~5_cout\) # (!\inst|LR_Limit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \inst|LR_Limit\(3),
	datad => VCC,
	cin => \inst|LessThan17~5_cout\,
	cout => \inst|LessThan17~7_cout\);

-- Location: LCCOMB_X69_Y46_N10
\inst|LessThan17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan17~9_cout\ = CARRY((\inst|LR_Limit\(4) & ((\i_pixreg|hcnt_d\(4)) # (!\inst|LessThan17~7_cout\))) # (!\inst|LR_Limit\(4) & (\i_pixreg|hcnt_d\(4) & !\inst|LessThan17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(4),
	datab => \i_pixreg|hcnt_d\(4),
	datad => VCC,
	cin => \inst|LessThan17~7_cout\,
	cout => \inst|LessThan17~9_cout\);

-- Location: LCCOMB_X69_Y46_N12
\inst|LessThan17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan17~11_cout\ = CARRY((\inst|Add12~0_combout\ & ((!\inst|LessThan17~9_cout\) # (!\i_pixreg|hcnt_d\(5)))) # (!\inst|Add12~0_combout\ & (!\i_pixreg|hcnt_d\(5) & !\inst|LessThan17~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add12~0_combout\,
	datab => \i_pixreg|hcnt_d\(5),
	datad => VCC,
	cin => \inst|LessThan17~9_cout\,
	cout => \inst|LessThan17~11_cout\);

-- Location: LCCOMB_X69_Y46_N14
\inst|LessThan17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan17~13_cout\ = CARRY((\i_pixreg|hcnt_d\(6) & ((!\inst|LessThan17~11_cout\) # (!\inst|Add12~2_combout\))) # (!\i_pixreg|hcnt_d\(6) & (!\inst|Add12~2_combout\ & !\inst|LessThan17~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(6),
	datab => \inst|Add12~2_combout\,
	datad => VCC,
	cin => \inst|LessThan17~11_cout\,
	cout => \inst|LessThan17~13_cout\);

-- Location: LCCOMB_X69_Y46_N16
\inst|LessThan17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan17~15_cout\ = CARRY((\inst|Add12~4_combout\ & ((!\inst|LessThan17~13_cout\) # (!\i_pixreg|hcnt_d\(7)))) # (!\inst|Add12~4_combout\ & (!\i_pixreg|hcnt_d\(7) & !\inst|LessThan17~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add12~4_combout\,
	datab => \i_pixreg|hcnt_d\(7),
	datad => VCC,
	cin => \inst|LessThan17~13_cout\,
	cout => \inst|LessThan17~15_cout\);

-- Location: LCCOMB_X69_Y46_N18
\inst|LessThan17~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan17~16_combout\ = (\i_pixreg|hcnt_d\(8) & (\inst|LessThan17~15_cout\ & \inst|Add12~6_combout\)) # (!\i_pixreg|hcnt_d\(8) & ((\inst|LessThan17~15_cout\) # (\inst|Add12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(8),
	datad => \inst|Add12~6_combout\,
	cin => \inst|LessThan17~15_cout\,
	combout => \inst|LessThan17~16_combout\);

-- Location: LCCOMB_X75_Y45_N6
\inst|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~0_combout\ = \inst|EN_Limit\(1) $ (VCC)
-- \inst|Add10~1\ = CARRY(\inst|EN_Limit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|EN_Limit\(1),
	datad => VCC,
	combout => \inst|Add10~0_combout\,
	cout => \inst|Add10~1\);

-- Location: LCCOMB_X75_Y45_N8
\inst|Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~2_combout\ = (\inst|process_0~32_combout\ & ((\inst|EN_Limit\(2) & (!\inst|Add10~1\)) # (!\inst|EN_Limit\(2) & ((\inst|Add10~1\) # (GND))))) # (!\inst|process_0~32_combout\ & ((\inst|EN_Limit\(2) & (\inst|Add10~1\ & VCC)) # 
-- (!\inst|EN_Limit\(2) & (!\inst|Add10~1\))))
-- \inst|Add10~3\ = CARRY((\inst|process_0~32_combout\ & ((!\inst|Add10~1\) # (!\inst|EN_Limit\(2)))) # (!\inst|process_0~32_combout\ & (!\inst|EN_Limit\(2) & !\inst|Add10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~32_combout\,
	datab => \inst|EN_Limit\(2),
	datad => VCC,
	cin => \inst|Add10~1\,
	combout => \inst|Add10~2_combout\,
	cout => \inst|Add10~3\);

-- Location: LCCOMB_X75_Y45_N10
\inst|Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~4_combout\ = ((\inst|process_0~32_combout\ $ (\inst|EN_Limit\(3) $ (\inst|Add10~3\)))) # (GND)
-- \inst|Add10~5\ = CARRY((\inst|process_0~32_combout\ & ((!\inst|Add10~3\) # (!\inst|EN_Limit\(3)))) # (!\inst|process_0~32_combout\ & (!\inst|EN_Limit\(3) & !\inst|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~32_combout\,
	datab => \inst|EN_Limit\(3),
	datad => VCC,
	cin => \inst|Add10~3\,
	combout => \inst|Add10~4_combout\,
	cout => \inst|Add10~5\);

-- Location: LCCOMB_X75_Y45_N12
\inst|Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~6_combout\ = (\inst|EN_Limit\(4) & ((\inst|process_0~32_combout\ & (!\inst|Add10~5\)) # (!\inst|process_0~32_combout\ & (\inst|Add10~5\ & VCC)))) # (!\inst|EN_Limit\(4) & ((\inst|process_0~32_combout\ & ((\inst|Add10~5\) # (GND))) # 
-- (!\inst|process_0~32_combout\ & (!\inst|Add10~5\))))
-- \inst|Add10~7\ = CARRY((\inst|EN_Limit\(4) & (\inst|process_0~32_combout\ & !\inst|Add10~5\)) # (!\inst|EN_Limit\(4) & ((\inst|process_0~32_combout\) # (!\inst|Add10~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(4),
	datab => \inst|process_0~32_combout\,
	datad => VCC,
	cin => \inst|Add10~5\,
	combout => \inst|Add10~6_combout\,
	cout => \inst|Add10~7\);

-- Location: LCCOMB_X75_Y45_N14
\inst|Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~8_combout\ = ((\inst|EN_Limit\(5) $ (\inst|process_0~32_combout\ $ (!\inst|Add10~7\)))) # (GND)
-- \inst|Add10~9\ = CARRY((\inst|EN_Limit\(5) & (!\inst|process_0~32_combout\ & !\inst|Add10~7\)) # (!\inst|EN_Limit\(5) & ((!\inst|Add10~7\) # (!\inst|process_0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(5),
	datab => \inst|process_0~32_combout\,
	datad => VCC,
	cin => \inst|Add10~7\,
	combout => \inst|Add10~8_combout\,
	cout => \inst|Add10~9\);

-- Location: LCCOMB_X75_Y45_N16
\inst|Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~10_combout\ = (\inst|process_0~32_combout\ & ((\inst|EN_Limit\(6) & ((\inst|Add10~9\) # (GND))) # (!\inst|EN_Limit\(6) & (!\inst|Add10~9\)))) # (!\inst|process_0~32_combout\ & ((\inst|EN_Limit\(6) & (!\inst|Add10~9\)) # (!\inst|EN_Limit\(6) & 
-- (\inst|Add10~9\ & VCC))))
-- \inst|Add10~11\ = CARRY((\inst|process_0~32_combout\ & ((\inst|EN_Limit\(6)) # (!\inst|Add10~9\))) # (!\inst|process_0~32_combout\ & (\inst|EN_Limit\(6) & !\inst|Add10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~32_combout\,
	datab => \inst|EN_Limit\(6),
	datad => VCC,
	cin => \inst|Add10~9\,
	combout => \inst|Add10~10_combout\,
	cout => \inst|Add10~11\);

-- Location: LCCOMB_X75_Y45_N18
\inst|Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~12_combout\ = ((\inst|process_0~32_combout\ $ (\inst|EN_Limit\(7) $ (\inst|Add10~11\)))) # (GND)
-- \inst|Add10~13\ = CARRY((\inst|process_0~32_combout\ & (\inst|EN_Limit\(7) & !\inst|Add10~11\)) # (!\inst|process_0~32_combout\ & ((\inst|EN_Limit\(7)) # (!\inst|Add10~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~32_combout\,
	datab => \inst|EN_Limit\(7),
	datad => VCC,
	cin => \inst|Add10~11\,
	combout => \inst|Add10~12_combout\,
	cout => \inst|Add10~13\);

-- Location: LCCOMB_X75_Y45_N20
\inst|Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~14_combout\ = (\inst|process_0~32_combout\ & ((\inst|EN_Limit\(8) & (!\inst|Add10~13\)) # (!\inst|EN_Limit\(8) & ((\inst|Add10~13\) # (GND))))) # (!\inst|process_0~32_combout\ & ((\inst|EN_Limit\(8) & (\inst|Add10~13\ & VCC)) # 
-- (!\inst|EN_Limit\(8) & (!\inst|Add10~13\))))
-- \inst|Add10~15\ = CARRY((\inst|process_0~32_combout\ & ((!\inst|Add10~13\) # (!\inst|EN_Limit\(8)))) # (!\inst|process_0~32_combout\ & (!\inst|EN_Limit\(8) & !\inst|Add10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~32_combout\,
	datab => \inst|EN_Limit\(8),
	datad => VCC,
	cin => \inst|Add10~13\,
	combout => \inst|Add10~14_combout\,
	cout => \inst|Add10~15\);

-- Location: LCCOMB_X75_Y45_N22
\inst|Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~16_combout\ = \inst|process_0~32_combout\ $ (\inst|Add10~15\ $ (!\inst|EN_Limit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~32_combout\,
	datad => \inst|EN_Limit\(9),
	cin => \inst|Add10~15\,
	combout => \inst|Add10~16_combout\);

-- Location: LCCOMB_X73_Y46_N14
\inst|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~2_combout\ = (\inst|ED_Limit\(2) & ((\inst|process_0~44_combout\ & ((\inst|Add8~1\) # (GND))) # (!\inst|process_0~44_combout\ & (!\inst|Add8~1\)))) # (!\inst|ED_Limit\(2) & ((\inst|process_0~44_combout\ & (!\inst|Add8~1\)) # 
-- (!\inst|process_0~44_combout\ & (\inst|Add8~1\ & VCC))))
-- \inst|Add8~3\ = CARRY((\inst|ED_Limit\(2) & ((\inst|process_0~44_combout\) # (!\inst|Add8~1\))) # (!\inst|ED_Limit\(2) & (\inst|process_0~44_combout\ & !\inst|Add8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(2),
	datab => \inst|process_0~44_combout\,
	datad => VCC,
	cin => \inst|Add8~1\,
	combout => \inst|Add8~2_combout\,
	cout => \inst|Add8~3\);

-- Location: LCCOMB_X73_Y46_N20
\inst|Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~8_combout\ = ((\inst|ED_Limit\(5) $ (\inst|process_0~44_combout\ $ (\inst|Add8~7\)))) # (GND)
-- \inst|Add8~9\ = CARRY((\inst|ED_Limit\(5) & ((!\inst|Add8~7\) # (!\inst|process_0~44_combout\))) # (!\inst|ED_Limit\(5) & (!\inst|process_0~44_combout\ & !\inst|Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(5),
	datab => \inst|process_0~44_combout\,
	datad => VCC,
	cin => \inst|Add8~7\,
	combout => \inst|Add8~8_combout\,
	cout => \inst|Add8~9\);

-- Location: LCCOMB_X73_Y46_N24
\inst|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~12_combout\ = ((\inst|ED_Limit\(7) $ (\inst|process_0~44_combout\ $ (!\inst|Add8~11\)))) # (GND)
-- \inst|Add8~13\ = CARRY((\inst|ED_Limit\(7) & (!\inst|process_0~44_combout\ & !\inst|Add8~11\)) # (!\inst|ED_Limit\(7) & ((!\inst|Add8~11\) # (!\inst|process_0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(7),
	datab => \inst|process_0~44_combout\,
	datad => VCC,
	cin => \inst|Add8~11\,
	combout => \inst|Add8~12_combout\,
	cout => \inst|Add8~13\);

-- Location: LCCOMB_X67_Y46_N18
\i_pixreg|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~0_combout\ = (\i_linecounter|vcnti\(5) & (\i_linecounter|vcnti\(3) $ (VCC))) # (!\i_linecounter|vcnti\(5) & (\i_linecounter|vcnti\(3) & VCC))
-- \i_pixreg|Add0~1\ = CARRY((\i_linecounter|vcnti\(5) & \i_linecounter|vcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(3),
	datad => VCC,
	combout => \i_pixreg|Add0~0_combout\,
	cout => \i_pixreg|Add0~1\);

-- Location: LCCOMB_X67_Y46_N22
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

-- Location: LCCOMB_X67_Y46_N26
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

-- Location: LCCOMB_X67_Y46_N28
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

-- Location: LCCOMB_X67_Y46_N30
\i_pixreg|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~12_combout\ = \i_linecounter|vcnti\(9) $ (!\i_pixreg|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(9),
	cin => \i_pixreg|Add0~11\,
	combout => \i_pixreg|Add0~12_combout\);

-- Location: LCCOMB_X67_Y46_N12
\i_pixreg|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~12_combout\ = (\i_pixreg|Add0~8_combout\ & (\i_pixreg|Add1~11\ $ (GND))) # (!\i_pixreg|Add0~8_combout\ & (!\i_pixreg|Add1~11\ & VCC))
-- \i_pixreg|Add1~13\ = CARRY((\i_pixreg|Add0~8_combout\ & !\i_pixreg|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add0~8_combout\,
	datad => VCC,
	cin => \i_pixreg|Add1~11\,
	combout => \i_pixreg|Add1~12_combout\,
	cout => \i_pixreg|Add1~13\);

-- Location: LCCOMB_X75_Y46_N6
\inst|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~6_combout\ = (\inst|DIST_Limit\(4) & ((\inst|process_0~47_combout\ & (!\inst|Add6~5\)) # (!\inst|process_0~47_combout\ & (\inst|Add6~5\ & VCC)))) # (!\inst|DIST_Limit\(4) & ((\inst|process_0~47_combout\ & ((\inst|Add6~5\) # (GND))) # 
-- (!\inst|process_0~47_combout\ & (!\inst|Add6~5\))))
-- \inst|Add6~7\ = CARRY((\inst|DIST_Limit\(4) & (\inst|process_0~47_combout\ & !\inst|Add6~5\)) # (!\inst|DIST_Limit\(4) & ((\inst|process_0~47_combout\) # (!\inst|Add6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DIST_Limit\(4),
	datab => \inst|process_0~47_combout\,
	datad => VCC,
	cin => \inst|Add6~5\,
	combout => \inst|Add6~6_combout\,
	cout => \inst|Add6~7\);

-- Location: FF_X68_Y45_N23
\i_pixreg|vcnt_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_linecounter|vcnti\(3),
	sload => VCC,
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(3));

-- Location: LCCOMB_X68_Y45_N10
\inst|LessThan44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan44~0_combout\ = (\i_pixreg|vcnt_d\(3)) # ((\i_pixreg|vcnt_d\(2)) # ((\i_pixreg|vcnt_d\(1)) # (\i_pixreg|vcnt_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datab => \i_pixreg|vcnt_d\(2),
	datac => \i_pixreg|vcnt_d\(1),
	datad => \i_pixreg|vcnt_d\(0),
	combout => \inst|LessThan44~0_combout\);

-- Location: LCCOMB_X68_Y45_N16
\inst|LessThan23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan23~2_combout\ = ((!\i_pixreg|vcnt_d\(3) & (!\i_pixreg|vcnt_d\(4) & !\i_pixreg|vcnt_d\(5)))) # (!\i_pixreg|vcnt_d\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datab => \i_pixreg|vcnt_d\(4),
	datac => \i_pixreg|vcnt_d\(5),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|LessThan23~2_combout\);

-- Location: FF_X69_Y46_N27
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(1));

-- Location: LCCOMB_X68_Y45_N30
\inst|LessThan36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan36~0_combout\ = (\i_pixreg|vcnt_d\(5) & (\i_pixreg|vcnt_d\(4) & \i_pixreg|vcnt_d\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|vcnt_d\(5),
	datac => \i_pixreg|vcnt_d\(4),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|LessThan36~0_combout\);

-- Location: LCCOMB_X69_Y45_N4
\inst|LessThan36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan36~1_combout\ = (\i_pixreg|vcnt_d\(7)) # (((\inst|LessThan36~0_combout\ & \inst|LessThan44~0_combout\)) # (!\inst|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(7),
	datab => \inst|LessThan36~0_combout\,
	datac => \inst|LessThan44~0_combout\,
	datad => \inst|process_0~2_combout\,
	combout => \inst|LessThan36~1_combout\);

-- Location: LCCOMB_X69_Y46_N20
\inst|LessThan26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan26~0_combout\ = (\i_pixreg|hcnt_d\(6) & ((\i_pixreg|hcnt_d\(5)) # ((\i_pixreg|hcnt_d\(3)) # (\i_pixreg|hcnt_d\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(6),
	datab => \i_pixreg|hcnt_d\(5),
	datac => \i_pixreg|hcnt_d\(3),
	datad => \i_pixreg|hcnt_d\(4),
	combout => \inst|LessThan26~0_combout\);

-- Location: FF_X75_Y45_N1
\inst|EN_Limit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|EN_Limit[9]~5_combout\,
	ena => \inst|EN_Limit[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(9));

-- Location: FF_X75_Y45_N21
\inst|EN_Limit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add10~14_combout\,
	ena => \inst|EN_Limit[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(8));

-- Location: FF_X75_Y45_N19
\inst|EN_Limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add10~12_combout\,
	ena => \inst|EN_Limit[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(7));

-- Location: FF_X75_Y45_N3
\inst|EN_Limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|EN_Limit[6]~6_combout\,
	ena => \inst|EN_Limit[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(6));

-- Location: FF_X75_Y45_N29
\inst|EN_Limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|EN_Limit[5]~7_combout\,
	ena => \inst|EN_Limit[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(5));

-- Location: FF_X75_Y45_N13
\inst|EN_Limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add10~6_combout\,
	ena => \inst|EN_Limit[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(4));

-- Location: FF_X75_Y45_N25
\inst|EN_Limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|EN_Limit[3]~8_combout\,
	ena => \inst|EN_Limit[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(3));

-- Location: FF_X75_Y45_N9
\inst|EN_Limit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add10~2_combout\,
	ena => \inst|EN_Limit[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(2));

-- Location: FF_X75_Y45_N7
\inst|EN_Limit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add10~0_combout\,
	ena => \inst|EN_Limit[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(1));

-- Location: LCCOMB_X70_Y45_N30
\inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~5_combout\ = (\inst|LessThan26~1_combout\ & (\inst|LessThan36~1_combout\ & (\inst|process_0~2_combout\ & \inst|LessThan27~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan26~1_combout\,
	datab => \inst|LessThan36~1_combout\,
	datac => \inst|process_0~2_combout\,
	datad => \inst|LessThan27~18_combout\,
	combout => \inst|process_0~5_combout\);

-- Location: FF_X73_Y46_N9
\inst|ED_Limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit[7]~2_combout\,
	ena => \inst|ED_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(7));

-- Location: FF_X73_Y46_N21
\inst|ED_Limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add8~8_combout\,
	ena => \inst|ED_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(5));

-- Location: FF_X73_Y46_N7
\inst|ED_Limit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit[2]~5_combout\,
	ena => \inst|ED_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(2));

-- Location: LCCOMB_X69_Y46_N30
\inst|LessThan34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan34~0_combout\ = (\i_pixreg|hcnt_d\(6)) # ((\i_pixreg|hcnt_d\(5)) # ((\i_pixreg|hcnt_d\(3) & \i_pixreg|hcnt_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(6),
	datab => \i_pixreg|hcnt_d\(5),
	datac => \i_pixreg|hcnt_d\(3),
	datad => \i_pixreg|hcnt_d\(4),
	combout => \inst|LessThan34~0_combout\);

-- Location: LCCOMB_X68_Y45_N4
\inst|LessThan37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan37~2_combout\ = (!\i_pixreg|vcnt_d\(5) & (!\i_pixreg|vcnt_d\(6) & ((!\i_pixreg|vcnt_d\(4)) # (!\i_pixreg|vcnt_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datab => \i_pixreg|vcnt_d\(5),
	datac => \i_pixreg|vcnt_d\(4),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|LessThan37~2_combout\);

-- Location: LCCOMB_X69_Y45_N30
\inst|pixcode~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~3_combout\ = (!\inst|LessThan37~2_combout\ & (\inst|LessThan34~0_combout\ & ((!\i_pixreg|vcnt_d\(6)) # (!\i_pixreg|vcnt_d\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(5),
	datab => \inst|LessThan37~2_combout\,
	datac => \inst|LessThan34~0_combout\,
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|pixcode~3_combout\);

-- Location: LCCOMB_X72_Y46_N0
\inst|pixcode~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~4_combout\ = (!\i_pixreg|hcnt_d\(9) & (!\i_pixreg|hcnt_d\(7) & !\i_pixreg|hcnt_d\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|hcnt_d\(9),
	datac => \i_pixreg|hcnt_d\(7),
	datad => \i_pixreg|hcnt_d\(8),
	combout => \inst|pixcode~4_combout\);

-- Location: LCCOMB_X69_Y45_N8
\inst|pixcode~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~5_combout\ = (!\i_pixreg|vcnt_d\(7) & (\inst|pixcode~4_combout\ & (!\inst|Menu_Counter\(2) & \inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(7),
	datab => \inst|pixcode~4_combout\,
	datac => \inst|Menu_Counter\(2),
	datad => \inst|Equal8~0_combout\,
	combout => \inst|pixcode~5_combout\);

-- Location: LCCOMB_X69_Y45_N18
\inst|pixcode~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~6_combout\ = (\inst|pixcode~3_combout\ & (\inst|pixcode~5_combout\ & ((!\i_pixreg|hcnt_d\(5)) # (!\i_pixreg|hcnt_d\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode~3_combout\,
	datab => \i_pixreg|hcnt_d\(6),
	datac => \i_pixreg|hcnt_d\(5),
	datad => \inst|pixcode~5_combout\,
	combout => \inst|pixcode~6_combout\);

-- Location: LCCOMB_X69_Y45_N20
\inst|pixcode~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~7_combout\ = (\inst|Menu_Counter\(1) & (\i_pixreg|vcnt_d\(7) & (!\inst|Menu_Counter\(2) & !\inst|Menu_Counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(1),
	datab => \i_pixreg|vcnt_d\(7),
	datac => \inst|Menu_Counter\(2),
	datad => \inst|Menu_Counter\(0),
	combout => \inst|pixcode~7_combout\);

-- Location: LCCOMB_X69_Y46_N26
\inst|LessThan48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan48~0_combout\ = (\i_pixreg|hcnt_d\(3) & ((\i_pixreg|hcnt_d\(2)) # ((\i_pixreg|hcnt_d\(1)) # (\i_pixreg|hcnt_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \i_pixreg|hcnt_d\(2),
	datac => \i_pixreg|hcnt_d\(1),
	datad => \i_pixreg|hcnt_d\(0),
	combout => \inst|LessThan48~0_combout\);

-- Location: LCCOMB_X69_Y46_N28
\inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~7_combout\ = (!\inst|LessThan48~0_combout\ & (!\i_pixreg|hcnt_d\(4) & (!\i_pixreg|hcnt_d\(6) & !\i_pixreg|hcnt_d\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan48~0_combout\,
	datab => \i_pixreg|hcnt_d\(4),
	datac => \i_pixreg|hcnt_d\(6),
	datad => \i_pixreg|hcnt_d\(5),
	combout => \inst|process_0~7_combout\);

-- Location: LCCOMB_X69_Y46_N24
\inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~8_combout\ = (\i_pixreg|hcnt_d\(3) & (\i_pixreg|hcnt_d\(5) & \i_pixreg|hcnt_d\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \i_pixreg|hcnt_d\(5),
	datac => \i_pixreg|hcnt_d\(4),
	combout => \inst|process_0~8_combout\);

-- Location: LCCOMB_X69_Y45_N22
\inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~9_combout\ = (\inst|process_0~7_combout\) # (((\i_pixreg|hcnt_d\(6) & \inst|process_0~8_combout\)) # (!\inst|pixcode~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~7_combout\,
	datab => \i_pixreg|hcnt_d\(6),
	datac => \inst|process_0~8_combout\,
	datad => \inst|pixcode~4_combout\,
	combout => \inst|process_0~9_combout\);

-- Location: LCCOMB_X69_Y45_N24
\inst|pixcode~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~8_combout\ = (\inst|LessThan38~0_combout\ & (!\inst|LessThan36~0_combout\ & (!\inst|process_0~9_combout\ & \inst|pixcode~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan38~0_combout\,
	datab => \inst|LessThan36~0_combout\,
	datac => \inst|process_0~9_combout\,
	datad => \inst|pixcode~7_combout\,
	combout => \inst|pixcode~8_combout\);

-- Location: LCCOMB_X68_Y45_N26
\inst|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~10_combout\ = (\i_pixreg|vcnt_d\(5)) # ((\i_pixreg|vcnt_d\(6)) # ((\inst|LessThan46~0_combout\ & \i_pixreg|vcnt_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(5),
	datab => \inst|LessThan46~0_combout\,
	datac => \i_pixreg|vcnt_d\(4),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|process_0~10_combout\);

-- Location: LCCOMB_X68_Y45_N20
\inst|pixcode~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~9_combout\ = (!\i_pixreg|vcnt_d\(7) & (\inst|LessThan43~0_combout\ & (\inst|process_0~10_combout\ & \inst|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(7),
	datab => \inst|LessThan43~0_combout\,
	datac => \inst|process_0~10_combout\,
	datad => \inst|Equal8~1_combout\,
	combout => \inst|pixcode~9_combout\);

-- Location: LCCOMB_X68_Y45_N2
\inst|LessThan44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan44~1_combout\ = (\i_pixreg|vcnt_d\(5) & ((\i_pixreg|vcnt_d\(4)) # (\inst|LessThan44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|vcnt_d\(4),
	datac => \i_pixreg|vcnt_d\(5),
	datad => \inst|LessThan44~0_combout\,
	combout => \inst|LessThan44~1_combout\);

-- Location: LCCOMB_X68_Y45_N18
\inst|pixcode~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~10_combout\ = (\i_pixreg|vcnt_d\(7) & (!\i_pixreg|vcnt_d\(5) & ((!\i_pixreg|vcnt_d\(6))))) # (!\i_pixreg|vcnt_d\(7) & (((\inst|LessThan44~1_combout\ & \i_pixreg|vcnt_d\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(5),
	datab => \inst|LessThan44~1_combout\,
	datac => \i_pixreg|vcnt_d\(7),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|pixcode~10_combout\);

-- Location: LCCOMB_X69_Y45_N10
\inst|pixcode~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~11_combout\ = (\inst|pixcode~9_combout\) # ((\inst|pixcode~10_combout\ & (\inst|Menu_Counter\(2) & \inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode~9_combout\,
	datab => \inst|pixcode~10_combout\,
	datac => \inst|Menu_Counter\(2),
	datad => \inst|Equal8~0_combout\,
	combout => \inst|pixcode~11_combout\);

-- Location: LCCOMB_X69_Y46_N0
\inst|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~11_combout\ = (\inst|LessThan48~0_combout\ & (\i_pixreg|hcnt_d\(5) & \i_pixreg|hcnt_d\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan48~0_combout\,
	datac => \i_pixreg|hcnt_d\(5),
	datad => \i_pixreg|hcnt_d\(4),
	combout => \inst|process_0~11_combout\);

-- Location: LCCOMB_X69_Y46_N22
\inst|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~12_combout\ = (\i_pixreg|hcnt_d\(7) & (((!\inst|process_0~8_combout\ & !\i_pixreg|hcnt_d\(6))))) # (!\i_pixreg|hcnt_d\(7) & ((\inst|process_0~11_combout\) # ((\i_pixreg|hcnt_d\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~11_combout\,
	datab => \inst|process_0~8_combout\,
	datac => \i_pixreg|hcnt_d\(7),
	datad => \i_pixreg|hcnt_d\(6),
	combout => \inst|process_0~12_combout\);

-- Location: LCCOMB_X69_Y45_N28
\inst|pixcode~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~12_combout\ = (\inst|pixcode~8_combout\) # ((\inst|pixcode~6_combout\) # ((\inst|pixcode~11_combout\ & !\inst|process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode~11_combout\,
	datab => \inst|pixcode~8_combout\,
	datac => \inst|process_0~13_combout\,
	datad => \inst|pixcode~6_combout\,
	combout => \inst|pixcode~12_combout\);

-- Location: LCCOMB_X69_Y45_N16
\inst|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~14_combout\ = (\inst|Equal8~2_combout\ & (\inst|LessThan36~1_combout\ & \inst|LessThan37~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~2_combout\,
	datab => \inst|LessThan36~1_combout\,
	datac => \inst|LessThan37~3_combout\,
	combout => \inst|process_0~14_combout\);

-- Location: LCCOMB_X69_Y45_N2
\inst|pixcode~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~13_combout\ = (\inst|process_0~2_combout\ & ((\inst|pixcode~12_combout\) # ((!\inst|process_0~9_combout\ & \inst|process_0~14_combout\)))) # (!\inst|process_0~2_combout\ & (((!\inst|process_0~9_combout\ & \inst|process_0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~2_combout\,
	datab => \inst|pixcode~12_combout\,
	datac => \inst|process_0~9_combout\,
	datad => \inst|process_0~14_combout\,
	combout => \inst|pixcode~13_combout\);

-- Location: LCCOMB_X68_Y45_N22
\inst|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~15_combout\ = (((!\i_pixreg|vcnt_d\(4) & !\i_pixreg|vcnt_d\(3))) # (!\i_pixreg|vcnt_d\(6))) # (!\i_pixreg|vcnt_d\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(5),
	datab => \i_pixreg|vcnt_d\(4),
	datac => \i_pixreg|vcnt_d\(3),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|process_0~15_combout\);

-- Location: FF_X75_Y46_N7
\inst|DIST_Limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add6~6_combout\,
	ena => \inst|DIST_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DIST_Limit\(4));

-- Location: LCCOMB_X70_Y46_N6
\inst|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~20_combout\ = (\inst|process_0~2_combout\ & ((\i_pixreg|vcnt_d\(7) & ((\inst|LessThan37~2_combout\))) # (!\i_pixreg|vcnt_d\(7) & (!\inst|process_0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~15_combout\,
	datab => \i_pixreg|vcnt_d\(7),
	datac => \inst|LessThan37~2_combout\,
	datad => \inst|process_0~2_combout\,
	combout => \inst|process_0~20_combout\);

-- Location: LCCOMB_X70_Y46_N8
\inst|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~21_combout\ = (\inst|process_0~20_combout\ & (\inst|LessThan17~16_combout\ & (!\i_pixreg|hcnt_d\(9) & \inst|LessThan16~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~20_combout\,
	datab => \inst|LessThan17~16_combout\,
	datac => \i_pixreg|hcnt_d\(9),
	datad => \inst|LessThan16~14_combout\,
	combout => \inst|process_0~21_combout\);

-- Location: LCCOMB_X70_Y45_N12
\inst|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~22_combout\ = (\inst|LessThan31~18_combout\ & \inst|LessThan26~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan31~18_combout\,
	datac => \inst|LessThan26~1_combout\,
	combout => \inst|process_0~22_combout\);

-- Location: LCCOMB_X70_Y45_N28
\inst|process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~23_combout\ = (\inst|process_0~5_combout\ & ((\inst|LessThan25~0_combout\) # (!\i_pixreg|vcnt_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~5_combout\,
	datab => \inst|LessThan25~0_combout\,
	datac => \i_pixreg|vcnt_d\(7),
	combout => \inst|process_0~23_combout\);

-- Location: LCCOMB_X66_Y46_N10
\iBlank_gen|blank~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~1_combout\ = (!\i_linecounter|vcnti\(9) & (((!\i_pixcounter|hcnti\(8) & !\i_pixcounter|hcnti\(7))) # (!\i_pixcounter|hcnti\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_linecounter|vcnti\(9),
	datac => \i_pixcounter|hcnti\(9),
	datad => \i_pixcounter|hcnti\(7),
	combout => \iBlank_gen|blank~1_combout\);

-- Location: FF_X69_Y47_N11
\i_pixreg|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|counter\(1));

-- Location: LCCOMB_X72_Y45_N0
\inst|process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~24_combout\ = ((!\inst|VOL_Limit\(4) & \inst|VOL_Limit\(3))) # (!\inst|VOL_Limit\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|VOL_Limit\(5),
	datac => \inst|VOL_Limit\(4),
	datad => \inst|VOL_Limit\(3),
	combout => \inst|process_0~24_combout\);

-- Location: LCCOMB_X72_Y45_N26
\inst|process_0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~25_combout\ = ((\inst|VOL_Limit\(6) & (\inst|process_0~24_combout\ & \inst|VOL_Limit\(7)))) # (!\inst|VOL_Limit\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit\(6),
	datab => \inst|VOL_Limit\(8),
	datac => \inst|process_0~24_combout\,
	datad => \inst|VOL_Limit\(7),
	combout => \inst|process_0~25_combout\);

-- Location: LCCOMB_X73_Y47_N10
\inst|process_0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~26_combout\ = (\inst|Equal5~0_combout\ & (\inst|Equal8~0_combout\ & (\inst|process_0~25_combout\ & !\inst|Menu_Counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst|Equal8~0_combout\,
	datac => \inst|process_0~25_combout\,
	datad => \inst|Menu_Counter\(2),
	combout => \inst|process_0~26_combout\);

-- Location: LCCOMB_X72_Y47_N8
\inst|process_0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~29_combout\ = (!\inst|Menu_Counter\(1) & (!\inst|Menu_Counter\(0) & (\inst|Menu_Counter\(2) & \inst|EN_Limit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(1),
	datab => \inst|Menu_Counter\(0),
	datac => \inst|Menu_Counter\(2),
	datad => \inst|EN_Limit\(9),
	combout => \inst|process_0~29_combout\);

-- Location: LCCOMB_X75_Y45_N26
\inst|process_0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~30_combout\ = (\inst|EN_Limit\(5) & (((\inst|EN_Limit\(3)) # (!\inst|EN_Limit\(2))) # (!\inst|EN_Limit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(5),
	datab => \inst|EN_Limit\(1),
	datac => \inst|EN_Limit\(2),
	datad => \inst|EN_Limit\(3),
	combout => \inst|process_0~30_combout\);

-- Location: LCCOMB_X75_Y45_N4
\inst|process_0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~31_combout\ = (\inst|EN_Limit\(7) & (!\inst|EN_Limit\(6) & ((\inst|EN_Limit\(4)) # (!\inst|process_0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(4),
	datab => \inst|EN_Limit\(7),
	datac => \inst|process_0~30_combout\,
	datad => \inst|EN_Limit\(6),
	combout => \inst|process_0~31_combout\);

-- Location: LCCOMB_X75_Y45_N30
\inst|process_0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~32_combout\ = (\inst|process_0~29_combout\ & (\inst|Equal5~0_combout\ & (!\inst|process_0~31_combout\ & !\inst|EN_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~29_combout\,
	datab => \inst|Equal5~0_combout\,
	datac => \inst|process_0~31_combout\,
	datad => \inst|EN_Limit\(8),
	combout => \inst|process_0~32_combout\);

-- Location: LCCOMB_X74_Y45_N0
\inst|EN_Limit[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[4]~0_combout\ = (\inst|EN_Limit\(8) & (((\inst|EN_Limit\(4)) # (!\inst|EN_Limit\(3))) # (!\inst|EN_Limit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(8),
	datab => \inst|EN_Limit\(5),
	datac => \inst|EN_Limit\(4),
	datad => \inst|EN_Limit\(3),
	combout => \inst|EN_Limit[4]~0_combout\);

-- Location: LCCOMB_X74_Y45_N2
\inst|EN_Limit[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[4]~1_combout\ = ((!\inst|EN_Limit\(6) & (\inst|EN_Limit\(7) & \inst|EN_Limit[4]~0_combout\))) # (!\inst|EN_Limit\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(6),
	datab => \inst|EN_Limit\(7),
	datac => \inst|EN_Limit\(9),
	datad => \inst|EN_Limit[4]~0_combout\,
	combout => \inst|EN_Limit[4]~1_combout\);

-- Location: LCCOMB_X73_Y47_N24
\inst|EN_Limit[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[4]~2_combout\ = (\inst|Equal6~0_combout\ & (\inst|Equal8~0_combout\ & (\inst|EN_Limit[4]~1_combout\ & \inst|Menu_Counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datab => \inst|Equal8~0_combout\,
	datac => \inst|EN_Limit[4]~1_combout\,
	datad => \inst|Menu_Counter\(2),
	combout => \inst|EN_Limit[4]~2_combout\);

-- Location: LCCOMB_X69_Y47_N22
\inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~0_combout\ = (\inst|LR_Limit\(5)) # ((\inst|LR_Limit\(4)) # ((!\inst|LR_Limit\(6)) # (!\inst|LR_Limit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(5),
	datab => \inst|LR_Limit\(4),
	datac => \inst|LR_Limit\(3),
	datad => \inst|LR_Limit\(6),
	combout => \inst|LessThan5~0_combout\);

-- Location: LCCOMB_X69_Y47_N2
\inst|process_0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~34_combout\ = (\inst|LR_Limit\(6) & (((!\inst|LR_Limit\(4) & \inst|LR_Limit\(3))) # (!\inst|LR_Limit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(5),
	datab => \inst|LR_Limit\(4),
	datac => \inst|LR_Limit\(3),
	datad => \inst|LR_Limit\(6),
	combout => \inst|process_0~34_combout\);

-- Location: LCCOMB_X69_Y47_N12
\inst|process_0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~35_combout\ = (\inst|Equal5~0_combout\ & (((\inst|process_0~34_combout\ & \inst|LR_Limit\(7))) # (!\inst|LR_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(8),
	datab => \inst|process_0~34_combout\,
	datac => \inst|LR_Limit\(7),
	datad => \inst|Equal5~0_combout\,
	combout => \inst|process_0~35_combout\);

-- Location: LCCOMB_X74_Y46_N24
\inst|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan7~0_combout\ = (\inst|DIST_Limit\(4)) # ((\inst|DIST_Limit\(5)) # ((!\inst|DIST_Limit\(6)) # (!\inst|DIST_Limit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DIST_Limit\(4),
	datab => \inst|DIST_Limit\(5),
	datac => \inst|DIST_Limit\(3),
	datad => \inst|DIST_Limit\(6),
	combout => \inst|LessThan7~0_combout\);

-- Location: LCCOMB_X74_Y46_N26
\inst|process_0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~36_combout\ = (\inst|Equal6~0_combout\ & ((\inst|DIST_Limit\(8)) # ((\inst|LessThan7~0_combout\ & !\inst|DIST_Limit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datab => \inst|LessThan7~0_combout\,
	datac => \inst|DIST_Limit\(8),
	datad => \inst|DIST_Limit\(7),
	combout => \inst|process_0~36_combout\);

-- Location: LCCOMB_X72_Y46_N26
\inst|process_0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~42_combout\ = (!\inst|ED_Limit\(5) & ((\inst|ED_Limit\(3)) # ((\inst|ED_Limit\(1)) # (\inst|ED_Limit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(3),
	datab => \inst|ED_Limit\(1),
	datac => \inst|ED_Limit\(5),
	datad => \inst|ED_Limit\(2),
	combout => \inst|process_0~42_combout\);

-- Location: LCCOMB_X72_Y46_N4
\inst|process_0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~43_combout\ = (!\inst|ED_Limit\(6) & (!\inst|ED_Limit\(7) & ((\inst|ED_Limit\(4)) # (!\inst|process_0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(6),
	datab => \inst|ED_Limit\(7),
	datac => \inst|process_0~42_combout\,
	datad => \inst|ED_Limit\(4),
	combout => \inst|process_0~43_combout\);

-- Location: LCCOMB_X73_Y47_N22
\inst|EN_Limit[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[1]~4_combout\ = (\inst|EN_Limit[1]~3_combout\ & (\inst|ED_Limit[6]~0_combout\ & ((\inst|process_0~32_combout\) # (\inst|EN_Limit[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~32_combout\,
	datab => \inst|EN_Limit[4]~2_combout\,
	datac => \inst|EN_Limit[1]~3_combout\,
	datad => \inst|ED_Limit[6]~0_combout\,
	combout => \inst|EN_Limit[1]~4_combout\);

-- Location: LCCOMB_X72_Y47_N12
\inst|Menu_Counter[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Menu_Counter[2]~2_combout\ = (\inst|Menu_Counter\(2) & (((\inst1|Number\(0)) # (!\inst|Equal8~0_combout\)) # (!\inst|process_0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(2),
	datab => \inst|process_0~28_combout\,
	datac => \inst1|Number\(0),
	datad => \inst|Equal8~0_combout\,
	combout => \inst|Menu_Counter[2]~2_combout\);

-- Location: LCCOMB_X66_Y43_N2
\i_pixreg|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~2_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(4) & \i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~2_combout\);

-- Location: LCCOMB_X66_Y43_N4
\i_pixreg|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~3_combout\ = (\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(4) & \i_pixcounter|hcnti\(6)))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(4) & !\i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~3_combout\);

-- Location: LCCOMB_X66_Y43_N22
\i_pixreg|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~4_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~2_combout\)) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~2_combout\,
	datac => \i_pixreg|Mux0~3_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~4_combout\);

-- Location: LCCOMB_X67_Y43_N18
\i_pixreg|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~6_combout\ = (\i_pixcounter|hcnti\(4) & (((\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(5))) # (!\i_pixcounter|hcnti\(3)))) # (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(6)) # 
-- (\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~6_combout\);

-- Location: LCCOMB_X67_Y43_N4
\i_pixreg|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~7_combout\ = (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Mux0~6_combout\ & !\i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~6_combout\ & \i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~6_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~7_combout\);

-- Location: LCCOMB_X67_Y43_N30
\i_pixreg|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~9_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(4)) # (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~9_combout\);

-- Location: LCCOMB_X67_Y43_N8
\i_pixreg|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~10_combout\ = (\i_pixreg|Mux0~9_combout\ & (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~8_combout\) # (\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Mux0~9_combout\ & (\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~8_combout\,
	datab => \i_pixreg|Mux0~9_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~10_combout\);

-- Location: LCCOMB_X67_Y43_N10
\i_pixreg|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~11_combout\ = (\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(3)) # (!\i_pixcounter|hcnti\(5)))) # (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~11_combout\);

-- Location: LCCOMB_X67_Y43_N12
\i_pixreg|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~12_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(5) & (!\i_pixreg|Mux0~11_combout\)) # (!\i_pixcounter|hcnti\(5) & ((!\i_pixreg|Add1~0_combout\))))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~0_combout\ & 
-- ((\i_pixreg|Mux0~11_combout\) # (\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~11_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~12_combout\);

-- Location: LCCOMB_X67_Y43_N22
\i_pixreg|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~13_combout\ = (\i_pixreg|Add1~0_combout\) # ((\i_pixreg|Mux0~11_combout\ & (\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~11_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~13_combout\);

-- Location: LCCOMB_X67_Y43_N24
\i_pixreg|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~14_combout\ = (\i_pixreg|Add1~10_combout\) # ((\i_pixreg|Mux0~12_combout\ & (\i_pixreg|Add1~4_combout\ & \i_pixreg|Mux0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~12_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Mux0~13_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~14_combout\);

-- Location: LCCOMB_X67_Y43_N26
\i_pixreg|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~15_combout\ = (\i_pixreg|Add1~4_combout\ & (((!\i_pixreg|Add1~10_combout\) # (!\i_pixreg|Mux0~13_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~12_combout\) # (\i_pixreg|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~12_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Mux0~13_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~15_combout\);

-- Location: LCCOMB_X67_Y43_N20
\i_pixreg|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~16_combout\ = (\i_pixreg|Mux0~15_combout\ & (!\i_pixreg|Mux0~14_combout\ & ((\i_pixreg|Add1~8_combout\)))) # (!\i_pixreg|Mux0~15_combout\ & ((\i_pixreg|Mux0~14_combout\ & ((!\i_pixreg|Add1~8_combout\))) # (!\i_pixreg|Mux0~14_combout\ & 
-- (\i_pixreg|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~15_combout\,
	datab => \i_pixreg|Mux0~14_combout\,
	datac => \i_pixreg|Mux0~10_combout\,
	datad => \i_pixreg|Add1~8_combout\,
	combout => \i_pixreg|Mux0~16_combout\);

-- Location: LCCOMB_X65_Y44_N8
\i_pixreg|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~18_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~18_combout\);

-- Location: LCCOMB_X66_Y43_N14
\i_pixreg|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~19_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~18_combout\ & (\i_pixreg|Add1~0_combout\ & !\i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Add1~10_combout\ & (((\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~18_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~19_combout\);

-- Location: LCCOMB_X65_Y44_N18
\i_pixreg|Mux0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~25_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(6))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~25_combout\);

-- Location: LCCOMB_X65_Y44_N28
\i_pixreg|Mux0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~26_combout\ = (\i_pixreg|Mux0~25_combout\ & ((\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(4) & !\i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(4) & \i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~25_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~26_combout\);

-- Location: LCCOMB_X65_Y44_N30
\i_pixreg|Mux0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~27_combout\ = (\i_pixreg|Add1~0_combout\ & !\i_pixcounter|hcnti\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~27_combout\);

-- Location: LCCOMB_X65_Y44_N0
\i_pixreg|Mux0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~28_combout\ = (\i_pixcounter|hcnti\(4) & (((\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(6))) # (!\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(6)) # (\i_pixcounter|hcnti\(3) $ 
-- (\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~28_combout\);

-- Location: LCCOMB_X65_Y44_N26
\i_pixreg|Mux0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~29_combout\ = (\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Mux0~27_combout\ & !\i_pixreg|Mux0~28_combout\)))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~26_combout\) # ((\i_pixreg|Mux0~27_combout\ & !\i_pixreg|Mux0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~26_combout\,
	datac => \i_pixreg|Mux0~27_combout\,
	datad => \i_pixreg|Mux0~28_combout\,
	combout => \i_pixreg|Mux0~29_combout\);

-- Location: LCCOMB_X65_Y44_N20
\i_pixreg|Mux0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~30_combout\ = (\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(6)) # (!\i_pixcounter|hcnti\(3)))) # (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~30_combout\);

-- Location: LCCOMB_X66_Y44_N24
\i_pixreg|Mux0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~31_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~30_combout\ & (\i_pixreg|Add1~4_combout\ $ (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Mux0~30_combout\ & (!\i_pixreg|Add1~4_combout\ & 
-- \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Mux0~30_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~31_combout\);

-- Location: LCCOMB_X66_Y44_N10
\i_pixreg|Mux0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~32_combout\ = (\i_pixreg|Add1~10_combout\ & (((\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~31_combout\ & ((\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~31_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~32_combout\);

-- Location: LCCOMB_X66_Y44_N28
\i_pixreg|Mux0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~33_combout\ = (\i_pixreg|Mux0~30_combout\ & (!\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(3) & \i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Mux0~30_combout\ & (\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(3) & 
-- !\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~30_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~33_combout\);

-- Location: LCCOMB_X66_Y44_N22
\i_pixreg|Mux0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~34_combout\ = (\i_pixreg|Mux0~32_combout\ & ((\i_pixreg|Mux0~33_combout\) # ((!\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Mux0~32_combout\ & (((\i_pixreg|Mux0~29_combout\ & \i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~32_combout\,
	datab => \i_pixreg|Mux0~33_combout\,
	datac => \i_pixreg|Mux0~29_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~34_combout\);

-- Location: LCCOMB_X63_Y44_N16
\i_pixreg|Mux0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~35_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~35_combout\);

-- Location: LCCOMB_X63_Y44_N18
\i_pixreg|Mux0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~36_combout\ = (\i_pixreg|Add1~4_combout\) # ((\i_pixreg|Mux0~35_combout\ & (\i_pixcounter|hcnti\(3) & \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~35_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~36_combout\);

-- Location: LCCOMB_X63_Y44_N20
\i_pixreg|Mux0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~37_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~0_combout\ & ((!\i_pixcounter|hcnti\(5)) # (!\i_pixcounter|hcnti\(6)))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(6)) # (\i_pixcounter|hcnti\(5)))))) # 
-- (!\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~0_combout\) # ((\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~37_combout\);

-- Location: LCCOMB_X63_Y44_N30
\i_pixreg|Mux0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~38_combout\ = (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Mux0~37_combout\ & ((\i_pixcounter|hcnti\(3)) # (!\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~37_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~38_combout\);

-- Location: LCCOMB_X63_Y44_N0
\i_pixreg|Mux0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~39_combout\ = (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(6) $ (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~39_combout\);

-- Location: LCCOMB_X63_Y44_N10
\i_pixreg|Mux0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~40_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Add1~4_combout\ & ((!\i_pixreg|Add1~0_combout\) # (!\i_pixcounter|hcnti\(3)))))) # (!\i_pixcounter|hcnti\(6) & 
-- (((\i_pixcounter|hcnti\(3)) # (\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~40_combout\);

-- Location: LCCOMB_X63_Y44_N4
\i_pixreg|Mux0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~41_combout\ = (!\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(5) & ((\i_pixreg|Mux0~39_combout\))) # (!\i_pixcounter|hcnti\(5) & (!\i_pixreg|Mux0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~40_combout\,
	datab => \i_pixreg|Mux0~39_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~41_combout\);

-- Location: LCCOMB_X63_Y44_N6
\i_pixreg|Mux0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~42_combout\ = (\i_pixreg|Add1~10_combout\ & (((\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~38_combout\))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~41_combout\,
	datac => \i_pixreg|Mux0~38_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~42_combout\);

-- Location: LCCOMB_X63_Y44_N8
\i_pixreg|Mux0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~43_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(5) & ((!\i_pixcounter|hcnti\(4)) # (!\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3)) # 
-- (\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~43_combout\);

-- Location: LCCOMB_X63_Y44_N2
\i_pixreg|Mux0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~44_combout\ = (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~4_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~4_combout\ $ (\i_pixcounter|hcnti\(5))) # (!\i_pixreg|Mux0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Mux0~43_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~44_combout\);

-- Location: LCCOMB_X63_Y44_N28
\i_pixreg|Mux0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~45_combout\ = (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(6) & !\i_pixcounter|hcnti\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~45_combout\);

-- Location: LCCOMB_X63_Y44_N22
\i_pixreg|Mux0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~46_combout\ = (\i_pixreg|Mux0~44_combout\) # ((\i_pixreg|Mux0~45_combout\ & \i_pixreg|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~45_combout\,
	datac => \i_pixreg|Mux0~44_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~46_combout\);

-- Location: LCCOMB_X63_Y44_N24
\i_pixreg|Mux0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~47_combout\ = (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~42_combout\ & (\i_pixreg|Mux0~46_combout\)) # (!\i_pixreg|Mux0~42_combout\ & ((\i_pixreg|Mux0~36_combout\))))) # (!\i_pixreg|Add1~10_combout\ & (((\i_pixreg|Mux0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~46_combout\,
	datab => \i_pixreg|Mux0~36_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~42_combout\,
	combout => \i_pixreg|Mux0~47_combout\);

-- Location: LCCOMB_X65_Y43_N16
\i_pixreg|Mux0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~48_combout\ = (\i_pixreg|Mux0~0_combout\ & (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~48_combout\);

-- Location: LCCOMB_X63_Y43_N26
\i_pixreg|Mux0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~49_combout\ = (\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(4) & (!\i_pixreg|Add1~2_combout\ & !\i_pixcounter|hcnti\(6)))) # (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(4) $ (\i_pixreg|Add1~2_combout\ $ 
-- (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~49_combout\);

-- Location: LCCOMB_X63_Y43_N4
\i_pixreg|Mux0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~50_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~2_combout\ $ (!\i_pixcounter|hcnti\(5))))) # (!\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~2_combout\ $ 
-- (!\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~50_combout\);

-- Location: LCCOMB_X63_Y43_N22
\i_pixreg|Mux0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~51_combout\ = (!\i_pixcounter|hcnti\(4) & (!\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~51_combout\);

-- Location: LCCOMB_X63_Y43_N0
\i_pixreg|Mux0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~52_combout\ = (\i_pixcounter|hcnti\(3) & (((\i_pixreg|Mux0~50_combout\) # (\i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~51_combout\ & ((!\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~51_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Mux0~50_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~52_combout\);

-- Location: LCCOMB_X63_Y43_N18
\i_pixreg|Mux0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~53_combout\ = (\i_pixcounter|hcnti\(4) & (((\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(6))) # (!\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(4) & (!\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~53_combout\);

-- Location: LCCOMB_X63_Y43_N28
\i_pixreg|Mux0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~54_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~52_combout\ & (!\i_pixreg|Mux0~53_combout\)) # (!\i_pixreg|Mux0~52_combout\ & ((\i_pixreg|Mux0~49_combout\))))) # (!\i_pixreg|Add1~0_combout\ & (((\i_pixreg|Mux0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~53_combout\,
	datac => \i_pixreg|Mux0~49_combout\,
	datad => \i_pixreg|Mux0~52_combout\,
	combout => \i_pixreg|Mux0~54_combout\);

-- Location: LCCOMB_X63_Y43_N6
\i_pixreg|Mux0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~55_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~55_combout\);

-- Location: LCCOMB_X63_Y43_N8
\i_pixreg|Mux0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~56_combout\ = (\i_pixcounter|hcnti\(3) & (((\i_pixcounter|hcnti\(6)) # (!\i_pixcounter|hcnti\(5))) # (!\i_pixcounter|hcnti\(4)))) # (!\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(5)) # (\i_pixcounter|hcnti\(4) $ 
-- (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~56_combout\);

-- Location: LCCOMB_X63_Y43_N10
\i_pixreg|Mux0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~57_combout\ = (\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(6)))) # (!\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(6) $ (((\i_pixcounter|hcnti\(3)) # 
-- (\i_pixcounter|hcnti\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~57_combout\);

-- Location: LCCOMB_X63_Y43_N20
\i_pixreg|Mux0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~58_combout\ = (\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Add1~0_combout\) # (!\i_pixreg|Mux0~56_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~57_combout\ & ((!\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~57_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Mux0~56_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~58_combout\);

-- Location: LCCOMB_X63_Y43_N30
\i_pixreg|Mux0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~59_combout\ = (\i_pixreg|Mux0~58_combout\ & (((\i_pixreg|Mux0~0_combout\) # (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Mux0~58_combout\ & (\i_pixreg|Mux0~55_combout\ & ((\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~55_combout\,
	datab => \i_pixreg|Mux0~58_combout\,
	datac => \i_pixreg|Mux0~0_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~59_combout\);

-- Location: LCCOMB_X63_Y43_N24
\i_pixreg|Mux0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~60_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Add1~10_combout\) # (\i_pixreg|Mux0~54_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~59_combout\ & (!\i_pixreg|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~59_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~54_combout\,
	combout => \i_pixreg|Mux0~60_combout\);

-- Location: LCCOMB_X65_Y43_N10
\i_pixreg|Mux0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~61_combout\ = (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~0_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~0_combout\,
	datab => \i_pixreg|Mux0~18_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~61_combout\);

-- Location: LCCOMB_X65_Y43_N12
\i_pixreg|Mux0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~62_combout\ = (\i_pixreg|Mux0~60_combout\ & ((\i_pixreg|Mux0~61_combout\) # ((!\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Mux0~60_combout\ & (((\i_pixreg|Mux0~48_combout\ & \i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~61_combout\,
	datab => \i_pixreg|Mux0~48_combout\,
	datac => \i_pixreg|Mux0~60_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~62_combout\);

-- Location: LCCOMB_X66_Y44_N8
\i_pixreg|Mux0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~63_combout\ = (\i_pixreg|Add1~12_combout\ & (((\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Add1~12_combout\ & ((\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Mux0~47_combout\))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~12_combout\,
	datab => \i_pixreg|Mux0~62_combout\,
	datac => \i_pixreg|Mux0~47_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~63_combout\);

-- Location: LCCOMB_X63_Y44_N26
\i_pixreg|Mux0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~64_combout\ = (\i_pixreg|Mux0~45_combout\ & (\i_pixreg|Add1~4_combout\ & \i_pixreg|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~45_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~64_combout\);

-- Location: LCCOMB_X63_Y44_N12
\i_pixreg|Mux0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~65_combout\ = (\i_pixreg|Add1~4_combout\ & (((!\i_pixcounter|hcnti\(4)) # (!\i_pixcounter|hcnti\(3))) # (!\i_pixcounter|hcnti\(6)))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixcounter|hcnti\(6)) # ((\i_pixcounter|hcnti\(3)) # 
-- (\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~65_combout\);

-- Location: LCCOMB_X63_Y44_N14
\i_pixreg|Mux0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~66_combout\ = (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~64_combout\) # ((!\i_pixreg|Add1~0_combout\ & !\i_pixreg|Mux0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~64_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~65_combout\,
	combout => \i_pixreg|Mux0~66_combout\);

-- Location: LCCOMB_X67_Y44_N16
\i_pixreg|Mux0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~67_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~45_combout\ & (!\i_pixreg|Add1~4_combout\ & \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~45_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~67_combout\);

-- Location: LCCOMB_X67_Y44_N10
\i_pixreg|Mux0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~68_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(4) & (\i_pixreg|Add1~10_combout\ $ (!\i_pixcounter|hcnti\(6))))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(4) & (!\i_pixreg|Add1~10_combout\ & 
-- \i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~68_combout\);

-- Location: LCCOMB_X67_Y44_N12
\i_pixreg|Mux0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~69_combout\ = (\i_pixreg|Mux0~67_combout\) # ((\i_pixreg|Mux0~68_combout\ & (\i_pixreg|Add1~4_combout\ $ (!\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~68_combout\,
	datab => \i_pixreg|Mux0~67_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~69_combout\);

-- Location: LCCOMB_X67_Y44_N14
\i_pixreg|Mux0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~70_combout\ = (\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & \i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~70_combout\);

-- Location: LCCOMB_X67_Y44_N8
\i_pixreg|Mux0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~71_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~10_combout\ $ (\i_pixcounter|hcnti\(6))) # (!\i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~0_combout\) # ((\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~71_combout\);

-- Location: LCCOMB_X67_Y44_N26
\i_pixreg|Mux0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~72_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixreg|Add1~10_combout\)) # (!\i_pixcounter|hcnti\(4) & (!\i_pixreg|Mux0~71_combout\ & (\i_pixreg|Add1~10_combout\ $ (!\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~71_combout\,
	combout => \i_pixreg|Mux0~72_combout\);

-- Location: LCCOMB_X67_Y44_N4
\i_pixreg|Mux0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~73_combout\ = (\i_pixreg|Add1~0_combout\ & (((\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(6))) # (!\i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~4_combout\) # ((\i_pixcounter|hcnti\(3) & 
-- !\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~73_combout\);

-- Location: LCCOMB_X67_Y44_N30
\i_pixreg|Mux0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~74_combout\ = (\i_pixreg|Mux0~72_combout\ & (((!\i_pixreg|Mux0~73_combout\)) # (!\i_pixcounter|hcnti\(4)))) # (!\i_pixreg|Mux0~72_combout\ & (\i_pixcounter|hcnti\(4) & ((\i_pixreg|Mux0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~72_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixreg|Mux0~73_combout\,
	datad => \i_pixreg|Mux0~70_combout\,
	combout => \i_pixreg|Mux0~74_combout\);

-- Location: LCCOMB_X67_Y44_N24
\i_pixreg|Mux0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~75_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~69_combout\))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~74_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~69_combout\,
	combout => \i_pixreg|Mux0~75_combout\);

-- Location: LCCOMB_X67_Y44_N2
\i_pixreg|Mux0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~76_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(4) & (\i_pixreg|Add1~0_combout\ $ (!\i_pixreg|Add1~4_combout\)))) # (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(4) & 
-- !\i_pixreg|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~76_combout\);

-- Location: LCCOMB_X67_Y44_N28
\i_pixreg|Mux0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~77_combout\ = (\i_pixreg|Mux0~76_combout\ & (\i_pixreg|Add1~10_combout\ & (\i_pixcounter|hcnti\(3) $ (!\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Mux0~76_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~77_combout\);

-- Location: LCCOMB_X67_Y44_N6
\i_pixreg|Mux0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~78_combout\ = (\i_pixreg|Mux0~75_combout\ & ((\i_pixreg|Mux0~77_combout\) # ((!\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Mux0~75_combout\ & (((\i_pixreg|Mux0~66_combout\ & \i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~77_combout\,
	datab => \i_pixreg|Mux0~75_combout\,
	datac => \i_pixreg|Mux0~66_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~78_combout\);

-- Location: LCCOMB_X66_Y44_N2
\i_pixreg|Mux0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~79_combout\ = (\i_pixreg|Mux0~63_combout\ & ((\i_pixreg|Mux0~78_combout\) # ((!\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Mux0~63_combout\ & (((\i_pixreg|Mux0~34_combout\ & \i_pixreg|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~78_combout\,
	datab => \i_pixreg|Mux0~63_combout\,
	datac => \i_pixreg|Mux0~34_combout\,
	datad => \i_pixreg|Add1~12_combout\,
	combout => \i_pixreg|Mux0~79_combout\);

-- Location: LCCOMB_X68_Y43_N0
\i_pixreg|Mux0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~80_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~10_combout\ $ (!\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~80_combout\);

-- Location: LCCOMB_X68_Y43_N10
\i_pixreg|Mux0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~81_combout\ = (\i_pixreg|Add1~10_combout\ & (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~0_combout\ $ (\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ $ 
-- (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~81_combout\);

-- Location: LCCOMB_X68_Y43_N28
\i_pixreg|Mux0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~82_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~2_combout\ $ (((\i_pixreg|Add1~0_combout\ & \i_pixcounter|hcnti\(3)))))) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixcounter|hcnti\(3)) # ((\i_pixreg|Add1~0_combout\ & 
-- !\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~82_combout\);

-- Location: LCCOMB_X68_Y43_N6
\i_pixreg|Mux0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~83_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~81_combout\) # ((\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~4_combout\ & (((!\i_pixreg|Mux0~82_combout\ & !\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~81_combout\,
	datab => \i_pixreg|Mux0~82_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~83_combout\);

-- Location: LCCOMB_X68_Y43_N8
\i_pixreg|Mux0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~84_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ & \i_pixcounter|hcnti\(3)))) # (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\ $ 
-- (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~84_combout\);

-- Location: LCCOMB_X68_Y43_N2
\i_pixreg|Mux0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~85_combout\ = (\i_pixreg|Mux0~83_combout\ & (((\i_pixreg|Mux0~84_combout\) # (!\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Mux0~83_combout\ & (\i_pixreg|Mux0~80_combout\ & ((\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~83_combout\,
	datab => \i_pixreg|Mux0~80_combout\,
	datac => \i_pixreg|Mux0~84_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~85_combout\);

-- Location: LCCOMB_X68_Y43_N20
\i_pixreg|Mux0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~86_combout\ = (\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~2_combout\ & !\i_pixcounter|hcnti\(5)))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~2_combout\ $ 
-- (!\i_pixcounter|hcnti\(5)))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~2_combout\ & \i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~86_combout\);

-- Location: LCCOMB_X68_Y43_N14
\i_pixreg|Mux0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~87_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(3) $ (\i_pixreg|Add1~2_combout\ $ (\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~2_combout\ & 
-- !\i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~87_combout\);

-- Location: LCCOMB_X68_Y43_N16
\i_pixreg|Mux0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~88_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~4_combout\) # (\i_pixcounter|hcnti\(3) $ (\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ $ (((\i_pixcounter|hcnti\(3) & 
-- \i_pixcounter|hcnti\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~88_combout\);

-- Location: LCCOMB_X68_Y43_N18
\i_pixreg|Mux0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~89_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~87_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((!\i_pixreg|Mux0~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Mux0~87_combout\,
	datad => \i_pixreg|Mux0~88_combout\,
	combout => \i_pixreg|Mux0~89_combout\);

-- Location: LCCOMB_X68_Y43_N4
\i_pixreg|Mux0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~90_combout\ = (\i_pixcounter|hcnti\(3) & (((!\i_pixcounter|hcnti\(5)) # (!\i_pixreg|Add1~2_combout\)) # (!\i_pixreg|Add1~4_combout\))) # (!\i_pixcounter|hcnti\(3) & (((\i_pixreg|Add1~2_combout\) # (\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~90_combout\);

-- Location: LCCOMB_X68_Y43_N22
\i_pixreg|Mux0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~91_combout\ = (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~89_combout\ & (!\i_pixreg|Mux0~90_combout\)) # (!\i_pixreg|Mux0~89_combout\ & ((\i_pixreg|Mux0~86_combout\))))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~89_combout\,
	datac => \i_pixreg|Mux0~90_combout\,
	datad => \i_pixreg|Mux0~86_combout\,
	combout => \i_pixreg|Mux0~91_combout\);

-- Location: LCCOMB_X63_Y46_N24
\i_pixreg|Mux0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~92_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~2_combout\) # (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~0_combout\) # 
-- (!\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~92_combout\);

-- Location: LCCOMB_X67_Y43_N6
\i_pixreg|Mux0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~93_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(5)) # (\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~93_combout\);

-- Location: LCCOMB_X63_Y46_N18
\i_pixreg|Mux0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~94_combout\ = \i_pixreg|Add1~2_combout\ $ (((\i_pixreg|Add1~0_combout\ & ((!\i_pixcounter|hcnti\(3)) # (!\i_pixcounter|hcnti\(5)))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~94_combout\);

-- Location: LCCOMB_X63_Y46_N12
\i_pixreg|Mux0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~95_combout\ = (\i_pixreg|Mux0~94_combout\ & (\i_pixreg|Add1~10_combout\ $ ((\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Mux0~94_combout\ & ((\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~0_combout\ & \i_pixreg|Mux0~93_combout\)) # 
-- (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~0_combout\ & !\i_pixreg|Mux0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~94_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~93_combout\,
	combout => \i_pixreg|Mux0~95_combout\);

-- Location: LCCOMB_X63_Y46_N22
\i_pixreg|Mux0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~96_combout\ = (\i_pixreg|Mux0~94_combout\ & ((\i_pixreg|Add1~10_combout\))) # (!\i_pixreg|Mux0~94_combout\ & (\i_pixreg|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~94_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~96_combout\);

-- Location: LCCOMB_X63_Y46_N16
\i_pixreg|Mux0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~97_combout\ = (\i_pixreg|Mux0~96_combout\ & ((\i_pixreg|Add1~4_combout\ $ (!\i_pixreg|Mux0~95_combout\)))) # (!\i_pixreg|Mux0~96_combout\ & (\i_pixreg|Mux0~92_combout\ & ((\i_pixreg|Mux0~95_combout\) # (!\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~96_combout\,
	datab => \i_pixreg|Mux0~92_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~95_combout\,
	combout => \i_pixreg|Mux0~97_combout\);

-- Location: LCCOMB_X68_Y43_N24
\i_pixreg|Mux0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~98_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixcounter|hcnti\(6))))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixcounter|hcnti\(6) & (\i_pixreg|Mux0~91_combout\)) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Mux0~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~91_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~97_combout\,
	combout => \i_pixreg|Mux0~98_combout\);

-- Location: LCCOMB_X68_Y43_N26
\i_pixreg|Mux0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~99_combout\ = (\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~10_combout\))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~10_combout\) # ((!\i_pixreg|Add1~4_combout\ & 
-- \i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~99_combout\);

-- Location: LCCOMB_X68_Y44_N0
\i_pixreg|Mux0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~100_combout\ = (\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~0_combout\ & ((!\i_pixreg|Add1~2_combout\) # (!\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~0_combout\ & 
-- !\i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~100_combout\);

-- Location: LCCOMB_X68_Y43_N12
\i_pixreg|Mux0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~101_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~100_combout\ & (\i_pixreg|Mux0~99_combout\ $ (!\i_pixcounter|hcnti\(5))))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Mux0~99_combout\ & (\i_pixreg|Mux0~100_combout\ $ 
-- (!\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~100_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Mux0~99_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~101_combout\);

-- Location: LCCOMB_X68_Y43_N30
\i_pixreg|Mux0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~102_combout\ = (\i_pixreg|Mux0~98_combout\ & ((\i_pixreg|Mux0~101_combout\) # ((!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~98_combout\ & (((\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~101_combout\,
	datab => \i_pixreg|Mux0~98_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~85_combout\,
	combout => \i_pixreg|Mux0~102_combout\);

-- Location: LCCOMB_X63_Y45_N16
\i_pixreg|Mux0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~103_combout\ = (\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~6_combout\ & !\i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~10_combout\ $ 
-- (\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~103_combout\);

-- Location: LCCOMB_X63_Y45_N26
\i_pixreg|Mux0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~104_combout\ = (\i_pixreg|Mux0~103_combout\ & ((\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~6_combout\ & \i_pixreg|Add1~0_combout\)) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~6_combout\ & !\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Mux0~103_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~104_combout\);

-- Location: LCCOMB_X63_Y45_N4
\i_pixreg|Mux0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~105_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~105_combout\);

-- Location: LCCOMB_X63_Y45_N14
\i_pixreg|Mux0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~106_combout\ = (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~10_combout\ & \i_pixreg|Mux0~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~105_combout\,
	combout => \i_pixreg|Mux0~106_combout\);

-- Location: LCCOMB_X63_Y45_N24
\i_pixreg|Mux0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~107_combout\ = (\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\ $ (\i_pixcounter|hcnti\(6))))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~6_combout\ & 
-- \i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~107_combout\);

-- Location: LCCOMB_X63_Y45_N10
\i_pixreg|Mux0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~108_combout\ = (\i_pixreg|Mux0~107_combout\ & (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ $ (!\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~107_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~108_combout\);

-- Location: LCCOMB_X63_Y45_N20
\i_pixreg|Mux0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~109_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3) & ((\i_pixreg|Mux0~106_combout\))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~108_combout\,
	datab => \i_pixreg|Mux0~106_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~109_combout\);

-- Location: LCCOMB_X63_Y45_N6
\i_pixreg|Mux0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~110_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~4_combout\ & \i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ $ (!\i_pixreg|Add1~0_combout\))))) # 
-- (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~4_combout\ & \i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~110_combout\);

-- Location: LCCOMB_X63_Y45_N8
\i_pixreg|Mux0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~111_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~111_combout\);

-- Location: LCCOMB_X63_Y45_N2
\i_pixreg|Mux0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~112_combout\ = (\i_pixreg|Mux0~110_combout\ & (\i_pixreg|Mux0~111_combout\ $ ((\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~110_combout\ & (\i_pixreg|Mux0~111_combout\ & (!\i_pixreg|Add1~6_combout\ & !\i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~110_combout\,
	datab => \i_pixreg|Mux0~111_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~112_combout\);

-- Location: LCCOMB_X63_Y45_N12
\i_pixreg|Mux0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~113_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\))))) # (!\i_pixcounter|hcnti\(6) & 
-- (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~4_combout\) # (!\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~113_combout\);

-- Location: LCCOMB_X63_Y45_N22
\i_pixreg|Mux0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~114_combout\ = (\i_pixreg|Mux0~110_combout\ & (\i_pixreg|Add1~6_combout\)) # (!\i_pixreg|Mux0~110_combout\ & (!\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~110_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~113_combout\,
	combout => \i_pixreg|Mux0~114_combout\);

-- Location: LCCOMB_X63_Y45_N0
\i_pixreg|Mux0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~115_combout\ = (\i_pixreg|Mux0~112_combout\ & ((!\i_pixreg|Add1~10_combout\))) # (!\i_pixreg|Mux0~112_combout\ & (\i_pixreg|Mux0~114_combout\ & \i_pixreg|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~112_combout\,
	datac => \i_pixreg|Mux0~114_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~115_combout\);

-- Location: LCCOMB_X63_Y45_N18
\i_pixreg|Mux0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~116_combout\ = (\i_pixreg|Mux0~109_combout\ & (((\i_pixreg|Mux0~115_combout\) # (!\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Mux0~109_combout\ & (\i_pixreg|Mux0~104_combout\ & (\i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~104_combout\,
	datab => \i_pixreg|Mux0~109_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Mux0~115_combout\,
	combout => \i_pixreg|Mux0~116_combout\);

-- Location: LCCOMB_X65_Y44_N22
\i_pixreg|Mux0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~117_combout\ = (\i_pixreg|Add1~0_combout\) # ((\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~2_combout\) # (\i_pixcounter|hcnti\(5)))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~2_combout\ & \i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~117_combout\);

-- Location: LCCOMB_X62_Y44_N0
\i_pixreg|Mux0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~118_combout\ = (\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(3) & ((!\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(3) $ (\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~118_combout\);

-- Location: LCCOMB_X62_Y44_N18
\i_pixreg|Mux0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~119_combout\ = (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Mux0~118_combout\ & (!\i_pixreg|Mux0~117_combout\ & \i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~118_combout\ & (\i_pixreg|Mux0~117_combout\ $ 
-- (!\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Mux0~118_combout\,
	datac => \i_pixreg|Mux0~117_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~119_combout\);

-- Location: LCCOMB_X62_Y44_N20
\i_pixreg|Mux0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~120_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(5) & \i_pixreg|Add1~4_combout\)) # (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~0_combout\ & 
-- (\i_pixreg|Add1~4_combout\ $ (((\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~120_combout\);

-- Location: LCCOMB_X62_Y44_N6
\i_pixreg|Mux0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~121_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(3)) # ((\i_pixreg|Add1~0_combout\ & !\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~6_combout\ & 
-- !\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~121_combout\);

-- Location: LCCOMB_X62_Y44_N8
\i_pixreg|Mux0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~122_combout\ = (\i_pixcounter|hcnti\(5) & (!\i_pixreg|Mux0~121_combout\ & (\i_pixreg|Add1~6_combout\ $ (\i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(5) & (((\i_pixreg|Mux0~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~121_combout\,
	combout => \i_pixreg|Mux0~122_combout\);

-- Location: LCCOMB_X62_Y44_N2
\i_pixreg|Mux0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~123_combout\ = (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~2_combout\ & ((!\i_pixcounter|hcnti\(3)))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\) # (\i_pixcounter|hcnti\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~123_combout\);

-- Location: LCCOMB_X62_Y44_N4
\i_pixreg|Mux0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~124_combout\ = (\i_pixreg|Mux0~120_combout\ & ((\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~122_combout\))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~123_combout\,
	datab => \i_pixreg|Mux0~120_combout\,
	datac => \i_pixreg|Mux0~122_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~124_combout\);

-- Location: LCCOMB_X62_Y44_N30
\i_pixreg|Mux0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~125_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\ $ (((!\i_pixcounter|hcnti\(5)) # (!\i_pixreg|Add1~0_combout\))))) # (!\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Add1~6_combout\) # (\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~125_combout\);

-- Location: LCCOMB_X62_Y44_N24
\i_pixreg|Mux0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~126_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~6_combout\ & ((!\i_pixcounter|hcnti\(3)))))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\ $ 
-- (((\i_pixreg|Add1~6_combout\ & !\i_pixcounter|hcnti\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~126_combout\);

-- Location: LCCOMB_X62_Y44_N26
\i_pixreg|Mux0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~127_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~4_combout\) # ((\i_pixcounter|hcnti\(5) & \i_pixreg|Mux0~126_combout\)))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(5) & 
-- !\i_pixreg|Mux0~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Mux0~126_combout\,
	combout => \i_pixreg|Mux0~127_combout\);

-- Location: LCCOMB_X62_Y44_N28
\i_pixreg|Mux0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~128_combout\ = (\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~0_combout\ $ (\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~6_combout\ & 
-- \i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~128_combout\);

-- Location: LCCOMB_X62_Y44_N22
\i_pixreg|Mux0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~129_combout\ = (\i_pixreg|Mux0~127_combout\ & (((\i_pixreg|Mux0~128_combout\) # (!\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Mux0~127_combout\ & (!\i_pixreg|Mux0~125_combout\ & ((\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~125_combout\,
	datab => \i_pixreg|Mux0~128_combout\,
	datac => \i_pixreg|Mux0~127_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~129_combout\);

-- Location: LCCOMB_X62_Y44_N16
\i_pixreg|Mux0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~130_combout\ = (\i_pixcounter|hcnti\(6) & (((\i_pixreg|Mux0~124_combout\) # (\i_pixreg|Add1~10_combout\)))) # (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Mux0~129_combout\ & ((!\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~129_combout\,
	datab => \i_pixreg|Mux0~124_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~130_combout\);

-- Location: LCCOMB_X62_Y44_N10
\i_pixreg|Mux0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~131_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~0_combout\ & ((!\i_pixcounter|hcnti\(5)))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~2_combout\ & 
-- ((\i_pixreg|Add1~0_combout\) # (\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~131_combout\);

-- Location: LCCOMB_X62_Y44_N12
\i_pixreg|Mux0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~132_combout\ = (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~2_combout\ & \i_pixreg|Mux0~131_combout\)) # (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Mux0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~131_combout\,
	combout => \i_pixreg|Mux0~132_combout\);

-- Location: LCCOMB_X62_Y44_N14
\i_pixreg|Mux0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~133_combout\ = (\i_pixreg|Mux0~130_combout\ & ((\i_pixreg|Mux0~132_combout\) # ((!\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Mux0~130_combout\ & (((\i_pixreg|Mux0~119_combout\ & \i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~132_combout\,
	datab => \i_pixreg|Mux0~130_combout\,
	datac => \i_pixreg|Mux0~119_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~133_combout\);

-- Location: LCCOMB_X63_Y45_N28
\i_pixreg|Mux0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~134_combout\ = (\i_pixcounter|hcnti\(4) & (((\i_pixreg|Mux0~116_combout\) # (\i_pixreg|Add1~12_combout\)))) # (!\i_pixcounter|hcnti\(4) & (\i_pixreg|Mux0~133_combout\ & ((!\i_pixreg|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~133_combout\,
	datab => \i_pixreg|Mux0~116_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixreg|Add1~12_combout\,
	combout => \i_pixreg|Mux0~134_combout\);

-- Location: LCCOMB_X68_Y44_N18
\i_pixreg|Mux0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~135_combout\ = (\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~2_combout\)) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~10_combout\ & \i_pixcounter|hcnti\(6))) # (!\i_pixreg|Add1~2_combout\ & 
-- ((\i_pixreg|Add1~10_combout\) # (\i_pixcounter|hcnti\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~135_combout\);

-- Location: LCCOMB_X68_Y44_N28
\i_pixreg|Mux0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~136_combout\ = (\i_pixreg|Add1~0_combout\ & (((\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~135_combout\ & (\i_pixcounter|hcnti\(3) & \i_pixreg|Add1~2_combout\)) # (!\i_pixreg|Mux0~135_combout\ & 
-- (!\i_pixcounter|hcnti\(3) & !\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~135_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~136_combout\);

-- Location: LCCOMB_X68_Y44_N30
\i_pixreg|Mux0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~137_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~4_combout\ $ (!\i_pixreg|Add1~10_combout\)))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~10_combout\ $ 
-- (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~137_combout\);

-- Location: LCCOMB_X68_Y44_N24
\i_pixreg|Mux0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~138_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~137_combout\ & ((\i_pixreg|Mux0~136_combout\) # (\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~136_combout\,
	datac => \i_pixreg|Mux0~137_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~138_combout\);

-- Location: LCCOMB_X68_Y44_N10
\i_pixreg|Mux0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~139_combout\ = (\i_pixreg|Add1~2_combout\) # (\i_pixreg|Add1~0_combout\ $ (((\i_pixreg|Add1~4_combout\ & !\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~139_combout\);

-- Location: LCCOMB_X68_Y44_N20
\i_pixreg|Mux0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~140_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~0_combout\ $ (!\i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~0_combout\ & \i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~140_combout\);

-- Location: LCCOMB_X68_Y44_N6
\i_pixreg|Mux0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~141_combout\ = (\i_pixreg|Mux0~139_combout\ & (\i_pixreg|Mux0~140_combout\ & (\i_pixreg|Add1~10_combout\ & \i_pixcounter|hcnti\(6)))) # (!\i_pixreg|Mux0~139_combout\ & (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~140_combout\ $ 
-- (!\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~139_combout\,
	datab => \i_pixreg|Mux0~140_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~141_combout\);

-- Location: LCCOMB_X68_Y44_N16
\i_pixreg|Mux0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~142_combout\ = (\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~4_combout\ & !\i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~142_combout\);

-- Location: LCCOMB_X68_Y44_N2
\i_pixreg|Mux0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~143_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~4_combout\ & \i_pixcounter|hcnti\(6))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~4_combout\ & !\i_pixcounter|hcnti\(6))))) # 
-- (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~4_combout\ $ (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~143_combout\);

-- Location: LCCOMB_X68_Y44_N4
\i_pixreg|Mux0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~144_combout\ = (\i_pixreg|Add1~2_combout\ & (((!\i_pixcounter|hcnti\(3) & !\i_pixreg|Add1~4_combout\)) # (!\i_pixcounter|hcnti\(6)))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(3)) # ((\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~144_combout\);

-- Location: LCCOMB_X68_Y44_N14
\i_pixreg|Mux0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~145_combout\ = (\i_pixreg|Add1~0_combout\ & (((\i_pixreg|Add1~10_combout\) # (\i_pixreg|Mux0~143_combout\)))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Mux0~144_combout\ & (!\i_pixreg|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~144_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~143_combout\,
	combout => \i_pixreg|Mux0~145_combout\);

-- Location: LCCOMB_X68_Y44_N8
\i_pixreg|Mux0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~146_combout\ = (\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~4_combout\ & !\i_pixcounter|hcnti\(6)))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~4_combout\ $ 
-- (!\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~146_combout\);

-- Location: LCCOMB_X68_Y44_N26
\i_pixreg|Mux0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~147_combout\ = (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~145_combout\ & (\i_pixreg|Mux0~146_combout\)) # (!\i_pixreg|Mux0~145_combout\ & ((\i_pixreg|Mux0~142_combout\))))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~145_combout\,
	datac => \i_pixreg|Mux0~146_combout\,
	datad => \i_pixreg|Mux0~142_combout\,
	combout => \i_pixreg|Mux0~147_combout\);

-- Location: LCCOMB_X68_Y44_N12
\i_pixreg|Mux0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~148_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixreg|Add1~6_combout\) # (\i_pixreg|Mux0~141_combout\)))) # (!\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~147_combout\ & (!\i_pixreg|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~147_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~141_combout\,
	combout => \i_pixreg|Mux0~148_combout\);

-- Location: LCCOMB_X67_Y44_N0
\i_pixreg|Mux0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~149_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~0_combout\ $ (\i_pixcounter|hcnti\(3))))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(3) & 
-- !\i_pixreg|Add1~10_combout\)) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(3) & \i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~149_combout\);

-- Location: LCCOMB_X67_Y44_N18
\i_pixreg|Mux0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~150_combout\ = (\i_pixreg|Mux0~149_combout\ & (!\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(3) $ (!\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Mux0~149_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~150_combout\);

-- Location: LCCOMB_X67_Y44_N20
\i_pixreg|Mux0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~151_combout\ = (\i_pixreg|Mux0~150_combout\) # ((!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~70_combout\ & \i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~70_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~150_combout\,
	combout => \i_pixreg|Mux0~151_combout\);

-- Location: LCCOMB_X68_Y44_N22
\i_pixreg|Mux0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~152_combout\ = (\i_pixreg|Mux0~148_combout\ & ((\i_pixreg|Mux0~151_combout\) # ((!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~148_combout\ & (((\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~148_combout\,
	datab => \i_pixreg|Mux0~151_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~138_combout\,
	combout => \i_pixreg|Mux0~152_combout\);

-- Location: LCCOMB_X66_Y45_N16
\i_pixreg|Mux0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~153_combout\ = (\i_pixreg|Mux0~134_combout\ & (((\i_pixreg|Mux0~152_combout\) # (!\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Mux0~134_combout\ & (\i_pixreg|Mux0~102_combout\ & ((\i_pixreg|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~134_combout\,
	datab => \i_pixreg|Mux0~102_combout\,
	datac => \i_pixreg|Mux0~152_combout\,
	datad => \i_pixreg|Add1~12_combout\,
	combout => \i_pixreg|Mux0~153_combout\);

-- Location: LCCOMB_X65_Y45_N16
\i_pixreg|Mux0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~154_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixreg|Add1~2_combout\ & \i_pixcounter|hcnti\(4))) # (!\i_pixreg|Add1~0_combout\))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\)) # 
-- (!\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~154_combout\);

-- Location: LCCOMB_X65_Y45_N2
\i_pixreg|Mux0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~155_combout\ = (!\i_pixcounter|hcnti\(3) & ((\i_pixreg|Mux0~154_combout\ & (!\i_pixreg|Add1~4_combout\ & \i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Mux0~154_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~154_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~155_combout\);

-- Location: LCCOMB_X65_Y45_N28
\i_pixreg|Mux0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~156_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~2_combout\ $ (((\i_pixreg|Add1~0_combout\) # (!\i_pixreg|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~156_combout\);

-- Location: LCCOMB_X65_Y45_N14
\i_pixreg|Mux0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~157_combout\ = (\i_pixreg|Mux0~155_combout\) # ((!\i_pixcounter|hcnti\(4) & (\i_pixreg|Mux0~156_combout\ & \i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixreg|Mux0~156_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~155_combout\,
	combout => \i_pixreg|Mux0~157_combout\);

-- Location: LCCOMB_X65_Y45_N0
\i_pixreg|Mux0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~158_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(5) $ (((\i_pixcounter|hcnti\(4)) # (\i_pixcounter|hcnti\(3)))))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(3) & 
-- \i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~158_combout\);

-- Location: LCCOMB_X65_Y45_N10
\i_pixreg|Mux0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~159_combout\ = (\i_pixcounter|hcnti\(4) & (((!\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(4) & (\i_pixreg|Add1~2_combout\ $ (((\i_pixcounter|hcnti\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~159_combout\);

-- Location: LCCOMB_X65_Y45_N12
\i_pixreg|Mux0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~160_combout\ = (\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(3) & \i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(3) & 
-- !\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~160_combout\);

-- Location: LCCOMB_X65_Y45_N22
\i_pixreg|Mux0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~161_combout\ = (\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~0_combout\))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~2_combout\ $ (((!\i_pixreg|Add1~4_combout\ & 
-- \i_pixreg|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~161_combout\);

-- Location: LCCOMB_X65_Y45_N8
\i_pixreg|Mux0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~162_combout\ = (!\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~160_combout\)) # (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Mux0~161_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~160_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixreg|Mux0~161_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~162_combout\);

-- Location: LCCOMB_X65_Y45_N18
\i_pixreg|Mux0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~163_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixcounter|hcnti\(6))))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixcounter|hcnti\(6) & (\i_pixreg|Mux0~241_combout\)) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Mux0~162_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~241_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~162_combout\,
	combout => \i_pixreg|Mux0~163_combout\);

-- Location: LCCOMB_X65_Y45_N4
\i_pixreg|Mux0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~164_combout\ = (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~0_combout\ & !\i_pixcounter|hcnti\(4))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\ $ (\i_pixcounter|hcnti\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~164_combout\);

-- Location: LCCOMB_X65_Y44_N24
\i_pixreg|Mux0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~165_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(4)))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(5)) # ((!\i_pixreg|Add1~2_combout\ & \i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~165_combout\);

-- Location: LCCOMB_X65_Y44_N10
\i_pixreg|Mux0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~166_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(4)) # (\i_pixreg|Add1~2_combout\ $ (\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~2_combout\) # (\i_pixcounter|hcnti\(4) $ 
-- (\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~166_combout\);

-- Location: LCCOMB_X65_Y44_N12
\i_pixreg|Mux0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~167_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixcounter|hcnti\(3))))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixcounter|hcnti\(3) & ((\i_pixreg|Mux0~165_combout\))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Mux0~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~166_combout\,
	datab => \i_pixreg|Mux0~165_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~167_combout\);

-- Location: LCCOMB_X65_Y45_N6
\i_pixreg|Mux0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~168_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~2_combout\) # (!\i_pixcounter|hcnti\(4))))) # (!\i_pixcounter|hcnti\(5) & (!\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~168_combout\);

-- Location: LCCOMB_X65_Y45_N24
\i_pixreg|Mux0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~169_combout\ = (\i_pixreg|Mux0~167_combout\ & (((\i_pixreg|Mux0~168_combout\)) # (!\i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Mux0~167_combout\ & (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~167_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Mux0~164_combout\,
	datad => \i_pixreg|Mux0~168_combout\,
	combout => \i_pixreg|Mux0~169_combout\);

-- Location: LCCOMB_X65_Y45_N26
\i_pixreg|Mux0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~170_combout\ = (\i_pixreg|Mux0~163_combout\ & ((\i_pixreg|Mux0~169_combout\) # ((!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~163_combout\ & (((\i_pixreg|Mux0~157_combout\ & \i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~169_combout\,
	datab => \i_pixreg|Mux0~163_combout\,
	datac => \i_pixreg|Mux0~157_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~170_combout\);

-- Location: LCCOMB_X63_Y46_N2
\i_pixreg|Mux0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~171_combout\ = (\i_pixcounter|hcnti\(5)) # ((\i_pixcounter|hcnti\(6)) # (\i_pixreg|Add1~6_combout\ $ (\i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~171_combout\);

-- Location: LCCOMB_X63_Y46_N4
\i_pixreg|Mux0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~172_combout\ = (\i_pixreg|Add1~6_combout\ & ((\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(5))) # (!\i_pixcounter|hcnti\(6) & ((!\i_pixreg|Add1~2_combout\))))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixcounter|hcnti\(6) & 
-- ((\i_pixcounter|hcnti\(5)) # (!\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~172_combout\);

-- Location: LCCOMB_X63_Y46_N30
\i_pixreg|Mux0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~173_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~6_combout\ $ (!\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~173_combout\);

-- Location: LCCOMB_X63_Y46_N8
\i_pixreg|Mux0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~174_combout\ = (\i_pixreg|Add1~0_combout\ & (((\i_pixcounter|hcnti\(3))))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(3) & ((\i_pixreg|Mux0~172_combout\))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~173_combout\,
	datab => \i_pixreg|Mux0~172_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~174_combout\);

-- Location: LCCOMB_X63_Y46_N10
\i_pixreg|Mux0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~175_combout\ = (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~2_combout\ & ((!\i_pixcounter|hcnti\(6)) # (!\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~175_combout\);

-- Location: LCCOMB_X63_Y46_N20
\i_pixreg|Mux0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~176_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~174_combout\ & (\i_pixreg|Mux0~175_combout\)) # (!\i_pixreg|Mux0~174_combout\ & ((!\i_pixreg|Mux0~171_combout\))))) # (!\i_pixreg|Add1~0_combout\ & 
-- (((\i_pixreg|Mux0~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~175_combout\,
	datab => \i_pixreg|Mux0~171_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~174_combout\,
	combout => \i_pixreg|Mux0~176_combout\);

-- Location: LCCOMB_X63_Y46_N6
\i_pixreg|Mux0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~177_combout\ = (\i_pixreg|Add1~6_combout\ & (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(5)) # (\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (((\i_pixreg|Add1~2_combout\ & !\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~177_combout\);

-- Location: LCCOMB_X63_Y46_N0
\i_pixreg|Mux0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~178_combout\ = (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(6)))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~6_combout\ & (((!\i_pixreg|Add1~2_combout\ & 
-- \i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~178_combout\);

-- Location: LCCOMB_X63_Y46_N26
\i_pixreg|Mux0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~179_combout\ = (\i_pixreg|Mux0~178_combout\ & (\i_pixreg|Add1~0_combout\ & \i_pixreg|Mux0~177_combout\)) # (!\i_pixreg|Mux0~178_combout\ & (\i_pixreg|Add1~0_combout\ $ (\i_pixreg|Mux0~177_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~178_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~177_combout\,
	combout => \i_pixreg|Mux0~179_combout\);

-- Location: LCCOMB_X63_Y46_N28
\i_pixreg|Mux0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~180_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~177_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~178_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~177_combout\,
	combout => \i_pixreg|Mux0~180_combout\);

-- Location: LCCOMB_X63_Y46_N14
\i_pixreg|Mux0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~181_combout\ = (\i_pixreg|Mux0~179_combout\ & ((\i_pixreg|Mux0~180_combout\ & (\i_pixcounter|hcnti\(5) $ (\i_pixcounter|hcnti\(3)))) # (!\i_pixreg|Mux0~180_combout\ & (\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(3))))) # 
-- (!\i_pixreg|Mux0~179_combout\ & (!\i_pixreg|Mux0~180_combout\ & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~179_combout\,
	datab => \i_pixreg|Mux0~180_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~181_combout\);

-- Location: LCCOMB_X65_Y46_N16
\i_pixreg|Mux0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~182_combout\ = (\i_pixcounter|hcnti\(4) & (((\i_pixreg|Mux0~176_combout\) # (\i_pixreg|Add1~4_combout\)))) # (!\i_pixcounter|hcnti\(4) & (\i_pixreg|Mux0~181_combout\ & ((\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~181_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixreg|Mux0~176_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~182_combout\);

-- Location: LCCOMB_X65_Y46_N2
\i_pixreg|Mux0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~183_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~6_combout\ $ ((!\i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~0_combout\)) # 
-- (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~2_combout\ & \i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~183_combout\);

-- Location: LCCOMB_X65_Y46_N28
\i_pixreg|Mux0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~184_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~2_combout\) # (\i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Add1~6_combout\ & ((!\i_pixreg|Add1~0_combout\) # (!\i_pixreg|Add1~2_combout\))))) # 
-- (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~6_combout\ $ ((\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~184_combout\);

-- Location: LCCOMB_X65_Y46_N6
\i_pixreg|Mux0~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~185_combout\ = (!\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~185_combout\);

-- Location: LCCOMB_X65_Y46_N24
\i_pixreg|Mux0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~186_combout\ = (\i_pixcounter|hcnti\(6) & (((\i_pixcounter|hcnti\(5)) # (!\i_pixreg|Mux0~184_combout\)))) # (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Mux0~185_combout\ & ((!\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~185_combout\,
	datab => \i_pixreg|Mux0~184_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~186_combout\);

-- Location: LCCOMB_X65_Y46_N18
\i_pixreg|Mux0~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~187_combout\ = (\i_pixreg|Mux0~186_combout\) # (\i_pixreg|Mux0~183_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~186_combout\,
	datad => \i_pixreg|Mux0~183_combout\,
	combout => \i_pixreg|Mux0~187_combout\);

-- Location: LCCOMB_X65_Y46_N12
\i_pixreg|Mux0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~188_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(6)) # ((\i_pixreg|Add1~0_combout\) # (\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) $ 
-- (\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~188_combout\);

-- Location: LCCOMB_X65_Y46_N22
\i_pixreg|Mux0~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~189_combout\ = (\i_pixreg|Mux0~188_combout\ & (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\ & \i_pixcounter|hcnti\(3)))) # (!\i_pixreg|Mux0~188_combout\ & (\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~6_combout\ & 
-- !\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~188_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~189_combout\);

-- Location: LCCOMB_X65_Y46_N0
\i_pixreg|Mux0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~190_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~2_combout\ $ (((!\i_pixreg|Add1~6_combout\ & !\i_pixcounter|hcnti\(3)))))) # (!\i_pixcounter|hcnti\(5) & (!\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~190_combout\);

-- Location: LCCOMB_X65_Y46_N26
\i_pixreg|Mux0~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~191_combout\ = ((\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(6) & \i_pixreg|Mux0~190_combout\))) # (!\i_pixreg|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~190_combout\,
	combout => \i_pixreg|Mux0~191_combout\);

-- Location: LCCOMB_X65_Y46_N20
\i_pixreg|Mux0~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~192_combout\ = (\i_pixreg|Mux0~189_combout\) # (\i_pixreg|Mux0~191_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~189_combout\,
	datac => \i_pixreg|Mux0~191_combout\,
	combout => \i_pixreg|Mux0~192_combout\);

-- Location: LCCOMB_X65_Y46_N14
\i_pixreg|Mux0~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~193_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixreg|Mux0~192_combout\ & ((\i_pixreg|Mux0~182_combout\)))) # (!\i_pixcounter|hcnti\(4) & (((\i_pixreg|Mux0~187_combout\) # (\i_pixreg|Mux0~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixreg|Mux0~192_combout\,
	datac => \i_pixreg|Mux0~187_combout\,
	datad => \i_pixreg|Mux0~182_combout\,
	combout => \i_pixreg|Mux0~193_combout\);

-- Location: LCCOMB_X65_Y43_N14
\i_pixreg|Mux0~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~194_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~0_combout\ & ((!\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Mux0~18_combout\ & \i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~0_combout\,
	datab => \i_pixreg|Mux0~18_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~194_combout\);

-- Location: LCCOMB_X65_Y43_N24
\i_pixreg|Mux0~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~195_combout\ = (!\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~0_combout\) # (!\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Mux0~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~195_combout\);

-- Location: LCCOMB_X69_Y43_N24
\i_pixreg|Mux0~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~196_combout\ = (\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(6)) # ((!\i_pixcounter|hcnti\(5)) # (!\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(5)) # (\i_pixcounter|hcnti\(6) $ 
-- (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~196_combout\);

-- Location: LCCOMB_X65_Y43_N18
\i_pixreg|Mux0~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~197_combout\ = (\i_pixreg|Add1~0_combout\ & ((!\i_pixreg|Mux0~196_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Mux0~18_combout\,
	datad => \i_pixreg|Mux0~196_combout\,
	combout => \i_pixreg|Mux0~197_combout\);

-- Location: LCCOMB_X65_Y46_N8
\i_pixreg|Mux0~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~198_combout\ = (!\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~0_combout\ & \i_pixcounter|hcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~198_combout\);

-- Location: LCCOMB_X65_Y46_N10
\i_pixreg|Mux0~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~199_combout\ = (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~186_combout\ & ((\i_pixreg|Mux0~198_combout\) # (!\i_pixcounter|hcnti\(5)))) # (!\i_pixreg|Mux0~186_combout\ & ((\i_pixcounter|hcnti\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~186_combout\,
	datac => \i_pixreg|Mux0~198_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~199_combout\);

-- Location: LCCOMB_X65_Y46_N4
\i_pixreg|Mux0~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~200_combout\ = (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~199_combout\) # ((\i_pixreg|Mux0~182_combout\)))) # (!\i_pixreg|Add1~10_combout\ & (((\i_pixreg|Mux0~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~199_combout\,
	datab => \i_pixreg|Mux0~182_combout\,
	datac => \i_pixreg|Mux0~239_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~200_combout\);

-- Location: LCCOMB_X65_Y46_N30
\i_pixreg|Mux0~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~201_combout\ = (\i_pixreg|Add1~12_combout\ & (((\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Add1~12_combout\ & (\i_pixreg|Mux0~200_combout\ & ((\i_pixreg|Mux0~193_combout\) # (!\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~12_combout\,
	datab => \i_pixreg|Mux0~193_combout\,
	datac => \i_pixreg|Mux0~200_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~201_combout\);

-- Location: LCCOMB_X67_Y43_N16
\i_pixreg|Mux0~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~202_combout\ = (\i_pixcounter|hcnti\(6)) # ((\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(5)) # (!\i_pixcounter|hcnti\(3)))) # (!\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~202_combout\);

-- Location: LCCOMB_X65_Y43_N4
\i_pixreg|Mux0~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~203_combout\ = (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Mux0~202_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~202_combout\,
	datab => \i_pixreg|Mux0~18_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~203_combout\);

-- Location: LCCOMB_X66_Y43_N24
\i_pixreg|Mux0~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~204_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~204_combout\);

-- Location: LCCOMB_X65_Y43_N22
\i_pixreg|Mux0~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~205_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~204_combout\ & \i_pixcounter|hcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Mux0~204_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~205_combout\);

-- Location: LCCOMB_X65_Y43_N0
\i_pixreg|Mux0~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~206_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Mux0~48_combout\) # (\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~205_combout\ & ((!\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~205_combout\,
	datab => \i_pixreg|Mux0~48_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~206_combout\);

-- Location: LCCOMB_X63_Y43_N2
\i_pixreg|Mux0~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~207_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(6)))) # (!\i_pixcounter|hcnti\(3) & (((\i_pixcounter|hcnti\(5)) # (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~207_combout\);

-- Location: LCCOMB_X63_Y43_N12
\i_pixreg|Mux0~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~208_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~0_combout\))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Mux0~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~207_combout\,
	datac => \i_pixreg|Mux0~0_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~208_combout\);

-- Location: LCCOMB_X65_Y43_N26
\i_pixreg|Mux0~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~209_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~208_combout\)) # (!\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Mux0~18_combout\ & \i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~208_combout\,
	datab => \i_pixreg|Mux0~18_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~209_combout\);

-- Location: LCCOMB_X65_Y43_N20
\i_pixreg|Mux0~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~210_combout\ = (\i_pixreg|Mux0~206_combout\ & ((\i_pixreg|Mux0~209_combout\) # ((!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~206_combout\ & (((\i_pixreg|Mux0~203_combout\ & \i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~209_combout\,
	datab => \i_pixreg|Mux0~206_combout\,
	datac => \i_pixreg|Mux0~203_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~210_combout\);

-- Location: LCCOMB_X66_Y45_N2
\i_pixreg|Mux0~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~211_combout\ = (\i_pixreg|Mux0~201_combout\ & ((\i_pixreg|Mux0~210_combout\) # ((!\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Mux0~201_combout\ & (((\i_pixreg|Mux0~170_combout\ & \i_pixreg|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~210_combout\,
	datab => \i_pixreg|Mux0~201_combout\,
	datac => \i_pixreg|Mux0~170_combout\,
	datad => \i_pixreg|Add1~12_combout\,
	combout => \i_pixreg|Mux0~211_combout\);

-- Location: LCCOMB_X66_Y45_N12
\i_pixreg|Mux0~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~212_combout\ = (\i_pixreg|Add1~14_combout\ & (((\i_pixreg|Add1~8_combout\)))) # (!\i_pixreg|Add1~14_combout\ & ((\i_pixreg|Add1~8_combout\ & (\i_pixreg|Mux0~153_combout\)) # (!\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Mux0~211_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~153_combout\,
	datab => \i_pixreg|Mux0~211_combout\,
	datac => \i_pixreg|Add1~14_combout\,
	datad => \i_pixreg|Add1~8_combout\,
	combout => \i_pixreg|Mux0~212_combout\);

-- Location: LCCOMB_X63_Y43_N14
\i_pixreg|Mux0~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~213_combout\ = (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(6))) # (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~213_combout\);

-- Location: LCCOMB_X66_Y44_N20
\i_pixreg|Mux0~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~214_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~204_combout\)) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~213_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~204_combout\,
	datac => \i_pixreg|Mux0~213_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~214_combout\);

-- Location: LCCOMB_X66_Y44_N30
\i_pixreg|Mux0~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~215_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~45_combout\))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~33_combout\,
	datac => \i_pixreg|Mux0~45_combout\,
	combout => \i_pixreg|Mux0~215_combout\);

-- Location: LCCOMB_X66_Y44_N16
\i_pixreg|Mux0~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~216_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~4_combout\) # (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~0_combout\))) # 
-- (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~216_combout\);

-- Location: LCCOMB_X65_Y44_N6
\i_pixreg|Mux0~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~217_combout\ = (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~2_combout\ & \i_pixreg|Add1~6_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & ((!\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~217_combout\);

-- Location: LCCOMB_X66_Y44_N18
\i_pixreg|Mux0~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~218_combout\ = (\i_pixreg|Mux0~216_combout\ & (\i_pixreg|Mux0~215_combout\ & (\i_pixreg|Mux0~217_combout\))) # (!\i_pixreg|Mux0~216_combout\ & ((\i_pixreg|Mux0~217_combout\ & ((\i_pixreg|Mux0~214_combout\))) # (!\i_pixreg|Mux0~217_combout\ 
-- & (\i_pixreg|Mux0~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~215_combout\,
	datab => \i_pixreg|Mux0~216_combout\,
	datac => \i_pixreg|Mux0~217_combout\,
	datad => \i_pixreg|Mux0~214_combout\,
	combout => \i_pixreg|Mux0~218_combout\);

-- Location: LCCOMB_X66_Y43_N10
\i_pixreg|Mux0~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~219_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~6_combout\ $ ((!\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~2_combout\ & \i_pixreg|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Mux0~3_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~219_combout\);

-- Location: LCCOMB_X66_Y43_N28
\i_pixreg|Mux0~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~220_combout\ = (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~3_combout\) # (\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~2_combout\ & ((!\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Mux0~3_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~220_combout\);

-- Location: LCCOMB_X66_Y43_N30
\i_pixreg|Mux0~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~221_combout\ = (\i_pixreg|Mux0~220_combout\ & (((\i_pixreg|Mux0~2_combout\) # (\i_pixreg|Mux0~219_combout\)))) # (!\i_pixreg|Mux0~220_combout\ & (\i_pixreg|Mux0~17_combout\ & ((\i_pixreg|Mux0~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~17_combout\,
	datab => \i_pixreg|Mux0~2_combout\,
	datac => \i_pixreg|Mux0~220_combout\,
	datad => \i_pixreg|Mux0~219_combout\,
	combout => \i_pixreg|Mux0~221_combout\);

-- Location: LCCOMB_X65_Y43_N30
\i_pixreg|Mux0~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~222_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~0_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~0_combout\,
	datab => \i_pixreg|Mux0~18_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~222_combout\);

-- Location: LCCOMB_X65_Y43_N8
\i_pixreg|Mux0~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~223_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Mux0~194_combout\) # (\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~61_combout\ & ((!\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~61_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Mux0~194_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~223_combout\);

-- Location: LCCOMB_X65_Y43_N2
\i_pixreg|Mux0~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~224_combout\ = (\i_pixreg|Mux0~223_combout\ & ((\i_pixreg|Mux0~205_combout\) # ((!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~223_combout\ & (((\i_pixreg|Mux0~222_combout\ & \i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~205_combout\,
	datab => \i_pixreg|Mux0~223_combout\,
	datac => \i_pixreg|Mux0~222_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~224_combout\);

-- Location: LCCOMB_X66_Y44_N4
\i_pixreg|Mux0~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~225_combout\ = (\i_pixreg|Add1~12_combout\ & (((\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Add1~12_combout\ & ((\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~221_combout\))) # (!\i_pixreg|Add1~10_combout\ & 
-- (\i_pixreg|Mux0~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~12_combout\,
	datab => \i_pixreg|Mux0~224_combout\,
	datac => \i_pixreg|Mux0~221_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~225_combout\);

-- Location: LCCOMB_X66_Y44_N6
\i_pixreg|Mux0~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~226_combout\ = (\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~204_combout\ & !\i_pixreg|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~204_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~226_combout\);

-- Location: LCCOMB_X65_Y44_N16
\i_pixreg|Mux0~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~227_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~2_combout\ $ (!\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~227_combout\);

-- Location: LCCOMB_X65_Y44_N2
\i_pixreg|Mux0~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~228_combout\ = (\i_pixreg|Mux0~227_combout\ & \i_pixcounter|hcnti\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~227_combout\,
	datac => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~228_combout\);

-- Location: LCCOMB_X67_Y44_N22
\i_pixreg|Mux0~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~229_combout\ = (\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(4) & ((!\i_pixcounter|hcnti\(5))))) # (!\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(5)) # ((\i_pixcounter|hcnti\(4) & \i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~229_combout\);

-- Location: LCCOMB_X66_Y44_N0
\i_pixreg|Mux0~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~230_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixreg|Mux0~45_combout\ & \i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~229_combout\)) # (!\i_pixreg|Add1~2_combout\ & 
-- ((\i_pixreg|Mux0~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~229_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~45_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~230_combout\);

-- Location: LCCOMB_X66_Y44_N26
\i_pixreg|Mux0~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~231_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~228_combout\) # ((\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Mux0~230_combout\ & !\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~228_combout\,
	datab => \i_pixreg|Mux0~230_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~231_combout\);

-- Location: LCCOMB_X65_Y44_N4
\i_pixreg|Mux0~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~232_combout\ = (\i_pixcounter|hcnti\(4)) # ((\i_pixcounter|hcnti\(3)) # (\i_pixreg|Add1~2_combout\ $ (\i_pixreg|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~232_combout\);

-- Location: LCCOMB_X65_Y44_N14
\i_pixreg|Mux0~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~233_combout\ = (\i_pixcounter|hcnti\(6)) # (\i_pixreg|Mux0~232_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Mux0~232_combout\,
	combout => \i_pixreg|Mux0~233_combout\);

-- Location: LCCOMB_X66_Y44_N12
\i_pixreg|Mux0~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~234_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~231_combout\ & (!\i_pixreg|Mux0~233_combout\)) # (!\i_pixreg|Mux0~231_combout\ & ((\i_pixreg|Mux0~226_combout\))))) # (!\i_pixreg|Add1~0_combout\ & 
-- (((\i_pixreg|Mux0~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~233_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Mux0~231_combout\,
	datad => \i_pixreg|Mux0~226_combout\,
	combout => \i_pixreg|Mux0~234_combout\);

-- Location: LCCOMB_X66_Y44_N14
\i_pixreg|Mux0~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~235_combout\ = (\i_pixreg|Mux0~225_combout\ & ((\i_pixreg|Mux0~234_combout\) # ((!\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Mux0~225_combout\ & (((\i_pixreg|Mux0~218_combout\ & \i_pixreg|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~234_combout\,
	datab => \i_pixreg|Mux0~218_combout\,
	datac => \i_pixreg|Mux0~225_combout\,
	datad => \i_pixreg|Add1~12_combout\,
	combout => \i_pixreg|Mux0~235_combout\);

-- Location: LCCOMB_X66_Y45_N6
\i_pixreg|Mux0~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~236_combout\ = (\i_pixreg|Add1~14_combout\ & ((\i_pixreg|Mux0~212_combout\ & (\i_pixreg|Mux0~235_combout\)) # (!\i_pixreg|Mux0~212_combout\ & ((\i_pixreg|Mux0~79_combout\))))) # (!\i_pixreg|Add1~14_combout\ & 
-- (((\i_pixreg|Mux0~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~235_combout\,
	datab => \i_pixreg|Mux0~79_combout\,
	datac => \i_pixreg|Add1~14_combout\,
	datad => \i_pixreg|Mux0~212_combout\,
	combout => \i_pixreg|Mux0~236_combout\);

-- Location: LCCOMB_X69_Y47_N16
\inst|process_0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~46_combout\ = (\inst|process_0~35_combout\ & (\inst|Menu_Counter\(0) & (!\inst|Menu_Counter\(1) & !\inst|Menu_Counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~35_combout\,
	datab => \inst|Menu_Counter\(0),
	datac => \inst|Menu_Counter\(1),
	datad => \inst|Menu_Counter\(2),
	combout => \inst|process_0~46_combout\);

-- Location: LCCOMB_X66_Y46_N22
\i_hs_gen|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~0_combout\ = (\i_pixcounter|hcnti\(2) & (\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(1)) # (\i_pixcounter|hcnti\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(2),
	datab => \i_pixcounter|hcnti\(1),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(0),
	combout => \i_hs_gen|process_0~0_combout\);

-- Location: LCCOMB_X67_Y45_N28
\i_vs_gen|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~1_combout\ = (\i_linecounter|vcnti\(1) & ((\i_linecounter|vcnti\(2)) # ((\i_linecounter|vcnti\(6) & \i_linecounter|vcnti\(0))))) # (!\i_linecounter|vcnti\(1) & (\i_linecounter|vcnti\(6) & ((\i_linecounter|vcnti\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(1),
	datab => \i_linecounter|vcnti\(6),
	datac => \i_linecounter|vcnti\(0),
	datad => \i_linecounter|vcnti\(2),
	combout => \i_vs_gen|process_0~1_combout\);

-- Location: LCCOMB_X67_Y45_N6
\i_vs_gen|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~2_combout\ = (\i_linecounter|vcnti\(4)) # ((\i_vs_gen|process_0~1_combout\ & \i_linecounter|vcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_vs_gen|process_0~1_combout\,
	datac => \i_linecounter|vcnti\(3),
	datad => \i_linecounter|vcnti\(4),
	combout => \i_vs_gen|process_0~2_combout\);

-- Location: LCCOMB_X69_Y47_N10
\i_pixreg|counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|counter[1]~0_combout\ = \i_pixreg|counter\(1) $ (\i_pixreg|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixreg|counter\(1),
	datad => \i_pixreg|counter\(0),
	combout => \i_pixreg|counter[1]~0_combout\);

-- Location: FF_X67_Y47_N7
\inst1|shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~4_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(4));

-- Location: LCCOMB_X67_Y47_N14
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|shiftreg\(4) & (!\inst1|shiftreg\(7) & (!\inst1|shiftreg\(6) & !\inst1|shiftreg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(4),
	datab => \inst1|shiftreg\(7),
	datac => \inst1|shiftreg\(6),
	datad => \inst1|shiftreg\(5),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X68_Y47_N24
\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (\inst1|Equal0~0_combout\ & (!\inst1|shiftreg\(3) & (\inst1|shiftreg\(8) & \inst1|shiftreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|shiftreg\(3),
	datac => \inst1|shiftreg\(8),
	datad => \inst1|shiftreg\(2),
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X68_Y47_N6
\inst1|Number~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number~3_combout\ = (\inst1|Number~2_combout\ & (!\inst1|Equal2~1_combout\ & ((\inst1|shiftreg\(1)) # (!\inst1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(1),
	datab => \inst1|Equal1~0_combout\,
	datac => \inst1|Number~2_combout\,
	datad => \inst1|Equal2~1_combout\,
	combout => \inst1|Number~3_combout\);

-- Location: LCCOMB_X67_Y47_N12
\inst1|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~1_combout\ = (!\inst1|shiftreg\(4) & (!\inst1|shiftreg\(7) & (!\inst1|shiftreg\(6) & !\inst1|shiftreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(4),
	datab => \inst1|shiftreg\(7),
	datac => \inst1|shiftreg\(6),
	datad => \inst1|shiftreg\(1),
	combout => \inst1|Equal4~1_combout\);

-- Location: LCCOMB_X67_Y47_N6
\inst1|shiftreg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~4_combout\ = (\inst1|shiftreg\(5) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shiftreg\(5),
	datac => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~4_combout\);

-- Location: LCCOMB_X69_Y45_N12
\inst|LessThan23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan23~3_combout\ = (!\i_pixreg|vcnt_d\(7) & (!\i_pixreg|vcnt_d\(9) & (\inst|LessThan23~2_combout\ & !\i_pixreg|vcnt_d\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(7),
	datab => \i_pixreg|vcnt_d\(9),
	datac => \inst|LessThan23~2_combout\,
	datad => \i_pixreg|vcnt_d\(8),
	combout => \inst|LessThan23~3_combout\);

-- Location: LCCOMB_X69_Y45_N14
\inst|LessThan37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan37~3_combout\ = (!\i_pixreg|vcnt_d\(9) & (!\i_pixreg|vcnt_d\(8) & ((\inst|LessThan37~2_combout\) # (!\i_pixreg|vcnt_d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(7),
	datab => \i_pixreg|vcnt_d\(9),
	datac => \inst|LessThan37~2_combout\,
	datad => \i_pixreg|vcnt_d\(8),
	combout => \inst|LessThan37~3_combout\);

-- Location: LCCOMB_X65_Y43_N28
\i_pixreg|Mux0~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~238_combout\ = (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~197_combout\))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~194_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (((!\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Mux0~194_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~197_combout\,
	combout => \i_pixreg|Mux0~238_combout\);

-- Location: LCCOMB_X65_Y43_N6
\i_pixreg|Mux0~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~239_combout\ = (\i_pixreg|Mux0~195_combout\) # ((\i_pixreg|Mux0~238_combout\ & ((\i_pixreg|Add1~2_combout\) # (!\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~195_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~238_combout\,
	combout => \i_pixreg|Mux0~239_combout\);

-- Location: LCCOMB_X65_Y45_N20
\i_pixreg|Mux0~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~240_combout\ = (\i_pixreg|Mux0~158_combout\ & (\i_pixreg|Mux0~159_combout\ $ (\i_pixcounter|hcnti\(3) $ (\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Mux0~158_combout\ & ((\i_pixreg|Mux0~159_combout\ & (\i_pixcounter|hcnti\(3) & 
-- \i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Mux0~159_combout\ & (!\i_pixcounter|hcnti\(3) & !\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~159_combout\,
	datab => \i_pixreg|Mux0~158_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~240_combout\);

-- Location: LCCOMB_X65_Y45_N30
\i_pixreg|Mux0~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~241_combout\ = (\i_pixreg|Mux0~240_combout\ & (\i_pixreg|Add1~4_combout\ $ ((\i_pixreg|Mux0~158_combout\)))) # (!\i_pixreg|Mux0~240_combout\ & (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~158_combout\ & \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~158_combout\,
	datac => \i_pixreg|Mux0~240_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~241_combout\);

-- Location: LCCOMB_X75_Y45_N0
\inst|EN_Limit[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[9]~5_combout\ = !\inst|Add10~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add10~16_combout\,
	combout => \inst|EN_Limit[9]~5_combout\);

-- Location: LCCOMB_X75_Y45_N2
\inst|EN_Limit[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[6]~6_combout\ = !\inst|Add10~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add10~10_combout\,
	combout => \inst|EN_Limit[6]~6_combout\);

-- Location: LCCOMB_X75_Y45_N28
\inst|EN_Limit[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[5]~7_combout\ = !\inst|Add10~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add10~8_combout\,
	combout => \inst|EN_Limit[5]~7_combout\);

-- Location: LCCOMB_X75_Y45_N24
\inst|EN_Limit[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[3]~8_combout\ = !\inst|Add10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add10~4_combout\,
	combout => \inst|EN_Limit[3]~8_combout\);

-- Location: LCCOMB_X73_Y46_N8
\inst|ED_Limit[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[7]~2_combout\ = !\inst|Add8~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add8~12_combout\,
	combout => \inst|ED_Limit[7]~2_combout\);

-- Location: LCCOMB_X73_Y46_N6
\inst|ED_Limit[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[2]~5_combout\ = !\inst|Add8~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add8~2_combout\,
	combout => \inst|ED_Limit[2]~5_combout\);

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
	i => VCC,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X68_Y46_N10
\i_pixcounter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~10_combout\ = (\i_pixcounter|hcnti\(5) & (!\i_pixcounter|Add0~9\)) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|Add0~9\) # (GND)))
-- \i_pixcounter|Add0~11\ = CARRY((!\i_pixcounter|Add0~9\) # (!\i_pixcounter|hcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datad => VCC,
	cin => \i_pixcounter|Add0~9\,
	combout => \i_pixcounter|Add0~10_combout\,
	cout => \i_pixcounter|Add0~11\);

-- Location: LCCOMB_X68_Y46_N12
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

-- Location: LCCOMB_X66_Y46_N0
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

-- Location: FF_X66_Y46_N1
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

-- Location: FF_X68_Y46_N13
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

-- Location: LCCOMB_X68_Y46_N0
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

-- Location: FF_X68_Y46_N1
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

-- Location: LCCOMB_X68_Y46_N2
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

-- Location: LCCOMB_X68_Y46_N30
\i_pixcounter|hcnti~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~5_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixcounter|Equal0~2_combout\,
	datad => \i_pixcounter|Add0~2_combout\,
	combout => \i_pixcounter|hcnti~5_combout\);

-- Location: FF_X68_Y46_N31
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

-- Location: LCCOMB_X66_Y46_N2
\i_pixcounter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~1_combout\ = (!\i_pixcounter|hcnti\(7) & (!\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(0) & !\i_pixcounter|hcnti\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(7),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(0),
	datad => \i_pixcounter|hcnti\(1),
	combout => \i_pixcounter|Equal0~1_combout\);

-- Location: LCCOMB_X68_Y46_N14
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

-- Location: FF_X68_Y46_N15
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

-- Location: LCCOMB_X68_Y46_N16
\i_pixcounter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~16_combout\ = (\i_pixcounter|hcnti\(8) & (\i_pixcounter|Add0~15\ $ (GND))) # (!\i_pixcounter|hcnti\(8) & (!\i_pixcounter|Add0~15\ & VCC))
-- \i_pixcounter|Add0~17\ = CARRY((\i_pixcounter|hcnti\(8) & !\i_pixcounter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(8),
	datad => VCC,
	cin => \i_pixcounter|Add0~15\,
	combout => \i_pixcounter|Add0~16_combout\,
	cout => \i_pixcounter|Add0~17\);

-- Location: LCCOMB_X68_Y46_N28
\i_pixcounter|hcnti~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~0_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixcounter|Equal0~2_combout\,
	datad => \i_pixcounter|Add0~16_combout\,
	combout => \i_pixcounter|hcnti~0_combout\);

-- Location: FF_X68_Y46_N29
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

-- Location: LCCOMB_X68_Y46_N8
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

-- Location: LCCOMB_X68_Y46_N26
\i_pixcounter|hcnti~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~3_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|Equal0~2_combout\,
	datac => \i_pixcounter|Add0~8_combout\,
	combout => \i_pixcounter|hcnti~3_combout\);

-- Location: FF_X68_Y46_N27
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

-- Location: LCCOMB_X68_Y46_N4
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

-- Location: LCCOMB_X68_Y46_N20
\i_pixcounter|hcnti~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~4_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|Equal0~2_combout\,
	datac => \i_pixcounter|Add0~4_combout\,
	combout => \i_pixcounter|hcnti~4_combout\);

-- Location: FF_X68_Y46_N21
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

-- Location: LCCOMB_X66_Y46_N24
\i_pixcounter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~0_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(2),
	combout => \i_pixcounter|Equal0~0_combout\);

-- Location: LCCOMB_X66_Y46_N28
\i_pixcounter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~2_combout\ = (\i_pixcounter|hcnti\(9) & (\i_pixcounter|Equal0~1_combout\ & (\i_pixcounter|hcnti\(8) & \i_pixcounter|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(9),
	datab => \i_pixcounter|Equal0~1_combout\,
	datac => \i_pixcounter|hcnti\(8),
	datad => \i_pixcounter|Equal0~0_combout\,
	combout => \i_pixcounter|Equal0~2_combout\);

-- Location: LCCOMB_X68_Y46_N6
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

-- Location: LCCOMB_X68_Y46_N24
\i_pixcounter|hcnti~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~2_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixcounter|Equal0~2_combout\,
	datad => \i_pixcounter|Add0~6_combout\,
	combout => \i_pixcounter|hcnti~2_combout\);

-- Location: FF_X68_Y46_N25
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

-- Location: FF_X68_Y46_N11
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

-- Location: LCCOMB_X66_Y46_N8
\i_linecounter|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~1_combout\ = (\i_pixcounter|hcnti\(1) & (\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(1),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(2),
	combout => \i_linecounter|process_0~1_combout\);

-- Location: LCCOMB_X66_Y46_N18
\i_hs_gen|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~1_combout\ = (\i_pixcounter|hcnti\(4)) # ((\i_pixcounter|hcnti\(5) & (\i_hs_gen|process_0~0_combout\)) # (!\i_pixcounter|hcnti\(5) & ((\i_linecounter|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_hs_gen|process_0~0_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_linecounter|process_0~1_combout\,
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_hs_gen|process_0~1_combout\);

-- Location: LCCOMB_X66_Y46_N20
\i_linecounter|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~0_combout\ = (\i_pixcounter|hcnti\(9) & (!\i_pixcounter|hcnti\(8) & \i_pixcounter|hcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(9),
	datac => \i_pixcounter|hcnti\(8),
	datad => \i_pixcounter|hcnti\(7),
	combout => \i_linecounter|process_0~0_combout\);

-- Location: LCCOMB_X66_Y46_N16
\i_hs_gen|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~2_combout\ = (\i_linecounter|process_0~0_combout\ & ((\i_pixcounter|hcnti\(6) & ((!\i_pixcounter|hcnti\(5)) # (!\i_hs_gen|process_0~1_combout\))) # (!\i_pixcounter|hcnti\(6) & ((\i_hs_gen|process_0~1_combout\) # 
-- (\i_pixcounter|hcnti\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_hs_gen|process_0~1_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_linecounter|process_0~0_combout\,
	combout => \i_hs_gen|process_0~2_combout\);

-- Location: FF_X66_Y46_N17
\i_hs_gen|hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_hs_gen|process_0~2_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs_gen|hsync~q\);

-- Location: LCCOMB_X66_Y45_N0
\i_blank6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_blank6~0_combout\ = !\i_hs_gen|hsync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_hs_gen|hsync~q\,
	combout => \i_blank6~0_combout\);

-- Location: FF_X66_Y45_N1
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

-- Location: LCCOMB_X66_Y45_N28
\i_hs3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs3~feeder_combout\ = \i_blank6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_blank6~q\,
	combout => \i_hs3~feeder_combout\);

-- Location: FF_X66_Y45_N29
i_hs3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_hs3~feeder_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_hs3~q\);

-- Location: LCCOMB_X66_Y45_N24
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

-- Location: FF_X66_Y45_N25
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

-- Location: LCCOMB_X67_Y45_N8
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

-- Location: LCCOMB_X67_Y45_N20
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

-- Location: LCCOMB_X67_Y45_N22
\i_linecounter|vcnti[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[7]~24_combout\ = (\i_linecounter|vcnti\(7) & (!\i_linecounter|vcnti[6]~23\)) # (!\i_linecounter|vcnti\(7) & ((\i_linecounter|vcnti[6]~23\) # (GND)))
-- \i_linecounter|vcnti[7]~25\ = CARRY((!\i_linecounter|vcnti[6]~23\) # (!\i_linecounter|vcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(7),
	datad => VCC,
	cin => \i_linecounter|vcnti[6]~23\,
	combout => \i_linecounter|vcnti[7]~24_combout\,
	cout => \i_linecounter|vcnti[7]~25\);

-- Location: LCCOMB_X66_Y46_N4
\i_linecounter|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~2_combout\ = (!\i_pixcounter|hcnti\(0) & (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(0),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_linecounter|process_0~2_combout\);

-- Location: LCCOMB_X66_Y46_N30
\i_linecounter|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~3_combout\ = (\i_linecounter|process_0~1_combout\ & (\i_linecounter|process_0~0_combout\ & (\i_linecounter|process_0~2_combout\ & \i_ce_gen|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|process_0~1_combout\,
	datab => \i_linecounter|process_0~0_combout\,
	datac => \i_linecounter|process_0~2_combout\,
	datad => \i_ce_gen|counter\(0),
	combout => \i_linecounter|process_0~3_combout\);

-- Location: FF_X67_Y45_N23
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
	ena => \i_linecounter|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(7));

-- Location: LCCOMB_X67_Y43_N2
\i_linecounter|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~1_combout\ = (!\i_linecounter|vcnti\(4) & (!\i_linecounter|vcnti\(6) & (!\i_linecounter|vcnti\(5) & !\i_linecounter|vcnti\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(4),
	datab => \i_linecounter|vcnti\(6),
	datac => \i_linecounter|vcnti\(5),
	datad => \i_linecounter|vcnti\(7),
	combout => \i_linecounter|LessThan0~1_combout\);

-- Location: LCCOMB_X67_Y45_N12
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

-- Location: FF_X67_Y45_N13
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
	ena => \i_linecounter|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(2));

-- Location: LCCOMB_X67_Y45_N4
\i_linecounter|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~0_combout\ = (((!\i_linecounter|vcnti\(1) & !\i_linecounter|vcnti\(0))) # (!\i_linecounter|vcnti\(2))) # (!\i_linecounter|vcnti\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(1),
	datab => \i_linecounter|vcnti\(0),
	datac => \i_linecounter|vcnti\(3),
	datad => \i_linecounter|vcnti\(2),
	combout => \i_linecounter|LessThan0~0_combout\);

-- Location: LCCOMB_X67_Y45_N24
\i_linecounter|vcnti[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[8]~26_combout\ = (\i_linecounter|vcnti\(8) & (\i_linecounter|vcnti[7]~25\ $ (GND))) # (!\i_linecounter|vcnti\(8) & (!\i_linecounter|vcnti[7]~25\ & VCC))
-- \i_linecounter|vcnti[8]~27\ = CARRY((\i_linecounter|vcnti\(8) & !\i_linecounter|vcnti[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_linecounter|vcnti\(8),
	datad => VCC,
	cin => \i_linecounter|vcnti[7]~25\,
	combout => \i_linecounter|vcnti[8]~26_combout\,
	cout => \i_linecounter|vcnti[8]~27\);

-- Location: FF_X67_Y45_N25
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
	ena => \i_linecounter|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(8));

-- Location: LCCOMB_X67_Y45_N30
\i_linecounter|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~2_combout\ = (\i_linecounter|vcnti\(9) & (((\i_linecounter|vcnti\(8)) # (!\i_linecounter|LessThan0~0_combout\)) # (!\i_linecounter|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(9),
	datab => \i_linecounter|LessThan0~1_combout\,
	datac => \i_linecounter|LessThan0~0_combout\,
	datad => \i_linecounter|vcnti\(8),
	combout => \i_linecounter|LessThan0~2_combout\);

-- Location: FF_X67_Y45_N9
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
	ena => \i_linecounter|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(0));

-- Location: LCCOMB_X67_Y45_N10
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

-- Location: LCCOMB_X67_Y45_N14
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

-- Location: FF_X67_Y45_N15
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
	ena => \i_linecounter|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(3));

-- Location: LCCOMB_X67_Y45_N16
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

-- Location: FF_X67_Y45_N17
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
	ena => \i_linecounter|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(4));

-- Location: LCCOMB_X67_Y45_N18
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

-- Location: FF_X67_Y45_N19
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
	ena => \i_linecounter|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(5));

-- Location: FF_X67_Y45_N21
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
	ena => \i_linecounter|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(6));

-- Location: LCCOMB_X67_Y45_N26
\i_linecounter|vcnti[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|vcnti[9]~28_combout\ = \i_linecounter|vcnti\(9) $ (\i_linecounter|vcnti[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(9),
	cin => \i_linecounter|vcnti[8]~27\,
	combout => \i_linecounter|vcnti[9]~28_combout\);

-- Location: FF_X67_Y45_N27
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
	ena => \i_linecounter|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(9));

-- Location: LCCOMB_X67_Y45_N2
\i_vs_gen|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~0_combout\ = (\i_linecounter|vcnti\(8) & (\i_linecounter|vcnti\(6) & (!\i_linecounter|vcnti\(9) & \i_linecounter|vcnti\(5)))) # (!\i_linecounter|vcnti\(8) & (!\i_linecounter|vcnti\(6) & (\i_linecounter|vcnti\(9) & 
-- !\i_linecounter|vcnti\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(8),
	datab => \i_linecounter|vcnti\(6),
	datac => \i_linecounter|vcnti\(9),
	datad => \i_linecounter|vcnti\(5),
	combout => \i_vs_gen|process_0~0_combout\);

-- Location: LCCOMB_X67_Y45_N0
\i_vs_gen|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~3_combout\ = (\i_vs_gen|process_0~0_combout\ & ((\i_vs_gen|process_0~2_combout\ & (\i_linecounter|vcnti\(7) & \i_linecounter|vcnti\(6))) # (!\i_vs_gen|process_0~2_combout\ & (!\i_linecounter|vcnti\(7) & !\i_linecounter|vcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_vs_gen|process_0~2_combout\,
	datab => \i_vs_gen|process_0~0_combout\,
	datac => \i_linecounter|vcnti\(7),
	datad => \i_linecounter|vcnti\(6),
	combout => \i_vs_gen|process_0~3_combout\);

-- Location: FF_X67_Y45_N1
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

-- Location: LCCOMB_X66_Y45_N10
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

-- Location: FF_X66_Y45_N11
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

-- Location: LCCOMB_X66_Y45_N14
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

-- Location: FF_X66_Y45_N15
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

-- Location: FF_X66_Y45_N19
i_vs4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_vs3~q\,
	clrn => \KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_vs4~q\);

-- Location: LCCOMB_X67_Y43_N0
\iBlank_gen|blank~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~0_combout\ = (((!\i_linecounter|vcnti\(7)) # (!\i_linecounter|vcnti\(5))) # (!\i_linecounter|vcnti\(6))) # (!\i_linecounter|vcnti\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(8),
	datab => \i_linecounter|vcnti\(6),
	datac => \i_linecounter|vcnti\(5),
	datad => \i_linecounter|vcnti\(7),
	combout => \iBlank_gen|blank~0_combout\);

-- Location: LCCOMB_X66_Y46_N6
\iBlank_gen|blank~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~2_combout\ = (\iBlank_gen|blank~1_combout\ & \iBlank_gen|blank~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iBlank_gen|blank~1_combout\,
	datad => \iBlank_gen|blank~0_combout\,
	combout => \iBlank_gen|blank~2_combout\);

-- Location: FF_X66_Y46_N7
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

-- Location: LCCOMB_X66_Y46_N12
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

-- Location: FF_X66_Y46_N13
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

-- Location: LCCOMB_X66_Y46_N26
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

-- Location: FF_X66_Y46_N27
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

-- Location: LCCOMB_X68_Y46_N18
\i_pixcounter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~18_combout\ = \i_pixcounter|hcnti\(9) $ (\i_pixcounter|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(9),
	cin => \i_pixcounter|Add0~17\,
	combout => \i_pixcounter|Add0~18_combout\);

-- Location: LCCOMB_X68_Y46_N22
\i_pixcounter|hcnti~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~1_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixcounter|Equal0~2_combout\,
	datad => \i_pixcounter|Add0~18_combout\,
	combout => \i_pixcounter|hcnti~1_combout\);

-- Location: FF_X68_Y46_N23
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

-- Location: LCCOMB_X69_Y47_N0
\i_pixreg|counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|counter[0]~1_combout\ = !\i_pixreg|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixreg|counter\(0),
	combout => \i_pixreg|counter[0]~1_combout\);

-- Location: FF_X69_Y47_N1
\i_pixreg|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|counter\(0));

-- Location: LCCOMB_X69_Y47_N20
\i_pixreg|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Equal0~0_combout\ = (!\i_pixreg|counter\(1) & \i_pixreg|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|counter\(1),
	datad => \i_pixreg|counter\(0),
	combout => \i_pixreg|Equal0~0_combout\);

-- Location: FF_X72_Y46_N3
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(9));

-- Location: FF_X72_Y46_N1
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(7));

-- Location: FF_X69_Y46_N29
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(6));

-- Location: FF_X69_Y46_N1
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(5));

-- Location: FF_X69_Y46_N31
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(3));

-- Location: LCCOMB_X70_Y46_N0
\inst|LessThan20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan20~0_combout\ = (\i_pixreg|hcnt_d\(4)) # ((\i_pixreg|hcnt_d\(6)) # ((\i_pixreg|hcnt_d\(5)) # (\i_pixreg|hcnt_d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(4),
	datab => \i_pixreg|hcnt_d\(6),
	datac => \i_pixreg|hcnt_d\(5),
	datad => \i_pixreg|hcnt_d\(3),
	combout => \inst|LessThan20~0_combout\);

-- Location: LCCOMB_X70_Y46_N26
\inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (!\i_pixreg|hcnt_d\(9) & ((\i_pixreg|hcnt_d\(8)) # ((\i_pixreg|hcnt_d\(7) & \inst|LessThan20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(8),
	datab => \i_pixreg|hcnt_d\(9),
	datac => \i_pixreg|hcnt_d\(7),
	datad => \inst|LessThan20~0_combout\,
	combout => \inst|process_0~3_combout\);

-- Location: FF_X68_Y45_N5
\i_pixreg|vcnt_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_linecounter|vcnti\(4),
	sload => VCC,
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(4));

-- Location: FF_X68_Y45_N25
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(6));

-- Location: FF_X68_Y45_N3
\i_pixreg|vcnt_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_linecounter|vcnti\(5),
	sload => VCC,
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(5));

-- Location: LCCOMB_X68_Y45_N24
\inst|LessThan43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan43~0_combout\ = ((!\i_pixreg|vcnt_d\(5) & ((!\i_pixreg|vcnt_d\(4)) # (!\i_pixreg|vcnt_d\(3))))) # (!\i_pixreg|vcnt_d\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datab => \i_pixreg|vcnt_d\(4),
	datac => \i_pixreg|vcnt_d\(6),
	datad => \i_pixreg|vcnt_d\(5),
	combout => \inst|LessThan43~0_combout\);

-- Location: FF_X69_Y45_N27
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(9));

-- Location: FF_X69_Y45_N1
\i_pixreg|vcnt_d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_linecounter|vcnti\(8),
	sload => VCC,
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(8));

-- Location: LCCOMB_X69_Y45_N26
\inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (!\i_pixreg|vcnt_d\(9) & !\i_pixreg|vcnt_d\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixreg|vcnt_d\(9),
	datad => \i_pixreg|vcnt_d\(8),
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X68_Y45_N0
\i_pixreg|vcnt_d[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|vcnt_d[0]~feeder_combout\ = \i_linecounter|vcnti\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_linecounter|vcnti\(0),
	combout => \i_pixreg|vcnt_d[0]~feeder_combout\);

-- Location: FF_X68_Y45_N1
\i_pixreg|vcnt_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|vcnt_d[0]~feeder_combout\,
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(0));

-- Location: FF_X68_Y45_N29
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(2));

-- Location: FF_X67_Y45_N11
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
	ena => \i_linecounter|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_linecounter|vcnti\(1));

-- Location: FF_X68_Y45_N11
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(1));

-- Location: LCCOMB_X68_Y45_N28
\inst|LessThan46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan46~0_combout\ = (\i_pixreg|vcnt_d\(3) & ((\i_pixreg|vcnt_d\(0)) # ((\i_pixreg|vcnt_d\(2)) # (\i_pixreg|vcnt_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datab => \i_pixreg|vcnt_d\(0),
	datac => \i_pixreg|vcnt_d\(2),
	datad => \i_pixreg|vcnt_d\(1),
	combout => \inst|LessThan46~0_combout\);

-- Location: LCCOMB_X68_Y45_N6
\inst|LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan18~0_combout\ = (\i_pixreg|vcnt_d\(6)) # ((\i_pixreg|vcnt_d\(5) & (\inst|LessThan46~0_combout\ & \i_pixreg|vcnt_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(5),
	datab => \inst|LessThan46~0_combout\,
	datac => \i_pixreg|vcnt_d\(4),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|LessThan18~0_combout\);

-- Location: LCCOMB_X70_Y45_N8
\inst|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~19_combout\ = (\i_pixreg|vcnt_d\(7) & (\inst|LessThan43~0_combout\ & (\inst|process_0~2_combout\ & \inst|LessThan18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(7),
	datab => \inst|LessThan43~0_combout\,
	datac => \inst|process_0~2_combout\,
	datad => \inst|LessThan18~0_combout\,
	combout => \inst|process_0~19_combout\);

-- Location: IOIBUF_X0_Y67_N15
\PS2_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_CLK,
	o => \PS2_CLK~input_o\);

-- Location: LCCOMB_X67_Y47_N22
\inst1|PS2_CLK2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|PS2_CLK2~feeder_combout\ = \PS2_CLK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_CLK~input_o\,
	combout => \inst1|PS2_CLK2~feeder_combout\);

-- Location: FF_X67_Y47_N23
\inst1|PS2_CLK2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|PS2_CLK2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PS2_CLK2~q\);

-- Location: FF_X67_Y47_N1
\inst1|PS2_CLK2_old\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \inst1|PS2_CLK2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PS2_CLK2_old~q\);

-- Location: LCCOMB_X67_Y47_N20
\inst1|shiftreg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~3_combout\ = (\inst1|shiftreg\(3) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shiftreg\(3),
	datac => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~3_combout\);

-- Location: LCCOMB_X67_Y47_N0
\inst1|shiftreg[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg[8]~2_combout\ = (\inst1|shiftreg\(0)) # ((!\inst1|PS2_CLK2~q\ & \inst1|PS2_CLK2_old~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PS2_CLK2~q\,
	datab => \inst1|shiftreg\(0),
	datac => \inst1|PS2_CLK2_old~q\,
	combout => \inst1|shiftreg[8]~2_combout\);

-- Location: FF_X67_Y47_N21
\inst1|shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~3_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(2));

-- Location: LCCOMB_X67_Y47_N2
\inst1|shiftreg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~1_combout\ = (\inst1|shiftreg\(2) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shiftreg\(2),
	datac => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~1_combout\);

-- Location: FF_X67_Y47_N3
\inst1|shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~1_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(1));

-- Location: LCCOMB_X67_Y47_N8
\inst1|shiftreg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg[0]~0_combout\ = (!\inst1|PS2_CLK2~q\ & (\inst1|PS2_CLK2_old~q\ & (!\inst1|shiftreg\(0) & \inst1|shiftreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PS2_CLK2~q\,
	datab => \inst1|PS2_CLK2_old~q\,
	datac => \inst1|shiftreg\(0),
	datad => \inst1|shiftreg\(1),
	combout => \inst1|shiftreg[0]~0_combout\);

-- Location: FF_X67_Y47_N9
\inst1|shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg[0]~0_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(0));

-- Location: LCCOMB_X67_Y47_N24
\inst1|shiftreg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~8_combout\ = (\inst1|shiftreg\(4) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(4),
	datac => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~8_combout\);

-- Location: FF_X67_Y47_N25
\inst1|shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~8_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(3));

-- Location: IOIBUF_X0_Y59_N22
\PS2_DAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_DAT,
	o => \PS2_DAT~input_o\);

-- Location: LCCOMB_X67_Y47_N18
\inst1|shiftreg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~10_combout\ = (!\inst1|shiftreg\(0) & !\PS2_DAT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shiftreg\(0),
	datac => \PS2_DAT~input_o\,
	combout => \inst1|shiftreg~10_combout\);

-- Location: FF_X67_Y47_N19
\inst1|shiftreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~10_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(9));

-- Location: LCCOMB_X67_Y47_N10
\inst1|shiftreg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~9_combout\ = (!\inst1|shiftreg\(0) & \inst1|shiftreg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|shiftreg\(0),
	datad => \inst1|shiftreg\(9),
	combout => \inst1|shiftreg~9_combout\);

-- Location: FF_X67_Y47_N11
\inst1|shiftreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~9_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(8));

-- Location: LCCOMB_X68_Y47_N18
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|Equal0~0_combout\ & \inst1|shiftreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datad => \inst1|shiftreg\(2),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X68_Y47_N4
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|shiftreg\(1) & (\inst1|shiftreg\(3) & (!\inst1|shiftreg\(8) & \inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(1),
	datab => \inst1|shiftreg\(3),
	datac => \inst1|shiftreg\(8),
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X68_Y47_N0
\inst1|break~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|break~0_combout\ = (\inst1|shiftreg\(0) & ((\KEY0~input_o\ & ((\inst1|Equal0~2_combout\))) # (!\KEY0~input_o\ & (\inst1|break~q\)))) # (!\inst1|shiftreg\(0) & (((\inst1|break~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(0),
	datab => \KEY0~input_o\,
	datac => \inst1|break~q\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|break~0_combout\);

-- Location: FF_X68_Y47_N1
\inst1|break\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|break~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|break~q\);

-- Location: LCCOMB_X68_Y47_N14
\inst1|Number~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number~2_combout\ = (\inst1|shiftreg\(0) & (!\inst1|Equal0~2_combout\ & \inst1|break~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(0),
	datac => \inst1|Equal0~2_combout\,
	datad => \inst1|break~q\,
	combout => \inst1|Number~2_combout\);

-- Location: LCCOMB_X68_Y47_N10
\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (\inst1|shiftreg\(1) & (\inst1|shiftreg\(3) & (\inst1|shiftreg\(8) & !\inst1|shiftreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(1),
	datab => \inst1|shiftreg\(3),
	datac => \inst1|shiftreg\(8),
	datad => \inst1|shiftreg\(2),
	combout => \inst1|Equal2~0_combout\);

-- Location: LCCOMB_X68_Y47_N20
\inst1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~1_combout\ = (\inst1|Equal0~0_combout\ & \inst1|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|Equal2~1_combout\);

-- Location: LCCOMB_X67_Y47_N16
\inst1|shiftreg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~5_combout\ = (\inst1|shiftreg\(8) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(8),
	datac => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~5_combout\);

-- Location: FF_X67_Y47_N17
\inst1|shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~5_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(7));

-- Location: LCCOMB_X67_Y47_N26
\inst1|shiftreg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~6_combout\ = (!\inst1|shiftreg\(0) & \inst1|shiftreg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|shiftreg\(0),
	datad => \inst1|shiftreg\(7),
	combout => \inst1|shiftreg~6_combout\);

-- Location: FF_X67_Y47_N27
\inst1|shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~6_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(6));

-- Location: LCCOMB_X67_Y47_N28
\inst1|shiftreg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~7_combout\ = (!\inst1|shiftreg\(0) & \inst1|shiftreg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shiftreg\(0),
	datac => \inst1|shiftreg\(6),
	combout => \inst1|shiftreg~7_combout\);

-- Location: FF_X67_Y47_N29
\inst1|shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~7_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(5));

-- Location: LCCOMB_X68_Y47_N8
\inst1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (\inst1|shiftreg\(8) & (\inst1|shiftreg\(5) & (\inst1|shiftreg\(3) & !\inst1|shiftreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(8),
	datab => \inst1|shiftreg\(5),
	datac => \inst1|shiftreg\(3),
	datad => \inst1|shiftreg\(2),
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X68_Y47_N12
\inst1|Number~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number~8_combout\ = ((\inst1|shiftreg\(3)) # ((!\inst1|shiftreg\(2)) # (!\inst1|shiftreg\(8)))) # (!\inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|shiftreg\(3),
	datac => \inst1|shiftreg\(8),
	datad => \inst1|shiftreg\(2),
	combout => \inst1|Number~8_combout\);

-- Location: LCCOMB_X68_Y47_N2
\inst1|Number~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number~6_combout\ = (\inst1|Equal2~1_combout\) # (((\inst1|Equal4~1_combout\ & \inst1|Equal4~0_combout\)) # (!\inst1|Number~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~1_combout\,
	datab => \inst1|Equal2~1_combout\,
	datac => \inst1|Equal4~0_combout\,
	datad => \inst1|Number~8_combout\,
	combout => \inst1|Number~6_combout\);

-- Location: LCCOMB_X68_Y47_N16
\inst1|new_number~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|new_number~0_combout\ = (\inst1|Number~6_combout\ & \inst1|break~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Number~6_combout\,
	datad => \inst1|break~q\,
	combout => \inst1|new_number~0_combout\);

-- Location: FF_X68_Y47_N17
\inst1|new_number\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|new_number~0_combout\,
	sclr => \inst1|ALT_INV_shiftreg\(0),
	ena => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|new_number~q\);

-- Location: LCCOMB_X68_Y47_N26
\inst1|Number~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number~4_combout\ = (\inst1|Number~3_combout\) # ((!\inst1|Number~2_combout\ & ((\inst1|Number\(1)) # (\inst1|new_number~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number~3_combout\,
	datab => \inst1|Number~2_combout\,
	datac => \inst1|Number\(1),
	datad => \inst1|new_number~q\,
	combout => \inst1|Number~4_combout\);

-- Location: FF_X68_Y47_N27
\inst1|Number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|Number~4_combout\,
	ena => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Number\(1));

-- Location: LCCOMB_X68_Y47_N30
\inst1|Number~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number~7_combout\ = (\inst1|Number~2_combout\ & (!\inst1|Number~6_combout\)) # (!\inst1|Number~2_combout\ & (((\inst1|Number\(2)) # (\inst1|new_number~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number~6_combout\,
	datab => \inst1|Number~2_combout\,
	datac => \inst1|Number\(2),
	datad => \inst1|new_number~q\,
	combout => \inst1|Number~7_combout\);

-- Location: FF_X68_Y47_N31
\inst1|Number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|Number~7_combout\,
	ena => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Number\(2));

-- Location: LCCOMB_X72_Y47_N28
\inst|process_0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~28_combout\ = (!\inst1|Number\(2) & !\inst1|Number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Number\(2),
	datad => \inst1|Number\(1),
	combout => \inst|process_0~28_combout\);

-- Location: LCCOMB_X68_Y47_N28
\inst1|Number~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number~5_combout\ = (\inst1|Number~2_combout\ & (\inst1|Number~8_combout\)) # (!\inst1|Number~2_combout\ & (((\inst1|Number\(0)) # (\inst1|new_number~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number~8_combout\,
	datab => \inst1|Number~2_combout\,
	datac => \inst1|Number\(0),
	datad => \inst1|new_number~q\,
	combout => \inst1|Number~5_combout\);

-- Location: FF_X68_Y47_N29
\inst1|Number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|Number~5_combout\,
	ena => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Number\(0));

-- Location: LCCOMB_X72_Y47_N18
\inst|process_0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~45_combout\ = (\inst|process_0~28_combout\ & (\inst1|Number\(0) & ((\inst|Equal8~0_combout\) # (!\inst|Menu_Counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(2),
	datab => \inst|process_0~28_combout\,
	datac => \inst1|Number\(0),
	datad => \inst|Equal8~0_combout\,
	combout => \inst|process_0~45_combout\);

-- Location: LCCOMB_X72_Y47_N2
\inst|Menu_Counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Menu_Counter[1]~1_combout\ = \inst|Menu_Counter\(1) $ (((!\inst|VOL_Limit[1]~1_combout\ & (\inst|process_0~45_combout\ $ (!\inst|Menu_Counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit[1]~1_combout\,
	datab => \inst|process_0~45_combout\,
	datac => \inst|Menu_Counter\(1),
	datad => \inst|Menu_Counter\(0),
	combout => \inst|Menu_Counter[1]~1_combout\);

-- Location: FF_X72_Y47_N3
\inst|Menu_Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Menu_Counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Menu_Counter\(1));

-- Location: LCCOMB_X72_Y47_N20
\inst|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~0_combout\ = (!\inst|Menu_Counter\(1) & !\inst|Menu_Counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Menu_Counter\(1),
	datad => \inst|Menu_Counter\(0),
	combout => \inst|Equal8~0_combout\);

-- Location: LCCOMB_X72_Y47_N6
\inst|VOL_Limit[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[1]~1_combout\ = ((\inst|Menu_Counter\(2) & (\inst1|Number\(0) & !\inst|Equal8~0_combout\)) # (!\inst|Menu_Counter\(2) & (!\inst1|Number\(0) & \inst|Equal8~0_combout\))) # (!\inst|process_0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(2),
	datab => \inst|process_0~28_combout\,
	datac => \inst1|Number\(0),
	datad => \inst|Equal8~0_combout\,
	combout => \inst|VOL_Limit[1]~1_combout\);

-- Location: LCCOMB_X72_Y47_N0
\inst|Menu_Counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Menu_Counter[0]~0_combout\ = \inst|Menu_Counter\(0) $ (!\inst|VOL_Limit[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Menu_Counter\(0),
	datad => \inst|VOL_Limit[1]~1_combout\,
	combout => \inst|Menu_Counter[0]~0_combout\);

-- Location: FF_X72_Y47_N1
\inst|Menu_Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Menu_Counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Menu_Counter\(0));

-- Location: LCCOMB_X72_Y47_N22
\inst|Menu_Counter[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Menu_Counter[2]~3_combout\ = (\inst1|Number\(0) & (!\inst1|Number\(1) & (!\inst1|Number\(2) & \inst|Menu_Counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number\(0),
	datab => \inst1|Number\(1),
	datac => \inst1|Number\(2),
	datad => \inst|Menu_Counter\(0),
	combout => \inst|Menu_Counter[2]~3_combout\);

-- Location: LCCOMB_X72_Y47_N30
\inst|Menu_Counter[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Menu_Counter[2]~4_combout\ = (\inst|Menu_Counter[2]~2_combout\) # ((\inst|Menu_Counter[2]~3_combout\ & \inst|Menu_Counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter[2]~2_combout\,
	datac => \inst|Menu_Counter[2]~3_combout\,
	datad => \inst|Menu_Counter\(1),
	combout => \inst|Menu_Counter[2]~4_combout\);

-- Location: FF_X72_Y47_N31
\inst|Menu_Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Menu_Counter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Menu_Counter\(2));

-- Location: LCCOMB_X75_Y46_N0
\inst|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~0_combout\ = \inst|DIST_Limit\(1) $ (GND)
-- \inst|Add6~1\ = CARRY(!\inst|DIST_Limit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DIST_Limit\(1),
	datad => VCC,
	combout => \inst|Add6~0_combout\,
	cout => \inst|Add6~1\);

-- Location: LCCOMB_X75_Y46_N16
\inst|DIST_Limit[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIST_Limit[1]~6_combout\ = !\inst|Add6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add6~0_combout\,
	combout => \inst|DIST_Limit[1]~6_combout\);

-- Location: LCCOMB_X70_Y47_N16
\inst|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = \inst|LR_Limit\(1) $ (GND)
-- \inst|Add4~1\ = CARRY(!\inst|LR_Limit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LR_Limit\(1),
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X70_Y47_N8
\inst|LR_Limit[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LR_Limit[1]~6_combout\ = !\inst|Add4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add4~0_combout\,
	combout => \inst|LR_Limit[1]~6_combout\);

-- Location: LCCOMB_X73_Y45_N8
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|VOL_Limit\(1) $ (GND)
-- \inst|Add2~1\ = CARRY(!\inst|VOL_Limit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|VOL_Limit\(1),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X73_Y45_N0
\inst|VOL_Limit[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[1]~7_combout\ = !\inst|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~0_combout\,
	combout => \inst|VOL_Limit[1]~7_combout\);

-- Location: LCCOMB_X73_Y47_N6
\inst|VOL_Limit[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[1]~2_combout\ = (\inst|VOL_Limit[1]~1_combout\ & !\inst|VOL_Limit[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|VOL_Limit[1]~1_combout\,
	datad => \inst|VOL_Limit[7]~0_combout\,
	combout => \inst|VOL_Limit[1]~2_combout\);

-- Location: FF_X73_Y45_N1
\inst|VOL_Limit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit[1]~7_combout\,
	ena => \inst|VOL_Limit[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(1));

-- Location: LCCOMB_X73_Y45_N10
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|process_0~26_combout\ & ((\inst|VOL_Limit\(2) & ((\inst|Add2~1\) # (GND))) # (!\inst|VOL_Limit\(2) & (!\inst|Add2~1\)))) # (!\inst|process_0~26_combout\ & ((\inst|VOL_Limit\(2) & (!\inst|Add2~1\)) # (!\inst|VOL_Limit\(2) & 
-- (\inst|Add2~1\ & VCC))))
-- \inst|Add2~3\ = CARRY((\inst|process_0~26_combout\ & ((\inst|VOL_Limit\(2)) # (!\inst|Add2~1\))) # (!\inst|process_0~26_combout\ & (\inst|VOL_Limit\(2) & !\inst|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~26_combout\,
	datab => \inst|VOL_Limit\(2),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X73_Y45_N6
\inst|VOL_Limit[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[2]~6_combout\ = !\inst|Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add2~2_combout\,
	combout => \inst|VOL_Limit[2]~6_combout\);

-- Location: FF_X73_Y45_N7
\inst|VOL_Limit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit[2]~6_combout\,
	ena => \inst|VOL_Limit[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(2));

-- Location: LCCOMB_X73_Y45_N12
\inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ((\inst|process_0~26_combout\ $ (\inst|VOL_Limit\(3) $ (\inst|Add2~3\)))) # (GND)
-- \inst|Add2~5\ = CARRY((\inst|process_0~26_combout\ & ((!\inst|Add2~3\) # (!\inst|VOL_Limit\(3)))) # (!\inst|process_0~26_combout\ & (!\inst|VOL_Limit\(3) & !\inst|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~26_combout\,
	datab => \inst|VOL_Limit\(3),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X73_Y45_N4
\inst|VOL_Limit[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[3]~5_combout\ = !\inst|Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add2~4_combout\,
	combout => \inst|VOL_Limit[3]~5_combout\);

-- Location: FF_X73_Y45_N5
\inst|VOL_Limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit[3]~5_combout\,
	ena => \inst|VOL_Limit[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(3));

-- Location: LCCOMB_X73_Y45_N14
\inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|process_0~26_combout\ & ((\inst|VOL_Limit\(4) & (!\inst|Add2~5\)) # (!\inst|VOL_Limit\(4) & ((\inst|Add2~5\) # (GND))))) # (!\inst|process_0~26_combout\ & ((\inst|VOL_Limit\(4) & (\inst|Add2~5\ & VCC)) # 
-- (!\inst|VOL_Limit\(4) & (!\inst|Add2~5\))))
-- \inst|Add2~7\ = CARRY((\inst|process_0~26_combout\ & ((!\inst|Add2~5\) # (!\inst|VOL_Limit\(4)))) # (!\inst|process_0~26_combout\ & (!\inst|VOL_Limit\(4) & !\inst|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~26_combout\,
	datab => \inst|VOL_Limit\(4),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: FF_X73_Y45_N15
\inst|VOL_Limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add2~6_combout\,
	ena => \inst|VOL_Limit[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(4));

-- Location: LCCOMB_X73_Y45_N16
\inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = ((\inst|process_0~26_combout\ $ (\inst|VOL_Limit\(5) $ (\inst|Add2~7\)))) # (GND)
-- \inst|Add2~9\ = CARRY((\inst|process_0~26_combout\ & (\inst|VOL_Limit\(5) & !\inst|Add2~7\)) # (!\inst|process_0~26_combout\ & ((\inst|VOL_Limit\(5)) # (!\inst|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~26_combout\,
	datab => \inst|VOL_Limit\(5),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: FF_X73_Y45_N17
\inst|VOL_Limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add2~8_combout\,
	ena => \inst|VOL_Limit[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(5));

-- Location: LCCOMB_X73_Y45_N18
\inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|process_0~26_combout\ & ((\inst|VOL_Limit\(6) & ((\inst|Add2~9\) # (GND))) # (!\inst|VOL_Limit\(6) & (!\inst|Add2~9\)))) # (!\inst|process_0~26_combout\ & ((\inst|VOL_Limit\(6) & (!\inst|Add2~9\)) # (!\inst|VOL_Limit\(6) & 
-- (\inst|Add2~9\ & VCC))))
-- \inst|Add2~11\ = CARRY((\inst|process_0~26_combout\ & ((\inst|VOL_Limit\(6)) # (!\inst|Add2~9\))) # (!\inst|process_0~26_combout\ & (\inst|VOL_Limit\(6) & !\inst|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~26_combout\,
	datab => \inst|VOL_Limit\(6),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X73_Y45_N2
\inst|VOL_Limit[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[6]~4_combout\ = !\inst|Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add2~10_combout\,
	combout => \inst|VOL_Limit[6]~4_combout\);

-- Location: FF_X73_Y45_N3
\inst|VOL_Limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit[6]~4_combout\,
	ena => \inst|VOL_Limit[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(6));

-- Location: LCCOMB_X73_Y45_N20
\inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = ((\inst|process_0~26_combout\ $ (\inst|VOL_Limit\(7) $ (!\inst|Add2~11\)))) # (GND)
-- \inst|Add2~13\ = CARRY((\inst|process_0~26_combout\ & (!\inst|VOL_Limit\(7) & !\inst|Add2~11\)) # (!\inst|process_0~26_combout\ & ((!\inst|Add2~11\) # (!\inst|VOL_Limit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~26_combout\,
	datab => \inst|VOL_Limit\(7),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X73_Y45_N24
\inst|VOL_Limit[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[7]~3_combout\ = !\inst|Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add2~12_combout\,
	combout => \inst|VOL_Limit[7]~3_combout\);

-- Location: FF_X73_Y45_N25
\inst|VOL_Limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit[7]~3_combout\,
	ena => \inst|VOL_Limit[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(7));

-- Location: LCCOMB_X73_Y45_N22
\inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = \inst|process_0~26_combout\ $ (\inst|Add2~13\ $ (!\inst|VOL_Limit\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~26_combout\,
	datad => \inst|VOL_Limit\(8),
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\);

-- Location: FF_X73_Y45_N23
\inst|VOL_Limit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add2~14_combout\,
	ena => \inst|VOL_Limit[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(8));

-- Location: LCCOMB_X72_Y45_N30
\inst|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = ((\inst|VOL_Limit\(5)) # ((\inst|VOL_Limit\(4)) # (!\inst|VOL_Limit\(6)))) # (!\inst|VOL_Limit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit\(3),
	datab => \inst|VOL_Limit\(5),
	datac => \inst|VOL_Limit\(4),
	datad => \inst|VOL_Limit\(6),
	combout => \inst|LessThan3~0_combout\);

-- Location: LCCOMB_X72_Y45_N24
\inst|process_0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~27_combout\ = (\inst|Equal6~0_combout\ & ((\inst|VOL_Limit\(8)) # ((\inst|LessThan3~0_combout\ & !\inst|VOL_Limit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datab => \inst|VOL_Limit\(8),
	datac => \inst|LessThan3~0_combout\,
	datad => \inst|VOL_Limit\(7),
	combout => \inst|process_0~27_combout\);

-- Location: LCCOMB_X73_Y47_N12
\inst|VOL_Limit[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[7]~0_combout\ = (!\inst|process_0~26_combout\ & ((\inst|Menu_Counter\(2)) # ((!\inst|Equal8~0_combout\) # (!\inst|process_0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~26_combout\,
	datab => \inst|Menu_Counter\(2),
	datac => \inst|process_0~27_combout\,
	datad => \inst|Equal8~0_combout\,
	combout => \inst|VOL_Limit[7]~0_combout\);

-- Location: LCCOMB_X73_Y47_N4
\inst|LR_Limit[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LR_Limit[1]~1_combout\ = (\inst|VOL_Limit[1]~1_combout\ & (!\inst|LR_Limit[2]~0_combout\ & \inst|VOL_Limit[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|VOL_Limit[1]~1_combout\,
	datac => \inst|LR_Limit[2]~0_combout\,
	datad => \inst|VOL_Limit[7]~0_combout\,
	combout => \inst|LR_Limit[1]~1_combout\);

-- Location: FF_X70_Y47_N9
\inst|LR_Limit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|LR_Limit[1]~6_combout\,
	ena => \inst|LR_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(1));

-- Location: LCCOMB_X70_Y47_N18
\inst|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|process_0~46_combout\ & ((\inst|LR_Limit\(2) & ((\inst|Add4~1\) # (GND))) # (!\inst|LR_Limit\(2) & (!\inst|Add4~1\)))) # (!\inst|process_0~46_combout\ & ((\inst|LR_Limit\(2) & (!\inst|Add4~1\)) # (!\inst|LR_Limit\(2) & 
-- (\inst|Add4~1\ & VCC))))
-- \inst|Add4~3\ = CARRY((\inst|process_0~46_combout\ & ((\inst|LR_Limit\(2)) # (!\inst|Add4~1\))) # (!\inst|process_0~46_combout\ & (\inst|LR_Limit\(2) & !\inst|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~46_combout\,
	datab => \inst|LR_Limit\(2),
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X70_Y47_N14
\inst|LR_Limit[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LR_Limit[2]~5_combout\ = !\inst|Add4~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add4~2_combout\,
	combout => \inst|LR_Limit[2]~5_combout\);

-- Location: FF_X70_Y47_N15
\inst|LR_Limit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|LR_Limit[2]~5_combout\,
	ena => \inst|LR_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(2));

-- Location: LCCOMB_X70_Y47_N20
\inst|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = ((\inst|process_0~46_combout\ $ (\inst|LR_Limit\(3) $ (\inst|Add4~3\)))) # (GND)
-- \inst|Add4~5\ = CARRY((\inst|process_0~46_combout\ & ((!\inst|Add4~3\) # (!\inst|LR_Limit\(3)))) # (!\inst|process_0~46_combout\ & (!\inst|LR_Limit\(3) & !\inst|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~46_combout\,
	datab => \inst|LR_Limit\(3),
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X70_Y47_N12
\inst|LR_Limit[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LR_Limit[3]~4_combout\ = !\inst|Add4~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add4~4_combout\,
	combout => \inst|LR_Limit[3]~4_combout\);

-- Location: FF_X70_Y47_N13
\inst|LR_Limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|LR_Limit[3]~4_combout\,
	ena => \inst|LR_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(3));

-- Location: LCCOMB_X70_Y47_N22
\inst|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|process_0~46_combout\ & ((\inst|LR_Limit\(4) & (!\inst|Add4~5\)) # (!\inst|LR_Limit\(4) & ((\inst|Add4~5\) # (GND))))) # (!\inst|process_0~46_combout\ & ((\inst|LR_Limit\(4) & (\inst|Add4~5\ & VCC)) # (!\inst|LR_Limit\(4) & 
-- (!\inst|Add4~5\))))
-- \inst|Add4~7\ = CARRY((\inst|process_0~46_combout\ & ((!\inst|Add4~5\) # (!\inst|LR_Limit\(4)))) # (!\inst|process_0~46_combout\ & (!\inst|LR_Limit\(4) & !\inst|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~46_combout\,
	datab => \inst|LR_Limit\(4),
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: FF_X70_Y47_N23
\inst|LR_Limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add4~6_combout\,
	ena => \inst|LR_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(4));

-- Location: LCCOMB_X70_Y47_N24
\inst|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = ((\inst|process_0~46_combout\ $ (\inst|LR_Limit\(5) $ (\inst|Add4~7\)))) # (GND)
-- \inst|Add4~9\ = CARRY((\inst|process_0~46_combout\ & (\inst|LR_Limit\(5) & !\inst|Add4~7\)) # (!\inst|process_0~46_combout\ & ((\inst|LR_Limit\(5)) # (!\inst|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~46_combout\,
	datab => \inst|LR_Limit\(5),
	datad => VCC,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\,
	cout => \inst|Add4~9\);

-- Location: FF_X70_Y47_N25
\inst|LR_Limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add4~8_combout\,
	ena => \inst|LR_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(5));

-- Location: LCCOMB_X70_Y47_N26
\inst|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst|process_0~46_combout\ & ((\inst|LR_Limit\(6) & ((\inst|Add4~9\) # (GND))) # (!\inst|LR_Limit\(6) & (!\inst|Add4~9\)))) # (!\inst|process_0~46_combout\ & ((\inst|LR_Limit\(6) & (!\inst|Add4~9\)) # (!\inst|LR_Limit\(6) & 
-- (\inst|Add4~9\ & VCC))))
-- \inst|Add4~11\ = CARRY((\inst|process_0~46_combout\ & ((\inst|LR_Limit\(6)) # (!\inst|Add4~9\))) # (!\inst|process_0~46_combout\ & (\inst|LR_Limit\(6) & !\inst|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~46_combout\,
	datab => \inst|LR_Limit\(6),
	datad => VCC,
	cin => \inst|Add4~9\,
	combout => \inst|Add4~10_combout\,
	cout => \inst|Add4~11\);

-- Location: LCCOMB_X70_Y47_N2
\inst|LR_Limit[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LR_Limit[6]~3_combout\ = !\inst|Add4~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add4~10_combout\,
	combout => \inst|LR_Limit[6]~3_combout\);

-- Location: FF_X70_Y47_N3
\inst|LR_Limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|LR_Limit[6]~3_combout\,
	ena => \inst|LR_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(6));

-- Location: LCCOMB_X70_Y47_N28
\inst|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = ((\inst|process_0~46_combout\ $ (\inst|LR_Limit\(7) $ (!\inst|Add4~11\)))) # (GND)
-- \inst|Add4~13\ = CARRY((\inst|process_0~46_combout\ & (!\inst|LR_Limit\(7) & !\inst|Add4~11\)) # (!\inst|process_0~46_combout\ & ((!\inst|Add4~11\) # (!\inst|LR_Limit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~46_combout\,
	datab => \inst|LR_Limit\(7),
	datad => VCC,
	cin => \inst|Add4~11\,
	combout => \inst|Add4~12_combout\,
	cout => \inst|Add4~13\);

-- Location: LCCOMB_X70_Y47_N0
\inst|LR_Limit[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LR_Limit[7]~2_combout\ = !\inst|Add4~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add4~12_combout\,
	combout => \inst|LR_Limit[7]~2_combout\);

-- Location: FF_X70_Y47_N1
\inst|LR_Limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|LR_Limit[7]~2_combout\,
	ena => \inst|LR_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(7));

-- Location: LCCOMB_X70_Y47_N30
\inst|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~14_combout\ = \inst|process_0~46_combout\ $ (\inst|Add4~13\ $ (!\inst|LR_Limit\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~46_combout\,
	datad => \inst|LR_Limit\(8),
	cin => \inst|Add4~13\,
	combout => \inst|Add4~14_combout\);

-- Location: FF_X70_Y47_N31
\inst|LR_Limit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add4~14_combout\,
	ena => \inst|LR_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(8));

-- Location: LCCOMB_X72_Y47_N10
\inst|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal6~0_combout\ = (\inst1|Number\(0) & (!\inst1|Number\(2) & \inst1|Number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number\(0),
	datac => \inst1|Number\(2),
	datad => \inst1|Number\(1),
	combout => \inst|Equal6~0_combout\);

-- Location: LCCOMB_X69_Y47_N8
\inst|process_0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~33_combout\ = (\inst|Equal6~0_combout\ & ((\inst|LR_Limit\(8)) # ((\inst|LessThan5~0_combout\ & !\inst|LR_Limit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~0_combout\,
	datab => \inst|LR_Limit\(7),
	datac => \inst|LR_Limit\(8),
	datad => \inst|Equal6~0_combout\,
	combout => \inst|process_0~33_combout\);

-- Location: LCCOMB_X69_Y45_N6
\inst|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~2_combout\ = (!\inst|Menu_Counter\(1) & (!\inst|Menu_Counter\(2) & \inst|Menu_Counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(1),
	datac => \inst|Menu_Counter\(2),
	datad => \inst|Menu_Counter\(0),
	combout => \inst|Equal8~2_combout\);

-- Location: LCCOMB_X69_Y47_N6
\inst|LR_Limit[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LR_Limit[2]~0_combout\ = ((!\inst|process_0~35_combout\ & !\inst|process_0~33_combout\)) # (!\inst|Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~35_combout\,
	datab => \inst|process_0~33_combout\,
	datac => \inst|Equal8~2_combout\,
	combout => \inst|LR_Limit[2]~0_combout\);

-- Location: LCCOMB_X73_Y47_N18
\inst|Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~3_combout\ = (\inst|Menu_Counter\(1) & (!\inst|Menu_Counter\(0) & !\inst|Menu_Counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(1),
	datac => \inst|Menu_Counter\(0),
	datad => \inst|Menu_Counter\(2),
	combout => \inst|Equal8~3_combout\);

-- Location: LCCOMB_X73_Y47_N28
\inst|DIST_Limit[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIST_Limit[1]~0_combout\ = ((!\inst|process_0~36_combout\ & !\inst|process_0~38_combout\)) # (!\inst|Equal8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~36_combout\,
	datab => \inst|Equal8~3_combout\,
	datad => \inst|process_0~38_combout\,
	combout => \inst|DIST_Limit[1]~0_combout\);

-- Location: LCCOMB_X73_Y47_N2
\inst|DIST_Limit[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIST_Limit[1]~1_combout\ = (\inst|VOL_Limit[7]~0_combout\ & (\inst|VOL_Limit[1]~1_combout\ & (\inst|LR_Limit[2]~0_combout\ & !\inst|DIST_Limit[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit[7]~0_combout\,
	datab => \inst|VOL_Limit[1]~1_combout\,
	datac => \inst|LR_Limit[2]~0_combout\,
	datad => \inst|DIST_Limit[1]~0_combout\,
	combout => \inst|DIST_Limit[1]~1_combout\);

-- Location: FF_X75_Y46_N17
\inst|DIST_Limit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|DIST_Limit[1]~6_combout\,
	ena => \inst|DIST_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DIST_Limit\(1));

-- Location: LCCOMB_X75_Y46_N2
\inst|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~2_combout\ = (\inst|DIST_Limit\(2) & ((\inst|process_0~47_combout\ & ((\inst|Add6~1\) # (GND))) # (!\inst|process_0~47_combout\ & (!\inst|Add6~1\)))) # (!\inst|DIST_Limit\(2) & ((\inst|process_0~47_combout\ & (!\inst|Add6~1\)) # 
-- (!\inst|process_0~47_combout\ & (\inst|Add6~1\ & VCC))))
-- \inst|Add6~3\ = CARRY((\inst|DIST_Limit\(2) & ((\inst|process_0~47_combout\) # (!\inst|Add6~1\))) # (!\inst|DIST_Limit\(2) & (\inst|process_0~47_combout\ & !\inst|Add6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DIST_Limit\(2),
	datab => \inst|process_0~47_combout\,
	datad => VCC,
	cin => \inst|Add6~1\,
	combout => \inst|Add6~2_combout\,
	cout => \inst|Add6~3\);

-- Location: LCCOMB_X75_Y46_N4
\inst|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~4_combout\ = ((\inst|DIST_Limit\(3) $ (\inst|process_0~47_combout\ $ (\inst|Add6~3\)))) # (GND)
-- \inst|Add6~5\ = CARRY((\inst|DIST_Limit\(3) & (\inst|process_0~47_combout\ & !\inst|Add6~3\)) # (!\inst|DIST_Limit\(3) & ((\inst|process_0~47_combout\) # (!\inst|Add6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DIST_Limit\(3),
	datab => \inst|process_0~47_combout\,
	datad => VCC,
	cin => \inst|Add6~3\,
	combout => \inst|Add6~4_combout\,
	cout => \inst|Add6~5\);

-- Location: LCCOMB_X75_Y46_N8
\inst|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~8_combout\ = ((\inst|DIST_Limit\(5) $ (\inst|process_0~47_combout\ $ (\inst|Add6~7\)))) # (GND)
-- \inst|Add6~9\ = CARRY((\inst|DIST_Limit\(5) & ((!\inst|Add6~7\) # (!\inst|process_0~47_combout\))) # (!\inst|DIST_Limit\(5) & (!\inst|process_0~47_combout\ & !\inst|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DIST_Limit\(5),
	datab => \inst|process_0~47_combout\,
	datad => VCC,
	cin => \inst|Add6~7\,
	combout => \inst|Add6~8_combout\,
	cout => \inst|Add6~9\);

-- Location: FF_X75_Y46_N9
\inst|DIST_Limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add6~8_combout\,
	ena => \inst|DIST_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DIST_Limit\(5));

-- Location: LCCOMB_X75_Y46_N20
\inst|DIST_Limit[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIST_Limit[3]~4_combout\ = !\inst|Add6~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add6~4_combout\,
	combout => \inst|DIST_Limit[3]~4_combout\);

-- Location: FF_X75_Y46_N21
\inst|DIST_Limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|DIST_Limit[3]~4_combout\,
	ena => \inst|DIST_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DIST_Limit\(3));

-- Location: LCCOMB_X75_Y46_N10
\inst|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~10_combout\ = (\inst|DIST_Limit\(6) & ((\inst|process_0~47_combout\ & ((\inst|Add6~9\) # (GND))) # (!\inst|process_0~47_combout\ & (!\inst|Add6~9\)))) # (!\inst|DIST_Limit\(6) & ((\inst|process_0~47_combout\ & (!\inst|Add6~9\)) # 
-- (!\inst|process_0~47_combout\ & (\inst|Add6~9\ & VCC))))
-- \inst|Add6~11\ = CARRY((\inst|DIST_Limit\(6) & ((\inst|process_0~47_combout\) # (!\inst|Add6~9\))) # (!\inst|DIST_Limit\(6) & (\inst|process_0~47_combout\ & !\inst|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DIST_Limit\(6),
	datab => \inst|process_0~47_combout\,
	datad => VCC,
	cin => \inst|Add6~9\,
	combout => \inst|Add6~10_combout\,
	cout => \inst|Add6~11\);

-- Location: LCCOMB_X75_Y46_N26
\inst|DIST_Limit[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIST_Limit[6]~3_combout\ = !\inst|Add6~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add6~10_combout\,
	combout => \inst|DIST_Limit[6]~3_combout\);

-- Location: FF_X75_Y46_N27
\inst|DIST_Limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|DIST_Limit[6]~3_combout\,
	ena => \inst|DIST_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DIST_Limit\(6));

-- Location: LCCOMB_X74_Y46_N28
\inst|process_0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~37_combout\ = (\inst|DIST_Limit\(6) & (((!\inst|DIST_Limit\(4) & \inst|DIST_Limit\(3))) # (!\inst|DIST_Limit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DIST_Limit\(4),
	datab => \inst|DIST_Limit\(5),
	datac => \inst|DIST_Limit\(3),
	datad => \inst|DIST_Limit\(6),
	combout => \inst|process_0~37_combout\);

-- Location: LCCOMB_X75_Y46_N12
\inst|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~12_combout\ = ((\inst|DIST_Limit\(7) $ (\inst|process_0~47_combout\ $ (!\inst|Add6~11\)))) # (GND)
-- \inst|Add6~13\ = CARRY((\inst|DIST_Limit\(7) & (!\inst|process_0~47_combout\ & !\inst|Add6~11\)) # (!\inst|DIST_Limit\(7) & ((!\inst|Add6~11\) # (!\inst|process_0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DIST_Limit\(7),
	datab => \inst|process_0~47_combout\,
	datad => VCC,
	cin => \inst|Add6~11\,
	combout => \inst|Add6~12_combout\,
	cout => \inst|Add6~13\);

-- Location: LCCOMB_X75_Y46_N24
\inst|DIST_Limit[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIST_Limit[7]~2_combout\ = !\inst|Add6~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add6~12_combout\,
	combout => \inst|DIST_Limit[7]~2_combout\);

-- Location: FF_X75_Y46_N25
\inst|DIST_Limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|DIST_Limit[7]~2_combout\,
	ena => \inst|DIST_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DIST_Limit\(7));

-- Location: LCCOMB_X74_Y46_N0
\inst|process_0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~38_combout\ = (\inst|Equal5~0_combout\ & (((\inst|process_0~37_combout\ & \inst|DIST_Limit\(7))) # (!\inst|DIST_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst|process_0~37_combout\,
	datac => \inst|DIST_Limit\(8),
	datad => \inst|DIST_Limit\(7),
	combout => \inst|process_0~38_combout\);

-- Location: LCCOMB_X73_Y47_N30
\inst|process_0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~47_combout\ = (\inst|Menu_Counter\(1) & (!\inst|Menu_Counter\(2) & (!\inst|Menu_Counter\(0) & \inst|process_0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(1),
	datab => \inst|Menu_Counter\(2),
	datac => \inst|Menu_Counter\(0),
	datad => \inst|process_0~38_combout\,
	combout => \inst|process_0~47_combout\);

-- Location: LCCOMB_X75_Y46_N14
\inst|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~14_combout\ = \inst|process_0~47_combout\ $ (\inst|Add6~13\ $ (!\inst|DIST_Limit\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_0~47_combout\,
	datad => \inst|DIST_Limit\(8),
	cin => \inst|Add6~13\,
	combout => \inst|Add6~14_combout\);

-- Location: FF_X75_Y46_N15
\inst|DIST_Limit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add6~14_combout\,
	ena => \inst|DIST_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DIST_Limit\(8));

-- Location: FF_X69_Y46_N25
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(4));

-- Location: LCCOMB_X75_Y46_N22
\inst|DIST_Limit[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIST_Limit[2]~5_combout\ = !\inst|Add6~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add6~2_combout\,
	combout => \inst|DIST_Limit[2]~5_combout\);

-- Location: FF_X75_Y46_N23
\inst|DIST_Limit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|DIST_Limit[2]~5_combout\,
	ena => \inst|DIST_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DIST_Limit\(2));

-- Location: FF_X72_Y46_N7
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(0));

-- Location: LCCOMB_X74_Y46_N6
\inst|LessThan21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~1_cout\ = CARRY(\i_pixreg|hcnt_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|hcnt_d\(0),
	datad => VCC,
	cout => \inst|LessThan21~1_cout\);

-- Location: LCCOMB_X74_Y46_N8
\inst|LessThan21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~3_cout\ = CARRY((\i_pixreg|hcnt_d\(1) & (!\inst|DIST_Limit\(1) & !\inst|LessThan21~1_cout\)) # (!\i_pixreg|hcnt_d\(1) & ((!\inst|LessThan21~1_cout\) # (!\inst|DIST_Limit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(1),
	datab => \inst|DIST_Limit\(1),
	datad => VCC,
	cin => \inst|LessThan21~1_cout\,
	cout => \inst|LessThan21~3_cout\);

-- Location: LCCOMB_X74_Y46_N10
\inst|LessThan21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~5_cout\ = CARRY((\i_pixreg|hcnt_d\(2) & ((\inst|DIST_Limit\(2)) # (!\inst|LessThan21~3_cout\))) # (!\i_pixreg|hcnt_d\(2) & (\inst|DIST_Limit\(2) & !\inst|LessThan21~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(2),
	datab => \inst|DIST_Limit\(2),
	datad => VCC,
	cin => \inst|LessThan21~3_cout\,
	cout => \inst|LessThan21~5_cout\);

-- Location: LCCOMB_X74_Y46_N12
\inst|LessThan21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~7_cout\ = CARRY((\inst|DIST_Limit\(3) & (!\i_pixreg|hcnt_d\(3) & !\inst|LessThan21~5_cout\)) # (!\inst|DIST_Limit\(3) & ((!\inst|LessThan21~5_cout\) # (!\i_pixreg|hcnt_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DIST_Limit\(3),
	datab => \i_pixreg|hcnt_d\(3),
	datad => VCC,
	cin => \inst|LessThan21~5_cout\,
	cout => \inst|LessThan21~7_cout\);

-- Location: LCCOMB_X74_Y46_N14
\inst|LessThan21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~9_cout\ = CARRY((\inst|DIST_Limit\(4) & (\i_pixreg|hcnt_d\(4) & !\inst|LessThan21~7_cout\)) # (!\inst|DIST_Limit\(4) & ((\i_pixreg|hcnt_d\(4)) # (!\inst|LessThan21~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DIST_Limit\(4),
	datab => \i_pixreg|hcnt_d\(4),
	datad => VCC,
	cin => \inst|LessThan21~7_cout\,
	cout => \inst|LessThan21~9_cout\);

-- Location: LCCOMB_X74_Y46_N16
\inst|LessThan21~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~11_cout\ = CARRY((\i_pixreg|hcnt_d\(5) & (\inst|DIST_Limit\(5) & !\inst|LessThan21~9_cout\)) # (!\i_pixreg|hcnt_d\(5) & ((\inst|DIST_Limit\(5)) # (!\inst|LessThan21~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(5),
	datab => \inst|DIST_Limit\(5),
	datad => VCC,
	cin => \inst|LessThan21~9_cout\,
	cout => \inst|LessThan21~11_cout\);

-- Location: LCCOMB_X74_Y46_N18
\inst|LessThan21~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~13_cout\ = CARRY((\i_pixreg|hcnt_d\(6) & ((\inst|DIST_Limit\(6)) # (!\inst|LessThan21~11_cout\))) # (!\i_pixreg|hcnt_d\(6) & (\inst|DIST_Limit\(6) & !\inst|LessThan21~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(6),
	datab => \inst|DIST_Limit\(6),
	datad => VCC,
	cin => \inst|LessThan21~11_cout\,
	cout => \inst|LessThan21~13_cout\);

-- Location: LCCOMB_X74_Y46_N20
\inst|LessThan21~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~15_cout\ = CARRY((\i_pixreg|hcnt_d\(7) & (!\inst|DIST_Limit\(7) & !\inst|LessThan21~13_cout\)) # (!\i_pixreg|hcnt_d\(7) & ((!\inst|LessThan21~13_cout\) # (!\inst|DIST_Limit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(7),
	datab => \inst|DIST_Limit\(7),
	datad => VCC,
	cin => \inst|LessThan21~13_cout\,
	cout => \inst|LessThan21~15_cout\);

-- Location: LCCOMB_X74_Y46_N22
\inst|LessThan21~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~16_combout\ = (\i_pixreg|hcnt_d\(8) & (\inst|DIST_Limit\(8) & \inst|LessThan21~15_cout\)) # (!\i_pixreg|hcnt_d\(8) & ((\inst|DIST_Limit\(8)) # (\inst|LessThan21~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(8),
	datab => \inst|DIST_Limit\(8),
	cin => \inst|LessThan21~15_cout\,
	combout => \inst|LessThan21~16_combout\);

-- Location: LCCOMB_X70_Y45_N18
\inst|pixcode~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~15_combout\ = (!\inst|process_0~21_combout\ & (((!\inst|LessThan21~16_combout\) # (!\inst|process_0~19_combout\)) # (!\inst|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~21_combout\,
	datab => \inst|process_0~3_combout\,
	datac => \inst|process_0~19_combout\,
	datad => \inst|LessThan21~16_combout\,
	combout => \inst|pixcode~15_combout\);

-- Location: LCCOMB_X67_Y46_N0
\i_pixreg|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~0_combout\ = (\i_pixcounter|hcnti\(7) & (\i_linecounter|vcnti\(3) $ (VCC))) # (!\i_pixcounter|hcnti\(7) & (\i_linecounter|vcnti\(3) & VCC))
-- \i_pixreg|Add1~1\ = CARRY((\i_pixcounter|hcnti\(7) & \i_linecounter|vcnti\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(7),
	datab => \i_linecounter|vcnti\(3),
	datad => VCC,
	combout => \i_pixreg|Add1~0_combout\,
	cout => \i_pixreg|Add1~1\);

-- Location: LCCOMB_X67_Y46_N2
\i_pixreg|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~2_combout\ = (\i_linecounter|vcnti\(4) & ((\i_pixcounter|hcnti\(8) & (\i_pixreg|Add1~1\ & VCC)) # (!\i_pixcounter|hcnti\(8) & (!\i_pixreg|Add1~1\)))) # (!\i_linecounter|vcnti\(4) & ((\i_pixcounter|hcnti\(8) & (!\i_pixreg|Add1~1\)) # 
-- (!\i_pixcounter|hcnti\(8) & ((\i_pixreg|Add1~1\) # (GND)))))
-- \i_pixreg|Add1~3\ = CARRY((\i_linecounter|vcnti\(4) & (!\i_pixcounter|hcnti\(8) & !\i_pixreg|Add1~1\)) # (!\i_linecounter|vcnti\(4) & ((!\i_pixreg|Add1~1\) # (!\i_pixcounter|hcnti\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(4),
	datab => \i_pixcounter|hcnti\(8),
	datad => VCC,
	cin => \i_pixreg|Add1~1\,
	combout => \i_pixreg|Add1~2_combout\,
	cout => \i_pixreg|Add1~3\);

-- Location: LCCOMB_X67_Y46_N20
\i_pixreg|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add0~2_combout\ = (\i_linecounter|vcnti\(4) & ((\i_linecounter|vcnti\(6) & (\i_pixreg|Add0~1\ & VCC)) # (!\i_linecounter|vcnti\(6) & (!\i_pixreg|Add0~1\)))) # (!\i_linecounter|vcnti\(4) & ((\i_linecounter|vcnti\(6) & (!\i_pixreg|Add0~1\)) # 
-- (!\i_linecounter|vcnti\(6) & ((\i_pixreg|Add0~1\) # (GND)))))
-- \i_pixreg|Add0~3\ = CARRY((\i_linecounter|vcnti\(4) & (!\i_linecounter|vcnti\(6) & !\i_pixreg|Add0~1\)) # (!\i_linecounter|vcnti\(4) & ((!\i_pixreg|Add0~1\) # (!\i_linecounter|vcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(4),
	datab => \i_linecounter|vcnti\(6),
	datad => VCC,
	cin => \i_pixreg|Add0~1\,
	combout => \i_pixreg|Add0~2_combout\,
	cout => \i_pixreg|Add0~3\);

-- Location: LCCOMB_X67_Y46_N24
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

-- Location: LCCOMB_X67_Y46_N4
\i_pixreg|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~4_combout\ = ((\i_pixreg|Add0~0_combout\ $ (\i_pixcounter|hcnti\(9) $ (!\i_pixreg|Add1~3\)))) # (GND)
-- \i_pixreg|Add1~5\ = CARRY((\i_pixreg|Add0~0_combout\ & ((\i_pixcounter|hcnti\(9)) # (!\i_pixreg|Add1~3\))) # (!\i_pixreg|Add0~0_combout\ & (\i_pixcounter|hcnti\(9) & !\i_pixreg|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add0~0_combout\,
	datab => \i_pixcounter|hcnti\(9),
	datad => VCC,
	cin => \i_pixreg|Add1~3\,
	combout => \i_pixreg|Add1~4_combout\,
	cout => \i_pixreg|Add1~5\);

-- Location: LCCOMB_X67_Y46_N6
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

-- Location: LCCOMB_X67_Y46_N8
\i_pixreg|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~8_combout\ = (\i_pixreg|Add0~4_combout\ & (\i_pixreg|Add1~7\ $ (GND))) # (!\i_pixreg|Add0~4_combout\ & (!\i_pixreg|Add1~7\ & VCC))
-- \i_pixreg|Add1~9\ = CARRY((\i_pixreg|Add0~4_combout\ & !\i_pixreg|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add0~4_combout\,
	datad => VCC,
	cin => \i_pixreg|Add1~7\,
	combout => \i_pixreg|Add1~8_combout\,
	cout => \i_pixreg|Add1~9\);

-- Location: LCCOMB_X67_Y46_N10
\i_pixreg|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~10_combout\ = (\i_pixreg|Add0~6_combout\ & (!\i_pixreg|Add1~9\)) # (!\i_pixreg|Add0~6_combout\ & ((\i_pixreg|Add1~9\) # (GND)))
-- \i_pixreg|Add1~11\ = CARRY((!\i_pixreg|Add1~9\) # (!\i_pixreg|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add0~6_combout\,
	datad => VCC,
	cin => \i_pixreg|Add1~9\,
	combout => \i_pixreg|Add1~10_combout\,
	cout => \i_pixreg|Add1~11\);

-- Location: LCCOMB_X66_Y43_N12
\i_pixreg|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~17_combout\ = (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(4) & !\i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~17_combout\);

-- Location: LCCOMB_X66_Y43_N8
\i_pixreg|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~20_combout\ = (\i_pixreg|Mux0~19_combout\ & ((\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~8_combout\)) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~8_combout\) # (\i_pixreg|Mux0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~19_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~17_combout\,
	combout => \i_pixreg|Mux0~20_combout\);

-- Location: LCCOMB_X66_Y43_N18
\i_pixreg|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~21_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~16_combout\) # ((\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Mux0~20_combout\ & !\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~16_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Mux0~20_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~21_combout\);

-- Location: LCCOMB_X66_Y43_N16
\i_pixreg|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~5_combout\ = (\i_pixreg|Add1~8_combout\ & (((\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Add1~10_combout\ & ((!\i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~4_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~5_combout\);

-- Location: LCCOMB_X63_Y43_N16
\i_pixreg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~0_combout\ = (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(5) & !\i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y43_N0
\i_pixreg|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~1_combout\ = (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~0_combout\ & \i_pixreg|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~0_combout\,
	combout => \i_pixreg|Mux0~1_combout\);

-- Location: LCCOMB_X66_Y43_N26
\i_pixreg|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~8_combout\ = (\i_pixreg|Mux0~5_combout\ & ((\i_pixreg|Mux0~7_combout\) # ((!\i_pixreg|Add1~8_combout\)))) # (!\i_pixreg|Mux0~5_combout\ & (((\i_pixreg|Add1~8_combout\ & \i_pixreg|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~7_combout\,
	datab => \i_pixreg|Mux0~5_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~1_combout\,
	combout => \i_pixreg|Mux0~8_combout\);

-- Location: LCCOMB_X66_Y43_N20
\i_pixreg|Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~22_combout\ = (\i_pixreg|Add1~8_combout\) # ((\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Add1~10_combout\ & ((!\i_pixreg|Add1~4_combout\) # (!\i_pixreg|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~17_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~22_combout\);

-- Location: LCCOMB_X66_Y43_N6
\i_pixreg|Mux0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~23_combout\ = (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Mux0~21_combout\ & ((!\i_pixreg|Mux0~22_combout\))) # (!\i_pixreg|Mux0~21_combout\ & (\i_pixreg|Mux0~8_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Mux0~21_combout\,
	datac => \i_pixreg|Mux0~8_combout\,
	datad => \i_pixreg|Mux0~22_combout\,
	combout => \i_pixreg|Mux0~23_combout\);

-- Location: LCCOMB_X67_Y46_N14
\i_pixreg|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~14_combout\ = (\i_pixreg|Add0~10_combout\ & (!\i_pixreg|Add1~13\)) # (!\i_pixreg|Add0~10_combout\ & ((\i_pixreg|Add1~13\) # (GND)))
-- \i_pixreg|Add1~15\ = CARRY((!\i_pixreg|Add1~13\) # (!\i_pixreg|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add0~10_combout\,
	datad => VCC,
	cin => \i_pixreg|Add1~13\,
	combout => \i_pixreg|Add1~14_combout\,
	cout => \i_pixreg|Add1~15\);

-- Location: LCCOMB_X67_Y46_N16
\i_pixreg|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Add1~16_combout\ = \i_pixreg|Add0~12_combout\ $ (!\i_pixreg|Add1~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add0~12_combout\,
	cin => \i_pixreg|Add1~15\,
	combout => \i_pixreg|Add1~16_combout\);

-- Location: LCCOMB_X66_Y45_N22
\i_pixreg|Mux0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~24_combout\ = (!\i_pixreg|Add1~12_combout\ & (\i_pixreg|Mux0~23_combout\ & (!\i_pixreg|Add1~14_combout\ & \i_pixreg|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~12_combout\,
	datab => \i_pixreg|Mux0~23_combout\,
	datac => \i_pixreg|Add1~14_combout\,
	datad => \i_pixreg|Add1~16_combout\,
	combout => \i_pixreg|Mux0~24_combout\);

-- Location: LCCOMB_X66_Y45_N20
\i_pixreg|Mux0~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~237_combout\ = (\i_pixreg|Mux0~24_combout\) # ((\i_pixreg|Mux0~236_combout\ & !\i_pixreg|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~236_combout\,
	datac => \i_pixreg|Mux0~24_combout\,
	datad => \i_pixreg|Add1~16_combout\,
	combout => \i_pixreg|Mux0~237_combout\);

-- Location: FF_X66_Y45_N21
\i_pixreg|pixcode_single\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|Mux0~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode_single~q\);

-- Location: FF_X68_Y45_N19
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|vcnt_d\(7));

-- Location: LCCOMB_X69_Y45_N0
\inst|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~16_combout\ = (!\inst|Menu_Counter\(1) & (!\i_pixreg|vcnt_d\(9) & (!\i_pixreg|vcnt_d\(8) & \inst|Menu_Counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(1),
	datab => \i_pixreg|vcnt_d\(9),
	datac => \i_pixreg|vcnt_d\(8),
	datad => \inst|Menu_Counter\(0),
	combout => \inst|process_0~16_combout\);

-- Location: LCCOMB_X70_Y46_N28
\inst|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~17_combout\ = (\inst|process_0~15_combout\ & (\i_pixreg|vcnt_d\(7) & (\inst|process_0~16_combout\ & \inst|Menu_Counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~15_combout\,
	datab => \i_pixreg|vcnt_d\(7),
	datac => \inst|process_0~16_combout\,
	datad => \inst|Menu_Counter\(2),
	combout => \inst|process_0~17_combout\);

-- Location: LCCOMB_X68_Y45_N8
\inst|LessThan46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan46~1_combout\ = (\i_pixreg|vcnt_d\(6)) # ((\i_pixreg|vcnt_d\(5) & ((\inst|LessThan46~0_combout\) # (\i_pixreg|vcnt_d\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(5),
	datab => \inst|LessThan46~0_combout\,
	datac => \i_pixreg|vcnt_d\(4),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|LessThan46~1_combout\);

-- Location: FF_X72_Y46_N23
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(8));

-- Location: LCCOMB_X72_Y46_N28
\inst|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~13_combout\ = ((\i_pixreg|hcnt_d\(9)) # (!\i_pixreg|hcnt_d\(8))) # (!\inst|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~12_combout\,
	datac => \i_pixreg|hcnt_d\(8),
	datad => \i_pixreg|hcnt_d\(9),
	combout => \inst|process_0~13_combout\);

-- Location: LCCOMB_X70_Y45_N4
\inst|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~18_combout\ = (\inst|process_0~17_combout\ & (\inst|LessThan46~1_combout\ & !\inst|process_0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_0~17_combout\,
	datac => \inst|LessThan46~1_combout\,
	datad => \inst|process_0~13_combout\,
	combout => \inst|process_0~18_combout\);

-- Location: LCCOMB_X68_Y45_N12
\inst|LessThan25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan25~0_combout\ = (!\i_pixreg|vcnt_d\(5) & (!\i_pixreg|vcnt_d\(6) & ((!\i_pixreg|vcnt_d\(4)) # (!\inst|LessThan44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan44~0_combout\,
	datab => \i_pixreg|vcnt_d\(4),
	datac => \i_pixreg|vcnt_d\(5),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|LessThan25~0_combout\);

-- Location: LCCOMB_X72_Y46_N2
\inst|LessThan26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan26~1_combout\ = (\i_pixreg|hcnt_d\(9)) # ((\inst|LessThan26~0_combout\ & (\i_pixreg|hcnt_d\(7) & \i_pixreg|hcnt_d\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan26~0_combout\,
	datab => \i_pixreg|hcnt_d\(7),
	datac => \i_pixreg|hcnt_d\(9),
	datad => \i_pixreg|hcnt_d\(8),
	combout => \inst|LessThan26~1_combout\);

-- Location: LCCOMB_X72_Y47_N24
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (!\inst1|Number\(0) & (!\inst1|Number\(2) & \inst1|Number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number\(0),
	datac => \inst1|Number\(2),
	datad => \inst1|Number\(1),
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X73_Y46_N12
\inst|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~0_combout\ = \inst|ED_Limit\(1) $ (GND)
-- \inst|Add8~1\ = CARRY(!\inst|ED_Limit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ED_Limit\(1),
	datad => VCC,
	combout => \inst|Add8~0_combout\,
	cout => \inst|Add8~1\);

-- Location: LCCOMB_X73_Y46_N0
\inst|ED_Limit[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[1]~6_combout\ = !\inst|Add8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add8~0_combout\,
	combout => \inst|ED_Limit[1]~6_combout\);

-- Location: LCCOMB_X73_Y47_N14
\inst|EN_Limit[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[1]~3_combout\ = (\inst|VOL_Limit[7]~0_combout\ & (\inst|VOL_Limit[1]~1_combout\ & (\inst|LR_Limit[2]~0_combout\ & \inst|DIST_Limit[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit[7]~0_combout\,
	datab => \inst|VOL_Limit[1]~1_combout\,
	datac => \inst|LR_Limit[2]~0_combout\,
	datad => \inst|DIST_Limit[1]~0_combout\,
	combout => \inst|EN_Limit[1]~3_combout\);

-- Location: LCCOMB_X73_Y46_N22
\inst|Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~10_combout\ = (\inst|ED_Limit\(6) & ((\inst|process_0~44_combout\ & ((\inst|Add8~9\) # (GND))) # (!\inst|process_0~44_combout\ & (!\inst|Add8~9\)))) # (!\inst|ED_Limit\(6) & ((\inst|process_0~44_combout\ & (!\inst|Add8~9\)) # 
-- (!\inst|process_0~44_combout\ & (\inst|Add8~9\ & VCC))))
-- \inst|Add8~11\ = CARRY((\inst|ED_Limit\(6) & ((\inst|process_0~44_combout\) # (!\inst|Add8~9\))) # (!\inst|ED_Limit\(6) & (\inst|process_0~44_combout\ & !\inst|Add8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(6),
	datab => \inst|process_0~44_combout\,
	datad => VCC,
	cin => \inst|Add8~9\,
	combout => \inst|Add8~10_combout\,
	cout => \inst|Add8~11\);

-- Location: LCCOMB_X73_Y46_N2
\inst|ED_Limit[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[6]~3_combout\ = !\inst|Add8~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add8~10_combout\,
	combout => \inst|ED_Limit[6]~3_combout\);

-- Location: FF_X73_Y46_N3
\inst|ED_Limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit[6]~3_combout\,
	ena => \inst|ED_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(6));

-- Location: LCCOMB_X73_Y46_N16
\inst|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~4_combout\ = ((\inst|ED_Limit\(3) $ (\inst|process_0~44_combout\ $ (\inst|Add8~3\)))) # (GND)
-- \inst|Add8~5\ = CARRY((\inst|ED_Limit\(3) & (\inst|process_0~44_combout\ & !\inst|Add8~3\)) # (!\inst|ED_Limit\(3) & ((\inst|process_0~44_combout\) # (!\inst|Add8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(3),
	datab => \inst|process_0~44_combout\,
	datad => VCC,
	cin => \inst|Add8~3\,
	combout => \inst|Add8~4_combout\,
	cout => \inst|Add8~5\);

-- Location: LCCOMB_X73_Y46_N4
\inst|ED_Limit[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[3]~4_combout\ = !\inst|Add8~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add8~4_combout\,
	combout => \inst|ED_Limit[3]~4_combout\);

-- Location: FF_X73_Y46_N5
\inst|ED_Limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit[3]~4_combout\,
	ena => \inst|ED_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(3));

-- Location: LCCOMB_X73_Y46_N18
\inst|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~6_combout\ = (\inst|ED_Limit\(4) & ((\inst|process_0~44_combout\ & (!\inst|Add8~5\)) # (!\inst|process_0~44_combout\ & (\inst|Add8~5\ & VCC)))) # (!\inst|ED_Limit\(4) & ((\inst|process_0~44_combout\ & ((\inst|Add8~5\) # (GND))) # 
-- (!\inst|process_0~44_combout\ & (!\inst|Add8~5\))))
-- \inst|Add8~7\ = CARRY((\inst|ED_Limit\(4) & (\inst|process_0~44_combout\ & !\inst|Add8~5\)) # (!\inst|ED_Limit\(4) & ((\inst|process_0~44_combout\) # (!\inst|Add8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(4),
	datab => \inst|process_0~44_combout\,
	datad => VCC,
	cin => \inst|Add8~5\,
	combout => \inst|Add8~6_combout\,
	cout => \inst|Add8~7\);

-- Location: FF_X73_Y46_N19
\inst|ED_Limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add8~6_combout\,
	ena => \inst|ED_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(4));

-- Location: LCCOMB_X73_Y46_N10
\inst|process_0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~39_combout\ = (\inst|ED_Limit\(8) & ((\inst|ED_Limit\(5)) # ((\inst|ED_Limit\(4)) # (!\inst|ED_Limit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(5),
	datab => \inst|ED_Limit\(8),
	datac => \inst|ED_Limit\(3),
	datad => \inst|ED_Limit\(4),
	combout => \inst|process_0~39_combout\);

-- Location: LCCOMB_X73_Y46_N30
\inst|process_0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~40_combout\ = (\inst|ED_Limit\(9)) # ((!\inst|ED_Limit\(7) & (!\inst|ED_Limit\(6) & \inst|process_0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(7),
	datab => \inst|ED_Limit\(9),
	datac => \inst|ED_Limit\(6),
	datad => \inst|process_0~39_combout\,
	combout => \inst|process_0~40_combout\);

-- Location: LCCOMB_X73_Y47_N16
\inst|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~1_combout\ = (\inst|Menu_Counter\(1) & (\inst|Menu_Counter\(0) & !\inst|Menu_Counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(1),
	datac => \inst|Menu_Counter\(0),
	datad => \inst|Menu_Counter\(2),
	combout => \inst|Equal8~1_combout\);

-- Location: LCCOMB_X73_Y47_N20
\inst|ED_Limit[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[6]~0_combout\ = (!\inst|process_0~44_combout\ & (((!\inst|Equal8~1_combout\) # (!\inst|process_0~40_combout\)) # (!\inst|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datab => \inst|process_0~40_combout\,
	datac => \inst|process_0~44_combout\,
	datad => \inst|Equal8~1_combout\,
	combout => \inst|ED_Limit[6]~0_combout\);

-- Location: LCCOMB_X73_Y47_N8
\inst|ED_Limit[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[1]~1_combout\ = (\inst|EN_Limit[1]~3_combout\ & !\inst|ED_Limit[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|EN_Limit[1]~3_combout\,
	datad => \inst|ED_Limit[6]~0_combout\,
	combout => \inst|ED_Limit[1]~1_combout\);

-- Location: FF_X73_Y46_N1
\inst|ED_Limit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit[1]~6_combout\,
	ena => \inst|ED_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(1));

-- Location: LCCOMB_X73_Y46_N26
\inst|Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~14_combout\ = (\inst|ED_Limit\(8) & ((\inst|process_0~44_combout\ & (!\inst|Add8~13\)) # (!\inst|process_0~44_combout\ & (\inst|Add8~13\ & VCC)))) # (!\inst|ED_Limit\(8) & ((\inst|process_0~44_combout\ & ((\inst|Add8~13\) # (GND))) # 
-- (!\inst|process_0~44_combout\ & (!\inst|Add8~13\))))
-- \inst|Add8~15\ = CARRY((\inst|ED_Limit\(8) & (\inst|process_0~44_combout\ & !\inst|Add8~13\)) # (!\inst|ED_Limit\(8) & ((\inst|process_0~44_combout\) # (!\inst|Add8~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(8),
	datab => \inst|process_0~44_combout\,
	datad => VCC,
	cin => \inst|Add8~13\,
	combout => \inst|Add8~14_combout\,
	cout => \inst|Add8~15\);

-- Location: FF_X73_Y46_N27
\inst|ED_Limit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add8~14_combout\,
	ena => \inst|ED_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(8));

-- Location: LCCOMB_X73_Y47_N0
\inst|process_0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~41_combout\ = (\inst|Menu_Counter\(1) & (!\inst|Menu_Counter\(2) & (\inst|Menu_Counter\(0) & !\inst|ED_Limit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Menu_Counter\(1),
	datab => \inst|Menu_Counter\(2),
	datac => \inst|Menu_Counter\(0),
	datad => \inst|ED_Limit\(9),
	combout => \inst|process_0~41_combout\);

-- Location: LCCOMB_X73_Y47_N26
\inst|process_0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~44_combout\ = (!\inst|process_0~43_combout\ & (\inst|Equal5~0_combout\ & (!\inst|ED_Limit\(8) & \inst|process_0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~43_combout\,
	datab => \inst|Equal5~0_combout\,
	datac => \inst|ED_Limit\(8),
	datad => \inst|process_0~41_combout\,
	combout => \inst|process_0~44_combout\);

-- Location: LCCOMB_X73_Y46_N28
\inst|Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~16_combout\ = \inst|process_0~44_combout\ $ (\inst|Add8~15\ $ (\inst|ED_Limit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_0~44_combout\,
	datad => \inst|ED_Limit\(9),
	cin => \inst|Add8~15\,
	combout => \inst|Add8~16_combout\);

-- Location: FF_X73_Y46_N29
\inst|ED_Limit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add8~16_combout\,
	ena => \inst|ED_Limit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(9));

-- Location: FF_X72_Y46_N11
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
	ena => \i_pixreg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|hcnt_d\(2));

-- Location: LCCOMB_X72_Y46_N6
\inst|LessThan31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~1_cout\ = CARRY(\i_pixreg|hcnt_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(0),
	datad => VCC,
	cout => \inst|LessThan31~1_cout\);

-- Location: LCCOMB_X72_Y46_N8
\inst|LessThan31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~3_cout\ = CARRY((\i_pixreg|hcnt_d\(1) & (!\inst|ED_Limit\(1) & !\inst|LessThan31~1_cout\)) # (!\i_pixreg|hcnt_d\(1) & ((!\inst|LessThan31~1_cout\) # (!\inst|ED_Limit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(1),
	datab => \inst|ED_Limit\(1),
	datad => VCC,
	cin => \inst|LessThan31~1_cout\,
	cout => \inst|LessThan31~3_cout\);

-- Location: LCCOMB_X72_Y46_N10
\inst|LessThan31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~5_cout\ = CARRY((\inst|ED_Limit\(2) & ((\i_pixreg|hcnt_d\(2)) # (!\inst|LessThan31~3_cout\))) # (!\inst|ED_Limit\(2) & (\i_pixreg|hcnt_d\(2) & !\inst|LessThan31~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(2),
	datab => \i_pixreg|hcnt_d\(2),
	datad => VCC,
	cin => \inst|LessThan31~3_cout\,
	cout => \inst|LessThan31~5_cout\);

-- Location: LCCOMB_X72_Y46_N12
\inst|LessThan31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~7_cout\ = CARRY((\inst|ED_Limit\(3) & (!\i_pixreg|hcnt_d\(3) & !\inst|LessThan31~5_cout\)) # (!\inst|ED_Limit\(3) & ((!\inst|LessThan31~5_cout\) # (!\i_pixreg|hcnt_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(3),
	datab => \i_pixreg|hcnt_d\(3),
	datad => VCC,
	cin => \inst|LessThan31~5_cout\,
	cout => \inst|LessThan31~7_cout\);

-- Location: LCCOMB_X72_Y46_N14
\inst|LessThan31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~9_cout\ = CARRY((\i_pixreg|hcnt_d\(4) & ((!\inst|LessThan31~7_cout\) # (!\inst|ED_Limit\(4)))) # (!\i_pixreg|hcnt_d\(4) & (!\inst|ED_Limit\(4) & !\inst|LessThan31~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(4),
	datab => \inst|ED_Limit\(4),
	datad => VCC,
	cin => \inst|LessThan31~7_cout\,
	cout => \inst|LessThan31~9_cout\);

-- Location: LCCOMB_X72_Y46_N16
\inst|LessThan31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~11_cout\ = CARRY((\inst|ED_Limit\(5) & ((!\inst|LessThan31~9_cout\) # (!\i_pixreg|hcnt_d\(5)))) # (!\inst|ED_Limit\(5) & (!\i_pixreg|hcnt_d\(5) & !\inst|LessThan31~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(5),
	datab => \i_pixreg|hcnt_d\(5),
	datad => VCC,
	cin => \inst|LessThan31~9_cout\,
	cout => \inst|LessThan31~11_cout\);

-- Location: LCCOMB_X72_Y46_N18
\inst|LessThan31~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~13_cout\ = CARRY((\inst|ED_Limit\(6) & ((\i_pixreg|hcnt_d\(6)) # (!\inst|LessThan31~11_cout\))) # (!\inst|ED_Limit\(6) & (\i_pixreg|hcnt_d\(6) & !\inst|LessThan31~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(6),
	datab => \i_pixreg|hcnt_d\(6),
	datad => VCC,
	cin => \inst|LessThan31~11_cout\,
	cout => \inst|LessThan31~13_cout\);

-- Location: LCCOMB_X72_Y46_N20
\inst|LessThan31~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~15_cout\ = CARRY((\inst|ED_Limit\(7) & (!\i_pixreg|hcnt_d\(7) & !\inst|LessThan31~13_cout\)) # (!\inst|ED_Limit\(7) & ((!\inst|LessThan31~13_cout\) # (!\i_pixreg|hcnt_d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(7),
	datab => \i_pixreg|hcnt_d\(7),
	datad => VCC,
	cin => \inst|LessThan31~13_cout\,
	cout => \inst|LessThan31~15_cout\);

-- Location: LCCOMB_X72_Y46_N22
\inst|LessThan31~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~17_cout\ = CARRY((\i_pixreg|hcnt_d\(8) & ((!\inst|LessThan31~15_cout\) # (!\inst|ED_Limit\(8)))) # (!\i_pixreg|hcnt_d\(8) & (!\inst|ED_Limit\(8) & !\inst|LessThan31~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(8),
	datab => \inst|ED_Limit\(8),
	datad => VCC,
	cin => \inst|LessThan31~15_cout\,
	cout => \inst|LessThan31~17_cout\);

-- Location: LCCOMB_X72_Y46_N24
\inst|LessThan31~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan31~18_combout\ = (\i_pixreg|hcnt_d\(9) & (!\inst|LessThan31~17_cout\ & \inst|ED_Limit\(9))) # (!\i_pixreg|hcnt_d\(9) & ((\inst|ED_Limit\(9)) # (!\inst|LessThan31~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|hcnt_d\(9),
	datad => \inst|ED_Limit\(9),
	cin => \inst|LessThan31~17_cout\,
	combout => \inst|LessThan31~18_combout\);

-- Location: LCCOMB_X70_Y45_N16
\inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = (\inst|LessThan23~3_combout\ & (\inst|LessThan46~1_combout\ & (\inst|LessThan26~1_combout\ & \inst|LessThan31~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan23~3_combout\,
	datab => \inst|LessThan46~1_combout\,
	datac => \inst|LessThan26~1_combout\,
	datad => \inst|LessThan31~18_combout\,
	combout => \inst|process_0~6_combout\);

-- Location: LCCOMB_X70_Y45_N10
\inst|pixcode~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~2_combout\ = (!\inst|process_0~6_combout\ & (((!\inst|LessThan25~0_combout\ & \i_pixreg|vcnt_d\(7))) # (!\inst|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~5_combout\,
	datab => \inst|LessThan25~0_combout\,
	datac => \i_pixreg|vcnt_d\(7),
	datad => \inst|process_0~6_combout\,
	combout => \inst|pixcode~2_combout\);

-- Location: LCCOMB_X70_Y45_N22
\inst|pixcode~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~14_combout\ = (\inst|pixcode~2_combout\ & (\i_pixreg|pixcode_single~q\ $ (((\inst|pixcode~13_combout\) # (\inst|process_0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode~13_combout\,
	datab => \i_pixreg|pixcode_single~q\,
	datac => \inst|process_0~18_combout\,
	datad => \inst|pixcode~2_combout\,
	combout => \inst|pixcode~14_combout\);

-- Location: LCCOMB_X68_Y45_N14
\inst|LessThan38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan38~0_combout\ = (\i_pixreg|vcnt_d\(6)) # ((\i_pixreg|vcnt_d\(5) & ((\inst|LessThan44~0_combout\) # (\i_pixreg|vcnt_d\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan44~0_combout\,
	datab => \i_pixreg|vcnt_d\(4),
	datac => \i_pixreg|vcnt_d\(5),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|LessThan38~0_combout\);

-- Location: LCCOMB_X72_Y45_N4
\inst|LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan13~1_cout\ = CARRY(\i_pixreg|hcnt_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(0),
	datad => VCC,
	cout => \inst|LessThan13~1_cout\);

-- Location: LCCOMB_X72_Y45_N6
\inst|LessThan13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan13~3_cout\ = CARRY((\i_pixreg|hcnt_d\(1) & (!\inst|VOL_Limit\(1) & !\inst|LessThan13~1_cout\)) # (!\i_pixreg|hcnt_d\(1) & ((!\inst|LessThan13~1_cout\) # (!\inst|VOL_Limit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(1),
	datab => \inst|VOL_Limit\(1),
	datad => VCC,
	cin => \inst|LessThan13~1_cout\,
	cout => \inst|LessThan13~3_cout\);

-- Location: LCCOMB_X72_Y45_N8
\inst|LessThan13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan13~5_cout\ = CARRY((\inst|VOL_Limit\(2) & ((\i_pixreg|hcnt_d\(2)) # (!\inst|LessThan13~3_cout\))) # (!\inst|VOL_Limit\(2) & (\i_pixreg|hcnt_d\(2) & !\inst|LessThan13~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit\(2),
	datab => \i_pixreg|hcnt_d\(2),
	datad => VCC,
	cin => \inst|LessThan13~3_cout\,
	cout => \inst|LessThan13~5_cout\);

-- Location: LCCOMB_X72_Y45_N10
\inst|LessThan13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan13~7_cout\ = CARRY((\inst|VOL_Limit\(3) & (!\i_pixreg|hcnt_d\(3) & !\inst|LessThan13~5_cout\)) # (!\inst|VOL_Limit\(3) & ((!\inst|LessThan13~5_cout\) # (!\i_pixreg|hcnt_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit\(3),
	datab => \i_pixreg|hcnt_d\(3),
	datad => VCC,
	cin => \inst|LessThan13~5_cout\,
	cout => \inst|LessThan13~7_cout\);

-- Location: LCCOMB_X72_Y45_N12
\inst|LessThan13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan13~9_cout\ = CARRY((\i_pixreg|hcnt_d\(4) & ((!\inst|LessThan13~7_cout\) # (!\inst|VOL_Limit\(4)))) # (!\i_pixreg|hcnt_d\(4) & (!\inst|VOL_Limit\(4) & !\inst|LessThan13~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(4),
	datab => \inst|VOL_Limit\(4),
	datad => VCC,
	cin => \inst|LessThan13~7_cout\,
	cout => \inst|LessThan13~9_cout\);

-- Location: LCCOMB_X72_Y45_N14
\inst|LessThan13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan13~11_cout\ = CARRY((\i_pixreg|hcnt_d\(5) & (\inst|VOL_Limit\(5) & !\inst|LessThan13~9_cout\)) # (!\i_pixreg|hcnt_d\(5) & ((\inst|VOL_Limit\(5)) # (!\inst|LessThan13~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(5),
	datab => \inst|VOL_Limit\(5),
	datad => VCC,
	cin => \inst|LessThan13~9_cout\,
	cout => \inst|LessThan13~11_cout\);

-- Location: LCCOMB_X72_Y45_N16
\inst|LessThan13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan13~13_cout\ = CARRY((\inst|VOL_Limit\(6) & ((\i_pixreg|hcnt_d\(6)) # (!\inst|LessThan13~11_cout\))) # (!\inst|VOL_Limit\(6) & (\i_pixreg|hcnt_d\(6) & !\inst|LessThan13~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit\(6),
	datab => \i_pixreg|hcnt_d\(6),
	datad => VCC,
	cin => \inst|LessThan13~11_cout\,
	cout => \inst|LessThan13~13_cout\);

-- Location: LCCOMB_X72_Y45_N18
\inst|LessThan13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan13~15_cout\ = CARRY((\i_pixreg|hcnt_d\(7) & (!\inst|VOL_Limit\(7) & !\inst|LessThan13~13_cout\)) # (!\i_pixreg|hcnt_d\(7) & ((!\inst|LessThan13~13_cout\) # (!\inst|VOL_Limit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(7),
	datab => \inst|VOL_Limit\(7),
	datad => VCC,
	cin => \inst|LessThan13~13_cout\,
	cout => \inst|LessThan13~15_cout\);

-- Location: LCCOMB_X72_Y45_N20
\inst|LessThan13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan13~16_combout\ = (\i_pixreg|hcnt_d\(8) & (\inst|LessThan13~15_cout\ & \inst|VOL_Limit\(8))) # (!\i_pixreg|hcnt_d\(8) & ((\inst|LessThan13~15_cout\) # (\inst|VOL_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|hcnt_d\(8),
	datad => \inst|VOL_Limit\(8),
	cin => \inst|LessThan13~15_cout\,
	combout => \inst|LessThan13~16_combout\);

-- Location: LCCOMB_X70_Y45_N20
\inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = (((!\inst|LessThan13~16_combout\) # (!\inst|LessThan38~0_combout\)) # (!\inst|process_0~3_combout\)) # (!\inst|LessThan23~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan23~3_combout\,
	datab => \inst|process_0~3_combout\,
	datac => \inst|LessThan38~0_combout\,
	datad => \inst|LessThan13~16_combout\,
	combout => \inst|process_0~4_combout\);

-- Location: LCCOMB_X36_Y72_N12
\inst|pixcode~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~16_combout\ = (\inst|process_0~4_combout\ & ((\inst|pixcode~14_combout\) # (!\inst|pixcode~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixcode~15_combout\,
	datac => \inst|pixcode~14_combout\,
	datad => \inst|process_0~4_combout\,
	combout => \inst|pixcode~16_combout\);

-- Location: FF_X36_Y72_N13
\inst|pixcode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(1));

-- Location: LCCOMB_X70_Y45_N0
\inst|pixcode~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~19_combout\ = (\inst|pixcode~15_combout\ & \inst|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixcode~15_combout\,
	datad => \inst|process_0~4_combout\,
	combout => \inst|pixcode~19_combout\);

-- Location: LCCOMB_X70_Y45_N6
\inst|pixcode~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~18_combout\ = (\inst|pixcode~2_combout\ & (\i_pixreg|pixcode_single~q\ $ (((!\inst|pixcode~13_combout\ & !\inst|process_0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode~13_combout\,
	datab => \i_pixreg|pixcode_single~q\,
	datac => \inst|process_0~18_combout\,
	datad => \inst|pixcode~2_combout\,
	combout => \inst|pixcode~18_combout\);

-- Location: LCCOMB_X70_Y45_N24
\inst|pixcode~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~20_combout\ = (((\inst|process_0~22_combout\ & \inst|process_0~19_combout\)) # (!\inst|pixcode~18_combout\)) # (!\inst|pixcode~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~22_combout\,
	datab => \inst|pixcode~19_combout\,
	datac => \inst|process_0~19_combout\,
	datad => \inst|pixcode~18_combout\,
	combout => \inst|pixcode~20_combout\);

-- Location: FF_X70_Y45_N25
\inst|pixcode[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(7));

-- Location: LCCOMB_X35_Y72_N24
\i_RGB_gen|vga_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~0_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(1)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(6),
	datab => \inst|pixcode\(1),
	datac => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_b~0_combout\);

-- Location: FF_X35_Y72_N25
\i_RGB_gen|vga_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~0_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(7));

-- Location: LCCOMB_X36_Y72_N0
\inst|pixcode~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~21_combout\ = ((\inst|pixcode~15_combout\ & !\inst|pixcode~18_combout\)) # (!\inst|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixcode~15_combout\,
	datac => \inst|pixcode~18_combout\,
	datad => \inst|process_0~4_combout\,
	combout => \inst|pixcode~21_combout\);

-- Location: FF_X36_Y72_N1
\inst|pixcode[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(5));

-- Location: LCCOMB_X36_Y72_N24
\i_RGB_gen|vga_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~1_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(1))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(1),
	datab => \inst|pixcode\(5),
	datad => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_b~1_combout\);

-- Location: FF_X36_Y72_N25
\i_RGB_gen|vga_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~1_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(6));

-- Location: LCCOMB_X35_Y72_N18
\i_RGB_gen|vga_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~2_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(1)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(4),
	datab => \inst|pixcode\(1),
	datac => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_b~2_combout\);

-- Location: FF_X35_Y72_N19
\i_RGB_gen|vga_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~2_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(5));

-- Location: LCCOMB_X70_Y45_N26
\inst|pixcode~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~22_combout\ = \i_pixreg|pixcode_single~q\ $ (((\inst|pixcode~13_combout\) # (\inst|process_0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode~13_combout\,
	datac => \inst|process_0~18_combout\,
	datad => \i_pixreg|pixcode_single~q\,
	combout => \inst|pixcode~22_combout\);

-- Location: LCCOMB_X70_Y45_N2
\inst|pixcode~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~23_combout\ = (\inst|pixcode~19_combout\ & ((\inst|process_0~6_combout\) # ((!\inst|process_0~23_combout\ & \inst|pixcode~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~23_combout\,
	datab => \inst|process_0~6_combout\,
	datac => \inst|pixcode~22_combout\,
	datad => \inst|pixcode~19_combout\,
	combout => \inst|pixcode~23_combout\);

-- Location: FF_X70_Y45_N3
\inst|pixcode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(3));

-- Location: LCCOMB_X36_Y72_N18
\i_RGB_gen|vga_b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~3_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(1))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(1),
	datab => \inst|pixcode\(7),
	datad => \inst|pixcode\(3),
	combout => \i_RGB_gen|vga_b~3_combout\);

-- Location: FF_X36_Y72_N19
\i_RGB_gen|vga_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~3_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(4));

-- Location: LCCOMB_X35_Y72_N28
\i_RGB_gen|vga_b[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b[3]~feeder_combout\ = \i_RGB_gen|vga_b~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_RGB_gen|vga_b~2_combout\,
	combout => \i_RGB_gen|vga_b[3]~feeder_combout\);

-- Location: FF_X35_Y72_N29
\i_RGB_gen|vga_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b[3]~feeder_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(3));

-- Location: FF_X35_Y72_N23
\i_RGB_gen|vga_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \inst|pixcode\(1),
	sload => VCC,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(2));

-- Location: FF_X35_Y72_N17
\i_RGB_gen|vga_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \inst|pixcode\(1),
	sload => VCC,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(1));

-- Location: LCCOMB_X35_Y72_N10
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

-- Location: FF_X35_Y72_N11
\i_RGB_gen|vga_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b[0]~feeder_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(0));

-- Location: LCCOMB_X36_Y72_N2
\inst|pixcode~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~24_combout\ = (\inst|pixcode~15_combout\ & (!\inst|pixcode~18_combout\ & \inst|process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixcode~15_combout\,
	datac => \inst|pixcode~18_combout\,
	datad => \inst|process_0~4_combout\,
	combout => \inst|pixcode~24_combout\);

-- Location: FF_X36_Y72_N3
\inst|pixcode[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(4));

-- Location: LCCOMB_X35_Y72_N4
\i_RGB_gen|vga_g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~0_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(4)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(6),
	datac => \inst|pixcode\(7),
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_g~0_combout\);

-- Location: FF_X35_Y72_N5
\i_RGB_gen|vga_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~0_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(7));

-- Location: LCCOMB_X36_Y72_N20
\i_RGB_gen|vga_g~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~1_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(3))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(3),
	datab => \inst|pixcode\(5),
	datad => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_g~1_combout\);

-- Location: FF_X36_Y72_N21
\i_RGB_gen|vga_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~1_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(6));

-- Location: LCCOMB_X35_Y72_N14
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

-- Location: FF_X35_Y72_N15
\i_RGB_gen|vga_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g[5]~feeder_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(5));

-- Location: LCCOMB_X36_Y72_N22
\i_RGB_gen|vga_g~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~2_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(4)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(3),
	datab => \inst|pixcode\(4),
	datad => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_g~2_combout\);

-- Location: FF_X36_Y72_N23
\i_RGB_gen|vga_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~2_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(4));

-- Location: LCCOMB_X36_Y72_N16
\i_RGB_gen|vga_g~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~3_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(3))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(3),
	datab => \inst|pixcode\(4),
	datad => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_g~3_combout\);

-- Location: FF_X36_Y72_N17
\i_RGB_gen|vga_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~3_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(3));

-- Location: LCCOMB_X35_Y72_N26
\i_RGB_gen|vga_g~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~4_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(4))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(4),
	datab => \inst|pixcode\(1),
	datac => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_g~4_combout\);

-- Location: FF_X35_Y72_N9
\i_RGB_gen|vga_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_RGB_gen|vga_g~4_combout\,
	sload => VCC,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(2));

-- Location: FF_X35_Y72_N27
\i_RGB_gen|vga_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~4_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(1));

-- Location: LCCOMB_X36_Y72_N10
\i_RGB_gen|vga_g~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~5_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(3)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(6),
	datab => \inst|pixcode\(7),
	datad => \inst|pixcode\(3),
	combout => \i_RGB_gen|vga_g~5_combout\);

-- Location: FF_X36_Y72_N11
\i_RGB_gen|vga_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~5_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(0));

-- Location: LCCOMB_X36_Y72_N6
\inst|pixcode~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~17_combout\ = ((\inst|pixcode~15_combout\ & \inst|pixcode~14_combout\)) # (!\inst|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixcode~15_combout\,
	datac => \inst|pixcode~14_combout\,
	datad => \inst|process_0~4_combout\,
	combout => \inst|pixcode~17_combout\);

-- Location: FF_X36_Y72_N7
\inst|pixcode[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(6));

-- Location: LCCOMB_X35_Y72_N12
\i_RGB_gen|vga_r[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[7]~feeder_combout\ = \inst|pixcode\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(6),
	combout => \i_RGB_gen|vga_r[7]~feeder_combout\);

-- Location: FF_X35_Y72_N13
\i_RGB_gen|vga_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[7]~feeder_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(7));

-- Location: LCCOMB_X36_Y72_N28
\i_RGB_gen|vga_r[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r[6]~feeder_combout\ = \inst|pixcode\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pixcode\(5),
	combout => \i_RGB_gen|vga_r[6]~feeder_combout\);

-- Location: FF_X36_Y72_N29
\i_RGB_gen|vga_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[6]~feeder_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(6));

-- Location: LCCOMB_X35_Y72_N0
\i_RGB_gen|vga_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~0_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(6))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(6),
	datac => \inst|pixcode\(7),
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_r~0_combout\);

-- Location: LCCOMB_X35_Y72_N6
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

-- Location: FF_X35_Y72_N7
\i_RGB_gen|vga_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r[5]~feeder_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(5));

-- Location: LCCOMB_X36_Y72_N30
\i_RGB_gen|vga_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~1_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(5)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(3),
	datab => \inst|pixcode\(5),
	datad => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_r~1_combout\);

-- Location: FF_X36_Y72_N31
\i_RGB_gen|vga_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~1_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(4));

-- Location: FF_X35_Y72_N1
\i_RGB_gen|vga_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~0_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(3));

-- Location: LCCOMB_X36_Y72_N8
\i_RGB_gen|vga_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~2_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(5)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(1),
	datab => \inst|pixcode\(5),
	datad => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_r~2_combout\);

-- Location: FF_X36_Y72_N9
\i_RGB_gen|vga_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~2_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(2));

-- Location: LCCOMB_X35_Y72_N2
\i_RGB_gen|vga_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~3_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(6))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(6),
	datab => \inst|pixcode\(1),
	datac => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_r~3_combout\);

-- Location: FF_X35_Y72_N3
\i_RGB_gen|vga_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~3_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_r\(1));

-- Location: LCCOMB_X36_Y72_N26
\i_RGB_gen|vga_r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~4_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(5)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(6),
	datab => \inst|pixcode\(5),
	datad => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_r~4_combout\);

-- Location: FF_X36_Y72_N27
\i_RGB_gen|vga_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~4_combout\,
	ena => \i_ce_gen|counter\(0),
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


