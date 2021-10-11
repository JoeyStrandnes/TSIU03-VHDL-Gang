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

-- DATE "10/11/2021 17:02:42"

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
SIGNAL \inst|Add6~0_combout\ : std_logic;
SIGNAL \inst|Add6~1\ : std_logic;
SIGNAL \inst|Add6~2_combout\ : std_logic;
SIGNAL \inst|Add6~3\ : std_logic;
SIGNAL \inst|Add6~4_combout\ : std_logic;
SIGNAL \inst|Add6~5\ : std_logic;
SIGNAL \inst|Add6~6_combout\ : std_logic;
SIGNAL \inst|LessThan5~1_cout\ : std_logic;
SIGNAL \inst|LessThan5~3_cout\ : std_logic;
SIGNAL \inst|LessThan5~5_cout\ : std_logic;
SIGNAL \inst|LessThan5~7_cout\ : std_logic;
SIGNAL \inst|LessThan5~9_cout\ : std_logic;
SIGNAL \inst|LessThan5~11_cout\ : std_logic;
SIGNAL \inst|LessThan5~13_cout\ : std_logic;
SIGNAL \inst|LessThan5~15_cout\ : std_logic;
SIGNAL \inst|LessThan5~16_combout\ : std_logic;
SIGNAL \inst|LessThan16~1_cout\ : std_logic;
SIGNAL \inst|LessThan16~3_cout\ : std_logic;
SIGNAL \inst|LessThan16~5_cout\ : std_logic;
SIGNAL \inst|LessThan16~7_cout\ : std_logic;
SIGNAL \inst|LessThan16~9_cout\ : std_logic;
SIGNAL \inst|LessThan16~11_cout\ : std_logic;
SIGNAL \inst|LessThan16~13_cout\ : std_logic;
SIGNAL \inst|LessThan16~15_cout\ : std_logic;
SIGNAL \inst|LessThan16~17_cout\ : std_logic;
SIGNAL \inst|LessThan16~18_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add3~13\ : std_logic;
SIGNAL \inst|Add3~14_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~0_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~1\ : std_logic;
SIGNAL \i_pixreg|Add0~2_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~3\ : std_logic;
SIGNAL \i_pixreg|Add0~4_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~5\ : std_logic;
SIGNAL \i_pixreg|Add0~6_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~7\ : std_logic;
SIGNAL \i_pixreg|Add0~8_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~9\ : std_logic;
SIGNAL \i_pixreg|Add0~10_combout\ : std_logic;
SIGNAL \i_pixreg|Add0~11\ : std_logic;
SIGNAL \i_pixreg|Add0~12_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~0_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~1\ : std_logic;
SIGNAL \i_pixreg|Add1~2_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~3\ : std_logic;
SIGNAL \i_pixreg|Add1~4_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~5\ : std_logic;
SIGNAL \i_pixreg|Add1~6_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~7\ : std_logic;
SIGNAL \i_pixreg|Add1~8_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~9\ : std_logic;
SIGNAL \i_pixreg|Add1~10_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~11\ : std_logic;
SIGNAL \i_pixreg|Add1~12_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~13\ : std_logic;
SIGNAL \i_pixreg|Add1~14_combout\ : std_logic;
SIGNAL \i_pixreg|Add1~15\ : std_logic;
SIGNAL \i_pixreg|Add1~16_combout\ : std_logic;
SIGNAL \inst|color[5]~14_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~16_combout\ : std_logic;
SIGNAL \inst|counter[5]~27_combout\ : std_logic;
SIGNAL \inst|counter[9]~35_combout\ : std_logic;
SIGNAL \inst|counter[13]~43_combout\ : std_logic;
SIGNAL \inst|counter[16]~49_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|process_0~10_combout\ : std_logic;
SIGNAL \inst|LessThan10~0_combout\ : std_logic;
SIGNAL \inst|process_0~11_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \i_pixreg|pixcode_single~q\ : std_logic;
SIGNAL \inst|process_0~19_combout\ : std_logic;
SIGNAL \inst|pixcode~21_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Add3~19_combout\ : std_logic;
SIGNAL \inst|LessThan23~0_combout\ : std_logic;
SIGNAL \inst|LessThan23~1_combout\ : std_logic;
SIGNAL \inst|LessThan22~0_combout\ : std_logic;
SIGNAL \inst|Add4~25_combout\ : std_logic;
SIGNAL \inst|ED_Limit~8_combout\ : std_logic;
SIGNAL \inst|ED_Limit~10_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~7_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~8_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~9_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~10_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~11_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~12_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~13_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~14_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~15_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~16_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~17_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~18_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~19_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~20_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~21_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~22_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~23_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~24_combout\ : std_logic;
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
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|Number[0]~0_combout\ : std_logic;
SIGNAL \inst|color[0]~18_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~1_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~2_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|shiftreg~2_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~232_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~233_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~234_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~235_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~236_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~237_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~238_combout\ : std_logic;
SIGNAL \i_pixreg|Mux0~239_combout\ : std_logic;
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
SIGNAL \i_pixcounter|hcnti~0_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \i_ce_gen|counter[0]~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~1\ : std_logic;
SIGNAL \i_pixcounter|Add0~3\ : std_logic;
SIGNAL \i_pixcounter|Add0~5\ : std_logic;
SIGNAL \i_pixcounter|Add0~6_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~2_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~7\ : std_logic;
SIGNAL \i_pixcounter|Add0~9\ : std_logic;
SIGNAL \i_pixcounter|Add0~10_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~11\ : std_logic;
SIGNAL \i_pixcounter|Add0~13\ : std_logic;
SIGNAL \i_pixcounter|Add0~14_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~15\ : std_logic;
SIGNAL \i_pixcounter|Add0~17\ : std_logic;
SIGNAL \i_pixcounter|Add0~18_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~1_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~1_combout\ : std_logic;
SIGNAL \i_pixcounter|Equal0~2_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~2_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~4_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~4_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~3_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~1_combout\ : std_logic;
SIGNAL \i_hs_gen|process_0~0_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~8_combout\ : std_logic;
SIGNAL \i_pixcounter|hcnti~5_combout\ : std_logic;
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
SIGNAL \i_linecounter|vcnti[1]~12_combout\ : std_logic;
SIGNAL \i_pixcounter|Add0~12_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~2_combout\ : std_logic;
SIGNAL \i_linecounter|process_0~3_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~0_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[5]~21\ : std_logic;
SIGNAL \i_linecounter|vcnti[6]~22_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[6]~23\ : std_logic;
SIGNAL \i_linecounter|vcnti[7]~25\ : std_logic;
SIGNAL \i_linecounter|vcnti[8]~27\ : std_logic;
SIGNAL \i_linecounter|vcnti[9]~28_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[7]~24_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~1_combout\ : std_logic;
SIGNAL \i_linecounter|LessThan0~2_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[0]~11\ : std_logic;
SIGNAL \i_linecounter|vcnti[1]~13\ : std_logic;
SIGNAL \i_linecounter|vcnti[2]~15\ : std_logic;
SIGNAL \i_linecounter|vcnti[3]~16_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[3]~17\ : std_logic;
SIGNAL \i_linecounter|vcnti[4]~18_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[4]~19\ : std_logic;
SIGNAL \i_linecounter|vcnti[5]~20_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~0_combout\ : std_logic;
SIGNAL \i_vs_gen|process_0~3_combout\ : std_logic;
SIGNAL \i_vs_gen|vsync~q\ : std_logic;
SIGNAL \i_blank5~0_combout\ : std_logic;
SIGNAL \i_blank5~q\ : std_logic;
SIGNAL \i_vs3~q\ : std_logic;
SIGNAL \i_vs4~feeder_combout\ : std_logic;
SIGNAL \i_vs4~q\ : std_logic;
SIGNAL \i_linecounter|vcnti[8]~26_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~0_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~1_combout\ : std_logic;
SIGNAL \iBlank_gen|blank~2_combout\ : std_logic;
SIGNAL \i_blank2~q\ : std_logic;
SIGNAL \i_blank4~feeder_combout\ : std_logic;
SIGNAL \i_blank4~q\ : std_logic;
SIGNAL \i_blank3~feeder_combout\ : std_logic;
SIGNAL \i_blank3~q\ : std_logic;
SIGNAL \i_pixreg|counter[0]~1_combout\ : std_logic;
SIGNAL \i_pixreg|counter[1]~0_combout\ : std_logic;
SIGNAL \i_pixreg|Equal0~0_combout\ : std_logic;
SIGNAL \inst|LessThan9~0_combout\ : std_logic;
SIGNAL \inst|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|process_0~16_combout\ : std_logic;
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
SIGNAL \inst|counter[14]~46\ : std_logic;
SIGNAL \inst|counter[15]~48\ : std_logic;
SIGNAL \inst|counter[16]~50\ : std_logic;
SIGNAL \inst|counter[17]~51_combout\ : std_logic;
SIGNAL \inst|counter[17]~52\ : std_logic;
SIGNAL \inst|counter[18]~53_combout\ : std_logic;
SIGNAL \inst|counter[18]~54\ : std_logic;
SIGNAL \inst|counter[19]~55_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|counter[1]~19_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|counter[15]~47_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|counter[7]~31_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|VOL_Limit~5_combout\ : std_logic;
SIGNAL \inst|LR_Limit[2]~0_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add3~22_combout\ : std_logic;
SIGNAL \inst|Add1~1_cout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[7]~1_combout\ : std_logic;
SIGNAL \inst|VOL_Limit~4_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[5]~3_combout\ : std_logic;
SIGNAL \inst|LessThan21~0_combout\ : std_logic;
SIGNAL \inst|LessThan21~1_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[8]~0_combout\ : std_logic;
SIGNAL \inst|VOL_Limit[6]~2_combout\ : std_logic;
SIGNAL \inst|Add3~23_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|LessThan1~15_cout\ : std_logic;
SIGNAL \inst|LessThan1~16_combout\ : std_logic;
SIGNAL \inst|process_0~15_combout\ : std_logic;
SIGNAL \inst|process_0~17_combout\ : std_logic;
SIGNAL \i_linecounter|vcnti[2]~14_combout\ : std_logic;
SIGNAL \i_pixreg|vcnt_d[0]~feeder_combout\ : std_logic;
SIGNAL \inst|LessThan13~0_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|LessThan14~0_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|LessThan15~0_combout\ : std_logic;
SIGNAL \inst|LessThan15~1_combout\ : std_logic;
SIGNAL \inst|process_0~18_combout\ : std_logic;
SIGNAL \PS2_DAT~input_o\ : std_logic;
SIGNAL \PS2_CLK~input_o\ : std_logic;
SIGNAL \inst1|PS2_CLK2~feeder_combout\ : std_logic;
SIGNAL \inst1|PS2_CLK2~q\ : std_logic;
SIGNAL \inst1|shiftreg~6_combout\ : std_logic;
SIGNAL \inst1|PS2_CLK2_old~q\ : std_logic;
SIGNAL \inst1|shiftreg[8]~1_combout\ : std_logic;
SIGNAL \inst1|shiftreg~9_combout\ : std_logic;
SIGNAL \inst1|shiftreg[0]~8_combout\ : std_logic;
SIGNAL \inst1|shiftreg~10_combout\ : std_logic;
SIGNAL \inst1|shiftreg~5_combout\ : std_logic;
SIGNAL \inst1|shiftreg~3_combout\ : std_logic;
SIGNAL \inst1|shiftreg~4_combout\ : std_logic;
SIGNAL \inst1|shiftreg~0_combout\ : std_logic;
SIGNAL \inst1|shiftreg~7_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|break~0_combout\ : std_logic;
SIGNAL \inst1|break~1_combout\ : std_logic;
SIGNAL \inst1|break~q\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|Number[0]~1_combout\ : std_logic;
SIGNAL \inst1|Number[0]~2_combout\ : std_logic;
SIGNAL \inst1|Number[0]~3_combout\ : std_logic;
SIGNAL \inst|process_0~20_combout\ : std_logic;
SIGNAL \inst|LessThan19~0_combout\ : std_logic;
SIGNAL \inst|process_0~21_combout\ : std_logic;
SIGNAL \inst|pixcode~10_combout\ : std_logic;
SIGNAL \inst|pixcode~14_combout\ : std_logic;
SIGNAL \inst1|Number~4_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|pixcode[6]~0_combout\ : std_logic;
SIGNAL \inst|process_0~13_combout\ : std_logic;
SIGNAL \inst|process_0~12_combout\ : std_logic;
SIGNAL \inst|process_0~14_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|Add4~24_combout\ : std_logic;
SIGNAL \inst|Add4~15\ : std_logic;
SIGNAL \inst|Add4~16_combout\ : std_logic;
SIGNAL \inst|EN_Limit[8]~4_combout\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|EN_Limit[6]~6_combout\ : std_logic;
SIGNAL \inst|LessThan23~2_combout\ : std_logic;
SIGNAL \inst|Add4~17\ : std_logic;
SIGNAL \inst|Add4~18_combout\ : std_logic;
SIGNAL \inst|EN_Limit[9]~3_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|ED_Limit~9_combout\ : std_logic;
SIGNAL \inst|ED_Limit[5]~6_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|ED_Limit~7_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|ED_Limit~5_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|ED_Limit[5]~4_combout\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|ED_Limit[6]~3_combout\ : std_logic;
SIGNAL \inst|LessThan22~1_combout\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|ED_Limit[7]~2_combout\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|ED_Limit[8]~1_combout\ : std_logic;
SIGNAL \inst|Add2~17\ : std_logic;
SIGNAL \inst|Add2~18_combout\ : std_logic;
SIGNAL \inst|ED_Limit[9]~0_combout\ : std_logic;
SIGNAL \inst|LessThan22~2_combout\ : std_logic;
SIGNAL \inst|EN_Limit[3]~2_combout\ : std_logic;
SIGNAL \inst|EN_Limit[3]~7_combout\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|Add4~22_combout\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|Add4~21_combout\ : std_logic;
SIGNAL \inst|Add4~9\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|Add4~20_combout\ : std_logic;
SIGNAL \inst|Add4~11\ : std_logic;
SIGNAL \inst|Add4~13\ : std_logic;
SIGNAL \inst|Add4~14_combout\ : std_logic;
SIGNAL \inst|EN_Limit[7]~5_combout\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|Add4~23_combout\ : std_logic;
SIGNAL \inst|LessThan12~1_cout\ : std_logic;
SIGNAL \inst|LessThan12~3_cout\ : std_logic;
SIGNAL \inst|LessThan12~5_cout\ : std_logic;
SIGNAL \inst|LessThan12~7_cout\ : std_logic;
SIGNAL \inst|LessThan12~9_cout\ : std_logic;
SIGNAL \inst|LessThan12~11_cout\ : std_logic;
SIGNAL \inst|LessThan12~13_cout\ : std_logic;
SIGNAL \inst|LessThan12~15_cout\ : std_logic;
SIGNAL \inst|LessThan12~17_cout\ : std_logic;
SIGNAL \inst|LessThan12~18_combout\ : std_logic;
SIGNAL \inst|process_0~9_combout\ : std_logic;
SIGNAL \inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|process_0~7_combout\ : std_logic;
SIGNAL \inst|process_0~8_combout\ : std_logic;
SIGNAL \inst|Add3~16_combout\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add3~21_combout\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~20_combout\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add3~18_combout\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|Add3~17_combout\ : std_logic;
SIGNAL \inst|LessThan4~1_cout\ : std_logic;
SIGNAL \inst|LessThan4~3_cout\ : std_logic;
SIGNAL \inst|LessThan4~5_cout\ : std_logic;
SIGNAL \inst|LessThan4~7_cout\ : std_logic;
SIGNAL \inst|LessThan4~9_cout\ : std_logic;
SIGNAL \inst|LessThan4~11_cout\ : std_logic;
SIGNAL \inst|LessThan4~13_cout\ : std_logic;
SIGNAL \inst|LessThan4~14_combout\ : std_logic;
SIGNAL \inst|pixcode~6_combout\ : std_logic;
SIGNAL \inst|pixcode~5_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|pixcode~7_combout\ : std_logic;
SIGNAL \inst|pixcode[3]~8_combout\ : std_logic;
SIGNAL \inst|color[1]~6_combout\ : std_logic;
SIGNAL \inst|color[1]~7\ : std_logic;
SIGNAL \inst|color[2]~9\ : std_logic;
SIGNAL \inst|color[3]~10_combout\ : std_logic;
SIGNAL \inst|color[3]~11\ : std_logic;
SIGNAL \inst|color[4]~13\ : std_logic;
SIGNAL \inst|color[5]~15\ : std_logic;
SIGNAL \inst|color[6]~16_combout\ : std_logic;
SIGNAL \inst|pixcode~13_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~0_combout\ : std_logic;
SIGNAL \inst|pixcode~9_combout\ : std_logic;
SIGNAL \inst|pixcode~11_combout\ : std_logic;
SIGNAL \inst|pixcode~15_combout\ : std_logic;
SIGNAL \inst|pixcode~27_combout\ : std_logic;
SIGNAL \inst|pixcode~16_combout\ : std_logic;
SIGNAL \inst|pixcode~18_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~1_combout\ : std_logic;
SIGNAL \inst|color[4]~12_combout\ : std_logic;
SIGNAL \inst|pixcode~19_combout\ : std_logic;
SIGNAL \inst|pixcode~17_combout\ : std_logic;
SIGNAL \inst|pixcode~20_combout\ : std_logic;
SIGNAL \inst|pixcode~12_combout\ : std_logic;
SIGNAL \inst|pixcode~26_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~2_combout\ : std_logic;
SIGNAL \inst|pixcode~22_combout\ : std_logic;
SIGNAL \inst|pixcode~23_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~3_combout\ : std_logic;
SIGNAL \inst|color[2]~8_combout\ : std_logic;
SIGNAL \inst|pixcode~24_combout\ : std_logic;
SIGNAL \inst|pixcode~25_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~4_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~5_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~6_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_b~7_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~0_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~1_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~2_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~3_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~4_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~5_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~6_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_g~7_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[7]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r[6]~feeder_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~0_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~1_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~2_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~3_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~4_combout\ : std_logic;
SIGNAL \i_RGB_gen|vga_r~5_combout\ : std_logic;
SIGNAL \inst|EN_Limit\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|pixcode\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ED_Limit\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_g\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Number\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_pixcounter|hcnti\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|shiftreg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|color\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_pixreg|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|LR_Limit\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_RGB_gen|vga_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_ce_gen|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_pixreg|hcnt_d\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_pixreg|vcnt_d\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|VOL_Limit\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_linecounter|vcnti\ : std_logic_vector(9 DOWNTO 0);

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

-- Location: LCCOMB_X42_Y34_N22
\inst|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~0_combout\ = (\inst|LR_Limit\(4) & (\inst|LR_Limit\(5) $ (VCC))) # (!\inst|LR_Limit\(4) & (\inst|LR_Limit\(5) & VCC))
-- \inst|Add6~1\ = CARRY((\inst|LR_Limit\(4) & \inst|LR_Limit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(4),
	datab => \inst|LR_Limit\(5),
	datad => VCC,
	combout => \inst|Add6~0_combout\,
	cout => \inst|Add6~1\);

-- Location: LCCOMB_X42_Y34_N24
\inst|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~2_combout\ = (\inst|LR_Limit\(6) & ((\inst|Add6~1\) # (GND))) # (!\inst|LR_Limit\(6) & (!\inst|Add6~1\))
-- \inst|Add6~3\ = CARRY((\inst|LR_Limit\(6)) # (!\inst|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LR_Limit\(6),
	datad => VCC,
	cin => \inst|Add6~1\,
	combout => \inst|Add6~2_combout\,
	cout => \inst|Add6~3\);

-- Location: LCCOMB_X42_Y34_N26
\inst|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~4_combout\ = (\inst|LR_Limit\(7) & (!\inst|Add6~3\ & VCC)) # (!\inst|LR_Limit\(7) & (\inst|Add6~3\ $ (GND)))
-- \inst|Add6~5\ = CARRY((!\inst|LR_Limit\(7) & !\inst|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LR_Limit\(7),
	datad => VCC,
	cin => \inst|Add6~3\,
	combout => \inst|Add6~4_combout\,
	cout => \inst|Add6~5\);

-- Location: LCCOMB_X42_Y34_N28
\inst|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~6_combout\ = \inst|Add6~5\ $ (\inst|LR_Limit\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|LR_Limit\(8),
	cin => \inst|Add6~5\,
	combout => \inst|Add6~6_combout\);

-- Location: LCCOMB_X42_Y34_N2
\inst|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~1_cout\ = CARRY(\i_pixreg|hcnt_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|hcnt_d\(0),
	datad => VCC,
	cout => \inst|LessThan5~1_cout\);

-- Location: LCCOMB_X42_Y34_N4
\inst|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~3_cout\ = CARRY((\inst|LR_Limit\(1) & (!\i_pixreg|hcnt_d\(1) & !\inst|LessThan5~1_cout\)) # (!\inst|LR_Limit\(1) & ((!\inst|LessThan5~1_cout\) # (!\i_pixreg|hcnt_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(1),
	datab => \i_pixreg|hcnt_d\(1),
	datad => VCC,
	cin => \inst|LessThan5~1_cout\,
	cout => \inst|LessThan5~3_cout\);

-- Location: LCCOMB_X42_Y34_N6
\inst|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~5_cout\ = CARRY((\inst|LR_Limit\(2) & ((\i_pixreg|hcnt_d\(2)) # (!\inst|LessThan5~3_cout\))) # (!\inst|LR_Limit\(2) & (\i_pixreg|hcnt_d\(2) & !\inst|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(2),
	datab => \i_pixreg|hcnt_d\(2),
	datad => VCC,
	cin => \inst|LessThan5~3_cout\,
	cout => \inst|LessThan5~5_cout\);

-- Location: LCCOMB_X42_Y34_N8
\inst|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~7_cout\ = CARRY((\inst|LR_Limit\(3) & (!\i_pixreg|hcnt_d\(3) & !\inst|LessThan5~5_cout\)) # (!\inst|LR_Limit\(3) & ((!\inst|LessThan5~5_cout\) # (!\i_pixreg|hcnt_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(3),
	datab => \i_pixreg|hcnt_d\(3),
	datad => VCC,
	cin => \inst|LessThan5~5_cout\,
	cout => \inst|LessThan5~7_cout\);

-- Location: LCCOMB_X42_Y34_N10
\inst|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~9_cout\ = CARRY((\inst|LR_Limit\(4) & ((\i_pixreg|hcnt_d\(4)) # (!\inst|LessThan5~7_cout\))) # (!\inst|LR_Limit\(4) & (\i_pixreg|hcnt_d\(4) & !\inst|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(4),
	datab => \i_pixreg|hcnt_d\(4),
	datad => VCC,
	cin => \inst|LessThan5~7_cout\,
	cout => \inst|LessThan5~9_cout\);

-- Location: LCCOMB_X42_Y34_N12
\inst|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~11_cout\ = CARRY((\inst|Add6~0_combout\ & ((!\inst|LessThan5~9_cout\) # (!\i_pixreg|hcnt_d\(5)))) # (!\inst|Add6~0_combout\ & (!\i_pixreg|hcnt_d\(5) & !\inst|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~0_combout\,
	datab => \i_pixreg|hcnt_d\(5),
	datad => VCC,
	cin => \inst|LessThan5~9_cout\,
	cout => \inst|LessThan5~11_cout\);

-- Location: LCCOMB_X42_Y34_N14
\inst|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~13_cout\ = CARRY((\i_pixreg|hcnt_d\(6) & ((!\inst|LessThan5~11_cout\) # (!\inst|Add6~2_combout\))) # (!\i_pixreg|hcnt_d\(6) & (!\inst|Add6~2_combout\ & !\inst|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(6),
	datab => \inst|Add6~2_combout\,
	datad => VCC,
	cin => \inst|LessThan5~11_cout\,
	cout => \inst|LessThan5~13_cout\);

-- Location: LCCOMB_X42_Y34_N16
\inst|LessThan5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~15_cout\ = CARRY((\inst|Add6~4_combout\ & ((!\inst|LessThan5~13_cout\) # (!\i_pixreg|hcnt_d\(7)))) # (!\inst|Add6~4_combout\ & (!\i_pixreg|hcnt_d\(7) & !\inst|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~4_combout\,
	datab => \i_pixreg|hcnt_d\(7),
	datad => VCC,
	cin => \inst|LessThan5~13_cout\,
	cout => \inst|LessThan5~15_cout\);

-- Location: LCCOMB_X42_Y34_N18
\inst|LessThan5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan5~16_combout\ = (\i_pixreg|hcnt_d\(8) & (\inst|LessThan5~15_cout\ & \inst|Add6~6_combout\)) # (!\i_pixreg|hcnt_d\(8) & ((\inst|LessThan5~15_cout\) # (\inst|Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|hcnt_d\(8),
	datad => \inst|Add6~6_combout\,
	cin => \inst|LessThan5~15_cout\,
	combout => \inst|LessThan5~16_combout\);

-- Location: LCCOMB_X41_Y34_N8
\inst|LessThan16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~1_cout\ = CARRY((!\i_pixreg|hcnt_d\(0) & !\inst|ED_Limit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(0),
	datab => \inst|ED_Limit\(0),
	datad => VCC,
	cout => \inst|LessThan16~1_cout\);

-- Location: LCCOMB_X41_Y34_N10
\inst|LessThan16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~3_cout\ = CARRY((\i_pixreg|hcnt_d\(1) & ((\inst|ED_Limit\(1)) # (!\inst|LessThan16~1_cout\))) # (!\i_pixreg|hcnt_d\(1) & (\inst|ED_Limit\(1) & !\inst|LessThan16~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(1),
	datab => \inst|ED_Limit\(1),
	datad => VCC,
	cin => \inst|LessThan16~1_cout\,
	cout => \inst|LessThan16~3_cout\);

-- Location: LCCOMB_X41_Y34_N12
\inst|LessThan16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~5_cout\ = CARRY((\inst|ED_Limit\(2) & (!\i_pixreg|hcnt_d\(2) & !\inst|LessThan16~3_cout\)) # (!\inst|ED_Limit\(2) & ((!\inst|LessThan16~3_cout\) # (!\i_pixreg|hcnt_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(2),
	datab => \i_pixreg|hcnt_d\(2),
	datad => VCC,
	cin => \inst|LessThan16~3_cout\,
	cout => \inst|LessThan16~5_cout\);

-- Location: LCCOMB_X41_Y34_N14
\inst|LessThan16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~7_cout\ = CARRY((\i_pixreg|hcnt_d\(3) & ((\inst|ED_Limit\(3)) # (!\inst|LessThan16~5_cout\))) # (!\i_pixreg|hcnt_d\(3) & (\inst|ED_Limit\(3) & !\inst|LessThan16~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \inst|ED_Limit\(3),
	datad => VCC,
	cin => \inst|LessThan16~5_cout\,
	cout => \inst|LessThan16~7_cout\);

-- Location: LCCOMB_X41_Y34_N16
\inst|LessThan16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~9_cout\ = CARRY((\i_pixreg|hcnt_d\(4) & (\inst|ED_Limit\(4) & !\inst|LessThan16~7_cout\)) # (!\i_pixreg|hcnt_d\(4) & ((\inst|ED_Limit\(4)) # (!\inst|LessThan16~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(4),
	datab => \inst|ED_Limit\(4),
	datad => VCC,
	cin => \inst|LessThan16~7_cout\,
	cout => \inst|LessThan16~9_cout\);

-- Location: LCCOMB_X41_Y34_N18
\inst|LessThan16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~11_cout\ = CARRY((\i_pixreg|hcnt_d\(5) & ((!\inst|LessThan16~9_cout\) # (!\inst|ED_Limit\(5)))) # (!\i_pixreg|hcnt_d\(5) & (!\inst|ED_Limit\(5) & !\inst|LessThan16~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(5),
	datab => \inst|ED_Limit\(5),
	datad => VCC,
	cin => \inst|LessThan16~9_cout\,
	cout => \inst|LessThan16~11_cout\);

-- Location: LCCOMB_X41_Y34_N20
\inst|LessThan16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~13_cout\ = CARRY((\i_pixreg|hcnt_d\(6) & (!\inst|ED_Limit\(6) & !\inst|LessThan16~11_cout\)) # (!\i_pixreg|hcnt_d\(6) & ((!\inst|LessThan16~11_cout\) # (!\inst|ED_Limit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(6),
	datab => \inst|ED_Limit\(6),
	datad => VCC,
	cin => \inst|LessThan16~11_cout\,
	cout => \inst|LessThan16~13_cout\);

-- Location: LCCOMB_X41_Y34_N22
\inst|LessThan16~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~15_cout\ = CARRY((\i_pixreg|hcnt_d\(7) & ((\inst|ED_Limit\(7)) # (!\inst|LessThan16~13_cout\))) # (!\i_pixreg|hcnt_d\(7) & (\inst|ED_Limit\(7) & !\inst|LessThan16~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(7),
	datab => \inst|ED_Limit\(7),
	datad => VCC,
	cin => \inst|LessThan16~13_cout\,
	cout => \inst|LessThan16~15_cout\);

-- Location: LCCOMB_X41_Y34_N24
\inst|LessThan16~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~17_cout\ = CARRY((\inst|ED_Limit\(8) & ((!\inst|LessThan16~15_cout\) # (!\i_pixreg|hcnt_d\(8)))) # (!\inst|ED_Limit\(8) & (!\i_pixreg|hcnt_d\(8) & !\inst|LessThan16~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(8),
	datab => \i_pixreg|hcnt_d\(8),
	datad => VCC,
	cin => \inst|LessThan16~15_cout\,
	cout => \inst|LessThan16~17_cout\);

-- Location: LCCOMB_X41_Y34_N26
\inst|LessThan16~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan16~18_combout\ = (\i_pixreg|hcnt_d\(9) & (\inst|ED_Limit\(9) & \inst|LessThan16~17_cout\)) # (!\i_pixreg|hcnt_d\(9) & ((\inst|ED_Limit\(9)) # (\inst|LessThan16~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(9),
	datab => \inst|ED_Limit\(9),
	cin => \inst|LessThan16~17_cout\,
	combout => \inst|LessThan16~18_combout\);

-- Location: FF_X39_Y34_N13
\inst|color[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|color[5]~14_combout\,
	ena => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|color\(5));

-- Location: LCCOMB_X43_Y34_N8
\inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = \inst|LR_Limit\(1) $ (GND)
-- \inst|Add3~1\ = CARRY(!\inst|LR_Limit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(1),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X43_Y34_N16
\inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|LR_Limit\(5) & (\inst|Add3~7\ $ (GND))) # (!\inst|LR_Limit\(5) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|LR_Limit\(5) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(5),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X43_Y34_N20
\inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = (\inst|LR_Limit\(7) & (!\inst|Add3~11\ & VCC)) # (!\inst|LR_Limit\(7) & (\inst|Add3~11\ $ (GND)))
-- \inst|Add3~13\ = CARRY((!\inst|LR_Limit\(7) & !\inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(7),
	datad => VCC,
	cin => \inst|Add3~11\,
	combout => \inst|Add3~12_combout\,
	cout => \inst|Add3~13\);

-- Location: LCCOMB_X43_Y34_N22
\inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~14_combout\ = \inst|Add3~13\ $ (\inst|LR_Limit\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|LR_Limit\(8),
	cin => \inst|Add3~13\,
	combout => \inst|Add3~14_combout\);

-- Location: FF_X38_Y33_N13
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

-- Location: FF_X38_Y34_N23
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

-- Location: FF_X38_Y34_N31
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

-- Location: FF_X38_Y33_N7
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

-- Location: LCCOMB_X39_Y33_N12
\inst|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = \inst|EN_Limit\(0) $ (GND)
-- \inst|Add4~1\ = CARRY(!\inst|EN_Limit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(0),
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X40_Y34_N0
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|ED_Limit\(0) $ (GND)
-- \inst|Add2~1\ = CARRY(!\inst|ED_Limit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X40_Y34_N4
\inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|ED_Limit\(2) & (!\inst|Add2~3\ & VCC)) # (!\inst|ED_Limit\(2) & (\inst|Add2~3\ $ (GND)))
-- \inst|Add2~5\ = CARRY((!\inst|ED_Limit\(2) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X42_Y33_N20
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|VOL_Limit\(3) & (!\inst|Add1~1_cout\)) # (!\inst|VOL_Limit\(3) & (\inst|Add1~1_cout\ & VCC))
-- \inst|Add1~3\ = CARRY((\inst|VOL_Limit\(3) & !\inst|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|VOL_Limit\(3),
	datad => VCC,
	cin => \inst|Add1~1_cout\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X42_Y33_N22
\inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|VOL_Limit\(4) & (\inst|Add1~3\ $ (GND))) # (!\inst|VOL_Limit\(4) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|VOL_Limit\(4) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|VOL_Limit\(4),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X42_Y33_N26
\inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|VOL_Limit\(6) & (!\inst|Add1~7\ & VCC)) # (!\inst|VOL_Limit\(6) & (\inst|Add1~7\ $ (GND)))
-- \inst|Add1~9\ = CARRY((!\inst|VOL_Limit\(6) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit\(6),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X42_Y33_N28
\inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|VOL_Limit\(7) & ((\inst|Add1~9\) # (GND))) # (!\inst|VOL_Limit\(7) & (!\inst|Add1~9\))
-- \inst|Add1~11\ = CARRY((\inst|VOL_Limit\(7)) # (!\inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|VOL_Limit\(7),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X42_Y33_N30
\inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = \inst|Add1~11\ $ (!\inst|VOL_Limit\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|VOL_Limit\(8),
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\);

-- Location: LCCOMB_X45_Y36_N0
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

-- Location: LCCOMB_X45_Y36_N2
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

-- Location: LCCOMB_X45_Y36_N4
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

-- Location: LCCOMB_X45_Y36_N6
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

-- Location: LCCOMB_X45_Y36_N8
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

-- Location: LCCOMB_X45_Y36_N10
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

-- Location: LCCOMB_X45_Y36_N12
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

-- Location: LCCOMB_X45_Y36_N14
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

-- Location: LCCOMB_X45_Y36_N16
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

-- Location: LCCOMB_X45_Y36_N18
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

-- Location: LCCOMB_X45_Y36_N20
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

-- Location: LCCOMB_X45_Y36_N22
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

-- Location: LCCOMB_X45_Y36_N24
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

-- Location: LCCOMB_X45_Y36_N26
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

-- Location: LCCOMB_X45_Y36_N28
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

-- Location: LCCOMB_X45_Y36_N30
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

-- Location: LCCOMB_X39_Y34_N12
\inst|color[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|color[5]~14_combout\ = (\inst|color\(5) & (\inst|color[4]~13\ $ (GND))) # (!\inst|color\(5) & (!\inst|color[4]~13\ & VCC))
-- \inst|color[5]~15\ = CARRY((\inst|color\(5) & !\inst|color[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|color\(5),
	datad => VCC,
	cin => \inst|color[4]~13\,
	combout => \inst|color[5]~14_combout\,
	cout => \inst|color[5]~15\);

-- Location: LCCOMB_X43_Y35_N26
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

-- Location: LCCOMB_X38_Y34_N22
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

-- Location: LCCOMB_X38_Y34_N30
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

-- Location: LCCOMB_X38_Y33_N6
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

-- Location: LCCOMB_X38_Y33_N12
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

-- Location: FF_X42_Y35_N11
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

-- Location: LCCOMB_X42_Y34_N0
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (((!\i_pixreg|hcnt_d\(2)) # (!\i_pixreg|hcnt_d\(1))) # (!\i_pixreg|hcnt_d\(0))) # (!\i_pixreg|hcnt_d\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \i_pixreg|hcnt_d\(0),
	datac => \i_pixreg|hcnt_d\(1),
	datad => \i_pixreg|hcnt_d\(2),
	combout => \inst|process_0~0_combout\);

-- Location: FF_X43_Y34_N31
\inst|LR_Limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add3~19_combout\,
	ena => \inst|LR_Limit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(5));

-- Location: FF_X39_Y33_N11
\inst|EN_Limit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add4~25_combout\,
	ena => \inst|EN_Limit[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(0));

-- Location: LCCOMB_X40_Y35_N12
\inst|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~10_combout\ = (!\i_pixreg|vcnt_d\(6) & (!\i_pixreg|vcnt_d\(5) & \i_pixreg|vcnt_d\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(6),
	datab => \i_pixreg|vcnt_d\(5),
	datad => \i_pixreg|vcnt_d\(7),
	combout => \inst|process_0~10_combout\);

-- Location: LCCOMB_X40_Y35_N28
\inst|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan10~0_combout\ = (\i_pixreg|vcnt_d\(3)) # ((\i_pixreg|vcnt_d\(1)) # ((\i_pixreg|vcnt_d\(2)) # (\i_pixreg|vcnt_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datab => \i_pixreg|vcnt_d\(1),
	datac => \i_pixreg|vcnt_d\(2),
	datad => \i_pixreg|vcnt_d\(0),
	combout => \inst|LessThan10~0_combout\);

-- Location: LCCOMB_X40_Y35_N30
\inst|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~11_combout\ = (\i_pixreg|vcnt_d\(4) & ((\inst|LessThan10~0_combout\ & ((\inst|process_0~6_combout\))) # (!\inst|LessThan10~0_combout\ & (\inst|process_0~10_combout\)))) # (!\i_pixreg|vcnt_d\(4) & (\inst|process_0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~10_combout\,
	datab => \inst|process_0~6_combout\,
	datac => \i_pixreg|vcnt_d\(4),
	datad => \inst|LessThan10~0_combout\,
	combout => \inst|process_0~11_combout\);

-- Location: FF_X40_Y34_N27
\inst|ED_Limit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit~8_combout\,
	ena => \inst|ED_Limit[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(2));

-- Location: FF_X40_Y34_N31
\inst|ED_Limit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit~10_combout\,
	ena => \inst|ED_Limit[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(0));

-- Location: LCCOMB_X40_Y35_N2
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\i_pixreg|vcnt_d\(6)) # ((\i_pixreg|vcnt_d\(5) & ((\i_pixreg|vcnt_d\(4)) # (\inst|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(6),
	datab => \i_pixreg|vcnt_d\(5),
	datac => \i_pixreg|vcnt_d\(4),
	datad => \inst|LessThan10~0_combout\,
	combout => \inst|LessThan0~0_combout\);

-- Location: FF_X46_Y36_N25
\i_pixreg|pixcode_single\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_pixreg|Mux0~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_pixreg|pixcode_single~q\);

-- Location: LCCOMB_X40_Y35_N4
\inst|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~19_combout\ = (\i_pixreg|vcnt_d\(6) & (((!\i_pixreg|vcnt_d\(5))))) # (!\i_pixreg|vcnt_d\(6) & ((\i_pixreg|vcnt_d\(5)) # ((\i_pixreg|vcnt_d\(4) & \i_pixreg|vcnt_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(6),
	datab => \i_pixreg|vcnt_d\(4),
	datac => \i_pixreg|vcnt_d\(3),
	datad => \i_pixreg|vcnt_d\(5),
	combout => \inst|process_0~19_combout\);

-- Location: FF_X39_Y34_N3
\inst|color[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|color[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|color\(0));

-- Location: LCCOMB_X39_Y35_N18
\inst|pixcode~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~21_combout\ = (\inst|pixcode[3]~8_combout\ & ((\inst|process_0~18_combout\ & (\inst|color\(3))) # (!\inst|process_0~18_combout\ & ((\inst|pixcode~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode[3]~8_combout\,
	datab => \inst|process_0~18_combout\,
	datac => \inst|color\(3),
	datad => \inst|pixcode~10_combout\,
	combout => \inst|pixcode~21_combout\);

-- Location: LCCOMB_X38_Y34_N6
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|counter\(11)) # ((\inst|counter\(10)) # ((\inst|counter\(8)) # (!\inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(11),
	datab => \inst|counter\(10),
	datac => \inst|counter\(9),
	datad => \inst|counter\(8),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y34_N30
\inst|Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~19_combout\ = (\inst|Add3~8_combout\ & (((\inst|LessThan21~0_combout\ & \inst|VOL_Limit\(7))) # (!\inst|VOL_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan21~0_combout\,
	datab => \inst|VOL_Limit\(8),
	datac => \inst|VOL_Limit\(7),
	datad => \inst|Add3~8_combout\,
	combout => \inst|Add3~19_combout\);

-- Location: LCCOMB_X40_Y33_N4
\inst|LessThan23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan23~0_combout\ = (\inst|EN_Limit\(3) & ((\inst|EN_Limit\(0)) # ((!\inst|EN_Limit\(1)) # (!\inst|EN_Limit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(0),
	datab => \inst|EN_Limit\(3),
	datac => \inst|EN_Limit\(2),
	datad => \inst|EN_Limit\(1),
	combout => \inst|LessThan23~0_combout\);

-- Location: LCCOMB_X40_Y33_N26
\inst|LessThan23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan23~1_combout\ = (!\inst|EN_Limit\(4) & (\inst|LessThan23~0_combout\ & \inst|EN_Limit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(4),
	datac => \inst|LessThan23~0_combout\,
	datad => \inst|EN_Limit\(5),
	combout => \inst|LessThan23~1_combout\);

-- Location: LCCOMB_X41_Y34_N6
\inst|LessThan22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan22~0_combout\ = (\inst|ED_Limit\(3)) # ((\inst|ED_Limit\(2) & (\inst|ED_Limit\(1) & \inst|ED_Limit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(2),
	datab => \inst|ED_Limit\(1),
	datac => \inst|ED_Limit\(0),
	datad => \inst|ED_Limit\(3),
	combout => \inst|LessThan22~0_combout\);

-- Location: LCCOMB_X39_Y33_N10
\inst|Add4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~25_combout\ = (!\inst|Add4~0_combout\ & \inst|EN_Limit[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~0_combout\,
	datac => \inst|EN_Limit[3]~2_combout\,
	combout => \inst|Add4~25_combout\);

-- Location: LCCOMB_X40_Y34_N26
\inst|ED_Limit~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit~8_combout\ = (!\inst|Add2~4_combout\ & \inst|LessThan22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~4_combout\,
	datad => \inst|LessThan22~2_combout\,
	combout => \inst|ED_Limit~8_combout\);

-- Location: LCCOMB_X40_Y34_N30
\inst|ED_Limit~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit~10_combout\ = (!\inst|Add2~0_combout\ & \inst|LessThan22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~0_combout\,
	datad => \inst|LessThan22~2_combout\,
	combout => \inst|ED_Limit~10_combout\);

-- Location: LCCOMB_X48_Y36_N0
\i_pixreg|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~7_combout\ = (!\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(4) & !\i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~7_combout\);

-- Location: LCCOMB_X47_Y35_N0
\i_pixreg|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~8_combout\ = (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~10_combout\ & \i_pixreg|Mux0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~7_combout\,
	combout => \i_pixreg|Mux0~8_combout\);

-- Location: LCCOMB_X48_Y35_N24
\i_pixreg|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~9_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(4) & \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~9_combout\);

-- Location: LCCOMB_X48_Y35_N18
\i_pixreg|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~10_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(4) & !\i_pixreg|Add1~0_combout\))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(4) & \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~10_combout\);

-- Location: LCCOMB_X48_Y35_N20
\i_pixreg|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~11_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~9_combout\)) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~9_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~10_combout\,
	combout => \i_pixreg|Mux0~11_combout\);

-- Location: LCCOMB_X47_Y35_N26
\i_pixreg|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~12_combout\ = (\i_pixreg|Add1~8_combout\ & (((\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~8_combout\ & ((\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~4_combout\)) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~11_combout\,
	combout => \i_pixreg|Mux0~12_combout\);

-- Location: LCCOMB_X48_Y36_N18
\i_pixreg|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~13_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(4))) # (!\i_pixcounter|hcnti\(6)))) # (!\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(3)) # 
-- (\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~13_combout\);

-- Location: LCCOMB_X47_Y35_N20
\i_pixreg|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~14_combout\ = (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(6) & !\i_pixreg|Mux0~13_combout\)) # (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(6) & \i_pixreg|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~13_combout\,
	combout => \i_pixreg|Mux0~14_combout\);

-- Location: LCCOMB_X47_Y35_N6
\i_pixreg|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~15_combout\ = (\i_pixreg|Mux0~12_combout\ & ((\i_pixreg|Mux0~14_combout\) # ((!\i_pixreg|Add1~8_combout\)))) # (!\i_pixreg|Mux0~12_combout\ & (((\i_pixreg|Add1~8_combout\ & \i_pixreg|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~12_combout\,
	datab => \i_pixreg|Mux0~14_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~8_combout\,
	combout => \i_pixreg|Mux0~15_combout\);

-- Location: LCCOMB_X48_Y36_N28
\i_pixreg|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~16_combout\ = (\i_pixcounter|hcnti\(6) & (((\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(4))))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3)) # (\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~16_combout\);

-- Location: LCCOMB_X47_Y35_N16
\i_pixreg|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~17_combout\ = (\i_pixreg|Mux0~16_combout\ & (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\) # (\i_pixreg|Add1~8_combout\)))) # (!\i_pixreg|Mux0~16_combout\ & (((\i_pixreg|Add1~0_combout\ & \i_pixreg|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~16_combout\,
	combout => \i_pixreg|Mux0~17_combout\);

-- Location: LCCOMB_X48_Y37_N24
\i_pixreg|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~18_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(4)) # (!\i_pixcounter|hcnti\(6)))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~18_combout\);

-- Location: LCCOMB_X48_Y37_N2
\i_pixreg|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~19_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(6) & ((!\i_pixreg|Mux0~18_combout\))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(5) & (!\i_pixreg|Add1~0_combout\ & 
-- ((\i_pixcounter|hcnti\(6)) # (\i_pixreg|Mux0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~18_combout\,
	combout => \i_pixreg|Mux0~19_combout\);

-- Location: LCCOMB_X48_Y37_N20
\i_pixreg|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~20_combout\ = (\i_pixreg|Add1~0_combout\) # ((\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) & \i_pixreg|Mux0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~18_combout\,
	combout => \i_pixreg|Mux0~20_combout\);

-- Location: LCCOMB_X47_Y35_N10
\i_pixreg|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~21_combout\ = (\i_pixreg|Add1~10_combout\) # ((\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~20_combout\ & \i_pixreg|Mux0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Mux0~20_combout\,
	datad => \i_pixreg|Mux0~19_combout\,
	combout => \i_pixreg|Mux0~21_combout\);

-- Location: LCCOMB_X47_Y35_N28
\i_pixreg|Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~22_combout\ = (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Mux0~20_combout\)) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~20_combout\) # (\i_pixreg|Mux0~19_combout\))))) # (!\i_pixreg|Add1~10_combout\ & 
-- (\i_pixreg|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Mux0~20_combout\,
	datad => \i_pixreg|Mux0~19_combout\,
	combout => \i_pixreg|Mux0~22_combout\);

-- Location: LCCOMB_X47_Y35_N14
\i_pixreg|Mux0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~23_combout\ = (\i_pixreg|Mux0~21_combout\ & (!\i_pixreg|Mux0~22_combout\ & (!\i_pixreg|Add1~8_combout\))) # (!\i_pixreg|Mux0~21_combout\ & ((\i_pixreg|Mux0~22_combout\ & (\i_pixreg|Add1~8_combout\)) # (!\i_pixreg|Mux0~22_combout\ & 
-- ((\i_pixreg|Mux0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~21_combout\,
	datab => \i_pixreg|Mux0~22_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~17_combout\,
	combout => \i_pixreg|Mux0~23_combout\);

-- Location: LCCOMB_X48_Y35_N6
\i_pixreg|Mux0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~24_combout\ = (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(4) & !\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~24_combout\);

-- Location: LCCOMB_X43_Y36_N10
\i_pixreg|Mux0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~25_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~25_combout\);

-- Location: LCCOMB_X47_Y35_N24
\i_pixreg|Mux0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~26_combout\ = (\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~25_combout\ & \i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Mux0~25_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~26_combout\);

-- Location: LCCOMB_X47_Y35_N18
\i_pixreg|Mux0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~27_combout\ = (\i_pixreg|Mux0~26_combout\ & ((\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~8_combout\)) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~8_combout\) # (\i_pixreg|Mux0~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~26_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~24_combout\,
	combout => \i_pixreg|Mux0~27_combout\);

-- Location: LCCOMB_X47_Y35_N12
\i_pixreg|Mux0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~28_combout\ = (\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~2_combout\)) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~23_combout\)) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Mux0~23_combout\,
	datad => \i_pixreg|Mux0~27_combout\,
	combout => \i_pixreg|Mux0~28_combout\);

-- Location: LCCOMB_X47_Y35_N22
\i_pixreg|Mux0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~29_combout\ = (\i_pixreg|Add1~8_combout\) # ((\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~4_combout\)) # (!\i_pixreg|Add1~10_combout\ & ((!\i_pixreg|Mux0~24_combout\) # (!\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~8_combout\,
	datad => \i_pixreg|Mux0~24_combout\,
	combout => \i_pixreg|Mux0~29_combout\);

-- Location: LCCOMB_X47_Y35_N8
\i_pixreg|Mux0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~30_combout\ = (\i_pixreg|Mux0~28_combout\ & (((!\i_pixreg|Mux0~29_combout\)) # (!\i_pixreg|Add1~6_combout\))) # (!\i_pixreg|Mux0~28_combout\ & (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~28_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~29_combout\,
	datad => \i_pixreg|Mux0~15_combout\,
	combout => \i_pixreg|Mux0~30_combout\);

-- Location: LCCOMB_X46_Y36_N2
\i_pixreg|Mux0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~31_combout\ = (!\i_pixreg|Add1~12_combout\ & (\i_pixreg|Mux0~30_combout\ & (!\i_pixreg|Add1~14_combout\ & \i_pixreg|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~12_combout\,
	datab => \i_pixreg|Mux0~30_combout\,
	datac => \i_pixreg|Add1~14_combout\,
	datad => \i_pixreg|Add1~16_combout\,
	combout => \i_pixreg|Mux0~31_combout\);

-- Location: LCCOMB_X48_Y37_N14
\i_pixreg|Mux0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~32_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(6))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~32_combout\);

-- Location: LCCOMB_X48_Y37_N8
\i_pixreg|Mux0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~33_combout\ = (\i_pixreg|Mux0~32_combout\ & ((\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(6) & !\i_pixreg|Add1~0_combout\)) # (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(6) & \i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Mux0~32_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~33_combout\);

-- Location: LCCOMB_X48_Y37_N26
\i_pixreg|Mux0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~34_combout\ = (\i_pixreg|Add1~0_combout\ & !\i_pixcounter|hcnti\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixcounter|hcnti\(5),
	combout => \i_pixreg|Mux0~34_combout\);

-- Location: LCCOMB_X48_Y37_N28
\i_pixreg|Mux0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~35_combout\ = (\i_pixcounter|hcnti\(4) & (((\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(6))) # (!\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(6)) # (\i_pixcounter|hcnti\(3) $ 
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
	combout => \i_pixreg|Mux0~35_combout\);

-- Location: LCCOMB_X48_Y37_N6
\i_pixreg|Mux0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~36_combout\ = (\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Mux0~34_combout\ & !\i_pixreg|Mux0~35_combout\)))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~33_combout\) # ((\i_pixreg|Mux0~34_combout\ & !\i_pixreg|Mux0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~33_combout\,
	datac => \i_pixreg|Mux0~34_combout\,
	datad => \i_pixreg|Mux0~35_combout\,
	combout => \i_pixreg|Mux0~36_combout\);

-- Location: LCCOMB_X47_Y37_N24
\i_pixreg|Mux0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~37_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixreg|Mux0~18_combout\ & (\i_pixreg|Add1~0_combout\ $ (!\i_pixreg|Add1~4_combout\)))) # (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~4_combout\ & 
-- !\i_pixreg|Mux0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~18_combout\,
	combout => \i_pixreg|Mux0~37_combout\);

-- Location: LCCOMB_X47_Y37_N2
\i_pixreg|Mux0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~38_combout\ = (\i_pixreg|Add1~10_combout\ & (((\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~37_combout\,
	combout => \i_pixreg|Mux0~38_combout\);

-- Location: LCCOMB_X47_Y37_N12
\i_pixreg|Mux0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~39_combout\ = (\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\ & \i_pixreg|Mux0~18_combout\))) # (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~0_combout\ & 
-- !\i_pixreg|Mux0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~18_combout\,
	combout => \i_pixreg|Mux0~39_combout\);

-- Location: LCCOMB_X47_Y37_N30
\i_pixreg|Mux0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~40_combout\ = (\i_pixreg|Mux0~38_combout\ & ((\i_pixreg|Mux0~39_combout\) # ((!\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Mux0~38_combout\ & (((\i_pixreg|Add1~10_combout\ & \i_pixreg|Mux0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~39_combout\,
	datab => \i_pixreg|Mux0~38_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~36_combout\,
	combout => \i_pixreg|Mux0~40_combout\);

-- Location: LCCOMB_X48_Y37_N16
\i_pixreg|Mux0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~41_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~41_combout\);

-- Location: LCCOMB_X47_Y37_N8
\i_pixreg|Mux0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~42_combout\ = (\i_pixreg|Add1~4_combout\) # ((\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~0_combout\ & \i_pixreg|Mux0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~41_combout\,
	combout => \i_pixreg|Mux0~42_combout\);

-- Location: LCCOMB_X47_Y37_N26
\i_pixreg|Mux0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~43_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(5) & ((!\i_pixcounter|hcnti\(3)) # (!\i_pixreg|Add1~0_combout\))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Add1~0_combout\) # (\i_pixcounter|hcnti\(3)))))) # 
-- (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\) # ((\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~43_combout\);

-- Location: LCCOMB_X47_Y37_N28
\i_pixreg|Mux0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~44_combout\ = (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Mux0~43_combout\ & ((\i_pixcounter|hcnti\(3)) # (!\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Mux0~43_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~44_combout\);

-- Location: LCCOMB_X47_Y37_N14
\i_pixreg|Mux0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~45_combout\ = (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(6) $ (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~45_combout\);

-- Location: LCCOMB_X47_Y37_N0
\i_pixreg|Mux0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~46_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~4_combout\ & ((!\i_pixcounter|hcnti\(3)) # (!\i_pixreg|Add1~0_combout\))))) # (!\i_pixcounter|hcnti\(6) & 
-- (((\i_pixreg|Add1~0_combout\) # (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~46_combout\);

-- Location: LCCOMB_X47_Y37_N10
\i_pixreg|Mux0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~47_combout\ = (!\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~45_combout\)) # (!\i_pixcounter|hcnti\(5) & ((!\i_pixreg|Mux0~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Mux0~45_combout\,
	datad => \i_pixreg|Mux0~46_combout\,
	combout => \i_pixreg|Mux0~47_combout\);

-- Location: LCCOMB_X47_Y37_N20
\i_pixreg|Mux0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~48_combout\ = (\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Mux0~44_combout\) # (\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~47_combout\ & ((!\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~47_combout\,
	datab => \i_pixreg|Mux0~44_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~48_combout\);

-- Location: LCCOMB_X48_Y35_N16
\i_pixreg|Mux0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~49_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(5) & ((!\i_pixcounter|hcnti\(4)) # (!\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3)) # 
-- (\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~49_combout\);

-- Location: LCCOMB_X48_Y35_N2
\i_pixreg|Mux0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~50_combout\ = (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~4_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~4_combout\ $ (\i_pixcounter|hcnti\(5))) # (!\i_pixreg|Mux0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~49_combout\,
	combout => \i_pixreg|Mux0~50_combout\);

-- Location: LCCOMB_X49_Y36_N0
\i_pixreg|Mux0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~51_combout\ = (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~51_combout\);

-- Location: LCCOMB_X48_Y35_N12
\i_pixreg|Mux0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~52_combout\ = (\i_pixreg|Mux0~50_combout\) # ((\i_pixreg|Add1~0_combout\ & \i_pixreg|Mux0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Mux0~51_combout\,
	datad => \i_pixreg|Mux0~50_combout\,
	combout => \i_pixreg|Mux0~52_combout\);

-- Location: LCCOMB_X47_Y37_N6
\i_pixreg|Mux0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~53_combout\ = (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~48_combout\ & ((\i_pixreg|Mux0~52_combout\))) # (!\i_pixreg|Mux0~48_combout\ & (\i_pixreg|Mux0~42_combout\)))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~48_combout\,
	datac => \i_pixreg|Mux0~42_combout\,
	datad => \i_pixreg|Mux0~52_combout\,
	combout => \i_pixreg|Mux0~53_combout\);

-- Location: LCCOMB_X47_Y36_N24
\i_pixreg|Mux0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~54_combout\ = (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~7_combout\ & !\i_pixreg|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~7_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~54_combout\);

-- Location: LCCOMB_X48_Y37_N10
\i_pixreg|Mux0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~55_combout\ = (\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(6) & !\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(4) $ (\i_pixcounter|hcnti\(6) $ 
-- (\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~55_combout\);

-- Location: LCCOMB_X48_Y37_N12
\i_pixreg|Mux0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~56_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(5) $ (!\i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) $ 
-- (!\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~56_combout\);

-- Location: LCCOMB_X48_Y37_N22
\i_pixreg|Mux0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~57_combout\ = (!\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(5) & !\i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~57_combout\);

-- Location: LCCOMB_X48_Y37_N0
\i_pixreg|Mux0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~58_combout\ = (\i_pixcounter|hcnti\(3) & (((\i_pixreg|Add1~0_combout\) # (\i_pixreg|Mux0~56_combout\)))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~57_combout\ & (!\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~57_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~56_combout\,
	combout => \i_pixreg|Mux0~58_combout\);

-- Location: LCCOMB_X48_Y37_N18
\i_pixreg|Mux0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~59_combout\ = (\i_pixcounter|hcnti\(4) & (((\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(5))) # (!\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(6) & ((!\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~59_combout\);

-- Location: LCCOMB_X48_Y37_N4
\i_pixreg|Mux0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~60_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~58_combout\ & ((!\i_pixreg|Mux0~59_combout\))) # (!\i_pixreg|Mux0~58_combout\ & (\i_pixreg|Mux0~55_combout\)))) # (!\i_pixreg|Add1~0_combout\ & (((\i_pixreg|Mux0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~55_combout\,
	datab => \i_pixreg|Mux0~59_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~58_combout\,
	combout => \i_pixreg|Mux0~60_combout\);

-- Location: LCCOMB_X48_Y36_N14
\i_pixreg|Mux0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~61_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~61_combout\);

-- Location: LCCOMB_X48_Y36_N8
\i_pixreg|Mux0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~62_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixcounter|hcnti\(6)) # (!\i_pixcounter|hcnti\(4))) # (!\i_pixcounter|hcnti\(3)))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3)) # (\i_pixcounter|hcnti\(4) $ 
-- (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~62_combout\);

-- Location: LCCOMB_X48_Y36_N10
\i_pixreg|Mux0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~63_combout\ = (\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(6)))) # (!\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(6) $ (((\i_pixcounter|hcnti\(5)) # 
-- (\i_pixcounter|hcnti\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~63_combout\);

-- Location: LCCOMB_X48_Y36_N12
\i_pixreg|Mux0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~64_combout\ = (\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Add1~0_combout\) # (!\i_pixreg|Mux0~62_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~63_combout\ & (!\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~63_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~62_combout\,
	combout => \i_pixreg|Mux0~64_combout\);

-- Location: LCCOMB_X48_Y36_N6
\i_pixreg|Mux0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~65_combout\ = (\i_pixreg|Mux0~64_combout\ & (((\i_pixreg|Mux0~7_combout\) # (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Mux0~64_combout\ & (\i_pixreg|Mux0~61_combout\ & (\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~64_combout\,
	datab => \i_pixreg|Mux0~61_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~7_combout\,
	combout => \i_pixreg|Mux0~65_combout\);

-- Location: LCCOMB_X46_Y36_N12
\i_pixreg|Mux0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~66_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Mux0~60_combout\) # (\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~65_combout\ & ((!\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~65_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Mux0~60_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~66_combout\);

-- Location: LCCOMB_X48_Y36_N16
\i_pixreg|Mux0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~67_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(4) & \i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~67_combout\);

-- Location: LCCOMB_X47_Y36_N2
\i_pixreg|Mux0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~68_combout\ = (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~7_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~67_combout\,
	datac => \i_pixreg|Mux0~7_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~68_combout\);

-- Location: LCCOMB_X46_Y36_N22
\i_pixreg|Mux0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~69_combout\ = (\i_pixreg|Mux0~66_combout\ & (((\i_pixreg|Mux0~68_combout\)) # (!\i_pixreg|Add1~10_combout\))) # (!\i_pixreg|Mux0~66_combout\ & (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~66_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~68_combout\,
	datad => \i_pixreg|Mux0~54_combout\,
	combout => \i_pixreg|Mux0~69_combout\);

-- Location: LCCOMB_X46_Y36_N0
\i_pixreg|Mux0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~70_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixreg|Add1~12_combout\) # (\i_pixreg|Mux0~53_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~69_combout\ & (!\i_pixreg|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~69_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~53_combout\,
	combout => \i_pixreg|Mux0~70_combout\);

-- Location: LCCOMB_X45_Y37_N24
\i_pixreg|Mux0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~71_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & \i_pixreg|Mux0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~51_combout\,
	combout => \i_pixreg|Mux0~71_combout\);

-- Location: LCCOMB_X45_Y37_N18
\i_pixreg|Mux0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~72_combout\ = (\i_pixcounter|hcnti\(4) & (((!\i_pixcounter|hcnti\(3)) # (!\i_pixreg|Add1~4_combout\)) # (!\i_pixcounter|hcnti\(6)))) # (!\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(6)) # ((\i_pixreg|Add1~4_combout\) # 
-- (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~72_combout\);

-- Location: LCCOMB_X45_Y37_N12
\i_pixreg|Mux0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~73_combout\ = (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~71_combout\) # ((!\i_pixreg|Mux0~72_combout\ & !\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~72_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~71_combout\,
	combout => \i_pixreg|Mux0~73_combout\);

-- Location: LCCOMB_X45_Y37_N22
\i_pixreg|Mux0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~74_combout\ = (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~10_combout\ & \i_pixreg|Mux0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~51_combout\,
	combout => \i_pixreg|Mux0~74_combout\);

-- Location: LCCOMB_X45_Y37_N8
\i_pixreg|Mux0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~75_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(6) $ (!\i_pixreg|Add1~10_combout\)))) # (!\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~10_combout\ & 
-- !\i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~75_combout\);

-- Location: LCCOMB_X45_Y37_N2
\i_pixreg|Mux0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~76_combout\ = (\i_pixreg|Mux0~74_combout\) # ((\i_pixreg|Mux0~75_combout\ & (\i_pixreg|Add1~0_combout\ $ (!\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~74_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Mux0~75_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~76_combout\);

-- Location: LCCOMB_X45_Y37_N20
\i_pixreg|Mux0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~77_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~0_combout\ & \i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~77_combout\);

-- Location: LCCOMB_X45_Y37_N30
\i_pixreg|Mux0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~78_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~10_combout\ $ (\i_pixcounter|hcnti\(6))) # (!\i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Add1~0_combout\) # (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~78_combout\);

-- Location: LCCOMB_X45_Y37_N16
\i_pixreg|Mux0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~79_combout\ = (\i_pixcounter|hcnti\(4) & (\i_pixreg|Add1~10_combout\)) # (!\i_pixcounter|hcnti\(4) & (!\i_pixreg|Mux0~78_combout\ & (\i_pixreg|Add1~10_combout\ $ (!\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~78_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~79_combout\);

-- Location: LCCOMB_X45_Y37_N10
\i_pixreg|Mux0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~80_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixcounter|hcnti\(6) & \i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~0_combout\) # ((!\i_pixcounter|hcnti\(6) & 
-- \i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~80_combout\);

-- Location: LCCOMB_X45_Y37_N4
\i_pixreg|Mux0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~81_combout\ = (\i_pixreg|Mux0~79_combout\ & (((!\i_pixcounter|hcnti\(4))) # (!\i_pixreg|Mux0~80_combout\))) # (!\i_pixreg|Mux0~79_combout\ & (((\i_pixcounter|hcnti\(4) & \i_pixreg|Mux0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~80_combout\,
	datab => \i_pixreg|Mux0~79_combout\,
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixreg|Mux0~77_combout\,
	combout => \i_pixreg|Mux0~81_combout\);

-- Location: LCCOMB_X45_Y37_N6
\i_pixreg|Mux0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~82_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~76_combout\))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixreg|Mux0~81_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~76_combout\,
	combout => \i_pixreg|Mux0~82_combout\);

-- Location: LCCOMB_X48_Y35_N30
\i_pixreg|Mux0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~83_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(4) & (\i_pixreg|Add1~4_combout\ $ (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(4) & 
-- \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~83_combout\);

-- Location: LCCOMB_X45_Y37_N0
\i_pixreg|Mux0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~84_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~83_combout\ & (\i_pixcounter|hcnti\(4) $ (!\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(4),
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~83_combout\,
	combout => \i_pixreg|Mux0~84_combout\);

-- Location: LCCOMB_X45_Y37_N26
\i_pixreg|Mux0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~85_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixreg|Mux0~82_combout\ & ((\i_pixreg|Mux0~84_combout\))) # (!\i_pixreg|Mux0~82_combout\ & (\i_pixreg|Mux0~73_combout\)))) # (!\i_pixcounter|hcnti\(5) & (((\i_pixreg|Mux0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~73_combout\,
	datab => \i_pixreg|Mux0~84_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Mux0~82_combout\,
	combout => \i_pixreg|Mux0~85_combout\);

-- Location: LCCOMB_X46_Y36_N18
\i_pixreg|Mux0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~86_combout\ = (\i_pixreg|Add1~12_combout\ & ((\i_pixreg|Mux0~70_combout\ & ((\i_pixreg|Mux0~85_combout\))) # (!\i_pixreg|Mux0~70_combout\ & (\i_pixreg|Mux0~40_combout\)))) # (!\i_pixreg|Add1~12_combout\ & (((\i_pixreg|Mux0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~40_combout\,
	datab => \i_pixreg|Mux0~85_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~70_combout\,
	combout => \i_pixreg|Mux0~86_combout\);

-- Location: LCCOMB_X45_Y35_N24
\i_pixreg|Mux0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~87_combout\ = (\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(3))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3)) # (\i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~87_combout\);

-- Location: LCCOMB_X45_Y35_N18
\i_pixreg|Mux0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~88_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3) & ((!\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~10_combout\ & \i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(5) & 
-- (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~10_combout\ $ (!\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~88_combout\);

-- Location: LCCOMB_X45_Y35_N4
\i_pixreg|Mux0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~89_combout\ = (\i_pixreg|Mux0~88_combout\ & (\i_pixreg|Mux0~87_combout\ $ ((\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Mux0~88_combout\ & ((\i_pixreg|Mux0~87_combout\) # (\i_pixreg|Add1~4_combout\ $ (\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~88_combout\,
	datab => \i_pixreg|Mux0~87_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~89_combout\);

-- Location: LCCOMB_X45_Y35_N30
\i_pixreg|Mux0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~90_combout\ = (\i_pixreg|Mux0~87_combout\ & ((\i_pixreg|Add1~4_combout\) # (\i_pixreg|Mux0~88_combout\ $ (!\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Mux0~87_combout\ & (\i_pixreg|Mux0~88_combout\ $ (((\i_pixreg|Add1~4_combout\ & 
-- \i_pixreg|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~88_combout\,
	datab => \i_pixreg|Mux0~87_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~90_combout\);

-- Location: LCCOMB_X45_Y35_N8
\i_pixreg|Mux0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~91_combout\ = (\i_pixreg|Add1~0_combout\ & ((!\i_pixreg|Mux0~90_combout\))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Mux0~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~89_combout\,
	datac => \i_pixreg|Mux0~90_combout\,
	combout => \i_pixreg|Mux0~91_combout\);

-- Location: LCCOMB_X46_Y35_N24
\i_pixreg|Mux0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~92_combout\ = (\i_pixreg|Add1~10_combout\ & (((!\i_pixreg|Add1~0_combout\ & \i_pixreg|Add1~4_combout\)) # (!\i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~2_combout\) # ((\i_pixreg|Add1~0_combout\ & 
-- !\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~92_combout\);

-- Location: LCCOMB_X46_Y35_N18
\i_pixreg|Mux0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~93_combout\ = (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & ((!\i_pixreg|Add1~2_combout\) # 
-- (!\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~93_combout\);

-- Location: LCCOMB_X46_Y35_N12
\i_pixreg|Mux0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~94_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~93_combout\ & (\i_pixcounter|hcnti\(3) $ (!\i_pixreg|Mux0~92_combout\)))) # (!\i_pixcounter|hcnti\(5) & (!\i_pixreg|Mux0~92_combout\ & (\i_pixreg|Mux0~93_combout\ $ 
-- (!\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixreg|Mux0~93_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~92_combout\,
	combout => \i_pixreg|Mux0~94_combout\);

-- Location: LCCOMB_X46_Y35_N6
\i_pixreg|Mux0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~95_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixreg|Mux0~94_combout\) # (!\i_pixcounter|hcnti\(6))))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Mux0~91_combout\ & (!\i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~91_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~94_combout\,
	combout => \i_pixreg|Mux0~95_combout\);

-- Location: LCCOMB_X46_Y35_N8
\i_pixreg|Mux0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~96_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixcounter|hcnti\(6) & \i_pixreg|Mux0~94_combout\)))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Mux0~91_combout\) # ((\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~91_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~94_combout\,
	combout => \i_pixreg|Mux0~96_combout\);

-- Location: LCCOMB_X45_Y35_N26
\i_pixreg|Mux0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~97_combout\ = (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\) # (!\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~4_combout\ $ (((!\i_pixreg|Add1~0_combout\ & 
-- \i_pixreg|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~97_combout\);

-- Location: LCCOMB_X45_Y35_N20
\i_pixreg|Mux0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~98_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Add1~0_combout\) # (\i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Add1~10_combout\ & ((!\i_pixreg|Add1~2_combout\))))) # (!\i_pixreg|Add1~4_combout\ & 
-- (\i_pixreg|Add1~10_combout\ $ (((\i_pixreg|Add1~0_combout\ & \i_pixreg|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~98_combout\);

-- Location: LCCOMB_X45_Y35_N22
\i_pixreg|Mux0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~99_combout\ = (\i_pixreg|Add1~0_combout\ & (((!\i_pixreg|Add1~2_combout\) # (!\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~10_combout\) # (\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~99_combout\);

-- Location: LCCOMB_X45_Y35_N0
\i_pixreg|Mux0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~100_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixreg|Mux0~99_combout\ $ (\i_pixreg|Mux0~98_combout\)) # (!\i_pixcounter|hcnti\(3)))) # (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) $ (((!\i_pixreg|Mux0~99_combout\ & 
-- \i_pixreg|Mux0~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Mux0~99_combout\,
	datad => \i_pixreg|Mux0~98_combout\,
	combout => \i_pixreg|Mux0~100_combout\);

-- Location: LCCOMB_X45_Y35_N10
\i_pixreg|Mux0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~101_combout\ = (\i_pixreg|Mux0~99_combout\ & (((\i_pixcounter|hcnti\(5) & \i_pixcounter|hcnti\(3))) # (!\i_pixreg|Mux0~98_combout\))) # (!\i_pixreg|Mux0~99_combout\ & ((\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) & 
-- !\i_pixreg|Mux0~98_combout\)) # (!\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(3) & \i_pixreg|Mux0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Mux0~99_combout\,
	datad => \i_pixreg|Mux0~98_combout\,
	combout => \i_pixreg|Mux0~101_combout\);

-- Location: LCCOMB_X45_Y35_N12
\i_pixreg|Mux0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~102_combout\ = (\i_pixreg|Mux0~99_combout\) # ((\i_pixcounter|hcnti\(3) & \i_pixreg|Mux0~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~99_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~98_combout\,
	combout => \i_pixreg|Mux0~102_combout\);

-- Location: LCCOMB_X45_Y35_N6
\i_pixreg|Mux0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~103_combout\ = (\i_pixreg|Mux0~101_combout\ & (\i_pixreg|Mux0~102_combout\ $ (((!\i_pixreg|Mux0~97_combout\) # (!\i_pixreg|Mux0~100_combout\))))) # (!\i_pixreg|Mux0~101_combout\ & (\i_pixreg|Mux0~100_combout\ & (!\i_pixreg|Mux0~97_combout\ 
-- & !\i_pixreg|Mux0~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~101_combout\,
	datab => \i_pixreg|Mux0~100_combout\,
	datac => \i_pixreg|Mux0~97_combout\,
	datad => \i_pixreg|Mux0~102_combout\,
	combout => \i_pixreg|Mux0~103_combout\);

-- Location: LCCOMB_X45_Y35_N16
\i_pixreg|Mux0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~104_combout\ = (\i_pixreg|Mux0~100_combout\ & ((\i_pixreg|Mux0~101_combout\) # (\i_pixreg|Mux0~97_combout\ $ (\i_pixreg|Mux0~102_combout\)))) # (!\i_pixreg|Mux0~100_combout\ & ((\i_pixreg|Mux0~97_combout\ & ((\i_pixreg|Mux0~102_combout\))) 
-- # (!\i_pixreg|Mux0~97_combout\ & (\i_pixreg|Mux0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~101_combout\,
	datab => \i_pixreg|Mux0~100_combout\,
	datac => \i_pixreg|Mux0~97_combout\,
	datad => \i_pixreg|Mux0~102_combout\,
	combout => \i_pixreg|Mux0~104_combout\);

-- Location: LCCOMB_X46_Y35_N2
\i_pixreg|Mux0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~105_combout\ = (\i_pixreg|Mux0~96_combout\ & (((\i_pixreg|Mux0~95_combout\)) # (!\i_pixreg|Mux0~104_combout\))) # (!\i_pixreg|Mux0~96_combout\ & (\i_pixreg|Mux0~95_combout\ & (\i_pixreg|Mux0~104_combout\ $ (!\i_pixreg|Mux0~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~104_combout\,
	datab => \i_pixreg|Mux0~103_combout\,
	datac => \i_pixreg|Mux0~96_combout\,
	datad => \i_pixreg|Mux0~95_combout\,
	combout => \i_pixreg|Mux0~105_combout\);

-- Location: LCCOMB_X46_Y37_N0
\i_pixreg|Mux0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~106_combout\ = (\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~10_combout\ $ (\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~4_combout\ & 
-- !\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~106_combout\);

-- Location: LCCOMB_X46_Y35_N28
\i_pixreg|Mux0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~107_combout\ = (\i_pixreg|Mux0~106_combout\ & ((\i_pixreg|Add1~6_combout\ & (\i_pixcounter|hcnti\(6) & \i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Add1~6_combout\ & (!\i_pixcounter|hcnti\(6) & !\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~106_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~107_combout\);

-- Location: LCCOMB_X47_Y35_N2
\i_pixreg|Mux0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~108_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~108_combout\);

-- Location: LCCOMB_X46_Y35_N22
\i_pixreg|Mux0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~109_combout\ = (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~10_combout\ & \i_pixreg|Mux0~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~108_combout\,
	combout => \i_pixreg|Mux0~109_combout\);

-- Location: LCCOMB_X46_Y35_N16
\i_pixreg|Mux0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~110_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixcounter|hcnti\(3))))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3) & ((\i_pixreg|Mux0~109_combout\))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixreg|Mux0~239_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~109_combout\,
	combout => \i_pixreg|Mux0~110_combout\);

-- Location: LCCOMB_X47_Y37_N16
\i_pixreg|Mux0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~111_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\ & ((!\i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & \i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(6) & 
-- ((\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & \i_pixreg|Add1~2_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~4_combout\) # (\i_pixreg|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~111_combout\);

-- Location: LCCOMB_X46_Y35_N10
\i_pixreg|Mux0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~112_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~4_combout\))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~2_combout\ & 
-- \i_pixreg|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~112_combout\);

-- Location: LCCOMB_X46_Y35_N4
\i_pixreg|Mux0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~113_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ $ (\i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~4_combout\)))) # 
-- (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~4_combout\)) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~2_combout\ & \i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~113_combout\);

-- Location: LCCOMB_X46_Y35_N30
\i_pixreg|Mux0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~114_combout\ = (\i_pixreg|Mux0~112_combout\ & (\i_pixreg|Add1~10_combout\ $ ((!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~112_combout\ & ((\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~6_combout\ & !\i_pixreg|Mux0~113_combout\)) # 
-- (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~113_combout\,
	datad => \i_pixreg|Mux0~112_combout\,
	combout => \i_pixreg|Mux0~114_combout\);

-- Location: LCCOMB_X46_Y35_N0
\i_pixreg|Mux0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~115_combout\ = (\i_pixreg|Mux0~114_combout\ & ((\i_pixreg|Mux0~112_combout\ $ (\i_pixreg|Mux0~111_combout\)) # (!\i_pixreg|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~112_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~114_combout\,
	datad => \i_pixreg|Mux0~111_combout\,
	combout => \i_pixreg|Mux0~115_combout\);

-- Location: LCCOMB_X46_Y35_N26
\i_pixreg|Mux0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~116_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixreg|Mux0~110_combout\ & (\i_pixreg|Mux0~115_combout\)) # (!\i_pixreg|Mux0~110_combout\ & ((\i_pixreg|Mux0~107_combout\))))) # (!\i_pixcounter|hcnti\(5) & (((\i_pixreg|Mux0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~115_combout\,
	datab => \i_pixreg|Mux0~107_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Mux0~110_combout\,
	combout => \i_pixreg|Mux0~116_combout\);

-- Location: LCCOMB_X49_Y37_N0
\i_pixreg|Mux0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~117_combout\ = (\i_pixreg|Add1~0_combout\) # ((\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(5)) # (\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(5) & \i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~117_combout\);

-- Location: LCCOMB_X49_Y37_N26
\i_pixreg|Mux0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~118_combout\ = (\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(5)))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(3) $ (\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~118_combout\);

-- Location: LCCOMB_X49_Y37_N28
\i_pixreg|Mux0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~119_combout\ = (\i_pixreg|Mux0~118_combout\ & (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~4_combout\ $ (!\i_pixreg|Mux0~117_combout\)))) # (!\i_pixreg|Mux0~118_combout\ & (\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Mux0~117_combout\ & 
-- \i_pixreg|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~117_combout\,
	datac => \i_pixreg|Mux0~118_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~119_combout\);

-- Location: LCCOMB_X46_Y37_N26
\i_pixreg|Mux0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~120_combout\ = (\i_pixcounter|hcnti\(3) & ((!\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~0_combout\ & \i_pixreg|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~120_combout\);

-- Location: LCCOMB_X49_Y37_N22
\i_pixreg|Mux0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~121_combout\ = (\i_pixreg|Add1~6_combout\ & (((!\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~2_combout\ & ((!\i_pixreg|Add1~0_combout\) # (!\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~121_combout\);

-- Location: LCCOMB_X49_Y37_N8
\i_pixreg|Mux0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~122_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~6_combout\ $ (((\i_pixreg|Mux0~121_combout\))))) # (!\i_pixreg|Add1~4_combout\ & (((\i_pixcounter|hcnti\(3) & \i_pixreg|Mux0~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Mux0~121_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~122_combout\);

-- Location: LCCOMB_X49_Y37_N10
\i_pixreg|Mux0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~123_combout\ = (\i_pixreg|Mux0~121_combout\ & (((\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Mux0~121_combout\ & (\i_pixreg|Add1~6_combout\ & (!\i_pixcounter|hcnti\(3) & !\i_pixreg|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Mux0~121_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~123_combout\);

-- Location: LCCOMB_X49_Y37_N12
\i_pixreg|Mux0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~124_combout\ = (\i_pixreg|Mux0~120_combout\ & (\i_pixreg|Mux0~122_combout\ & (\i_pixcounter|hcnti\(5)))) # (!\i_pixreg|Mux0~120_combout\ & (((!\i_pixcounter|hcnti\(5) & \i_pixreg|Mux0~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~120_combout\,
	datab => \i_pixreg|Mux0~122_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Mux0~123_combout\,
	combout => \i_pixreg|Mux0~124_combout\);

-- Location: LCCOMB_X49_Y37_N30
\i_pixreg|Mux0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~125_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\ $ (((!\i_pixreg|Add1~0_combout\) # (!\i_pixcounter|hcnti\(5)))))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~6_combout\) # ((\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~125_combout\);

-- Location: LCCOMB_X49_Y37_N24
\i_pixreg|Mux0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~126_combout\ = (\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~0_combout\ $ (((!\i_pixreg|Add1~2_combout\ & !\i_pixcounter|hcnti\(3)))))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(3))) # 
-- (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~126_combout\);

-- Location: LCCOMB_X49_Y37_N2
\i_pixreg|Mux0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~127_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixcounter|hcnti\(3))))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(3) & \i_pixreg|Mux0~126_combout\)) # (!\i_pixcounter|hcnti\(5) & 
-- (!\i_pixcounter|hcnti\(3) & !\i_pixreg|Mux0~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~126_combout\,
	combout => \i_pixreg|Mux0~127_combout\);

-- Location: LCCOMB_X49_Y37_N4
\i_pixreg|Mux0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~128_combout\ = (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(5) & !\i_pixreg|Add1~0_combout\))) # (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(5) $ 
-- (\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~128_combout\);

-- Location: LCCOMB_X49_Y37_N14
\i_pixreg|Mux0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~129_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~127_combout\ & (\i_pixreg|Mux0~128_combout\)) # (!\i_pixreg|Mux0~127_combout\ & ((!\i_pixreg|Mux0~125_combout\))))) # (!\i_pixreg|Add1~4_combout\ & 
-- (((\i_pixreg|Mux0~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~128_combout\,
	datac => \i_pixreg|Mux0~125_combout\,
	datad => \i_pixreg|Mux0~127_combout\,
	combout => \i_pixreg|Mux0~129_combout\);

-- Location: LCCOMB_X49_Y37_N16
\i_pixreg|Mux0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~130_combout\ = (\i_pixcounter|hcnti\(6) & (((\i_pixreg|Add1~10_combout\) # (\i_pixreg|Mux0~124_combout\)))) # (!\i_pixcounter|hcnti\(6) & (\i_pixreg|Mux0~129_combout\ & (!\i_pixreg|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Mux0~129_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~124_combout\,
	combout => \i_pixreg|Mux0~130_combout\);

-- Location: LCCOMB_X49_Y37_N18
\i_pixreg|Mux0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~131_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(5))) # (!\i_pixreg|Add1~0_combout\ & ((!\i_pixreg|Add1~2_combout\))))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~2_combout\ & 
-- ((\i_pixcounter|hcnti\(5)) # (\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~131_combout\);

-- Location: LCCOMB_X49_Y37_N20
\i_pixreg|Mux0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~132_combout\ = (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~131_combout\ & \i_pixreg|Add1~2_combout\)) # (!\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Mux0~131_combout\ & !\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~131_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~132_combout\);

-- Location: LCCOMB_X49_Y37_N6
\i_pixreg|Mux0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~133_combout\ = (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~130_combout\ & ((\i_pixreg|Mux0~132_combout\))) # (!\i_pixreg|Mux0~130_combout\ & (\i_pixreg|Mux0~119_combout\)))) # (!\i_pixreg|Add1~10_combout\ & 
-- (((\i_pixreg|Mux0~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~119_combout\,
	datab => \i_pixreg|Mux0~132_combout\,
	datac => \i_pixreg|Add1~10_combout\,
	datad => \i_pixreg|Mux0~130_combout\,
	combout => \i_pixreg|Mux0~133_combout\);

-- Location: LCCOMB_X46_Y36_N20
\i_pixreg|Mux0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~134_combout\ = (\i_pixcounter|hcnti\(4) & ((\i_pixreg|Mux0~116_combout\) # ((\i_pixreg|Add1~12_combout\)))) # (!\i_pixcounter|hcnti\(4) & (((!\i_pixreg|Add1~12_combout\ & \i_pixreg|Mux0~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~116_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~133_combout\,
	combout => \i_pixreg|Mux0~134_combout\);

-- Location: LCCOMB_X47_Y37_N18
\i_pixreg|Mux0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~135_combout\ = (\i_pixreg|Add1~10_combout\ & (((!\i_pixreg|Add1~4_combout\ & \i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~4_combout\) # 
-- (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~135_combout\);

-- Location: LCCOMB_X47_Y37_N4
\i_pixreg|Mux0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~136_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\) # ((\i_pixcounter|hcnti\(6) & \i_pixreg|Mux0~135_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~0_combout\ & 
-- !\i_pixreg|Mux0~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~2_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~135_combout\,
	combout => \i_pixreg|Mux0~136_combout\);

-- Location: LCCOMB_X46_Y37_N12
\i_pixreg|Mux0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~137_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~10_combout\ $ (!\i_pixreg|Add1~4_combout\)))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~10_combout\ $ 
-- (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~137_combout\);

-- Location: LCCOMB_X46_Y37_N6
\i_pixreg|Mux0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~138_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~137_combout\ & ((\i_pixreg|Add1~4_combout\) # (\i_pixreg|Mux0~136_combout\)))) # (!\i_pixreg|Add1~0_combout\ & (((\i_pixreg|Mux0~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~137_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~136_combout\,
	combout => \i_pixreg|Mux0~138_combout\);

-- Location: LCCOMB_X46_Y37_N8
\i_pixreg|Mux0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~139_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(3) & ((!\i_pixreg|Add1~4_combout\))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~10_combout\)))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixreg|Add1~10_combout\ & 
-- ((\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~139_combout\);

-- Location: LCCOMB_X46_Y37_N18
\i_pixreg|Mux0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~140_combout\ = (\i_pixreg|Add1~0_combout\ & (((\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~139_combout\ & (\i_pixreg|Add1~2_combout\ & \i_pixreg|Add1~10_combout\)) # (!\i_pixreg|Mux0~139_combout\ & 
-- (!\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~139_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~140_combout\);

-- Location: LCCOMB_X46_Y37_N20
\i_pixreg|Mux0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~141_combout\ = (\i_pixreg|Add1~10_combout\ & (((\i_pixcounter|hcnti\(3) & \i_pixreg|Add1~4_combout\)) # (!\i_pixreg|Mux0~140_combout\))) # (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Mux0~140_combout\ & ((\i_pixcounter|hcnti\(3)) # 
-- (!\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~140_combout\,
	combout => \i_pixreg|Mux0~141_combout\);

-- Location: LCCOMB_X46_Y37_N30
\i_pixreg|Mux0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~142_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~141_combout\ & (\i_pixcounter|hcnti\(6) & \i_pixreg|Mux0~140_combout\)) # (!\i_pixreg|Mux0~141_combout\ & (!\i_pixcounter|hcnti\(6) & !\i_pixreg|Mux0~140_combout\)))) # 
-- (!\i_pixreg|Add1~0_combout\ & (((\i_pixreg|Mux0~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~141_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~140_combout\,
	combout => \i_pixreg|Mux0~142_combout\);

-- Location: LCCOMB_X46_Y37_N16
\i_pixreg|Mux0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~143_combout\ = (\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(6) & \i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~143_combout\);

-- Location: LCCOMB_X46_Y37_N2
\i_pixreg|Mux0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~144_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(6))) # (!\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(6))))) # 
-- (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~4_combout\ $ (((\i_pixcounter|hcnti\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~144_combout\);

-- Location: LCCOMB_X47_Y37_N22
\i_pixreg|Mux0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~145_combout\ = (\i_pixreg|Add1~2_combout\ & (((!\i_pixreg|Add1~4_combout\ & !\i_pixcounter|hcnti\(3))) # (!\i_pixcounter|hcnti\(6)))) # (!\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Add1~4_combout\) # (\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~145_combout\);

-- Location: LCCOMB_X46_Y37_N4
\i_pixreg|Mux0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~146_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~144_combout\) # ((\i_pixreg|Add1~10_combout\)))) # (!\i_pixreg|Add1~0_combout\ & (((!\i_pixreg|Mux0~145_combout\ & !\i_pixreg|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~144_combout\,
	datac => \i_pixreg|Mux0~145_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~146_combout\);

-- Location: LCCOMB_X46_Y37_N14
\i_pixreg|Mux0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~147_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(6) & !\i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(3) $ 
-- (\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~147_combout\);

-- Location: LCCOMB_X46_Y37_N24
\i_pixreg|Mux0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~148_combout\ = (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~146_combout\ & (\i_pixreg|Mux0~147_combout\)) # (!\i_pixreg|Mux0~146_combout\ & ((\i_pixreg|Mux0~143_combout\))))) # (!\i_pixreg|Add1~10_combout\ & 
-- (((\i_pixreg|Mux0~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Mux0~147_combout\,
	datac => \i_pixreg|Mux0~146_combout\,
	datad => \i_pixreg|Mux0~143_combout\,
	combout => \i_pixreg|Mux0~148_combout\);

-- Location: LCCOMB_X46_Y37_N10
\i_pixreg|Mux0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~149_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~142_combout\)) # (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Mux0~148_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~142_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Mux0~148_combout\,
	combout => \i_pixreg|Mux0~149_combout\);

-- Location: LCCOMB_X45_Y37_N28
\i_pixreg|Mux0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~150_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~0_combout\ $ (\i_pixcounter|hcnti\(3))))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~0_combout\ & 
-- !\i_pixcounter|hcnti\(3))) # (!\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~0_combout\ & \i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixreg|Mux0~150_combout\);

-- Location: LCCOMB_X45_Y37_N14
\i_pixreg|Mux0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~151_combout\ = (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~150_combout\ & (\i_pixcounter|hcnti\(3) $ (!\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~150_combout\,
	combout => \i_pixreg|Mux0~151_combout\);

-- Location: LCCOMB_X46_Y37_N28
\i_pixreg|Mux0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~152_combout\ = (\i_pixreg|Mux0~151_combout\) # ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~77_combout\ & !\i_pixreg|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~77_combout\,
	datac => \i_pixreg|Mux0~151_combout\,
	datad => \i_pixreg|Add1~10_combout\,
	combout => \i_pixreg|Mux0~152_combout\);

-- Location: LCCOMB_X46_Y37_N22
\i_pixreg|Mux0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~153_combout\ = (\i_pixreg|Mux0~149_combout\ & ((\i_pixreg|Mux0~152_combout\) # ((!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~149_combout\ & (((\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~149_combout\,
	datab => \i_pixreg|Mux0~152_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~138_combout\,
	combout => \i_pixreg|Mux0~153_combout\);

-- Location: LCCOMB_X46_Y36_N6
\i_pixreg|Mux0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~154_combout\ = (\i_pixreg|Add1~12_combout\ & ((\i_pixreg|Mux0~134_combout\ & (\i_pixreg|Mux0~153_combout\)) # (!\i_pixreg|Mux0~134_combout\ & ((\i_pixreg|Mux0~105_combout\))))) # (!\i_pixreg|Add1~12_combout\ & 
-- (((\i_pixreg|Mux0~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~153_combout\,
	datab => \i_pixreg|Mux0~105_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~134_combout\,
	combout => \i_pixreg|Mux0~154_combout\);

-- Location: LCCOMB_X49_Y35_N24
\i_pixreg|Mux0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~155_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixcounter|hcnti\(4) & \i_pixreg|Add1~2_combout\)) # (!\i_pixreg|Add1~0_combout\))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~0_combout\)) # 
-- (!\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~155_combout\);

-- Location: LCCOMB_X49_Y35_N2
\i_pixreg|Mux0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~156_combout\ = (!\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~4_combout\ & (!\i_pixreg|Add1~0_combout\ & !\i_pixreg|Mux0~155_combout\)) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~0_combout\ & \i_pixreg|Mux0~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~155_combout\,
	combout => \i_pixreg|Mux0~156_combout\);

-- Location: LCCOMB_X48_Y35_N8
\i_pixreg|Mux0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~157_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~2_combout\ $ (((\i_pixreg|Add1~0_combout\) # (!\i_pixreg|Add1~4_combout\)))))

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
	combout => \i_pixreg|Mux0~157_combout\);

-- Location: LCCOMB_X49_Y35_N12
\i_pixreg|Mux0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~158_combout\ = (\i_pixreg|Mux0~156_combout\) # ((\i_pixreg|Mux0~157_combout\ & (!\i_pixcounter|hcnti\(4) & \i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~157_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~156_combout\,
	combout => \i_pixreg|Mux0~158_combout\);

-- Location: LCCOMB_X49_Y35_N14
\i_pixreg|Mux0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~159_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(5) $ (((\i_pixcounter|hcnti\(4)) # (\i_pixcounter|hcnti\(3)))))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(4) & 
-- \i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~159_combout\);

-- Location: LCCOMB_X49_Y35_N16
\i_pixreg|Mux0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~160_combout\ = (\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(5))) # (!\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(3) $ (\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~160_combout\);

-- Location: LCCOMB_X45_Y35_N2
\i_pixreg|Mux0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~161_combout\ = (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~4_combout\ & (\i_pixcounter|hcnti\(3) & \i_pixreg|Add1~2_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & (!\i_pixcounter|hcnti\(3) & 
-- !\i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~161_combout\);

-- Location: LCCOMB_X45_Y35_N28
\i_pixreg|Mux0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~162_combout\ = (\i_pixcounter|hcnti\(3) & (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixreg|Add1~2_combout\))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~2_combout\ $ (((\i_pixreg|Add1~0_combout\ & 
-- !\i_pixreg|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~4_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~162_combout\);

-- Location: LCCOMB_X49_Y35_N26
\i_pixreg|Mux0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~163_combout\ = (!\i_pixcounter|hcnti\(4) & ((\i_pixcounter|hcnti\(5) & ((\i_pixreg|Mux0~161_combout\))) # (!\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~162_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Mux0~161_combout\,
	combout => \i_pixreg|Mux0~163_combout\);

-- Location: LCCOMB_X49_Y35_N28
\i_pixreg|Mux0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~164_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixcounter|hcnti\(6))))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixcounter|hcnti\(6) & (\i_pixreg|Mux0~237_combout\)) # (!\i_pixcounter|hcnti\(6) & ((\i_pixreg|Mux0~163_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~237_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~163_combout\,
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~164_combout\);

-- Location: LCCOMB_X49_Y35_N6
\i_pixreg|Mux0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~165_combout\ = (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(4) & !\i_pixreg|Add1~2_combout\)) # (!\i_pixreg|Add1~0_combout\ & (\i_pixcounter|hcnti\(4) $ (\i_pixreg|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~165_combout\);

-- Location: LCCOMB_X49_Y35_N0
\i_pixreg|Mux0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~166_combout\ = (\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(4) & ((\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(5)) # ((\i_pixcounter|hcnti\(4) & !\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~166_combout\);

-- Location: LCCOMB_X49_Y35_N10
\i_pixreg|Mux0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~167_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(4)) # (\i_pixcounter|hcnti\(5) $ (\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~2_combout\) # (\i_pixcounter|hcnti\(4) $ 
-- (\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~167_combout\);

-- Location: LCCOMB_X49_Y35_N20
\i_pixreg|Mux0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~168_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixcounter|hcnti\(3))))) # (!\i_pixreg|Add1~4_combout\ & ((\i_pixcounter|hcnti\(3) & (\i_pixreg|Mux0~166_combout\)) # (!\i_pixcounter|hcnti\(3) & ((!\i_pixreg|Mux0~167_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~166_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~167_combout\,
	combout => \i_pixreg|Mux0~168_combout\);

-- Location: LCCOMB_X49_Y35_N30
\i_pixreg|Mux0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~169_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~2_combout\) # (!\i_pixcounter|hcnti\(4))))) # (!\i_pixcounter|hcnti\(5) & (((\i_pixcounter|hcnti\(4) & !\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(5),
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~169_combout\);

-- Location: LCCOMB_X49_Y35_N8
\i_pixreg|Mux0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~170_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~168_combout\ & (\i_pixreg|Mux0~169_combout\)) # (!\i_pixreg|Mux0~168_combout\ & ((\i_pixreg|Mux0~165_combout\))))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~168_combout\,
	datac => \i_pixreg|Mux0~169_combout\,
	datad => \i_pixreg|Mux0~165_combout\,
	combout => \i_pixreg|Mux0~170_combout\);

-- Location: LCCOMB_X49_Y35_N18
\i_pixreg|Mux0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~171_combout\ = (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Mux0~164_combout\ & ((\i_pixreg|Mux0~170_combout\))) # (!\i_pixreg|Mux0~164_combout\ & (\i_pixreg|Mux0~158_combout\)))) # (!\i_pixreg|Add1~6_combout\ & 
-- (((\i_pixreg|Mux0~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~158_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Mux0~170_combout\,
	datad => \i_pixreg|Mux0~164_combout\,
	combout => \i_pixreg|Mux0~171_combout\);

-- Location: LCCOMB_X43_Y37_N8
\i_pixreg|Mux0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~172_combout\ = (\i_pixcounter|hcnti\(5)) # ((\i_pixcounter|hcnti\(6)) # (\i_pixreg|Add1~6_combout\ $ (\i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~172_combout\);

-- Location: LCCOMB_X43_Y37_N26
\i_pixreg|Mux0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~173_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(5) & (!\i_pixreg|Add1~6_combout\)) # (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Add1~6_combout\) # (!\i_pixreg|Add1~2_combout\))))) # (!\i_pixcounter|hcnti\(6) & 
-- (((\i_pixreg|Add1~6_combout\ & !\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~173_combout\);

-- Location: LCCOMB_X43_Y37_N28
\i_pixreg|Mux0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~174_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~6_combout\ $ (!\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~174_combout\);

-- Location: LCCOMB_X43_Y37_N6
\i_pixreg|Mux0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~175_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Mux0~173_combout\) # ((\i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(3) & (((\i_pixreg|Mux0~174_combout\ & !\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~173_combout\,
	datab => \i_pixreg|Mux0~174_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~175_combout\);

-- Location: LCCOMB_X43_Y37_N0
\i_pixreg|Mux0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~176_combout\ = (!\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~2_combout\ & ((!\i_pixcounter|hcnti\(6)) # (!\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~176_combout\);

-- Location: LCCOMB_X43_Y37_N18
\i_pixreg|Mux0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~177_combout\ = (\i_pixreg|Mux0~175_combout\ & ((\i_pixreg|Mux0~176_combout\) # ((!\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Mux0~175_combout\ & (((!\i_pixreg|Mux0~172_combout\ & \i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~175_combout\,
	datab => \i_pixreg|Mux0~176_combout\,
	datac => \i_pixreg|Mux0~172_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~177_combout\);

-- Location: LCCOMB_X43_Y37_N4
\i_pixreg|Mux0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~178_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~6_combout\ & ((\i_pixcounter|hcnti\(5)) # (\i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(6) & (((!\i_pixreg|Add1~6_combout\ & \i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~178_combout\);

-- Location: LCCOMB_X43_Y37_N22
\i_pixreg|Mux0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~179_combout\ = (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(6)))) # (!\i_pixreg|Add1~2_combout\ & (!\i_pixcounter|hcnti\(5))))) # (!\i_pixreg|Add1~6_combout\ & (((\i_pixcounter|hcnti\(6) & 
-- !\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~179_combout\);

-- Location: LCCOMB_X43_Y37_N16
\i_pixreg|Mux0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~180_combout\ = (\i_pixreg|Mux0~179_combout\ & (\i_pixreg|Mux0~178_combout\ & \i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Mux0~179_combout\ & (\i_pixreg|Mux0~178_combout\ $ (\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~179_combout\,
	datac => \i_pixreg|Mux0~178_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~180_combout\);

-- Location: LCCOMB_X43_Y37_N10
\i_pixreg|Mux0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~181_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~178_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~179_combout\,
	datac => \i_pixreg|Mux0~178_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~181_combout\);

-- Location: LCCOMB_X43_Y37_N12
\i_pixreg|Mux0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~182_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~180_combout\ & (\i_pixcounter|hcnti\(3) $ (\i_pixreg|Mux0~181_combout\)))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixreg|Mux0~180_combout\ & (\i_pixcounter|hcnti\(3) & 
-- \i_pixreg|Mux0~181_combout\)) # (!\i_pixreg|Mux0~180_combout\ & (!\i_pixcounter|hcnti\(3) & !\i_pixreg|Mux0~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixreg|Mux0~180_combout\,
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Mux0~181_combout\,
	combout => \i_pixreg|Mux0~182_combout\);

-- Location: LCCOMB_X43_Y37_N14
\i_pixreg|Mux0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~183_combout\ = (\i_pixcounter|hcnti\(6) & ((\i_pixcounter|hcnti\(5)) # ((!\i_pixcounter|hcnti\(3) & \i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~0_combout\) # 
-- (!\i_pixcounter|hcnti\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~183_combout\);

-- Location: LCCOMB_X43_Y37_N24
\i_pixreg|Mux0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~184_combout\ = (\i_pixcounter|hcnti\(5) & ((\i_pixreg|Add1~0_combout\ & (!\i_pixcounter|hcnti\(6))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixcounter|hcnti\(3)))))) # (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(6) & 
-- ((\i_pixreg|Add1~0_combout\) # (!\i_pixcounter|hcnti\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~184_combout\);

-- Location: LCCOMB_X43_Y37_N2
\i_pixreg|Mux0~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~185_combout\ = (\i_pixcounter|hcnti\(4) & (((\i_pixreg|Add1~4_combout\)))) # (!\i_pixcounter|hcnti\(4) & ((\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~182_combout\))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~235_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~182_combout\,
	combout => \i_pixreg|Mux0~185_combout\);

-- Location: LCCOMB_X48_Y35_N10
\i_pixreg|Mux0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~186_combout\ = (\i_pixcounter|hcnti\(3) & ((\i_pixreg|Add1~2_combout\) # (\i_pixcounter|hcnti\(6) $ (\i_pixreg|Add1~0_combout\)))) # (!\i_pixcounter|hcnti\(3) & (\i_pixreg|Add1~2_combout\ & ((\i_pixcounter|hcnti\(6)) # 
-- (\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~186_combout\);

-- Location: LCCOMB_X48_Y35_N28
\i_pixreg|Mux0~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~187_combout\ = (\i_pixreg|Mux0~186_combout\ & (\i_pixcounter|hcnti\(5) & (!\i_pixreg|Add1~2_combout\ & \i_pixreg|Add1~6_combout\))) # (!\i_pixreg|Mux0~186_combout\ & (!\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~2_combout\ & 
-- !\i_pixreg|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~186_combout\,
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~187_combout\);

-- Location: LCCOMB_X48_Y35_N14
\i_pixreg|Mux0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~188_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(5) $ ((!\i_pixreg|Add1~2_combout\)))) # (!\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(5) & (\i_pixreg|Add1~2_combout\ $ (!\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(5),
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~6_combout\,
	combout => \i_pixreg|Mux0~188_combout\);

-- Location: LCCOMB_X48_Y35_N0
\i_pixreg|Mux0~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~189_combout\ = (\i_pixreg|Mux0~187_combout\) # ((\i_pixcounter|hcnti\(6) & (\i_pixreg|Add1~0_combout\ & \i_pixreg|Mux0~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Mux0~188_combout\,
	datad => \i_pixreg|Mux0~187_combout\,
	combout => \i_pixreg|Mux0~189_combout\);

-- Location: LCCOMB_X48_Y36_N2
\i_pixreg|Mux0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~190_combout\ = (\i_pixreg|Mux0~185_combout\ & (((\i_pixreg|Mux0~189_combout\)) # (!\i_pixcounter|hcnti\(4)))) # (!\i_pixreg|Mux0~185_combout\ & (\i_pixcounter|hcnti\(4) & (\i_pixreg|Mux0~177_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~185_combout\,
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixreg|Mux0~177_combout\,
	datad => \i_pixreg|Mux0~189_combout\,
	combout => \i_pixreg|Mux0~190_combout\);

-- Location: LCCOMB_X47_Y36_N20
\i_pixreg|Mux0~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~191_combout\ = (\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Mux0~7_combout\ & !\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~67_combout\ & ((\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~67_combout\,
	datac => \i_pixreg|Mux0~7_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~191_combout\);

-- Location: LCCOMB_X47_Y36_N14
\i_pixreg|Mux0~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~192_combout\ = (!\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~7_combout\) # (!\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Mux0~7_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~192_combout\);

-- Location: LCCOMB_X43_Y36_N4
\i_pixreg|Mux0~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~193_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixcounter|hcnti\(6)) # (!\i_pixcounter|hcnti\(3))) # (!\i_pixcounter|hcnti\(4)))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(4)) # (\i_pixcounter|hcnti\(3) $ 
-- (\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~193_combout\);

-- Location: LCCOMB_X47_Y36_N0
\i_pixreg|Mux0~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~194_combout\ = (\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Mux0~193_combout\)) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Mux0~193_combout\,
	datad => \i_pixreg|Mux0~67_combout\,
	combout => \i_pixreg|Mux0~194_combout\);

-- Location: LCCOMB_X46_Y36_N16
\i_pixreg|Mux0~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~195_combout\ = (\i_pixreg|Add1~12_combout\ & (\i_pixreg|Add1~10_combout\)) # (!\i_pixreg|Add1~12_combout\ & ((\i_pixreg|Add1~10_combout\ & (\i_pixreg|Mux0~190_combout\)) # (!\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~233_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~12_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Mux0~190_combout\,
	datad => \i_pixreg|Mux0~233_combout\,
	combout => \i_pixreg|Mux0~195_combout\);

-- Location: LCCOMB_X48_Y36_N4
\i_pixreg|Mux0~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~196_combout\ = (\i_pixcounter|hcnti\(6)) # ((\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(5)) # (!\i_pixcounter|hcnti\(4)))) # (!\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~196_combout\);

-- Location: LCCOMB_X47_Y36_N10
\i_pixreg|Mux0~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~197_combout\ = (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\ & ((!\i_pixreg|Mux0~196_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~67_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~196_combout\,
	combout => \i_pixreg|Mux0~197_combout\);

-- Location: LCCOMB_X49_Y36_N10
\i_pixreg|Mux0~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~198_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|hcnti\(3) & \i_pixcounter|hcnti\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(6),
	datac => \i_pixcounter|hcnti\(3),
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~198_combout\);

-- Location: LCCOMB_X47_Y36_N28
\i_pixreg|Mux0~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~199_combout\ = (\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~198_combout\ & (\i_pixreg|Add1~2_combout\ & \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixreg|Mux0~198_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~199_combout\);

-- Location: LCCOMB_X47_Y36_N6
\i_pixreg|Mux0~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~200_combout\ = (\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Add1~6_combout\) # (\i_pixreg|Mux0~54_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~199_combout\ & (!\i_pixreg|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~199_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~54_combout\,
	combout => \i_pixreg|Mux0~200_combout\);

-- Location: LCCOMB_X48_Y36_N22
\i_pixreg|Mux0~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~201_combout\ = (\i_pixcounter|hcnti\(5) & (((\i_pixcounter|hcnti\(4) & \i_pixcounter|hcnti\(6))) # (!\i_pixcounter|hcnti\(3)))) # (!\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(3) & ((\i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~201_combout\);

-- Location: LCCOMB_X48_Y36_N24
\i_pixreg|Mux0~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~202_combout\ = (\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~7_combout\))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Mux0~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~201_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~7_combout\,
	combout => \i_pixreg|Mux0~202_combout\);

-- Location: LCCOMB_X47_Y36_N8
\i_pixreg|Mux0~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~203_combout\ = (\i_pixreg|Add1~2_combout\ & (((\i_pixreg|Mux0~202_combout\)))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~67_combout\ & (\i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~67_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~202_combout\,
	combout => \i_pixreg|Mux0~203_combout\);

-- Location: LCCOMB_X47_Y36_N26
\i_pixreg|Mux0~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~204_combout\ = (\i_pixreg|Mux0~200_combout\ & ((\i_pixreg|Mux0~203_combout\) # ((!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~200_combout\ & (((\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~200_combout\,
	datab => \i_pixreg|Mux0~203_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~197_combout\,
	combout => \i_pixreg|Mux0~204_combout\);

-- Location: LCCOMB_X46_Y36_N10
\i_pixreg|Mux0~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~205_combout\ = (\i_pixreg|Mux0~195_combout\ & ((\i_pixreg|Mux0~204_combout\) # ((!\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Mux0~195_combout\ & (((\i_pixreg|Add1~12_combout\ & \i_pixreg|Mux0~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~204_combout\,
	datab => \i_pixreg|Mux0~195_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~171_combout\,
	combout => \i_pixreg|Mux0~205_combout\);

-- Location: LCCOMB_X46_Y36_N28
\i_pixreg|Mux0~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~206_combout\ = (\i_pixreg|Add1~8_combout\ & (((\i_pixreg|Add1~14_combout\) # (\i_pixreg|Mux0~154_combout\)))) # (!\i_pixreg|Add1~8_combout\ & (\i_pixreg|Mux0~205_combout\ & (!\i_pixreg|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~205_combout\,
	datab => \i_pixreg|Add1~8_combout\,
	datac => \i_pixreg|Add1~14_combout\,
	datad => \i_pixreg|Mux0~154_combout\,
	combout => \i_pixreg|Mux0~206_combout\);

-- Location: LCCOMB_X48_Y36_N26
\i_pixreg|Mux0~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~207_combout\ = (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(4) & !\i_pixcounter|hcnti\(6))) # (!\i_pixcounter|hcnti\(3) & (!\i_pixcounter|hcnti\(4) & \i_pixcounter|hcnti\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~207_combout\);

-- Location: LCCOMB_X49_Y36_N20
\i_pixreg|Mux0~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~208_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Mux0~198_combout\))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~207_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~198_combout\,
	combout => \i_pixreg|Mux0~208_combout\);

-- Location: LCCOMB_X49_Y36_N22
\i_pixreg|Mux0~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~209_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~51_combout\))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Mux0~39_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~51_combout\,
	combout => \i_pixreg|Mux0~209_combout\);

-- Location: LCCOMB_X49_Y36_N8
\i_pixreg|Mux0~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~210_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~4_combout\) # (!\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~0_combout\)) # 
-- (!\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~210_combout\);

-- Location: LCCOMB_X49_Y36_N18
\i_pixreg|Mux0~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~211_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~4_combout\))) # (!\i_pixreg|Add1~0_combout\ & (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~211_combout\);

-- Location: LCCOMB_X49_Y36_N12
\i_pixreg|Mux0~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~212_combout\ = (\i_pixreg|Mux0~211_combout\ & ((\i_pixreg|Mux0~210_combout\ & (\i_pixreg|Mux0~209_combout\)) # (!\i_pixreg|Mux0~210_combout\ & ((\i_pixreg|Mux0~208_combout\))))) # (!\i_pixreg|Mux0~211_combout\ & (\i_pixreg|Mux0~209_combout\ 
-- & (!\i_pixreg|Mux0~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~209_combout\,
	datab => \i_pixreg|Mux0~211_combout\,
	datac => \i_pixreg|Mux0~210_combout\,
	datad => \i_pixreg|Mux0~208_combout\,
	combout => \i_pixreg|Mux0~212_combout\);

-- Location: LCCOMB_X48_Y35_N26
\i_pixreg|Mux0~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~213_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~6_combout\ $ ((!\i_pixreg|Add1~2_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~2_combout\ & \i_pixreg|Mux0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~10_combout\,
	combout => \i_pixreg|Mux0~213_combout\);

-- Location: LCCOMB_X48_Y35_N4
\i_pixreg|Mux0~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~214_combout\ = (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~4_combout\) # (\i_pixreg|Mux0~10_combout\)))) # (!\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~10_combout\,
	combout => \i_pixreg|Mux0~214_combout\);

-- Location: LCCOMB_X48_Y35_N22
\i_pixreg|Mux0~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~215_combout\ = (\i_pixreg|Mux0~213_combout\ & (((\i_pixreg|Mux0~214_combout\) # (\i_pixreg|Mux0~24_combout\)))) # (!\i_pixreg|Mux0~213_combout\ & (\i_pixreg|Mux0~9_combout\ & (\i_pixreg|Mux0~214_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~213_combout\,
	datab => \i_pixreg|Mux0~9_combout\,
	datac => \i_pixreg|Mux0~214_combout\,
	datad => \i_pixreg|Mux0~24_combout\,
	combout => \i_pixreg|Mux0~215_combout\);

-- Location: LCCOMB_X47_Y36_N12
\i_pixreg|Mux0~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~216_combout\ = (\i_pixreg|Add1~2_combout\ & ((\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~7_combout\))) # (!\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~67_combout\,
	datac => \i_pixreg|Mux0~7_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~216_combout\);

-- Location: LCCOMB_X47_Y36_N22
\i_pixreg|Mux0~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~217_combout\ = (\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~191_combout\) # ((\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Add1~4_combout\ & (((!\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~191_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~68_combout\,
	combout => \i_pixreg|Mux0~217_combout\);

-- Location: LCCOMB_X47_Y36_N16
\i_pixreg|Mux0~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~218_combout\ = (\i_pixreg|Mux0~217_combout\ & ((\i_pixreg|Mux0~199_combout\) # ((!\i_pixreg|Add1~6_combout\)))) # (!\i_pixreg|Mux0~217_combout\ & (((\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~217_combout\,
	datab => \i_pixreg|Mux0~199_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~216_combout\,
	combout => \i_pixreg|Mux0~218_combout\);

-- Location: LCCOMB_X46_Y36_N30
\i_pixreg|Mux0~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~219_combout\ = (\i_pixreg|Add1~10_combout\ & ((\i_pixreg|Mux0~215_combout\) # ((\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Add1~10_combout\ & (((!\i_pixreg|Add1~12_combout\ & \i_pixreg|Mux0~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~215_combout\,
	datab => \i_pixreg|Add1~10_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~218_combout\,
	combout => \i_pixreg|Mux0~219_combout\);

-- Location: LCCOMB_X49_Y36_N6
\i_pixreg|Mux0~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~220_combout\ = (\i_pixreg|Add1~6_combout\ & (!\i_pixreg|Add1~2_combout\ & \i_pixreg|Mux0~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~198_combout\,
	combout => \i_pixreg|Mux0~220_combout\);

-- Location: LCCOMB_X49_Y36_N16
\i_pixreg|Mux0~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~221_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(4) & (\i_pixreg|Add1~6_combout\ $ (!\i_pixreg|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~221_combout\);

-- Location: LCCOMB_X49_Y36_N2
\i_pixreg|Mux0~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~222_combout\ = (\i_pixcounter|hcnti\(6) & \i_pixreg|Mux0~221_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~221_combout\,
	combout => \i_pixreg|Mux0~222_combout\);

-- Location: LCCOMB_X48_Y36_N20
\i_pixreg|Mux0~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~223_combout\ = (\i_pixcounter|hcnti\(5) & (((!\i_pixcounter|hcnti\(6))))) # (!\i_pixcounter|hcnti\(5) & ((\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(3) & !\i_pixcounter|hcnti\(6))) # (!\i_pixcounter|hcnti\(4) & 
-- ((\i_pixcounter|hcnti\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(3),
	datac => \i_pixcounter|hcnti\(4),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_pixreg|Mux0~223_combout\);

-- Location: LCCOMB_X49_Y36_N28
\i_pixreg|Mux0~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~224_combout\ = (\i_pixreg|Add1~6_combout\ & (((\i_pixreg|Add1~2_combout\ & \i_pixreg|Mux0~51_combout\)))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~223_combout\)) # (!\i_pixreg|Add1~2_combout\ & 
-- ((\i_pixreg|Mux0~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~6_combout\,
	datab => \i_pixreg|Mux0~223_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Mux0~51_combout\,
	combout => \i_pixreg|Mux0~224_combout\);

-- Location: LCCOMB_X49_Y36_N14
\i_pixreg|Mux0~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~225_combout\ = (\i_pixreg|Add1~0_combout\ & (((\i_pixreg|Add1~4_combout\)))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~4_combout\ & ((\i_pixreg|Mux0~222_combout\))) # (!\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~224_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~222_combout\,
	combout => \i_pixreg|Mux0~225_combout\);

-- Location: LCCOMB_X49_Y36_N24
\i_pixreg|Mux0~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~226_combout\ = (\i_pixcounter|hcnti\(3)) # ((\i_pixcounter|hcnti\(4)) # (\i_pixreg|Add1~6_combout\ $ (\i_pixreg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_pixreg|Mux0~226_combout\);

-- Location: LCCOMB_X49_Y36_N26
\i_pixreg|Mux0~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~227_combout\ = (\i_pixcounter|hcnti\(6)) # (\i_pixreg|Mux0~226_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~226_combout\,
	combout => \i_pixreg|Mux0~227_combout\);

-- Location: LCCOMB_X49_Y36_N4
\i_pixreg|Mux0~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~228_combout\ = (\i_pixreg|Mux0~225_combout\ & (((!\i_pixreg|Add1~0_combout\)) # (!\i_pixreg|Mux0~227_combout\))) # (!\i_pixreg|Mux0~225_combout\ & (((\i_pixreg|Add1~0_combout\ & \i_pixreg|Mux0~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~227_combout\,
	datab => \i_pixreg|Mux0~225_combout\,
	datac => \i_pixreg|Add1~0_combout\,
	datad => \i_pixreg|Mux0~220_combout\,
	combout => \i_pixreg|Mux0~228_combout\);

-- Location: LCCOMB_X46_Y36_N8
\i_pixreg|Mux0~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~229_combout\ = (\i_pixreg|Mux0~219_combout\ & ((\i_pixreg|Mux0~228_combout\) # ((!\i_pixreg|Add1~12_combout\)))) # (!\i_pixreg|Mux0~219_combout\ & (((\i_pixreg|Add1~12_combout\ & \i_pixreg|Mux0~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Mux0~219_combout\,
	datab => \i_pixreg|Mux0~228_combout\,
	datac => \i_pixreg|Add1~12_combout\,
	datad => \i_pixreg|Mux0~212_combout\,
	combout => \i_pixreg|Mux0~229_combout\);

-- Location: LCCOMB_X46_Y36_N26
\i_pixreg|Mux0~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~230_combout\ = (\i_pixreg|Add1~14_combout\ & ((\i_pixreg|Mux0~206_combout\ & (\i_pixreg|Mux0~229_combout\)) # (!\i_pixreg|Mux0~206_combout\ & ((\i_pixreg|Mux0~86_combout\))))) # (!\i_pixreg|Add1~14_combout\ & (\i_pixreg|Mux0~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~14_combout\,
	datab => \i_pixreg|Mux0~206_combout\,
	datac => \i_pixreg|Mux0~229_combout\,
	datad => \i_pixreg|Mux0~86_combout\,
	combout => \i_pixreg|Mux0~230_combout\);

-- Location: LCCOMB_X46_Y36_N24
\i_pixreg|Mux0~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~231_combout\ = (\i_pixreg|Mux0~31_combout\) # ((!\i_pixreg|Add1~16_combout\ & \i_pixreg|Mux0~230_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|Add1~16_combout\,
	datac => \i_pixreg|Mux0~230_combout\,
	datad => \i_pixreg|Mux0~31_combout\,
	combout => \i_pixreg|Mux0~231_combout\);

-- Location: FF_X38_Y36_N11
\inst1|shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~2_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(7));

-- Location: LCCOMB_X38_Y36_N12
\inst1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (\inst1|shiftreg\(3) & (!\inst1|shiftreg\(4) & (\inst1|shiftreg\(5) & !\inst1|shiftreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(3),
	datab => \inst1|shiftreg\(4),
	datac => \inst1|shiftreg\(5),
	datad => \inst1|shiftreg\(1),
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X38_Y36_N14
\inst1|Number[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number[0]~0_combout\ = (\inst1|Equal4~0_combout\ & (!\inst1|shiftreg\(6) & (!\inst1|shiftreg\(7) & !\inst1|shiftreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~0_combout\,
	datab => \inst1|shiftreg\(6),
	datac => \inst1|shiftreg\(7),
	datad => \inst1|shiftreg\(2),
	combout => \inst1|Number[0]~0_combout\);

-- Location: LCCOMB_X39_Y34_N2
\inst|color[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|color[0]~18_combout\ = \inst|color\(0) $ (((!\inst|Equal0~0_combout\ & !\inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|color\(0),
	datad => \inst|Equal0~5_combout\,
	combout => \inst|color[0]~18_combout\);

-- Location: LCCOMB_X41_Y36_N28
\i_vs_gen|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~1_combout\ = (\i_linecounter|vcnti\(2) & ((\i_linecounter|vcnti\(6)) # ((\i_linecounter|vcnti\(1))))) # (!\i_linecounter|vcnti\(2) & (\i_linecounter|vcnti\(6) & (\i_linecounter|vcnti\(0) & \i_linecounter|vcnti\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(2),
	datab => \i_linecounter|vcnti\(6),
	datac => \i_linecounter|vcnti\(0),
	datad => \i_linecounter|vcnti\(1),
	combout => \i_vs_gen|process_0~1_combout\);

-- Location: LCCOMB_X41_Y36_N30
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

-- Location: LCCOMB_X43_Y36_N26
\i_pixcounter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~0_combout\ = (!\i_pixcounter|hcnti\(5) & (\i_pixcounter|hcnti\(4) & (\i_pixcounter|hcnti\(2) & \i_pixcounter|hcnti\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(2),
	datad => \i_pixcounter|hcnti\(3),
	combout => \i_pixcounter|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y36_N10
\inst1|shiftreg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~2_combout\ = (\inst1|shiftreg\(8) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|shiftreg\(8),
	datad => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~2_combout\);

-- Location: LCCOMB_X47_Y36_N18
\i_pixreg|Mux0~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~232_combout\ = (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~194_combout\ & (\i_pixreg|Add1~6_combout\))) # (!\i_pixreg|Add1~4_combout\ & (((\i_pixreg|Mux0~191_combout\) # (!\i_pixreg|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~194_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~191_combout\,
	combout => \i_pixreg|Mux0~232_combout\);

-- Location: LCCOMB_X47_Y36_N4
\i_pixreg|Mux0~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~233_combout\ = (\i_pixreg|Mux0~192_combout\) # ((\i_pixreg|Mux0~232_combout\ & ((\i_pixreg|Add1~2_combout\) # (!\i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~192_combout\,
	datac => \i_pixreg|Add1~4_combout\,
	datad => \i_pixreg|Mux0~232_combout\,
	combout => \i_pixreg|Mux0~233_combout\);

-- Location: LCCOMB_X43_Y37_N20
\i_pixreg|Mux0~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~234_combout\ = (\i_pixreg|Add1~0_combout\ & (\i_pixreg|Mux0~183_combout\ $ (((\i_pixreg|Add1~2_combout\) # (!\i_pixreg|Mux0~184_combout\))))) # (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Mux0~183_combout\ & (\i_pixreg|Mux0~184_combout\)) # 
-- (!\i_pixreg|Mux0~183_combout\ & ((!\i_pixreg|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~0_combout\,
	datab => \i_pixreg|Mux0~184_combout\,
	datac => \i_pixreg|Mux0~183_combout\,
	datad => \i_pixreg|Add1~2_combout\,
	combout => \i_pixreg|Mux0~234_combout\);

-- Location: LCCOMB_X43_Y37_N30
\i_pixreg|Mux0~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~235_combout\ = (\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~234_combout\ $ (((\i_pixreg|Add1~6_combout\ & \i_pixreg|Mux0~184_combout\))))) # (!\i_pixreg|Add1~2_combout\ & (\i_pixreg|Mux0~234_combout\ & (\i_pixreg|Add1~6_combout\ $ 
-- (\i_pixreg|Mux0~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~2_combout\,
	datab => \i_pixreg|Mux0~234_combout\,
	datac => \i_pixreg|Add1~6_combout\,
	datad => \i_pixreg|Mux0~184_combout\,
	combout => \i_pixreg|Mux0~235_combout\);

-- Location: LCCOMB_X49_Y35_N4
\i_pixreg|Mux0~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~236_combout\ = (\i_pixreg|Mux0~159_combout\ & (\i_pixcounter|hcnti\(5) $ (\i_pixreg|Mux0~160_combout\ $ (\i_pixreg|Add1~0_combout\)))) # (!\i_pixreg|Mux0~159_combout\ & ((\i_pixcounter|hcnti\(5) & (\i_pixreg|Mux0~160_combout\ & 
-- \i_pixreg|Add1~0_combout\)) # (!\i_pixcounter|hcnti\(5) & (!\i_pixreg|Mux0~160_combout\ & !\i_pixreg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixreg|Mux0~160_combout\,
	datac => \i_pixreg|Mux0~159_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~236_combout\);

-- Location: LCCOMB_X49_Y35_N22
\i_pixreg|Mux0~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~237_combout\ = (\i_pixreg|Mux0~236_combout\ & (\i_pixreg|Add1~4_combout\ $ ((\i_pixreg|Mux0~159_combout\)))) # (!\i_pixreg|Mux0~236_combout\ & (\i_pixreg|Add1~4_combout\ & (\i_pixreg|Mux0~159_combout\ & \i_pixreg|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Mux0~236_combout\,
	datac => \i_pixreg|Mux0~159_combout\,
	datad => \i_pixreg|Add1~0_combout\,
	combout => \i_pixreg|Mux0~237_combout\);

-- Location: LCCOMB_X46_Y35_N20
\i_pixreg|Mux0~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~238_combout\ = (!\i_pixreg|Add1~0_combout\ & ((\i_pixreg|Add1~10_combout\ & (\i_pixreg|Add1~2_combout\ & !\i_pixreg|Add1~4_combout\)) # (!\i_pixreg|Add1~10_combout\ & (!\i_pixreg|Add1~2_combout\ & \i_pixreg|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~10_combout\,
	datab => \i_pixreg|Add1~0_combout\,
	datac => \i_pixreg|Add1~2_combout\,
	datad => \i_pixreg|Add1~4_combout\,
	combout => \i_pixreg|Mux0~238_combout\);

-- Location: LCCOMB_X46_Y35_N14
\i_pixreg|Mux0~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Mux0~239_combout\ = (\i_pixreg|Mux0~238_combout\ & ((\i_pixreg|Add1~6_combout\ & (\i_pixreg|Add1~4_combout\ & !\i_pixcounter|hcnti\(6))) # (!\i_pixreg|Add1~6_combout\ & ((\i_pixcounter|hcnti\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|Add1~4_combout\,
	datab => \i_pixreg|Add1~6_combout\,
	datac => \i_pixcounter|hcnti\(6),
	datad => \i_pixreg|Mux0~238_combout\,
	combout => \i_pixreg|Mux0~239_combout\);

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

-- Location: LCCOMB_X43_Y35_N0
\i_pixcounter|hcnti~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~0_combout\ = (\i_pixcounter|Add0~16_combout\ & !\i_pixcounter|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|Add0~16_combout\,
	datac => \i_pixcounter|Equal0~2_combout\,
	combout => \i_pixcounter|hcnti~0_combout\);

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

-- Location: LCCOMB_X42_Y36_N2
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

-- Location: FF_X42_Y36_N3
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

-- Location: FF_X43_Y35_N1
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

-- Location: LCCOMB_X43_Y35_N10
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

-- Location: LCCOMB_X43_Y35_N12
\i_pixcounter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~2_combout\ = (\i_pixcounter|hcnti\(1) & (!\i_pixcounter|Add0~1\)) # (!\i_pixcounter|hcnti\(1) & ((\i_pixcounter|Add0~1\) # (GND)))
-- \i_pixcounter|Add0~3\ = CARRY((!\i_pixcounter|Add0~1\) # (!\i_pixcounter|hcnti\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(1),
	datad => VCC,
	cin => \i_pixcounter|Add0~1\,
	combout => \i_pixcounter|Add0~2_combout\,
	cout => \i_pixcounter|Add0~3\);

-- Location: LCCOMB_X43_Y35_N14
\i_pixcounter|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~4_combout\ = (\i_pixcounter|hcnti\(2) & (\i_pixcounter|Add0~3\ $ (GND))) # (!\i_pixcounter|hcnti\(2) & (!\i_pixcounter|Add0~3\ & VCC))
-- \i_pixcounter|Add0~5\ = CARRY((\i_pixcounter|hcnti\(2) & !\i_pixcounter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(2),
	datad => VCC,
	cin => \i_pixcounter|Add0~3\,
	combout => \i_pixcounter|Add0~4_combout\,
	cout => \i_pixcounter|Add0~5\);

-- Location: LCCOMB_X43_Y35_N16
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

-- Location: LCCOMB_X43_Y35_N4
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

-- Location: FF_X43_Y35_N5
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

-- Location: LCCOMB_X43_Y35_N18
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

-- Location: LCCOMB_X43_Y35_N20
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

-- Location: FF_X43_Y35_N21
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

-- Location: LCCOMB_X43_Y35_N22
\i_pixcounter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Add0~12_combout\ = (\i_pixcounter|hcnti\(6) & (\i_pixcounter|Add0~11\ $ (GND))) # (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|Add0~11\ & VCC))
-- \i_pixcounter|Add0~13\ = CARRY((\i_pixcounter|hcnti\(6) & !\i_pixcounter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datad => VCC,
	cin => \i_pixcounter|Add0~11\,
	combout => \i_pixcounter|Add0~12_combout\,
	cout => \i_pixcounter|Add0~13\);

-- Location: LCCOMB_X43_Y35_N24
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

-- Location: FF_X43_Y35_N25
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

-- Location: LCCOMB_X43_Y35_N28
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

-- Location: LCCOMB_X43_Y35_N2
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

-- Location: FF_X43_Y35_N3
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

-- Location: FF_X43_Y35_N11
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

-- Location: LCCOMB_X43_Y36_N20
\i_pixcounter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~1_combout\ = (!\i_pixcounter|hcnti\(6) & (!\i_pixcounter|hcnti\(1) & (\i_pixcounter|hcnti\(0) & !\i_pixcounter|hcnti\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_pixcounter|hcnti\(1),
	datac => \i_pixcounter|hcnti\(0),
	datad => \i_pixcounter|hcnti\(7),
	combout => \i_pixcounter|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y36_N30
\i_pixcounter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|Equal0~2_combout\ = (\i_pixcounter|Equal0~0_combout\ & (\i_pixcounter|hcnti\(9) & (\i_pixcounter|hcnti\(8) & \i_pixcounter|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|Equal0~0_combout\,
	datab => \i_pixcounter|hcnti\(9),
	datac => \i_pixcounter|hcnti\(8),
	datad => \i_pixcounter|Equal0~1_combout\,
	combout => \i_pixcounter|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y35_N8
\i_pixcounter|hcnti~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~4_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixcounter|Equal0~2_combout\,
	datad => \i_pixcounter|Add0~2_combout\,
	combout => \i_pixcounter|hcnti~4_combout\);

-- Location: FF_X43_Y35_N9
\i_pixcounter|hcnti[1]\ : dffeas
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
	q => \i_pixcounter|hcnti\(1));

-- Location: LCCOMB_X43_Y35_N30
\i_pixcounter|hcnti~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~3_combout\ = (\i_pixcounter|Add0~4_combout\ & !\i_pixcounter|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|Add0~4_combout\,
	datac => \i_pixcounter|Equal0~2_combout\,
	combout => \i_pixcounter|hcnti~3_combout\);

-- Location: FF_X43_Y35_N31
\i_pixcounter|hcnti[2]\ : dffeas
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
	q => \i_pixcounter|hcnti\(2));

-- Location: LCCOMB_X43_Y36_N2
\i_linecounter|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~1_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(1) & \i_pixcounter|hcnti\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(1),
	datac => \i_pixcounter|hcnti\(2),
	combout => \i_linecounter|process_0~1_combout\);

-- Location: LCCOMB_X43_Y36_N16
\i_hs_gen|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~0_combout\ = (\i_pixcounter|hcnti\(3) & (\i_pixcounter|hcnti\(2) & ((\i_pixcounter|hcnti\(1)) # (\i_pixcounter|hcnti\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(3),
	datab => \i_pixcounter|hcnti\(1),
	datac => \i_pixcounter|hcnti\(2),
	datad => \i_pixcounter|hcnti\(0),
	combout => \i_hs_gen|process_0~0_combout\);

-- Location: LCCOMB_X43_Y35_N6
\i_pixcounter|hcnti~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixcounter|hcnti~5_combout\ = (!\i_pixcounter|Equal0~2_combout\ & \i_pixcounter|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixcounter|Equal0~2_combout\,
	datad => \i_pixcounter|Add0~8_combout\,
	combout => \i_pixcounter|hcnti~5_combout\);

-- Location: FF_X43_Y35_N7
\i_pixcounter|hcnti[4]\ : dffeas
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
	q => \i_pixcounter|hcnti\(4));

-- Location: LCCOMB_X43_Y36_N28
\i_hs_gen|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~1_combout\ = (\i_pixcounter|hcnti\(4)) # ((\i_pixcounter|hcnti\(5) & ((\i_hs_gen|process_0~0_combout\))) # (!\i_pixcounter|hcnti\(5) & (\i_linecounter|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_linecounter|process_0~1_combout\,
	datac => \i_hs_gen|process_0~0_combout\,
	datad => \i_pixcounter|hcnti\(4),
	combout => \i_hs_gen|process_0~1_combout\);

-- Location: LCCOMB_X43_Y36_N22
\i_linecounter|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~0_combout\ = (\i_pixcounter|hcnti\(9) & (!\i_pixcounter|hcnti\(8) & \i_pixcounter|hcnti\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixcounter|hcnti\(9),
	datac => \i_pixcounter|hcnti\(8),
	datad => \i_pixcounter|hcnti\(7),
	combout => \i_linecounter|process_0~0_combout\);

-- Location: LCCOMB_X43_Y36_N14
\i_hs_gen|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_hs_gen|process_0~2_combout\ = (\i_linecounter|process_0~0_combout\ & ((\i_pixcounter|hcnti\(6) & ((!\i_pixcounter|hcnti\(5)) # (!\i_hs_gen|process_0~1_combout\))) # (!\i_pixcounter|hcnti\(6) & ((\i_hs_gen|process_0~1_combout\) # 
-- (\i_pixcounter|hcnti\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(6),
	datab => \i_hs_gen|process_0~1_combout\,
	datac => \i_linecounter|process_0~0_combout\,
	datad => \i_pixcounter|hcnti\(5),
	combout => \i_hs_gen|process_0~2_combout\);

-- Location: FF_X43_Y36_N15
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

-- Location: LCCOMB_X43_Y36_N12
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

-- Location: FF_X43_Y36_N13
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

-- Location: LCCOMB_X43_Y36_N18
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

-- Location: FF_X43_Y36_N19
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

-- Location: LCCOMB_X43_Y36_N0
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

-- Location: FF_X43_Y36_N1
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

-- Location: LCCOMB_X41_Y36_N8
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

-- Location: LCCOMB_X41_Y36_N10
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

-- Location: FF_X43_Y35_N23
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

-- Location: LCCOMB_X43_Y36_N6
\i_linecounter|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~2_combout\ = (!\i_pixcounter|hcnti\(5) & (!\i_pixcounter|hcnti\(4) & (!\i_pixcounter|hcnti\(0) & !\i_pixcounter|hcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(5),
	datab => \i_pixcounter|hcnti\(4),
	datac => \i_pixcounter|hcnti\(0),
	datad => \i_pixcounter|hcnti\(6),
	combout => \i_linecounter|process_0~2_combout\);

-- Location: LCCOMB_X43_Y36_N8
\i_linecounter|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|process_0~3_combout\ = (\i_ce_gen|counter\(0) & (\i_linecounter|process_0~1_combout\ & (\i_linecounter|process_0~0_combout\ & \i_linecounter|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ce_gen|counter\(0),
	datab => \i_linecounter|process_0~1_combout\,
	datac => \i_linecounter|process_0~0_combout\,
	datad => \i_linecounter|process_0~2_combout\,
	combout => \i_linecounter|process_0~3_combout\);

-- Location: FF_X41_Y36_N11
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

-- Location: LCCOMB_X41_Y36_N4
\i_linecounter|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~0_combout\ = (((!\i_linecounter|vcnti\(0) & !\i_linecounter|vcnti\(1))) # (!\i_linecounter|vcnti\(3))) # (!\i_linecounter|vcnti\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(2),
	datab => \i_linecounter|vcnti\(0),
	datac => \i_linecounter|vcnti\(3),
	datad => \i_linecounter|vcnti\(1),
	combout => \i_linecounter|LessThan0~0_combout\);

-- Location: LCCOMB_X41_Y36_N18
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

-- Location: LCCOMB_X41_Y36_N20
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

-- Location: FF_X41_Y36_N21
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

-- Location: LCCOMB_X41_Y36_N22
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

-- Location: LCCOMB_X41_Y36_N24
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

-- Location: LCCOMB_X41_Y36_N26
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

-- Location: FF_X41_Y36_N27
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

-- Location: FF_X41_Y36_N23
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

-- Location: LCCOMB_X42_Y36_N24
\i_linecounter|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~1_combout\ = (!\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti\(6) & (!\i_linecounter|vcnti\(4) & !\i_linecounter|vcnti\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(6),
	datac => \i_linecounter|vcnti\(4),
	datad => \i_linecounter|vcnti\(7),
	combout => \i_linecounter|LessThan0~1_combout\);

-- Location: LCCOMB_X41_Y36_N6
\i_linecounter|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_linecounter|LessThan0~2_combout\ = (\i_linecounter|vcnti\(9) & ((\i_linecounter|vcnti\(8)) # ((!\i_linecounter|LessThan0~1_combout\) # (!\i_linecounter|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(8),
	datab => \i_linecounter|LessThan0~0_combout\,
	datac => \i_linecounter|vcnti\(9),
	datad => \i_linecounter|LessThan0~1_combout\,
	combout => \i_linecounter|LessThan0~2_combout\);

-- Location: FF_X41_Y36_N9
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

-- Location: LCCOMB_X41_Y36_N12
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

-- Location: LCCOMB_X41_Y36_N14
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

-- Location: FF_X41_Y36_N15
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

-- Location: LCCOMB_X41_Y36_N16
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

-- Location: FF_X41_Y36_N17
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

-- Location: FF_X41_Y36_N19
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

-- Location: LCCOMB_X41_Y36_N2
\i_vs_gen|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_vs_gen|process_0~0_combout\ = (\i_linecounter|vcnti\(8) & (\i_linecounter|vcnti\(5) & (!\i_linecounter|vcnti\(9) & \i_linecounter|vcnti\(6)))) # (!\i_linecounter|vcnti\(8) & (!\i_linecounter|vcnti\(5) & (\i_linecounter|vcnti\(9) & 
-- !\i_linecounter|vcnti\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(8),
	datab => \i_linecounter|vcnti\(5),
	datac => \i_linecounter|vcnti\(9),
	datad => \i_linecounter|vcnti\(6),
	combout => \i_vs_gen|process_0~0_combout\);

-- Location: LCCOMB_X41_Y36_N0
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

-- Location: FF_X41_Y36_N1
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

-- Location: LCCOMB_X42_Y36_N26
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

-- Location: FF_X42_Y36_N27
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

-- Location: FF_X42_Y36_N7
i_vs3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	asdata => \i_blank5~q\,
	clrn => \KEY0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_vs3~q\);

-- Location: LCCOMB_X42_Y36_N16
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

-- Location: FF_X42_Y36_N17
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

-- Location: FF_X41_Y36_N25
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

-- Location: LCCOMB_X42_Y36_N14
\iBlank_gen|blank~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~0_combout\ = (((!\i_linecounter|vcnti\(7)) # (!\i_linecounter|vcnti\(8))) # (!\i_linecounter|vcnti\(6))) # (!\i_linecounter|vcnti\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_linecounter|vcnti\(5),
	datab => \i_linecounter|vcnti\(6),
	datac => \i_linecounter|vcnti\(8),
	datad => \i_linecounter|vcnti\(7),
	combout => \iBlank_gen|blank~0_combout\);

-- Location: LCCOMB_X43_Y36_N24
\iBlank_gen|blank~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~1_combout\ = (!\i_linecounter|vcnti\(9) & (((!\i_pixcounter|hcnti\(8) & !\i_pixcounter|hcnti\(7))) # (!\i_pixcounter|hcnti\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixcounter|hcnti\(8),
	datab => \i_pixcounter|hcnti\(9),
	datac => \i_linecounter|vcnti\(9),
	datad => \i_pixcounter|hcnti\(7),
	combout => \iBlank_gen|blank~1_combout\);

-- Location: LCCOMB_X42_Y36_N12
\iBlank_gen|blank~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \iBlank_gen|blank~2_combout\ = (\iBlank_gen|blank~0_combout\ & \iBlank_gen|blank~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iBlank_gen|blank~0_combout\,
	datad => \iBlank_gen|blank~1_combout\,
	combout => \iBlank_gen|blank~2_combout\);

-- Location: FF_X42_Y36_N13
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

-- Location: LCCOMB_X42_Y36_N0
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

-- Location: FF_X42_Y36_N1
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

-- Location: LCCOMB_X42_Y36_N4
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

-- Location: FF_X42_Y36_N5
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

-- Location: LCCOMB_X38_Y34_N0
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

-- Location: FF_X38_Y34_N1
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

-- Location: LCCOMB_X42_Y34_N20
\i_pixreg|counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|counter[1]~0_combout\ = \i_pixreg|counter\(0) $ (\i_pixreg|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|counter\(0),
	datac => \i_pixreg|counter\(1),
	combout => \i_pixreg|counter[1]~0_combout\);

-- Location: FF_X42_Y34_N21
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

-- Location: LCCOMB_X42_Y34_N30
\i_pixreg|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_pixreg|Equal0~0_combout\ = (\i_pixreg|counter\(0) & !\i_pixreg|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_pixreg|counter\(0),
	datad => \i_pixreg|counter\(1),
	combout => \i_pixreg|Equal0~0_combout\);

-- Location: FF_X40_Y35_N19
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

-- Location: FF_X40_Y35_N23
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

-- Location: FF_X40_Y35_N21
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

-- Location: LCCOMB_X40_Y35_N22
\inst|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan9~0_combout\ = ((!\i_pixreg|vcnt_d\(5) & (!\i_pixreg|vcnt_d\(3) & !\i_pixreg|vcnt_d\(4)))) # (!\i_pixreg|vcnt_d\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(6),
	datab => \i_pixreg|vcnt_d\(5),
	datac => \i_pixreg|vcnt_d\(3),
	datad => \i_pixreg|vcnt_d\(4),
	combout => \inst|LessThan9~0_combout\);

-- Location: FF_X42_Y34_N17
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

-- Location: FF_X42_Y34_N13
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

-- Location: FF_X42_Y35_N15
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

-- Location: FF_X42_Y35_N19
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

-- Location: LCCOMB_X42_Y35_N2
\inst|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan6~0_combout\ = (\i_pixreg|hcnt_d\(3)) # ((\i_pixreg|hcnt_d\(5)) # ((\i_pixreg|hcnt_d\(4)) # (\i_pixreg|hcnt_d\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \i_pixreg|hcnt_d\(5),
	datac => \i_pixreg|hcnt_d\(4),
	datad => \i_pixreg|hcnt_d\(6),
	combout => \inst|LessThan6~0_combout\);

-- Location: LCCOMB_X41_Y35_N28
\inst|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~16_combout\ = (\inst|LessThan9~0_combout\ & ((\i_pixreg|hcnt_d\(8)) # ((\i_pixreg|hcnt_d\(7) & \inst|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(8),
	datab => \inst|LessThan9~0_combout\,
	datac => \i_pixreg|hcnt_d\(7),
	datad => \inst|LessThan6~0_combout\,
	combout => \inst|process_0~16_combout\);

-- Location: LCCOMB_X38_Y34_N14
\inst|counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~19_combout\ = (\inst|counter\(1) & (\i_pixreg|counter\(0) $ (VCC))) # (!\inst|counter\(1) & (\i_pixreg|counter\(0) & VCC))
-- \inst|counter[1]~20\ = CARRY((\inst|counter\(1) & \i_pixreg|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \i_pixreg|counter\(0),
	datad => VCC,
	combout => \inst|counter[1]~19_combout\,
	cout => \inst|counter[1]~20\);

-- Location: LCCOMB_X38_Y34_N16
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

-- Location: FF_X38_Y34_N17
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

-- Location: LCCOMB_X38_Y34_N18
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

-- Location: FF_X38_Y34_N19
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

-- Location: LCCOMB_X38_Y34_N20
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

-- Location: FF_X38_Y34_N21
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

-- Location: LCCOMB_X38_Y34_N24
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

-- Location: FF_X38_Y34_N25
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

-- Location: LCCOMB_X38_Y34_N26
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

-- Location: LCCOMB_X38_Y34_N28
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

-- Location: FF_X38_Y34_N29
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

-- Location: LCCOMB_X38_Y33_N0
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

-- Location: FF_X38_Y33_N1
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

-- Location: LCCOMB_X38_Y33_N2
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

-- Location: FF_X38_Y33_N3
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

-- Location: LCCOMB_X38_Y33_N4
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

-- Location: FF_X38_Y33_N5
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

-- Location: LCCOMB_X38_Y33_N8
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

-- Location: FF_X38_Y33_N9
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

-- Location: LCCOMB_X38_Y33_N10
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

-- Location: LCCOMB_X38_Y33_N14
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

-- Location: FF_X38_Y33_N15
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

-- Location: LCCOMB_X38_Y33_N16
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

-- Location: FF_X38_Y33_N17
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

-- Location: LCCOMB_X38_Y33_N18
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

-- Location: FF_X38_Y33_N19
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

-- Location: LCCOMB_X38_Y33_N28
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

-- Location: FF_X38_Y34_N15
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

-- Location: LCCOMB_X38_Y34_N2
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|counter\(2)) # ((\inst|counter\(3)) # ((\inst|counter\(1)) # (\i_pixreg|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(3),
	datac => \inst|counter\(1),
	datad => \i_pixreg|counter\(0),
	combout => \inst|Equal0~1_combout\);

-- Location: FF_X38_Y33_N11
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

-- Location: LCCOMB_X38_Y33_N22
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|counter\(13)) # ((\inst|counter\(12)) # ((\inst|counter\(15)) # (!\inst|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datab => \inst|counter\(12),
	datac => \inst|counter\(14),
	datad => \inst|counter\(15),
	combout => \inst|Equal0~4_combout\);

-- Location: FF_X38_Y34_N27
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

-- Location: LCCOMB_X38_Y34_N12
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|counter\(5)) # ((\inst|counter\(4)) # ((\inst|counter\(7)) # (!\inst|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datab => \inst|counter\(4),
	datac => \inst|counter\(7),
	datad => \inst|counter\(6),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y34_N8
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|Equal0~3_combout\) # ((\inst|Equal0~1_combout\) # ((\inst|Equal0~4_combout\) # (\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y34_N30
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|Equal0~0_combout\ & !\inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X42_Y33_N10
\inst|VOL_Limit~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit~5_combout\ = ((\inst|VOL_Limit\(8) & ((!\inst|VOL_Limit\(7)) # (!\inst|LessThan21~0_combout\)))) # (!\inst|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|VOL_Limit\(8),
	datac => \inst|LessThan21~0_combout\,
	datad => \inst|VOL_Limit\(7),
	combout => \inst|VOL_Limit~5_combout\);

-- Location: LCCOMB_X39_Y34_N28
\inst|LR_Limit[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LR_Limit[2]~0_combout\ = ((!\inst|Equal0~0_combout\ & !\inst|Equal0~5_combout\)) # (!\inst|LessThan21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|LessThan21~1_combout\,
	datad => \inst|Equal0~5_combout\,
	combout => \inst|LR_Limit[2]~0_combout\);

-- Location: FF_X42_Y33_N11
\inst|VOL_Limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit~5_combout\,
	ena => \inst|LR_Limit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(3));

-- Location: LCCOMB_X43_Y34_N10
\inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|LR_Limit\(2) & ((\inst|Add3~1\) # (GND))) # (!\inst|LR_Limit\(2) & (!\inst|Add3~1\))
-- \inst|Add3~3\ = CARRY((\inst|LR_Limit\(2)) # (!\inst|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LR_Limit\(2),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X43_Y34_N4
\inst|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~22_combout\ = (!\inst|Add3~2_combout\ & (((\inst|LessThan21~0_combout\ & \inst|VOL_Limit\(7))) # (!\inst|VOL_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan21~0_combout\,
	datab => \inst|VOL_Limit\(8),
	datac => \inst|VOL_Limit\(7),
	datad => \inst|Add3~2_combout\,
	combout => \inst|Add3~22_combout\);

-- Location: FF_X43_Y34_N5
\inst|LR_Limit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add3~22_combout\,
	ena => \inst|LR_Limit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(2));

-- Location: LCCOMB_X42_Y33_N18
\inst|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~1_cout\ = CARRY((!\inst|LR_Limit\(1) & !\inst|LR_Limit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(1),
	datab => \inst|LR_Limit\(2),
	datad => VCC,
	cout => \inst|Add1~1_cout\);

-- Location: LCCOMB_X42_Y33_N24
\inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|VOL_Limit\(5) & (!\inst|Add1~5\)) # (!\inst|VOL_Limit\(5) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|VOL_Limit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit\(5),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X42_Y33_N2
\inst|VOL_Limit[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[7]~1_combout\ = (\inst|LessThan21~1_combout\ & ((\inst|Equal0~6_combout\ & (!\inst|Add1~10_combout\)) # (!\inst|Equal0~6_combout\ & ((\inst|VOL_Limit\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Add1~10_combout\,
	datac => \inst|VOL_Limit\(7),
	datad => \inst|LessThan21~1_combout\,
	combout => \inst|VOL_Limit[7]~1_combout\);

-- Location: FF_X42_Y33_N3
\inst|VOL_Limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(7));

-- Location: LCCOMB_X42_Y33_N16
\inst|VOL_Limit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit~4_combout\ = (\inst|Add1~4_combout\ & (((\inst|LessThan21~0_combout\ & \inst|VOL_Limit\(7))) # (!\inst|VOL_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~4_combout\,
	datab => \inst|LessThan21~0_combout\,
	datac => \inst|VOL_Limit\(7),
	datad => \inst|VOL_Limit\(8),
	combout => \inst|VOL_Limit~4_combout\);

-- Location: FF_X42_Y33_N17
\inst|VOL_Limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit~4_combout\,
	ena => \inst|LR_Limit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(4));

-- Location: LCCOMB_X42_Y33_N14
\inst|VOL_Limit[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[5]~3_combout\ = (\inst|LessThan21~1_combout\ & ((\inst|Equal0~6_combout\ & (\inst|Add1~6_combout\)) # (!\inst|Equal0~6_combout\ & ((\inst|VOL_Limit\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Add1~6_combout\,
	datac => \inst|VOL_Limit\(5),
	datad => \inst|LessThan21~1_combout\,
	combout => \inst|VOL_Limit[5]~3_combout\);

-- Location: FF_X42_Y33_N15
\inst|VOL_Limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(5));

-- Location: LCCOMB_X42_Y33_N4
\inst|LessThan21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~0_combout\ = (\inst|VOL_Limit\(6) & (((!\inst|VOL_Limit\(4) & \inst|VOL_Limit\(3))) # (!\inst|VOL_Limit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit\(6),
	datab => \inst|VOL_Limit\(4),
	datac => \inst|VOL_Limit\(3),
	datad => \inst|VOL_Limit\(5),
	combout => \inst|LessThan21~0_combout\);

-- Location: LCCOMB_X42_Y33_N6
\inst|LessThan21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan21~1_combout\ = ((\inst|LessThan21~0_combout\ & \inst|VOL_Limit\(7))) # (!\inst|VOL_Limit\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|VOL_Limit\(8),
	datac => \inst|LessThan21~0_combout\,
	datad => \inst|VOL_Limit\(7),
	combout => \inst|LessThan21~1_combout\);

-- Location: LCCOMB_X42_Y33_N0
\inst|VOL_Limit[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[8]~0_combout\ = (\inst|LessThan21~1_combout\ & ((\inst|Equal0~6_combout\ & (\inst|Add1~12_combout\)) # (!\inst|Equal0~6_combout\ & ((\inst|VOL_Limit\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~12_combout\,
	datab => \inst|Equal0~6_combout\,
	datac => \inst|VOL_Limit\(8),
	datad => \inst|LessThan21~1_combout\,
	combout => \inst|VOL_Limit[8]~0_combout\);

-- Location: FF_X42_Y33_N1
\inst|VOL_Limit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(8));

-- Location: LCCOMB_X42_Y33_N12
\inst|VOL_Limit[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|VOL_Limit[6]~2_combout\ = ((\inst|Equal0~6_combout\ & (!\inst|Add1~8_combout\)) # (!\inst|Equal0~6_combout\ & ((\inst|VOL_Limit\(6))))) # (!\inst|LessThan21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~8_combout\,
	datab => \inst|Equal0~6_combout\,
	datac => \inst|VOL_Limit\(6),
	datad => \inst|LessThan21~1_combout\,
	combout => \inst|VOL_Limit[6]~2_combout\);

-- Location: FF_X42_Y33_N13
\inst|VOL_Limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|VOL_Limit[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VOL_Limit\(6));

-- Location: LCCOMB_X43_Y34_N6
\inst|Add3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~23_combout\ = (!\inst|Add3~0_combout\ & (((\inst|VOL_Limit\(7) & \inst|LessThan21~0_combout\)) # (!\inst|VOL_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|VOL_Limit\(7),
	datac => \inst|VOL_Limit\(8),
	datad => \inst|LessThan21~0_combout\,
	combout => \inst|Add3~23_combout\);

-- Location: FF_X43_Y34_N7
\inst|LR_Limit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add3~23_combout\,
	ena => \inst|LR_Limit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(1));

-- Location: FF_X42_Y34_N3
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

-- Location: LCCOMB_X41_Y33_N14
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_cout\ = CARRY(\i_pixreg|hcnt_d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|hcnt_d\(0),
	datad => VCC,
	cout => \inst|LessThan1~1_cout\);

-- Location: LCCOMB_X41_Y33_N16
\inst|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_cout\ = CARRY((\i_pixreg|hcnt_d\(1) & (!\inst|LR_Limit\(1) & !\inst|LessThan1~1_cout\)) # (!\i_pixreg|hcnt_d\(1) & ((!\inst|LessThan1~1_cout\) # (!\inst|LR_Limit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(1),
	datab => \inst|LR_Limit\(1),
	datad => VCC,
	cin => \inst|LessThan1~1_cout\,
	cout => \inst|LessThan1~3_cout\);

-- Location: LCCOMB_X41_Y33_N18
\inst|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_cout\ = CARRY((\i_pixreg|hcnt_d\(2) & ((\inst|LR_Limit\(2)) # (!\inst|LessThan1~3_cout\))) # (!\i_pixreg|hcnt_d\(2) & (\inst|LR_Limit\(2) & !\inst|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(2),
	datab => \inst|LR_Limit\(2),
	datad => VCC,
	cin => \inst|LessThan1~3_cout\,
	cout => \inst|LessThan1~5_cout\);

-- Location: LCCOMB_X41_Y33_N20
\inst|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_cout\ = CARRY((\i_pixreg|hcnt_d\(3) & (!\inst|VOL_Limit\(3) & !\inst|LessThan1~5_cout\)) # (!\i_pixreg|hcnt_d\(3) & ((!\inst|LessThan1~5_cout\) # (!\inst|VOL_Limit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \inst|VOL_Limit\(3),
	datad => VCC,
	cin => \inst|LessThan1~5_cout\,
	cout => \inst|LessThan1~7_cout\);

-- Location: LCCOMB_X41_Y33_N22
\inst|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~9_cout\ = CARRY((\i_pixreg|hcnt_d\(4) & ((!\inst|LessThan1~7_cout\) # (!\inst|VOL_Limit\(4)))) # (!\i_pixreg|hcnt_d\(4) & (!\inst|VOL_Limit\(4) & !\inst|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(4),
	datab => \inst|VOL_Limit\(4),
	datad => VCC,
	cin => \inst|LessThan1~7_cout\,
	cout => \inst|LessThan1~9_cout\);

-- Location: LCCOMB_X41_Y33_N24
\inst|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~11_cout\ = CARRY((\inst|VOL_Limit\(5) & ((!\inst|LessThan1~9_cout\) # (!\i_pixreg|hcnt_d\(5)))) # (!\inst|VOL_Limit\(5) & (!\i_pixreg|hcnt_d\(5) & !\inst|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit\(5),
	datab => \i_pixreg|hcnt_d\(5),
	datad => VCC,
	cin => \inst|LessThan1~9_cout\,
	cout => \inst|LessThan1~11_cout\);

-- Location: LCCOMB_X41_Y33_N26
\inst|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~13_cout\ = CARRY((\i_pixreg|hcnt_d\(6) & ((\inst|VOL_Limit\(6)) # (!\inst|LessThan1~11_cout\))) # (!\i_pixreg|hcnt_d\(6) & (\inst|VOL_Limit\(6) & !\inst|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(6),
	datab => \inst|VOL_Limit\(6),
	datad => VCC,
	cin => \inst|LessThan1~11_cout\,
	cout => \inst|LessThan1~13_cout\);

-- Location: LCCOMB_X41_Y33_N28
\inst|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~15_cout\ = CARRY((\inst|VOL_Limit\(7) & (!\i_pixreg|hcnt_d\(7) & !\inst|LessThan1~13_cout\)) # (!\inst|VOL_Limit\(7) & ((!\inst|LessThan1~13_cout\) # (!\i_pixreg|hcnt_d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|VOL_Limit\(7),
	datab => \i_pixreg|hcnt_d\(7),
	datad => VCC,
	cin => \inst|LessThan1~13_cout\,
	cout => \inst|LessThan1~15_cout\);

-- Location: LCCOMB_X41_Y33_N30
\inst|LessThan1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~16_combout\ = (\i_pixreg|hcnt_d\(8) & (\inst|VOL_Limit\(8) & \inst|LessThan1~15_cout\)) # (!\i_pixreg|hcnt_d\(8) & ((\inst|VOL_Limit\(8)) # (\inst|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(8),
	datab => \inst|VOL_Limit\(8),
	cin => \inst|LessThan1~15_cout\,
	combout => \inst|LessThan1~16_combout\);

-- Location: FF_X41_Y35_N25
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

-- Location: FF_X41_Y35_N19
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

-- Location: FF_X41_Y35_N21
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

-- Location: LCCOMB_X41_Y35_N10
\inst|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~15_combout\ = (!\i_pixreg|vcnt_d\(7) & (!\i_pixreg|vcnt_d\(8) & (!\i_pixreg|vcnt_d\(9) & !\i_pixreg|hcnt_d\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(7),
	datab => \i_pixreg|vcnt_d\(8),
	datac => \i_pixreg|vcnt_d\(9),
	datad => \i_pixreg|hcnt_d\(9),
	combout => \inst|process_0~15_combout\);

-- Location: LCCOMB_X41_Y35_N30
\inst|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~17_combout\ = (((!\inst|process_0~15_combout\) # (!\inst|LessThan1~16_combout\)) # (!\inst|process_0~16_combout\)) # (!\inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|process_0~16_combout\,
	datac => \inst|LessThan1~16_combout\,
	datad => \inst|process_0~15_combout\,
	combout => \inst|process_0~17_combout\);

-- Location: FF_X41_Y36_N13
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

-- Location: FF_X40_Y35_N29
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

-- Location: FF_X40_Y35_N27
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

-- Location: LCCOMB_X40_Y35_N8
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

-- Location: FF_X40_Y35_N9
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

-- Location: LCCOMB_X40_Y35_N26
\inst|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan13~0_combout\ = (\i_pixreg|vcnt_d\(3) & ((\i_pixreg|vcnt_d\(2)) # ((\i_pixreg|vcnt_d\(1)) # (\i_pixreg|vcnt_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datab => \i_pixreg|vcnt_d\(2),
	datac => \i_pixreg|vcnt_d\(1),
	datad => \i_pixreg|vcnt_d\(0),
	combout => \inst|LessThan13~0_combout\);

-- Location: LCCOMB_X40_Y35_N16
\inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (!\i_pixreg|vcnt_d\(6) & (((!\i_pixreg|vcnt_d\(5)) # (!\inst|LessThan13~0_combout\)) # (!\i_pixreg|vcnt_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(6),
	datab => \i_pixreg|vcnt_d\(4),
	datac => \inst|LessThan13~0_combout\,
	datad => \i_pixreg|vcnt_d\(5),
	combout => \inst|process_0~3_combout\);

-- Location: LCCOMB_X40_Y35_N18
\inst|LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan14~0_combout\ = (!\i_pixreg|vcnt_d\(5) & ((!\i_pixreg|vcnt_d\(4)) # (!\i_pixreg|vcnt_d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datac => \i_pixreg|vcnt_d\(5),
	datad => \i_pixreg|vcnt_d\(4),
	combout => \inst|LessThan14~0_combout\);

-- Location: FF_X40_Y35_N25
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

-- Location: LCCOMB_X41_Y35_N24
\inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\i_pixreg|vcnt_d\(9)) # ((\i_pixreg|vcnt_d\(8)) # (!\i_pixreg|vcnt_d\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(9),
	datab => \i_pixreg|vcnt_d\(7),
	datac => \i_pixreg|vcnt_d\(8),
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X40_Y35_N10
\inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = (\inst|process_0~3_combout\) # ((\inst|process_0~2_combout\) # ((\i_pixreg|vcnt_d\(6) & !\inst|LessThan14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(6),
	datab => \inst|process_0~3_combout\,
	datac => \inst|LessThan14~0_combout\,
	datad => \inst|process_0~2_combout\,
	combout => \inst|process_0~4_combout\);

-- Location: FF_X41_Y34_N25
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

-- Location: LCCOMB_X42_Y35_N4
\inst|LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan15~0_combout\ = (\i_pixreg|hcnt_d\(6) & ((\i_pixreg|hcnt_d\(3)) # ((\i_pixreg|hcnt_d\(5)) # (\i_pixreg|hcnt_d\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \i_pixreg|hcnt_d\(5),
	datac => \i_pixreg|hcnt_d\(4),
	datad => \i_pixreg|hcnt_d\(6),
	combout => \inst|LessThan15~0_combout\);

-- Location: LCCOMB_X41_Y35_N12
\inst|LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan15~1_combout\ = (\i_pixreg|hcnt_d\(9)) # ((\i_pixreg|hcnt_d\(7) & (\i_pixreg|hcnt_d\(8) & \inst|LessThan15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(7),
	datab => \i_pixreg|hcnt_d\(9),
	datac => \i_pixreg|hcnt_d\(8),
	datad => \inst|LessThan15~0_combout\,
	combout => \inst|LessThan15~1_combout\);

-- Location: LCCOMB_X41_Y35_N16
\inst|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~18_combout\ = (\inst|LessThan16~18_combout\ & (!\inst|process_0~4_combout\ & \inst|LessThan15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan16~18_combout\,
	datac => \inst|process_0~4_combout\,
	datad => \inst|LessThan15~1_combout\,
	combout => \inst|process_0~18_combout\);

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

-- Location: LCCOMB_X38_Y36_N8
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

-- Location: FF_X38_Y36_N9
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

-- Location: LCCOMB_X38_Y36_N20
\inst1|shiftreg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~6_combout\ = (\inst1|shiftreg\(3) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(3),
	datad => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~6_combout\);

-- Location: FF_X38_Y36_N27
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

-- Location: LCCOMB_X38_Y36_N26
\inst1|shiftreg[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg[8]~1_combout\ = (\inst1|shiftreg\(0)) # ((!\inst1|PS2_CLK2~q\ & \inst1|PS2_CLK2_old~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PS2_CLK2~q\,
	datac => \inst1|PS2_CLK2_old~q\,
	datad => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg[8]~1_combout\);

-- Location: FF_X38_Y36_N21
\inst1|shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~6_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(2));

-- Location: LCCOMB_X38_Y36_N2
\inst1|shiftreg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~9_combout\ = (\inst1|shiftreg\(2) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shiftreg\(2),
	datad => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~9_combout\);

-- Location: FF_X38_Y36_N3
\inst1|shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~9_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(1));

-- Location: LCCOMB_X38_Y36_N24
\inst1|shiftreg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg[0]~8_combout\ = (\inst1|PS2_CLK2_old~q\ & (!\inst1|PS2_CLK2~q\ & (!\inst1|shiftreg\(0) & \inst1|shiftreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PS2_CLK2_old~q\,
	datab => \inst1|PS2_CLK2~q\,
	datac => \inst1|shiftreg\(0),
	datad => \inst1|shiftreg\(1),
	combout => \inst1|shiftreg[0]~8_combout\);

-- Location: FF_X38_Y36_N25
\inst1|shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg[0]~8_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(0));

-- Location: LCCOMB_X38_Y36_N4
\inst1|shiftreg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~10_combout\ = (!\PS2_DAT~input_o\ & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_DAT~input_o\,
	datad => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~10_combout\);

-- Location: FF_X38_Y36_N5
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
	ena => \inst1|shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(9));

-- Location: LCCOMB_X38_Y36_N18
\inst1|shiftreg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~5_combout\ = (\inst1|shiftreg\(9) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|shiftreg\(9),
	datad => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~5_combout\);

-- Location: FF_X38_Y36_N19
\inst1|shiftreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~5_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(8));

-- Location: LCCOMB_X38_Y36_N28
\inst1|shiftreg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~3_combout\ = (\inst1|shiftreg\(7) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(7),
	datad => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~3_combout\);

-- Location: FF_X38_Y36_N29
\inst1|shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~3_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(6));

-- Location: LCCOMB_X38_Y36_N30
\inst1|shiftreg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~4_combout\ = (\inst1|shiftreg\(6) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shiftreg\(6),
	datad => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~4_combout\);

-- Location: FF_X38_Y36_N31
\inst1|shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~4_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(5));

-- Location: LCCOMB_X38_Y36_N0
\inst1|shiftreg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~0_combout\ = (\inst1|shiftreg\(5) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|shiftreg\(5),
	datad => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~0_combout\);

-- Location: FF_X38_Y36_N1
\inst1|shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~0_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(4));

-- Location: LCCOMB_X38_Y36_N6
\inst1|shiftreg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|shiftreg~7_combout\ = (\inst1|shiftreg\(4) & !\inst1|shiftreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shiftreg\(4),
	datad => \inst1|shiftreg\(0),
	combout => \inst1|shiftreg~7_combout\);

-- Location: FF_X38_Y36_N7
\inst1|shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|shiftreg~7_combout\,
	clrn => \KEY0~input_o\,
	ena => \inst1|shiftreg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shiftreg\(3));

-- Location: LCCOMB_X39_Y36_N28
\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (((\inst1|shiftreg\(3)) # (!\inst1|shiftreg\(2))) # (!\inst1|shiftreg\(8))) # (!\inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|shiftreg\(8),
	datac => \inst1|shiftreg\(3),
	datad => \inst1|shiftreg\(2),
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y36_N16
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|shiftreg\(7) & (!\inst1|shiftreg\(6) & (!\inst1|shiftreg\(5) & \inst1|shiftreg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(7),
	datab => \inst1|shiftreg\(6),
	datac => \inst1|shiftreg\(5),
	datad => \inst1|shiftreg\(4),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y36_N12
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|shiftreg\(8) & \inst1|shiftreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|shiftreg\(8),
	datad => \inst1|shiftreg\(2),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y36_N14
\inst1|break~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|break~0_combout\ = (\inst1|shiftreg\(1) & (\inst1|shiftreg\(3) & (\inst1|Equal0~0_combout\ & \inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(1),
	datab => \inst1|shiftreg\(3),
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|break~0_combout\);

-- Location: LCCOMB_X39_Y36_N0
\inst1|break~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|break~1_combout\ = (\KEY0~input_o\ & ((\inst1|shiftreg\(0) & (\inst1|break~0_combout\)) # (!\inst1|shiftreg\(0) & ((\inst1|break~q\))))) # (!\KEY0~input_o\ & (((\inst1|break~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datab => \inst1|break~0_combout\,
	datac => \inst1|break~q\,
	datad => \inst1|shiftreg\(0),
	combout => \inst1|break~1_combout\);

-- Location: FF_X39_Y36_N1
\inst1|break\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|break~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|break~q\);

-- Location: LCCOMB_X39_Y36_N18
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|shiftreg\(3) & \inst1|shiftreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|shiftreg\(3),
	datad => \inst1|shiftreg\(1),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y36_N22
\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (\inst1|Equal0~1_combout\ & (!\inst1|shiftreg\(2) & (\inst1|Equal0~0_combout\ & \inst1|shiftreg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|shiftreg\(2),
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|shiftreg\(8),
	combout => \inst1|Equal2~0_combout\);

-- Location: LCCOMB_X39_Y36_N8
\inst1|Number[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number[0]~1_combout\ = (\inst1|Equal2~0_combout\) # (((\inst1|Number[0]~0_combout\ & \inst1|shiftreg\(8))) # (!\inst1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number[0]~0_combout\,
	datab => \inst1|shiftreg\(8),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal1~0_combout\,
	combout => \inst1|Number[0]~1_combout\);

-- Location: LCCOMB_X39_Y36_N26
\inst1|Number[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number[0]~2_combout\ = (\inst1|Number[0]~1_combout\ & (((!\inst1|Equal0~2_combout\) # (!\inst1|Equal0~1_combout\)) # (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Number[0]~1_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Number[0]~2_combout\);

-- Location: LCCOMB_X39_Y36_N20
\inst1|Number[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number[0]~3_combout\ = (\KEY0~input_o\ & (\inst1|break~q\ & (\inst1|Number[0]~2_combout\ & \inst1|shiftreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datab => \inst1|break~q\,
	datac => \inst1|Number[0]~2_combout\,
	datad => \inst1|shiftreg\(0),
	combout => \inst1|Number[0]~3_combout\);

-- Location: FF_X39_Y36_N29
\inst1|Number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|Equal1~0_combout\,
	ena => \inst1|Number[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Number\(0));

-- Location: LCCOMB_X42_Y35_N0
\inst|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~20_combout\ = (!\inst1|Number\(1) & (!\inst1|Number\(0) & ((!\i_pixreg|hcnt_d\(6)) # (!\i_pixreg|hcnt_d\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number\(1),
	datab => \inst1|Number\(0),
	datac => \i_pixreg|hcnt_d\(5),
	datad => \i_pixreg|hcnt_d\(6),
	combout => \inst|process_0~20_combout\);

-- Location: LCCOMB_X42_Y35_N6
\inst|LessThan19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan19~0_combout\ = (\i_pixreg|hcnt_d\(5)) # ((\i_pixreg|hcnt_d\(6)) # ((\i_pixreg|hcnt_d\(3) & \i_pixreg|hcnt_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \i_pixreg|hcnt_d\(5),
	datac => \i_pixreg|hcnt_d\(4),
	datad => \i_pixreg|hcnt_d\(6),
	combout => \inst|LessThan19~0_combout\);

-- Location: LCCOMB_X42_Y35_N26
\inst|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~21_combout\ = (\inst|process_0~19_combout\ & (\inst|process_0~20_combout\ & (\inst|process_0~15_combout\ & \inst|LessThan19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~19_combout\,
	datab => \inst|process_0~20_combout\,
	datac => \inst|process_0~15_combout\,
	datad => \inst|LessThan19~0_combout\,
	combout => \inst|process_0~21_combout\);

-- Location: LCCOMB_X42_Y35_N28
\inst|pixcode~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~10_combout\ = \i_pixreg|pixcode_single~q\ $ (((!\i_pixreg|hcnt_d\(7) & (\inst|process_0~21_combout\ & !\i_pixreg|hcnt_d\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|pixcode_single~q\,
	datab => \i_pixreg|hcnt_d\(7),
	datac => \inst|process_0~21_combout\,
	datad => \i_pixreg|hcnt_d\(8),
	combout => \inst|pixcode~10_combout\);

-- Location: LCCOMB_X39_Y35_N26
\inst|pixcode~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~14_combout\ = (((\inst|process_0~18_combout\) # (\inst|pixcode~10_combout\)) # (!\inst|process_0~17_combout\)) # (!\inst|pixcode[3]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode[3]~8_combout\,
	datab => \inst|process_0~17_combout\,
	datac => \inst|process_0~18_combout\,
	datad => \inst|pixcode~10_combout\,
	combout => \inst|pixcode~14_combout\);

-- Location: FF_X39_Y35_N27
\inst|pixcode[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(7));

-- Location: LCCOMB_X39_Y36_N30
\inst1|Number~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Number~4_combout\ = (!\inst1|Equal2~0_combout\ & ((\inst1|shiftreg\(1)) # (\inst1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shiftreg\(1),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal1~0_combout\,
	combout => \inst1|Number~4_combout\);

-- Location: FF_X39_Y36_N31
\inst1|Number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst1|Number~4_combout\,
	ena => \inst1|Number[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Number\(1));

-- Location: LCCOMB_X39_Y36_N24
\inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (\inst1|Number\(1) & !\inst1|Number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Number\(1),
	datad => \inst1|Number\(0),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X39_Y36_N10
\inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (\inst1|Number\(1)) # (\inst1|Number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Number\(1),
	datad => \inst1|Number\(0),
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X39_Y36_N16
\inst|pixcode[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode[6]~0_combout\ = (\inst1|Number\(1) & (!\inst|Equal2~0_combout\)) # (!\inst1|Number\(1) & ((!\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number\(1),
	datab => \inst|Equal2~0_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|pixcode[6]~0_combout\);

-- Location: LCCOMB_X41_Y35_N18
\inst|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~13_combout\ = (\inst|LessThan9~0_combout\ & (!\i_pixreg|vcnt_d\(8) & (!\i_pixreg|vcnt_d\(9) & !\i_pixreg|vcnt_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan9~0_combout\,
	datab => \i_pixreg|vcnt_d\(8),
	datac => \i_pixreg|vcnt_d\(9),
	datad => \i_pixreg|vcnt_d\(7),
	combout => \inst|process_0~13_combout\);

-- Location: LCCOMB_X40_Y35_N0
\inst|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~12_combout\ = (\i_pixreg|vcnt_d\(6)) # ((\i_pixreg|vcnt_d\(5) & ((\i_pixreg|vcnt_d\(4)) # (\inst|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(6),
	datab => \i_pixreg|vcnt_d\(4),
	datac => \inst|LessThan13~0_combout\,
	datad => \i_pixreg|vcnt_d\(5),
	combout => \inst|process_0~12_combout\);

-- Location: LCCOMB_X41_Y35_N8
\inst|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~14_combout\ = (\inst|LessThan16~18_combout\ & (\inst|process_0~13_combout\ & (\inst|process_0~12_combout\ & \inst|LessThan15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan16~18_combout\,
	datab => \inst|process_0~13_combout\,
	datac => \inst|process_0~12_combout\,
	datad => \inst|LessThan15~1_combout\,
	combout => \inst|process_0~14_combout\);

-- Location: LCCOMB_X39_Y33_N14
\inst|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|EN_Limit\(1) & (\inst|Add4~1\ & VCC)) # (!\inst|EN_Limit\(1) & (!\inst|Add4~1\))
-- \inst|Add4~3\ = CARRY((!\inst|EN_Limit\(1) & !\inst|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EN_Limit\(1),
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X39_Y33_N0
\inst|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~24_combout\ = (\inst|EN_Limit[3]~2_combout\ & \inst|Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit[3]~2_combout\,
	datad => \inst|Add4~2_combout\,
	combout => \inst|Add4~24_combout\);

-- Location: LCCOMB_X39_Y33_N26
\inst|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~14_combout\ = (\inst|EN_Limit\(7) & (\inst|Add4~13\ & VCC)) # (!\inst|EN_Limit\(7) & (!\inst|Add4~13\))
-- \inst|Add4~15\ = CARRY((!\inst|EN_Limit\(7) & !\inst|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EN_Limit\(7),
	datad => VCC,
	cin => \inst|Add4~13\,
	combout => \inst|Add4~14_combout\,
	cout => \inst|Add4~15\);

-- Location: LCCOMB_X39_Y33_N28
\inst|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~16_combout\ = (\inst|EN_Limit\(8) & ((GND) # (!\inst|Add4~15\))) # (!\inst|EN_Limit\(8) & (\inst|Add4~15\ $ (GND)))
-- \inst|Add4~17\ = CARRY((\inst|EN_Limit\(8)) # (!\inst|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EN_Limit\(8),
	datad => VCC,
	cin => \inst|Add4~15\,
	combout => \inst|Add4~16_combout\,
	cout => \inst|Add4~17\);

-- Location: LCCOMB_X39_Y34_N26
\inst|EN_Limit[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[8]~4_combout\ = (\inst|EN_Limit[3]~2_combout\ & ((\inst|Equal0~6_combout\ & (\inst|Add4~16_combout\)) # (!\inst|Equal0~6_combout\ & ((\inst|EN_Limit\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Add4~16_combout\,
	datac => \inst|EN_Limit\(8),
	datad => \inst|EN_Limit[3]~2_combout\,
	combout => \inst|EN_Limit[8]~4_combout\);

-- Location: FF_X39_Y34_N27
\inst|EN_Limit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|EN_Limit[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(8));

-- Location: LCCOMB_X39_Y33_N24
\inst|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = (\inst|EN_Limit\(6) & (\inst|Add4~11\ $ (GND))) # (!\inst|EN_Limit\(6) & ((GND) # (!\inst|Add4~11\)))
-- \inst|Add4~13\ = CARRY((!\inst|Add4~11\) # (!\inst|EN_Limit\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(6),
	datad => VCC,
	cin => \inst|Add4~11\,
	combout => \inst|Add4~12_combout\,
	cout => \inst|Add4~13\);

-- Location: LCCOMB_X40_Y33_N2
\inst|EN_Limit[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[6]~6_combout\ = (\inst|EN_Limit[3]~2_combout\ & ((\inst|Equal0~6_combout\ & ((!\inst|Add4~12_combout\))) # (!\inst|Equal0~6_combout\ & (\inst|EN_Limit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit[3]~2_combout\,
	datab => \inst|Equal0~6_combout\,
	datac => \inst|EN_Limit\(6),
	datad => \inst|Add4~12_combout\,
	combout => \inst|EN_Limit[6]~6_combout\);

-- Location: FF_X40_Y33_N3
\inst|EN_Limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|EN_Limit[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(6));

-- Location: LCCOMB_X40_Y33_N28
\inst|LessThan23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan23~2_combout\ = ((\inst|EN_Limit\(6)) # (!\inst|EN_Limit\(8))) # (!\inst|EN_Limit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|EN_Limit\(7),
	datac => \inst|EN_Limit\(8),
	datad => \inst|EN_Limit\(6),
	combout => \inst|LessThan23~2_combout\);

-- Location: LCCOMB_X39_Y33_N30
\inst|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~18_combout\ = \inst|Add4~17\ $ (\inst|EN_Limit\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|EN_Limit\(9),
	cin => \inst|Add4~17\,
	combout => \inst|Add4~18_combout\);

-- Location: LCCOMB_X39_Y34_N0
\inst|EN_Limit[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[9]~3_combout\ = (\inst|EN_Limit[3]~2_combout\ & ((\inst|Equal0~6_combout\ & (!\inst|Add4~18_combout\)) # (!\inst|Equal0~6_combout\ & ((\inst|EN_Limit\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Add4~18_combout\,
	datac => \inst|EN_Limit\(9),
	datad => \inst|EN_Limit[3]~2_combout\,
	combout => \inst|EN_Limit[9]~3_combout\);

-- Location: FF_X39_Y34_N1
\inst|EN_Limit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|EN_Limit[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(9));

-- Location: LCCOMB_X40_Y34_N2
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|ED_Limit\(1) & ((\inst|Add2~1\) # (GND))) # (!\inst|ED_Limit\(1) & (!\inst|Add2~1\))
-- \inst|Add2~3\ = CARRY((\inst|ED_Limit\(1)) # (!\inst|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ED_Limit\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X40_Y34_N28
\inst|ED_Limit~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit~9_combout\ = (!\inst|Add2~2_combout\ & \inst|LessThan22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~2_combout\,
	datad => \inst|LessThan22~2_combout\,
	combout => \inst|ED_Limit~9_combout\);

-- Location: LCCOMB_X39_Y34_N16
\inst|ED_Limit[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[5]~6_combout\ = ((!\inst|Equal0~5_combout\ & !\inst|Equal0~0_combout\)) # (!\inst|LessThan22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|LessThan22~2_combout\,
	combout => \inst|ED_Limit[5]~6_combout\);

-- Location: FF_X40_Y34_N29
\inst|ED_Limit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit~9_combout\,
	ena => \inst|ED_Limit[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(1));

-- Location: LCCOMB_X40_Y34_N6
\inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|ED_Limit\(3) & ((\inst|Add2~5\) # (GND))) # (!\inst|ED_Limit\(3) & (!\inst|Add2~5\))
-- \inst|Add2~7\ = CARRY((\inst|ED_Limit\(3)) # (!\inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ED_Limit\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X40_Y34_N24
\inst|ED_Limit~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit~7_combout\ = (!\inst|LessThan22~2_combout\) # (!\inst|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~6_combout\,
	datad => \inst|LessThan22~2_combout\,
	combout => \inst|ED_Limit~7_combout\);

-- Location: FF_X40_Y34_N25
\inst|ED_Limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit~7_combout\,
	ena => \inst|ED_Limit[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(3));

-- Location: LCCOMB_X40_Y34_N8
\inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|ED_Limit\(4) & (\inst|Add2~7\ $ (GND))) # (!\inst|ED_Limit\(4) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|ED_Limit\(4) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X40_Y34_N22
\inst|ED_Limit~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit~5_combout\ = (\inst|Add2~8_combout\ & \inst|LessThan22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add2~8_combout\,
	datad => \inst|LessThan22~2_combout\,
	combout => \inst|ED_Limit~5_combout\);

-- Location: FF_X40_Y34_N23
\inst|ED_Limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit~5_combout\,
	ena => \inst|ED_Limit[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(4));

-- Location: LCCOMB_X40_Y34_N10
\inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|ED_Limit\(5) & (!\inst|Add2~9\)) # (!\inst|ED_Limit\(5) & ((\inst|Add2~9\) # (GND)))
-- \inst|Add2~11\ = CARRY((!\inst|Add2~9\) # (!\inst|ED_Limit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X41_Y34_N4
\inst|ED_Limit[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[5]~4_combout\ = (\inst|LessThan22~2_combout\ & ((\inst|Equal0~6_combout\ & ((\inst|Add2~10_combout\))) # (!\inst|Equal0~6_combout\ & (\inst|ED_Limit\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan22~2_combout\,
	datab => \inst|Equal0~6_combout\,
	datac => \inst|ED_Limit\(5),
	datad => \inst|Add2~10_combout\,
	combout => \inst|ED_Limit[5]~4_combout\);

-- Location: FF_X41_Y34_N5
\inst|ED_Limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(5));

-- Location: LCCOMB_X40_Y34_N12
\inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|ED_Limit\(6) & (!\inst|Add2~11\ & VCC)) # (!\inst|ED_Limit\(6) & (\inst|Add2~11\ $ (GND)))
-- \inst|Add2~13\ = CARRY((!\inst|ED_Limit\(6) & !\inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X41_Y34_N2
\inst|ED_Limit[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[6]~3_combout\ = (\inst|LessThan22~2_combout\ & ((\inst|Equal0~6_combout\ & ((!\inst|Add2~12_combout\))) # (!\inst|Equal0~6_combout\ & (\inst|ED_Limit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan22~2_combout\,
	datab => \inst|Equal0~6_combout\,
	datac => \inst|ED_Limit\(6),
	datad => \inst|Add2~12_combout\,
	combout => \inst|ED_Limit[6]~3_combout\);

-- Location: FF_X41_Y34_N3
\inst|ED_Limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(6));

-- Location: LCCOMB_X41_Y34_N28
\inst|LessThan22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan22~1_combout\ = ((\inst|ED_Limit\(6)) # ((\inst|LessThan22~0_combout\ & !\inst|ED_Limit\(4)))) # (!\inst|ED_Limit\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan22~0_combout\,
	datab => \inst|ED_Limit\(4),
	datac => \inst|ED_Limit\(5),
	datad => \inst|ED_Limit\(6),
	combout => \inst|LessThan22~1_combout\);

-- Location: LCCOMB_X40_Y34_N14
\inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|ED_Limit\(7) & ((\inst|Add2~13\) # (GND))) # (!\inst|ED_Limit\(7) & (!\inst|Add2~13\))
-- \inst|Add2~15\ = CARRY((\inst|ED_Limit\(7)) # (!\inst|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ED_Limit\(7),
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: LCCOMB_X40_Y34_N20
\inst|ED_Limit[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[7]~2_combout\ = (\inst|LessThan22~2_combout\ & ((\inst|Equal0~6_combout\ & (!\inst|Add2~14_combout\)) # (!\inst|Equal0~6_combout\ & ((\inst|ED_Limit\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Add2~14_combout\,
	datac => \inst|ED_Limit\(7),
	datad => \inst|LessThan22~2_combout\,
	combout => \inst|ED_Limit[7]~2_combout\);

-- Location: FF_X40_Y34_N21
\inst|ED_Limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(7));

-- Location: LCCOMB_X40_Y34_N16
\inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\inst|ED_Limit\(8) & (\inst|Add2~15\ $ (GND))) # (!\inst|ED_Limit\(8) & (!\inst|Add2~15\ & VCC))
-- \inst|Add2~17\ = CARRY((\inst|ED_Limit\(8) & !\inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ED_Limit\(8),
	datad => VCC,
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\,
	cout => \inst|Add2~17\);

-- Location: LCCOMB_X39_Y34_N24
\inst|ED_Limit[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[8]~1_combout\ = ((\inst|Equal0~6_combout\ & (\inst|Add2~16_combout\)) # (!\inst|Equal0~6_combout\ & ((\inst|ED_Limit\(8))))) # (!\inst|LessThan22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~6_combout\,
	datab => \inst|Add2~16_combout\,
	datac => \inst|ED_Limit\(8),
	datad => \inst|LessThan22~2_combout\,
	combout => \inst|ED_Limit[8]~1_combout\);

-- Location: FF_X39_Y34_N25
\inst|ED_Limit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(8));

-- Location: LCCOMB_X40_Y34_N18
\inst|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~18_combout\ = \inst|ED_Limit\(9) $ (\inst|Add2~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ED_Limit\(9),
	cin => \inst|Add2~17\,
	combout => \inst|Add2~18_combout\);

-- Location: LCCOMB_X41_Y34_N0
\inst|ED_Limit[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ED_Limit[9]~0_combout\ = (\inst|LessThan22~2_combout\ & ((\inst|Equal0~6_combout\ & ((\inst|Add2~18_combout\))) # (!\inst|Equal0~6_combout\ & (\inst|ED_Limit\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan22~2_combout\,
	datab => \inst|Equal0~6_combout\,
	datac => \inst|ED_Limit\(9),
	datad => \inst|Add2~18_combout\,
	combout => \inst|ED_Limit[9]~0_combout\);

-- Location: FF_X41_Y34_N1
\inst|ED_Limit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|ED_Limit[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ED_Limit\(9));

-- Location: LCCOMB_X41_Y34_N30
\inst|LessThan22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan22~2_combout\ = ((\inst|ED_Limit\(7) & (\inst|LessThan22~1_combout\ & !\inst|ED_Limit\(8)))) # (!\inst|ED_Limit\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ED_Limit\(7),
	datab => \inst|LessThan22~1_combout\,
	datac => \inst|ED_Limit\(8),
	datad => \inst|ED_Limit\(9),
	combout => \inst|LessThan22~2_combout\);

-- Location: LCCOMB_X40_Y33_N30
\inst|EN_Limit[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[3]~2_combout\ = (((!\inst|LessThan23~1_combout\ & !\inst|LessThan23~2_combout\)) # (!\inst|LessThan22~2_combout\)) # (!\inst|EN_Limit\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan23~1_combout\,
	datab => \inst|LessThan23~2_combout\,
	datac => \inst|EN_Limit\(9),
	datad => \inst|LessThan22~2_combout\,
	combout => \inst|EN_Limit[3]~2_combout\);

-- Location: LCCOMB_X39_Y34_N18
\inst|EN_Limit[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[3]~7_combout\ = ((!\inst|Equal0~5_combout\ & !\inst|Equal0~0_combout\)) # (!\inst|EN_Limit[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|EN_Limit[3]~2_combout\,
	combout => \inst|EN_Limit[3]~7_combout\);

-- Location: FF_X39_Y33_N1
\inst|EN_Limit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add4~24_combout\,
	ena => \inst|EN_Limit[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(1));

-- Location: LCCOMB_X39_Y33_N16
\inst|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = (\inst|EN_Limit\(2) & ((GND) # (!\inst|Add4~3\))) # (!\inst|EN_Limit\(2) & (\inst|Add4~3\ $ (GND)))
-- \inst|Add4~5\ = CARRY((\inst|EN_Limit\(2)) # (!\inst|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(2),
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X39_Y33_N18
\inst|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|EN_Limit\(3) & (!\inst|Add4~5\)) # (!\inst|EN_Limit\(3) & (\inst|Add4~5\ & VCC))
-- \inst|Add4~7\ = CARRY((\inst|EN_Limit\(3) & !\inst|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EN_Limit\(3),
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X39_Y33_N4
\inst|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~22_combout\ = (!\inst|Add4~6_combout\ & \inst|EN_Limit[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add4~6_combout\,
	datac => \inst|EN_Limit[3]~2_combout\,
	combout => \inst|Add4~22_combout\);

-- Location: FF_X39_Y33_N5
\inst|EN_Limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add4~22_combout\,
	ena => \inst|EN_Limit[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(3));

-- Location: LCCOMB_X39_Y33_N20
\inst|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = (\inst|EN_Limit\(4) & ((GND) # (!\inst|Add4~7\))) # (!\inst|EN_Limit\(4) & (\inst|Add4~7\ $ (GND)))
-- \inst|Add4~9\ = CARRY((\inst|EN_Limit\(4)) # (!\inst|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EN_Limit\(4),
	datad => VCC,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\,
	cout => \inst|Add4~9\);

-- Location: LCCOMB_X39_Y33_N2
\inst|Add4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~21_combout\ = (\inst|Add4~8_combout\ & \inst|EN_Limit[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add4~8_combout\,
	datac => \inst|EN_Limit[3]~2_combout\,
	combout => \inst|Add4~21_combout\);

-- Location: FF_X39_Y33_N3
\inst|EN_Limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add4~21_combout\,
	ena => \inst|EN_Limit[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(4));

-- Location: LCCOMB_X39_Y33_N22
\inst|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst|EN_Limit\(5) & (!\inst|Add4~9\)) # (!\inst|EN_Limit\(5) & (\inst|Add4~9\ & VCC))
-- \inst|Add4~11\ = CARRY((\inst|EN_Limit\(5) & !\inst|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|EN_Limit\(5),
	datad => VCC,
	cin => \inst|Add4~9\,
	combout => \inst|Add4~10_combout\,
	cout => \inst|Add4~11\);

-- Location: LCCOMB_X39_Y33_N8
\inst|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~20_combout\ = (\inst|EN_Limit[3]~2_combout\ & !\inst|Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit[3]~2_combout\,
	datac => \inst|Add4~10_combout\,
	combout => \inst|Add4~20_combout\);

-- Location: FF_X39_Y33_N9
\inst|EN_Limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add4~20_combout\,
	ena => \inst|EN_Limit[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(5));

-- Location: LCCOMB_X40_Y33_N0
\inst|EN_Limit[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|EN_Limit[7]~5_combout\ = (\inst|EN_Limit[3]~2_combout\ & ((\inst|Equal0~6_combout\ & ((\inst|Add4~14_combout\))) # (!\inst|Equal0~6_combout\ & (\inst|EN_Limit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit[3]~2_combout\,
	datab => \inst|Equal0~6_combout\,
	datac => \inst|EN_Limit\(7),
	datad => \inst|Add4~14_combout\,
	combout => \inst|EN_Limit[7]~5_combout\);

-- Location: FF_X40_Y33_N1
\inst|EN_Limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|EN_Limit[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(7));

-- Location: LCCOMB_X39_Y33_N6
\inst|Add4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~23_combout\ = (\inst|Add4~4_combout\ & \inst|EN_Limit[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add4~4_combout\,
	datac => \inst|EN_Limit[3]~2_combout\,
	combout => \inst|Add4~23_combout\);

-- Location: FF_X39_Y33_N7
\inst|EN_Limit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add4~23_combout\,
	ena => \inst|EN_Limit[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|EN_Limit\(2));

-- Location: FF_X42_Y34_N5
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

-- Location: LCCOMB_X40_Y33_N6
\inst|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan12~1_cout\ = CARRY((!\inst|EN_Limit\(0) & !\i_pixreg|hcnt_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(0),
	datab => \i_pixreg|hcnt_d\(0),
	datad => VCC,
	cout => \inst|LessThan12~1_cout\);

-- Location: LCCOMB_X40_Y33_N8
\inst|LessThan12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan12~3_cout\ = CARRY((\inst|EN_Limit\(1) & (\i_pixreg|hcnt_d\(1) & !\inst|LessThan12~1_cout\)) # (!\inst|EN_Limit\(1) & ((\i_pixreg|hcnt_d\(1)) # (!\inst|LessThan12~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(1),
	datab => \i_pixreg|hcnt_d\(1),
	datad => VCC,
	cin => \inst|LessThan12~1_cout\,
	cout => \inst|LessThan12~3_cout\);

-- Location: LCCOMB_X40_Y33_N10
\inst|LessThan12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan12~5_cout\ = CARRY((\i_pixreg|hcnt_d\(2) & (\inst|EN_Limit\(2) & !\inst|LessThan12~3_cout\)) # (!\i_pixreg|hcnt_d\(2) & ((\inst|EN_Limit\(2)) # (!\inst|LessThan12~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(2),
	datab => \inst|EN_Limit\(2),
	datad => VCC,
	cin => \inst|LessThan12~3_cout\,
	cout => \inst|LessThan12~5_cout\);

-- Location: LCCOMB_X40_Y33_N12
\inst|LessThan12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan12~7_cout\ = CARRY((\i_pixreg|hcnt_d\(3) & ((\inst|EN_Limit\(3)) # (!\inst|LessThan12~5_cout\))) # (!\i_pixreg|hcnt_d\(3) & (\inst|EN_Limit\(3) & !\inst|LessThan12~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(3),
	datab => \inst|EN_Limit\(3),
	datad => VCC,
	cin => \inst|LessThan12~5_cout\,
	cout => \inst|LessThan12~7_cout\);

-- Location: LCCOMB_X40_Y33_N14
\inst|LessThan12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan12~9_cout\ = CARRY((\inst|EN_Limit\(4) & ((!\inst|LessThan12~7_cout\) # (!\i_pixreg|hcnt_d\(4)))) # (!\inst|EN_Limit\(4) & (!\i_pixreg|hcnt_d\(4) & !\inst|LessThan12~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(4),
	datab => \i_pixreg|hcnt_d\(4),
	datad => VCC,
	cin => \inst|LessThan12~7_cout\,
	cout => \inst|LessThan12~9_cout\);

-- Location: LCCOMB_X40_Y33_N16
\inst|LessThan12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan12~11_cout\ = CARRY((\inst|EN_Limit\(5) & ((\i_pixreg|hcnt_d\(5)) # (!\inst|LessThan12~9_cout\))) # (!\inst|EN_Limit\(5) & (\i_pixreg|hcnt_d\(5) & !\inst|LessThan12~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(5),
	datab => \i_pixreg|hcnt_d\(5),
	datad => VCC,
	cin => \inst|LessThan12~9_cout\,
	cout => \inst|LessThan12~11_cout\);

-- Location: LCCOMB_X40_Y33_N18
\inst|LessThan12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan12~13_cout\ = CARRY((\i_pixreg|hcnt_d\(6) & (!\inst|EN_Limit\(6) & !\inst|LessThan12~11_cout\)) # (!\i_pixreg|hcnt_d\(6) & ((!\inst|LessThan12~11_cout\) # (!\inst|EN_Limit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(6),
	datab => \inst|EN_Limit\(6),
	datad => VCC,
	cin => \inst|LessThan12~11_cout\,
	cout => \inst|LessThan12~13_cout\);

-- Location: LCCOMB_X40_Y33_N20
\inst|LessThan12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan12~15_cout\ = CARRY((\i_pixreg|hcnt_d\(7) & ((!\inst|LessThan12~13_cout\) # (!\inst|EN_Limit\(7)))) # (!\i_pixreg|hcnt_d\(7) & (!\inst|EN_Limit\(7) & !\inst|LessThan12~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(7),
	datab => \inst|EN_Limit\(7),
	datad => VCC,
	cin => \inst|LessThan12~13_cout\,
	cout => \inst|LessThan12~15_cout\);

-- Location: LCCOMB_X40_Y33_N22
\inst|LessThan12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan12~17_cout\ = CARRY((\inst|EN_Limit\(8) & ((!\inst|LessThan12~15_cout\) # (!\i_pixreg|hcnt_d\(8)))) # (!\inst|EN_Limit\(8) & (!\i_pixreg|hcnt_d\(8) & !\inst|LessThan12~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(8),
	datab => \i_pixreg|hcnt_d\(8),
	datad => VCC,
	cin => \inst|LessThan12~15_cout\,
	cout => \inst|LessThan12~17_cout\);

-- Location: LCCOMB_X40_Y33_N24
\inst|LessThan12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan12~18_combout\ = (\inst|EN_Limit\(9) & (\inst|LessThan12~17_cout\ & !\i_pixreg|hcnt_d\(9))) # (!\inst|EN_Limit\(9) & ((\inst|LessThan12~17_cout\) # (!\i_pixreg|hcnt_d\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|EN_Limit\(9),
	datad => \i_pixreg|hcnt_d\(9),
	cin => \inst|LessThan12~17_cout\,
	combout => \inst|LessThan12~18_combout\);

-- Location: LCCOMB_X41_Y35_N22
\inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~9_combout\ = (\i_pixreg|vcnt_d\(9)) # (((\i_pixreg|vcnt_d\(8)) # (!\inst|LessThan15~1_combout\)) # (!\inst|LessThan12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(9),
	datab => \inst|LessThan12~18_combout\,
	datac => \inst|LessThan15~1_combout\,
	datad => \i_pixreg|vcnt_d\(8),
	combout => \inst|process_0~9_combout\);

-- Location: LCCOMB_X41_Y35_N20
\inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~5_combout\ = (!\i_pixreg|vcnt_d\(9) & (!\i_pixreg|hcnt_d\(9) & !\i_pixreg|vcnt_d\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(9),
	datac => \i_pixreg|hcnt_d\(9),
	datad => \i_pixreg|vcnt_d\(8),
	combout => \inst|process_0~5_combout\);

-- Location: FF_X40_Y35_N7
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

-- Location: LCCOMB_X40_Y35_N24
\inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = (\i_pixreg|vcnt_d\(5) & (!\i_pixreg|vcnt_d\(7) & \i_pixreg|vcnt_d\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|vcnt_d\(5),
	datac => \i_pixreg|vcnt_d\(7),
	datad => \i_pixreg|vcnt_d\(6),
	combout => \inst|process_0~6_combout\);

-- Location: LCCOMB_X40_Y35_N20
\inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~7_combout\ = (\inst|process_0~6_combout\ & ((\i_pixreg|vcnt_d\(3)) # (\i_pixreg|vcnt_d\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|vcnt_d\(3),
	datac => \i_pixreg|vcnt_d\(4),
	datad => \inst|process_0~6_combout\,
	combout => \inst|process_0~7_combout\);

-- Location: LCCOMB_X40_Y35_N6
\inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~8_combout\ = (\inst|process_0~7_combout\) # ((\inst|LessThan14~0_combout\ & (!\i_pixreg|vcnt_d\(6) & \i_pixreg|vcnt_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~0_combout\,
	datab => \inst|process_0~7_combout\,
	datac => \i_pixreg|vcnt_d\(6),
	datad => \i_pixreg|vcnt_d\(7),
	combout => \inst|process_0~8_combout\);

-- Location: LCCOMB_X43_Y34_N24
\inst|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~16_combout\ = (\inst|Add3~14_combout\ & (((\inst|VOL_Limit\(7) & \inst|LessThan21~0_combout\)) # (!\inst|VOL_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~14_combout\,
	datab => \inst|VOL_Limit\(8),
	datac => \inst|VOL_Limit\(7),
	datad => \inst|LessThan21~0_combout\,
	combout => \inst|Add3~16_combout\);

-- Location: FF_X43_Y34_N25
\inst|LR_Limit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add3~16_combout\,
	ena => \inst|LR_Limit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(8));

-- Location: LCCOMB_X43_Y34_N12
\inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|LR_Limit\(3) & (!\inst|Add3~3\ & VCC)) # (!\inst|LR_Limit\(3) & (\inst|Add3~3\ $ (GND)))
-- \inst|Add3~5\ = CARRY((!\inst|LR_Limit\(3) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LR_Limit\(3),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X43_Y34_N2
\inst|Add3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~21_combout\ = ((\inst|VOL_Limit\(8) & ((!\inst|VOL_Limit\(7)) # (!\inst|LessThan21~0_combout\)))) # (!\inst|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan21~0_combout\,
	datab => \inst|VOL_Limit\(8),
	datac => \inst|VOL_Limit\(7),
	datad => \inst|Add3~4_combout\,
	combout => \inst|Add3~21_combout\);

-- Location: FF_X43_Y34_N3
\inst|LR_Limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add3~21_combout\,
	ena => \inst|LR_Limit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(3));

-- Location: LCCOMB_X43_Y34_N14
\inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|LR_Limit\(4) & (!\inst|Add3~5\)) # (!\inst|LR_Limit\(4) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|LR_Limit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LR_Limit\(4),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X43_Y34_N0
\inst|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~20_combout\ = (\inst|Add3~6_combout\ & (((\inst|LessThan21~0_combout\ & \inst|VOL_Limit\(7))) # (!\inst|VOL_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan21~0_combout\,
	datab => \inst|VOL_Limit\(7),
	datac => \inst|Add3~6_combout\,
	datad => \inst|VOL_Limit\(8),
	combout => \inst|Add3~20_combout\);

-- Location: FF_X43_Y34_N1
\inst|LR_Limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add3~20_combout\,
	ena => \inst|LR_Limit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(4));

-- Location: LCCOMB_X43_Y34_N18
\inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|LR_Limit\(6) & ((\inst|Add3~9\) # (GND))) # (!\inst|LR_Limit\(6) & (!\inst|Add3~9\))
-- \inst|Add3~11\ = CARRY((\inst|LR_Limit\(6)) # (!\inst|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LR_Limit\(6),
	datad => VCC,
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\,
	cout => \inst|Add3~11\);

-- Location: LCCOMB_X43_Y34_N28
\inst|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~18_combout\ = ((\inst|VOL_Limit\(8) & ((!\inst|VOL_Limit\(7)) # (!\inst|LessThan21~0_combout\)))) # (!\inst|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan21~0_combout\,
	datab => \inst|VOL_Limit\(8),
	datac => \inst|VOL_Limit\(7),
	datad => \inst|Add3~10_combout\,
	combout => \inst|Add3~18_combout\);

-- Location: FF_X43_Y34_N29
\inst|LR_Limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add3~18_combout\,
	ena => \inst|LR_Limit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(6));

-- Location: LCCOMB_X43_Y34_N26
\inst|Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~17_combout\ = (!\inst|Add3~12_combout\ & (((\inst|LessThan21~0_combout\ & \inst|VOL_Limit\(7))) # (!\inst|VOL_Limit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan21~0_combout\,
	datab => \inst|VOL_Limit\(8),
	datac => \inst|VOL_Limit\(7),
	datad => \inst|Add3~12_combout\,
	combout => \inst|Add3~17_combout\);

-- Location: FF_X43_Y34_N27
\inst|LR_Limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|Add3~17_combout\,
	ena => \inst|LR_Limit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LR_Limit\(7));

-- Location: FF_X42_Y34_N9
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

-- Location: LCCOMB_X42_Y35_N8
\inst|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~1_cout\ = CARRY((\i_pixreg|hcnt_d\(1) & \inst|LR_Limit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(1),
	datab => \inst|LR_Limit\(1),
	datad => VCC,
	cout => \inst|LessThan4~1_cout\);

-- Location: LCCOMB_X42_Y35_N10
\inst|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~3_cout\ = CARRY((\i_pixreg|hcnt_d\(2) & (!\inst|LR_Limit\(2) & !\inst|LessThan4~1_cout\)) # (!\i_pixreg|hcnt_d\(2) & ((!\inst|LessThan4~1_cout\) # (!\inst|LR_Limit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(2),
	datab => \inst|LR_Limit\(2),
	datad => VCC,
	cin => \inst|LessThan4~1_cout\,
	cout => \inst|LessThan4~3_cout\);

-- Location: LCCOMB_X42_Y35_N12
\inst|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~5_cout\ = CARRY((\inst|LR_Limit\(3) & ((\i_pixreg|hcnt_d\(3)) # (!\inst|LessThan4~3_cout\))) # (!\inst|LR_Limit\(3) & (\i_pixreg|hcnt_d\(3) & !\inst|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(3),
	datab => \i_pixreg|hcnt_d\(3),
	datad => VCC,
	cin => \inst|LessThan4~3_cout\,
	cout => \inst|LessThan4~5_cout\);

-- Location: LCCOMB_X42_Y35_N14
\inst|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~7_cout\ = CARRY((\i_pixreg|hcnt_d\(4) & (\inst|LR_Limit\(4) & !\inst|LessThan4~5_cout\)) # (!\i_pixreg|hcnt_d\(4) & ((\inst|LR_Limit\(4)) # (!\inst|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(4),
	datab => \inst|LR_Limit\(4),
	datad => VCC,
	cin => \inst|LessThan4~5_cout\,
	cout => \inst|LessThan4~7_cout\);

-- Location: LCCOMB_X42_Y35_N16
\inst|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~9_cout\ = CARRY((\inst|LR_Limit\(5) & (\i_pixreg|hcnt_d\(5) & !\inst|LessThan4~7_cout\)) # (!\inst|LR_Limit\(5) & ((\i_pixreg|hcnt_d\(5)) # (!\inst|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(5),
	datab => \i_pixreg|hcnt_d\(5),
	datad => VCC,
	cin => \inst|LessThan4~7_cout\,
	cout => \inst|LessThan4~9_cout\);

-- Location: LCCOMB_X42_Y35_N18
\inst|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~11_cout\ = CARRY((\inst|LR_Limit\(6) & (!\i_pixreg|hcnt_d\(6) & !\inst|LessThan4~9_cout\)) # (!\inst|LR_Limit\(6) & ((!\inst|LessThan4~9_cout\) # (!\i_pixreg|hcnt_d\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LR_Limit\(6),
	datab => \i_pixreg|hcnt_d\(6),
	datad => VCC,
	cin => \inst|LessThan4~9_cout\,
	cout => \inst|LessThan4~11_cout\);

-- Location: LCCOMB_X42_Y35_N20
\inst|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~13_cout\ = CARRY((\i_pixreg|hcnt_d\(7) & ((\inst|LR_Limit\(7)) # (!\inst|LessThan4~11_cout\))) # (!\i_pixreg|hcnt_d\(7) & (\inst|LR_Limit\(7) & !\inst|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(7),
	datab => \inst|LR_Limit\(7),
	datad => VCC,
	cin => \inst|LessThan4~11_cout\,
	cout => \inst|LessThan4~13_cout\);

-- Location: LCCOMB_X42_Y35_N22
\inst|LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan4~14_combout\ = (\i_pixreg|hcnt_d\(8) & ((\inst|LessThan4~13_cout\) # (!\inst|LR_Limit\(8)))) # (!\i_pixreg|hcnt_d\(8) & (\inst|LessThan4~13_cout\ & !\inst|LR_Limit\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_pixreg|hcnt_d\(8),
	datad => \inst|LR_Limit\(8),
	cin => \inst|LessThan4~13_cout\,
	combout => \inst|LessThan4~14_combout\);

-- Location: LCCOMB_X41_Y35_N0
\inst|pixcode~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~6_combout\ = (\inst|LessThan5~16_combout\ & (\inst|process_0~5_combout\ & (\inst|process_0~8_combout\ & \inst|LessThan4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~16_combout\,
	datab => \inst|process_0~5_combout\,
	datac => \inst|process_0~8_combout\,
	datad => \inst|LessThan4~14_combout\,
	combout => \inst|pixcode~6_combout\);

-- Location: LCCOMB_X41_Y35_N14
\inst|pixcode~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~5_combout\ = (\i_pixreg|hcnt_d\(7) & (!\i_pixreg|hcnt_d\(9) & (!\i_pixreg|hcnt_d\(8) & \inst|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_pixreg|hcnt_d\(7),
	datab => \i_pixreg|hcnt_d\(9),
	datac => \i_pixreg|hcnt_d\(8),
	datad => \inst|LessThan6~0_combout\,
	combout => \inst|pixcode~5_combout\);

-- Location: LCCOMB_X42_Y35_N24
\inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = ((\inst|process_0~0_combout\ & (!\i_pixreg|hcnt_d\(5) & !\i_pixreg|hcnt_d\(4)))) # (!\i_pixreg|hcnt_d\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~0_combout\,
	datab => \i_pixreg|hcnt_d\(5),
	datac => \i_pixreg|hcnt_d\(4),
	datad => \i_pixreg|hcnt_d\(6),
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X41_Y35_N26
\inst|pixcode~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~7_combout\ = (!\inst|pixcode~6_combout\ & ((\inst|process_0~4_combout\) # ((!\inst|process_0~1_combout\) # (!\inst|pixcode~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~4_combout\,
	datab => \inst|pixcode~6_combout\,
	datac => \inst|pixcode~5_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|pixcode~7_combout\);

-- Location: LCCOMB_X39_Y35_N12
\inst|pixcode[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode[3]~8_combout\ = (!\inst|process_0~14_combout\ & (\inst|pixcode~7_combout\ & ((\inst|process_0~9_combout\) # (!\inst|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~11_combout\,
	datab => \inst|process_0~14_combout\,
	datac => \inst|process_0~9_combout\,
	datad => \inst|pixcode~7_combout\,
	combout => \inst|pixcode[3]~8_combout\);

-- Location: LCCOMB_X39_Y34_N4
\inst|color[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|color[1]~6_combout\ = (\inst|color\(0) & (\inst|color\(1) $ (VCC))) # (!\inst|color\(0) & (\inst|color\(1) & VCC))
-- \inst|color[1]~7\ = CARRY((\inst|color\(0) & \inst|color\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|color\(0),
	datab => \inst|color\(1),
	datad => VCC,
	combout => \inst|color[1]~6_combout\,
	cout => \inst|color[1]~7\);

-- Location: FF_X39_Y34_N5
\inst|color[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|color[1]~6_combout\,
	ena => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|color\(1));

-- Location: LCCOMB_X39_Y34_N6
\inst|color[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|color[2]~8_combout\ = (\inst|color\(2) & (!\inst|color[1]~7\)) # (!\inst|color\(2) & ((\inst|color[1]~7\) # (GND)))
-- \inst|color[2]~9\ = CARRY((!\inst|color[1]~7\) # (!\inst|color\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|color\(2),
	datad => VCC,
	cin => \inst|color[1]~7\,
	combout => \inst|color[2]~8_combout\,
	cout => \inst|color[2]~9\);

-- Location: LCCOMB_X39_Y34_N8
\inst|color[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|color[3]~10_combout\ = (\inst|color\(3) & (\inst|color[2]~9\ $ (GND))) # (!\inst|color\(3) & (!\inst|color[2]~9\ & VCC))
-- \inst|color[3]~11\ = CARRY((\inst|color\(3) & !\inst|color[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|color\(3),
	datad => VCC,
	cin => \inst|color[2]~9\,
	combout => \inst|color[3]~10_combout\,
	cout => \inst|color[3]~11\);

-- Location: FF_X39_Y34_N9
\inst|color[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|color[3]~10_combout\,
	ena => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|color\(3));

-- Location: LCCOMB_X39_Y34_N10
\inst|color[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|color[4]~12_combout\ = (\inst|color\(4) & (!\inst|color[3]~11\)) # (!\inst|color\(4) & ((\inst|color[3]~11\) # (GND)))
-- \inst|color[4]~13\ = CARRY((!\inst|color[3]~11\) # (!\inst|color\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|color\(4),
	datad => VCC,
	cin => \inst|color[3]~11\,
	combout => \inst|color[4]~12_combout\,
	cout => \inst|color[4]~13\);

-- Location: LCCOMB_X39_Y34_N14
\inst|color[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|color[6]~16_combout\ = \inst|color\(6) $ (\inst|color[5]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|color\(6),
	cin => \inst|color[5]~15\,
	combout => \inst|color[6]~16_combout\);

-- Location: FF_X39_Y34_N15
\inst|color[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|color[6]~16_combout\,
	ena => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|color\(6));

-- Location: LCCOMB_X39_Y36_N4
\inst|pixcode~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~13_combout\ = (\inst|pixcode[3]~8_combout\ & ((\inst|process_0~18_combout\ & (\inst|color\(6))) # (!\inst|process_0~18_combout\ & ((\inst|pixcode~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~18_combout\,
	datab => \inst|pixcode[3]~8_combout\,
	datac => \inst|color\(6),
	datad => \inst|pixcode~10_combout\,
	combout => \inst|pixcode~13_combout\);

-- Location: FF_X39_Y36_N17
\inst|pixcode[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode[6]~0_combout\,
	asdata => \inst|pixcode~13_combout\,
	sload => \inst|process_0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(6));

-- Location: LCCOMB_X36_Y72_N24
\i_RGB_gen|vga_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~0_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(1))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(1),
	datac => \inst|pixcode\(7),
	datad => \inst|pixcode\(6),
	combout => \i_RGB_gen|vga_b~0_combout\);

-- Location: FF_X36_Y72_N25
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

-- Location: LCCOMB_X39_Y35_N30
\inst|pixcode~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~9_combout\ = (\inst|process_0~17_combout\ & ((\inst|pixcode[3]~8_combout\) # (!\inst|pixcode~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode[3]~8_combout\,
	datab => \inst|process_0~17_combout\,
	datad => \inst|pixcode~7_combout\,
	combout => \inst|pixcode~9_combout\);

-- Location: LCCOMB_X39_Y35_N24
\inst|pixcode~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~11_combout\ = (\inst|pixcode[3]~8_combout\ & ((\inst|process_0~18_combout\) # (!\inst|pixcode~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode[3]~8_combout\,
	datac => \inst|process_0~18_combout\,
	datad => \inst|pixcode~10_combout\,
	combout => \inst|pixcode~11_combout\);

-- Location: LCCOMB_X39_Y35_N20
\inst|pixcode~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~15_combout\ = (\inst|pixcode~9_combout\ & (((\inst|color\(0) & \inst|process_0~18_combout\)) # (!\inst|pixcode~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|color\(0),
	datab => \inst|process_0~18_combout\,
	datac => \inst|pixcode~9_combout\,
	datad => \inst|pixcode~11_combout\,
	combout => \inst|pixcode~15_combout\);

-- Location: LCCOMB_X39_Y35_N28
\inst|pixcode~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~27_combout\ = (\inst|pixcode~15_combout\) # ((!\inst1|Number\(0) & (\inst1|Number\(1) & !\inst|process_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number\(0),
	datab => \inst|pixcode~15_combout\,
	datac => \inst1|Number\(1),
	datad => \inst|process_0~17_combout\,
	combout => \inst|pixcode~27_combout\);

-- Location: FF_X39_Y35_N29
\inst|pixcode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(0));

-- Location: LCCOMB_X39_Y36_N6
\inst|pixcode~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~16_combout\ = (\inst|pixcode[3]~8_combout\ & ((\inst|process_0~18_combout\ & (\inst|color\(5))) # (!\inst|process_0~18_combout\ & ((\inst|pixcode~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|color\(5),
	datab => \inst|pixcode[3]~8_combout\,
	datac => \inst|process_0~18_combout\,
	datad => \inst|pixcode~10_combout\,
	combout => \inst|pixcode~16_combout\);

-- Location: LCCOMB_X39_Y36_N2
\inst|pixcode~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~18_combout\ = (\inst|process_0~17_combout\ & (((\inst|pixcode~16_combout\)) # (!\inst|pixcode~17_combout\))) # (!\inst|process_0~17_combout\ & (((\inst|pixcode[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode~17_combout\,
	datab => \inst|pixcode[6]~0_combout\,
	datac => \inst|process_0~17_combout\,
	datad => \inst|pixcode~16_combout\,
	combout => \inst|pixcode~18_combout\);

-- Location: FF_X39_Y36_N3
\inst|pixcode[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(5));

-- Location: LCCOMB_X36_Y72_N26
\i_RGB_gen|vga_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~1_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(0))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(0),
	datad => \inst|pixcode\(5),
	combout => \i_RGB_gen|vga_b~1_combout\);

-- Location: FF_X36_Y72_N27
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

-- Location: FF_X39_Y34_N11
\inst|color[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|color[4]~12_combout\,
	ena => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|color\(4));

-- Location: LCCOMB_X39_Y35_N16
\inst|pixcode~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~19_combout\ = (\inst|pixcode[3]~8_combout\ & ((\inst|process_0~18_combout\ & (\inst|color\(4))) # (!\inst|process_0~18_combout\ & ((\inst|pixcode~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode[3]~8_combout\,
	datab => \inst|color\(4),
	datac => \inst|process_0~18_combout\,
	datad => \inst|pixcode~10_combout\,
	combout => \inst|pixcode~19_combout\);

-- Location: LCCOMB_X39_Y35_N14
\inst|pixcode~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~17_combout\ = ((!\inst|process_0~14_combout\ & ((\inst|process_0~9_combout\) # (!\inst|process_0~11_combout\)))) # (!\inst|pixcode~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~11_combout\,
	datab => \inst|process_0~14_combout\,
	datac => \inst|process_0~9_combout\,
	datad => \inst|pixcode~7_combout\,
	combout => \inst|pixcode~17_combout\);

-- Location: LCCOMB_X39_Y35_N6
\inst|pixcode~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~20_combout\ = (\inst|process_0~17_combout\ & (((\inst|pixcode~19_combout\) # (!\inst|pixcode~17_combout\)))) # (!\inst|process_0~17_combout\ & (\inst1|Number\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number\(0),
	datab => \inst|pixcode~19_combout\,
	datac => \inst|pixcode~17_combout\,
	datad => \inst|process_0~17_combout\,
	combout => \inst|pixcode~20_combout\);

-- Location: FF_X39_Y35_N7
\inst|pixcode[4]\ : dffeas
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
	q => \inst|pixcode\(4));

-- Location: LCCOMB_X39_Y35_N2
\inst|pixcode~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~12_combout\ = (\inst|pixcode~9_combout\ & (((\inst|color\(1) & \inst|process_0~18_combout\)) # (!\inst|pixcode~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|color\(1),
	datab => \inst|process_0~18_combout\,
	datac => \inst|pixcode~9_combout\,
	datad => \inst|pixcode~11_combout\,
	combout => \inst|pixcode~12_combout\);

-- Location: LCCOMB_X39_Y35_N8
\inst|pixcode~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~26_combout\ = (\inst|pixcode~12_combout\) # ((!\inst1|Number\(0) & (\inst1|Number\(1) & !\inst|process_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number\(0),
	datab => \inst|pixcode~12_combout\,
	datac => \inst1|Number\(1),
	datad => \inst|process_0~17_combout\,
	combout => \inst|pixcode~26_combout\);

-- Location: FF_X39_Y35_N9
\inst|pixcode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(1));

-- Location: LCCOMB_X35_Y72_N24
\i_RGB_gen|vga_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~2_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(1)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(4),
	datad => \inst|pixcode\(1),
	combout => \i_RGB_gen|vga_b~2_combout\);

-- Location: FF_X35_Y72_N25
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

-- Location: LCCOMB_X39_Y35_N4
\inst|pixcode~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~22_combout\ = (\inst|process_0~17_combout\ & ((\inst|pixcode~21_combout\) # ((\inst|process_0~14_combout\ & \inst|pixcode~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode~21_combout\,
	datab => \inst|process_0~17_combout\,
	datac => \inst|process_0~14_combout\,
	datad => \inst|pixcode~7_combout\,
	combout => \inst|pixcode~22_combout\);

-- Location: LCCOMB_X39_Y35_N0
\inst|pixcode~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~23_combout\ = (\inst|pixcode~22_combout\) # ((\inst1|Number\(0) & !\inst|process_0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number\(0),
	datac => \inst|pixcode~22_combout\,
	datad => \inst|process_0~17_combout\,
	combout => \inst|pixcode~23_combout\);

-- Location: FF_X39_Y35_N1
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

-- Location: LCCOMB_X36_Y72_N20
\i_RGB_gen|vga_b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~3_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(0))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(0),
	datab => \inst|pixcode\(3),
	datac => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_b~3_combout\);

-- Location: FF_X36_Y72_N21
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

-- Location: FF_X39_Y34_N7
\inst|color[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|color[2]~8_combout\,
	ena => \inst|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|color\(2));

-- Location: LCCOMB_X39_Y35_N22
\inst|pixcode~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~24_combout\ = (\inst|pixcode[3]~8_combout\ & ((\inst|process_0~18_combout\ & (\inst|color\(2))) # (!\inst|process_0~18_combout\ & ((\inst|pixcode~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode[3]~8_combout\,
	datab => \inst|color\(2),
	datac => \inst|process_0~18_combout\,
	datad => \inst|pixcode~10_combout\,
	combout => \inst|pixcode~24_combout\);

-- Location: LCCOMB_X39_Y35_N10
\inst|pixcode~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pixcode~25_combout\ = (\inst|process_0~17_combout\ & (((\inst|pixcode~24_combout\) # (!\inst|pixcode~17_combout\)))) # (!\inst|process_0~17_combout\ & (\inst1|Number\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Number\(0),
	datab => \inst|pixcode~17_combout\,
	datac => \inst|pixcode~24_combout\,
	datad => \inst|process_0~17_combout\,
	combout => \inst|pixcode~25_combout\);

-- Location: FF_X39_Y35_N11
\inst|pixcode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \inst|pixcode~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixcode\(2));

-- Location: LCCOMB_X35_Y72_N2
\i_RGB_gen|vga_b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~4_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(1)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(2),
	datad => \inst|pixcode\(1),
	combout => \i_RGB_gen|vga_b~4_combout\);

-- Location: FF_X35_Y72_N3
\i_RGB_gen|vga_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~4_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(3));

-- Location: LCCOMB_X36_Y72_N22
\i_RGB_gen|vga_b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~5_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(0))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(0),
	datac => \inst|pixcode\(7),
	datad => \inst|pixcode\(1),
	combout => \i_RGB_gen|vga_b~5_combout\);

-- Location: FF_X36_Y72_N23
\i_RGB_gen|vga_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~5_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(2));

-- Location: LCCOMB_X36_Y72_N0
\i_RGB_gen|vga_b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~6_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(1)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(0),
	datac => \inst|pixcode\(7),
	datad => \inst|pixcode\(1),
	combout => \i_RGB_gen|vga_b~6_combout\);

-- Location: FF_X36_Y72_N1
\i_RGB_gen|vga_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~6_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(1));

-- Location: LCCOMB_X36_Y72_N18
\i_RGB_gen|vga_b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_b~7_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(0))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(0),
	datad => \inst|pixcode\(6),
	combout => \i_RGB_gen|vga_b~7_combout\);

-- Location: FF_X36_Y72_N19
\i_RGB_gen|vga_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_b~7_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_b\(0));

-- Location: LCCOMB_X36_Y72_N4
\i_RGB_gen|vga_g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~0_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(4))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(4),
	datac => \inst|pixcode\(7),
	datad => \inst|pixcode\(6),
	combout => \i_RGB_gen|vga_g~0_combout\);

-- Location: FF_X36_Y72_N5
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

-- Location: LCCOMB_X36_Y72_N30
\i_RGB_gen|vga_g~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~1_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(3))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(3),
	datad => \inst|pixcode\(5),
	combout => \i_RGB_gen|vga_g~1_combout\);

-- Location: FF_X36_Y72_N31
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

-- Location: LCCOMB_X35_Y72_N28
\i_RGB_gen|vga_g~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~2_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(2))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(2),
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_g~2_combout\);

-- Location: FF_X35_Y72_N29
\i_RGB_gen|vga_g[5]\ : dffeas
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
	q => \i_RGB_gen|vga_g\(5));

-- Location: LCCOMB_X36_Y72_N16
\i_RGB_gen|vga_g~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~3_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(4))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(4),
	datab => \inst|pixcode\(3),
	datac => \inst|pixcode\(7),
	combout => \i_RGB_gen|vga_g~3_combout\);

-- Location: FF_X36_Y72_N17
\i_RGB_gen|vga_g[4]\ : dffeas
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
	q => \i_RGB_gen|vga_g\(4));

-- Location: LCCOMB_X35_Y72_N14
\i_RGB_gen|vga_g~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~4_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(3)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(2),
	datad => \inst|pixcode\(3),
	combout => \i_RGB_gen|vga_g~4_combout\);

-- Location: FF_X35_Y72_N15
\i_RGB_gen|vga_g[3]\ : dffeas
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
	q => \i_RGB_gen|vga_g\(3));

-- Location: LCCOMB_X35_Y72_N8
\i_RGB_gen|vga_g~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~5_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(2))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(2),
	datad => \inst|pixcode\(1),
	combout => \i_RGB_gen|vga_g~5_combout\);

-- Location: FF_X35_Y72_N9
\i_RGB_gen|vga_g[2]\ : dffeas
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
	q => \i_RGB_gen|vga_g\(2));

-- Location: LCCOMB_X36_Y72_N10
\i_RGB_gen|vga_g~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~6_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(4)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(0),
	datac => \inst|pixcode\(7),
	datad => \inst|pixcode\(4),
	combout => \i_RGB_gen|vga_g~6_combout\);

-- Location: FF_X36_Y72_N11
\i_RGB_gen|vga_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~6_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(1));

-- Location: LCCOMB_X36_Y72_N28
\i_RGB_gen|vga_g~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_g~7_combout\ = (\inst|pixcode\(7) & (\inst|pixcode\(3))) # (!\inst|pixcode\(7) & ((\inst|pixcode\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(3),
	datad => \inst|pixcode\(6),
	combout => \i_RGB_gen|vga_g~7_combout\);

-- Location: FF_X36_Y72_N29
\i_RGB_gen|vga_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_g~7_combout\,
	ena => \i_ce_gen|counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_RGB_gen|vga_g\(0));

-- Location: LCCOMB_X35_Y72_N26
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

-- Location: FF_X35_Y72_N27
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

-- Location: LCCOMB_X35_Y72_N12
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

-- Location: FF_X35_Y72_N13
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

-- Location: LCCOMB_X36_Y72_N6
\i_RGB_gen|vga_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~0_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(6)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(4),
	datac => \inst|pixcode\(7),
	datad => \inst|pixcode\(6),
	combout => \i_RGB_gen|vga_r~0_combout\);

-- Location: FF_X36_Y72_N7
\i_RGB_gen|vga_r[5]\ : dffeas
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
	q => \i_RGB_gen|vga_r\(5));

-- Location: LCCOMB_X36_Y72_N8
\i_RGB_gen|vga_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~1_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(5)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(3),
	datad => \inst|pixcode\(5),
	combout => \i_RGB_gen|vga_r~1_combout\);

-- Location: FF_X36_Y72_N9
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

-- Location: LCCOMB_X35_Y72_N6
\i_RGB_gen|vga_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~2_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(6)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(2),
	datad => \inst|pixcode\(6),
	combout => \i_RGB_gen|vga_r~2_combout\);

-- Location: FF_X35_Y72_N7
\i_RGB_gen|vga_r[3]\ : dffeas
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
	q => \i_RGB_gen|vga_r\(3));

-- Location: LCCOMB_X36_Y72_N2
\i_RGB_gen|vga_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~3_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(5)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(1),
	datac => \inst|pixcode\(7),
	datad => \inst|pixcode\(5),
	combout => \i_RGB_gen|vga_r~3_combout\);

-- Location: FF_X36_Y72_N3
\i_RGB_gen|vga_r[2]\ : dffeas
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
	q => \i_RGB_gen|vga_r\(2));

-- Location: LCCOMB_X36_Y72_N12
\i_RGB_gen|vga_r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~4_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(6)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixcode\(7),
	datac => \inst|pixcode\(0),
	datad => \inst|pixcode\(6),
	combout => \i_RGB_gen|vga_r~4_combout\);

-- Location: FF_X36_Y72_N13
\i_RGB_gen|vga_r[1]\ : dffeas
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
	q => \i_RGB_gen|vga_r\(1));

-- Location: LCCOMB_X36_Y72_N14
\i_RGB_gen|vga_r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_RGB_gen|vga_r~5_combout\ = (\inst|pixcode\(7) & ((\inst|pixcode\(5)))) # (!\inst|pixcode\(7) & (\inst|pixcode\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixcode\(6),
	datac => \inst|pixcode\(7),
	datad => \inst|pixcode\(5),
	combout => \i_RGB_gen|vga_r~5_combout\);

-- Location: FF_X36_Y72_N15
\i_RGB_gen|vga_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fpga_clk~inputclkctrl_outclk\,
	d => \i_RGB_gen|vga_r~5_combout\,
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


