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

-- DATE "10/07/2021 15:17:42"

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

ENTITY 	Sound IS
    PORT (
	mclk : OUT std_logic;
	clk : IN std_logic;
	rstn : IN std_logic;
	adcdat : IN std_logic;
	Switches : IN std_logic_vector(3 DOWNTO 0);
	bclk : OUT std_logic;
	adclrc : OUT std_logic;
	daclrc : OUT std_logic;
	dacdat : OUT std_logic;
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6)
	);
END Sound;

-- Design Ports Information
-- mclk	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bclk	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- adclrc	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- daclrc	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dacdat	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rstn	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[1]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[3]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[2]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[0]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adcdat	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sound IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rstn : std_logic;
SIGNAL ww_adcdat : std_logic;
SIGNAL ww_Switches : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bclk : std_logic;
SIGNAL ww_adclrc : std_logic;
SIGNAL ww_daclrc : std_logic;
SIGNAL ww_dacdat : std_logic;
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \inst2|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instSndDrv|inst_ctrl|cntr[2]~11_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[4]~15_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[5]~17_combout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst2|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|LessThan2~1_cout\ : std_logic;
SIGNAL \inst2|LessThan2~3_cout\ : std_logic;
SIGNAL \inst2|LessThan2~5_cout\ : std_logic;
SIGNAL \inst2|LessThan2~7_cout\ : std_logic;
SIGNAL \inst2|LessThan2~9_cout\ : std_logic;
SIGNAL \inst2|LessThan2~11_cout\ : std_logic;
SIGNAL \inst2|LessThan2~13_cout\ : std_logic;
SIGNAL \inst2|LessThan2~15_cout\ : std_logic;
SIGNAL \inst2|LessThan2~17_cout\ : std_logic;
SIGNAL \inst2|LessThan2~19_cout\ : std_logic;
SIGNAL \inst2|LessThan2~21_cout\ : std_logic;
SIGNAL \inst2|LessThan2~23_cout\ : std_logic;
SIGNAL \inst2|LessThan2~25_cout\ : std_logic;
SIGNAL \inst2|LessThan2~27_cout\ : std_logic;
SIGNAL \inst2|LessThan2~29_cout\ : std_logic;
SIGNAL \inst2|LessThan2~30_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[0]~0_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[1]~1_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[2]~2_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[3]~3_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[4]~4_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[5]~5_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[6]~6_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[7]~7_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[8]~8_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[9]~9_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[10]~10_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[11]~11_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[12]~12_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[13]~13_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[14]~14_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|process_1~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg[15]~1_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg[15]~1_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~2_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~2_combout\ : std_logic;
SIGNAL \inst2|Mux25~0_combout\ : std_logic;
SIGNAL \inst2|Mux24~0_combout\ : std_logic;
SIGNAL \inst2|Mux23~0_combout\ : std_logic;
SIGNAL \inst2|Mux22~0_combout\ : std_logic;
SIGNAL \inst2|Mux21~0_combout\ : std_logic;
SIGNAL \inst2|Mux20~0_combout\ : std_logic;
SIGNAL \inst2|Mux19~0_combout\ : std_logic;
SIGNAL \inst2|Mux18~0_combout\ : std_logic;
SIGNAL \inst2|Mux17~0_combout\ : std_logic;
SIGNAL \inst2|Mux16~0_combout\ : std_logic;
SIGNAL \inst2|Mux15~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~3_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~3_combout\ : std_logic;
SIGNAL \inst2|Mux14~0_combout\ : std_logic;
SIGNAL \inst4|Y[0]~0_combout\ : std_logic;
SIGNAL \inst4|Y[15]~1_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux24~1_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|Mux8~0_combout\ : std_logic;
SIGNAL \inst2|Mux9~0_combout\ : std_logic;
SIGNAL \inst2|Mux10~0_combout\ : std_logic;
SIGNAL \inst2|Mux11~0_combout\ : std_logic;
SIGNAL \inst2|Mux12~0_combout\ : std_logic;
SIGNAL \inst2|Mux13~0_combout\ : std_logic;
SIGNAL \inst4|Y[14]~2_combout\ : std_logic;
SIGNAL \inst4|Y[13]~3_combout\ : std_logic;
SIGNAL \inst4|Y[12]~4_combout\ : std_logic;
SIGNAL \inst4|Y[11]~5_combout\ : std_logic;
SIGNAL \inst4|Y[10]~6_combout\ : std_logic;
SIGNAL \inst4|Y[9]~7_combout\ : std_logic;
SIGNAL \inst4|Y[8]~8_combout\ : std_logic;
SIGNAL \inst4|Y[7]~9_combout\ : std_logic;
SIGNAL \inst4|Y[6]~10_combout\ : std_logic;
SIGNAL \inst4|Y[5]~11_combout\ : std_logic;
SIGNAL \inst4|Y[4]~12_combout\ : std_logic;
SIGNAL \inst4|Y[3]~13_combout\ : std_logic;
SIGNAL \inst4|Y[2]~14_combout\ : std_logic;
SIGNAL \inst4|Y[1]~15_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|LessThan1~3_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|LessThan0~7_combout\ : std_logic;
SIGNAL \inst2|LessThan0~8_combout\ : std_logic;
SIGNAL \inst2|LessThan0~9_combout\ : std_logic;
SIGNAL \inst2|LessThan0~10_combout\ : std_logic;
SIGNAL \inst2|LessThan0~11_combout\ : std_logic;
SIGNAL \inst2|LessThan0~12_combout\ : std_logic;
SIGNAL \inst2|LessThan0~13_combout\ : std_logic;
SIGNAL \inst2|LessThan0~14_combout\ : std_logic;
SIGNAL \inst2|LessThan0~15_combout\ : std_logic;
SIGNAL \inst2|LessThan0~16_combout\ : std_logic;
SIGNAL \inst2|LessThan0~17_combout\ : std_logic;
SIGNAL \inst2|LessThan0~18_combout\ : std_logic;
SIGNAL \inst2|LessThan0~19_combout\ : std_logic;
SIGNAL \inst2|LessThan0~20_combout\ : std_logic;
SIGNAL \inst2|LessThan0~21_combout\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~15_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~4_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~4_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[0]~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[0]~1_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg[0]~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~5_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~5_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~6_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~6_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~7_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~7_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~8_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~8_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~9_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~9_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~10_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~10_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~11_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~11_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~12_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~12_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~13_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~13_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~14_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~14_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~15_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~15_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~16_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~16_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~22_combout\ : std_logic;
SIGNAL \inst2|LessThan0~23_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[0]~27_combout\ : std_logic;
SIGNAL \inst2|Mux10~0_wirecell_combout\ : std_logic;
SIGNAL \inst2|Mux11~0_wirecell_combout\ : std_logic;
SIGNAL \inst2|Mux12~0_wirecell_combout\ : std_logic;
SIGNAL \inst2|Mux13~0_wirecell_combout\ : std_logic;
SIGNAL \inst2|Mux14~0_wirecell_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_wirecell_combout\ : std_logic;
SIGNAL \inst2|Mux8~0_wirecell_combout\ : std_logic;
SIGNAL \inst2|Mux9~0_wirecell_combout\ : std_logic;
SIGNAL \Switches[1]~input_o\ : std_logic;
SIGNAL \Switches[3]~input_o\ : std_logic;
SIGNAL \Switches[2]~input_o\ : std_logic;
SIGNAL \Switches[0]~input_o\ : std_logic;
SIGNAL \adcdat~input_o\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[1]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[13]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[12]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[11]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[10]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[9]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[7]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[6]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[5]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[4]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[2]~feeder_combout\ : std_logic;
SIGNAL \mclk~output_o\ : std_logic;
SIGNAL \bclk~output_o\ : std_logic;
SIGNAL \adclrc~output_o\ : std_logic;
SIGNAL \daclrc~output_o\ : std_logic;
SIGNAL \dacdat~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[1]~9_combout\ : std_logic;
SIGNAL \rstn~input_o\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[1]~10\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[2]~12\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[3]~13_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[3]~14\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[4]~16\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[5]~18\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[6]~19_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[6]~20\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[7]~21_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[7]~22\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[8]~23_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[8]~24\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[9]~25_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|dacdat~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|dacdat~q\ : std_logic;
SIGNAL \instSndDrv|inst_right|dacdat~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|dacdat~q\ : std_logic;
SIGNAL \instSndDrv|inst_or|output~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_left|TXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_ctrl|cntr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \instSndDrv|inst_right|TXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_left|RXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|sample_out_tmp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_ctrl|ALT_INV_cntr\ : std_logic_vector(9 DOWNTO 1);

BEGIN

mclk <= ww_mclk;
ww_clk <= clk;
ww_rstn <= rstn;
ww_adcdat <= adcdat;
ww_Switches <= Switches;
bclk <= ww_bclk;
adclrc <= ww_adclrc;
daclrc <= ww_daclrc;
dacdat <= ww_dacdat;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst2|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT24\
& \inst2|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT19\
& \inst2|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT14\
& \inst2|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT9\
& \inst2|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \inst2|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst2|Mult0|auto_generated|mac_mult1~dataout\ & \inst2|Mult0|auto_generated|mac_mult1~7\ & 
\inst2|Mult0|auto_generated|mac_mult1~6\ & \inst2|Mult0|auto_generated|mac_mult1~5\ & \inst2|Mult0|auto_generated|mac_mult1~4\ & \inst2|Mult0|auto_generated|mac_mult1~3\ & \inst2|Mult0|auto_generated|mac_mult1~2\ & \inst2|Mult0|auto_generated|mac_mult1~1\
& \inst2|Mult0|auto_generated|mac_mult1~0\);

\inst2|Mult0|auto_generated|mac_out2~0\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst2|Mult0|auto_generated|mac_out2~1\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst2|Mult0|auto_generated|mac_out2~2\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst2|Mult0|auto_generated|mac_out2~3\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst2|Mult0|auto_generated|mac_out2~4\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst2|Mult0|auto_generated|mac_out2~5\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst2|Mult0|auto_generated|mac_out2~6\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst2|Mult0|auto_generated|mac_out2~7\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst2|Mult0|auto_generated|mac_out2~dataout\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst2|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst2|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst2|sample_out_tmp\(15) & \inst2|sample_out_tmp\(14) & \inst2|sample_out_tmp\(13) & \inst2|sample_out_tmp\(12) & \inst2|sample_out_tmp\(11) & \inst2|sample_out_tmp\(10) & 
\inst2|sample_out_tmp\(9) & \inst2|sample_out_tmp\(8) & \inst2|sample_out_tmp\(7) & \inst2|sample_out_tmp\(6) & \inst2|sample_out_tmp\(5) & \inst2|sample_out_tmp\(4) & \inst2|sample_out_tmp\(3) & \inst2|sample_out_tmp\(2) & 
\inst2|sample_out_tmp\(1) & \inst2|sample_out_tmp\(0) & gnd & gnd);

\inst2|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \inst2|Mux15~0_combout\ & \inst2|Mux16~0_combout\ & \inst2|Mux17~0_combout\ & \inst2|Mux18~0_combout\ & \inst2|Mux19~0_combout\ & \inst2|Mux20~0_combout\ & \inst2|Mux21~0_combout\ & 
\inst2|Mux22~0_combout\ & \inst2|Mux23~0_combout\ & \inst2|Mux24~0_combout\ & \inst2|Mux25~0_combout\ & gnd & gnd & gnd & gnd & gnd & gnd);

\inst2|Mult0|auto_generated|mac_mult1~0\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst2|Mult0|auto_generated|mac_mult1~1\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst2|Mult0|auto_generated|mac_mult1~2\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst2|Mult0|auto_generated|mac_mult1~3\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst2|Mult0|auto_generated|mac_mult1~4\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst2|Mult0|auto_generated|mac_mult1~5\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst2|Mult0|auto_generated|mac_mult1~6\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst2|Mult0|auto_generated|mac_mult1~7\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst2|Mult0|auto_generated|mac_mult1~dataout\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst2|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\instSndDrv|inst_ctrl|ALT_INV_cntr\(9) <= NOT \instSndDrv|inst_ctrl|cntr\(9);
\instSndDrv|inst_ctrl|ALT_INV_cntr\(1) <= NOT \instSndDrv|inst_ctrl|cntr\(1);

-- Location: FF_X97_Y37_N7
\instSndDrv|inst_ctrl|cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[2]~11_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(2));

-- Location: LCCOMB_X97_Y37_N6
\instSndDrv|inst_ctrl|cntr[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[2]~11_combout\ = (\instSndDrv|inst_ctrl|cntr\(2) & (!\instSndDrv|inst_ctrl|cntr[1]~10\)) # (!\instSndDrv|inst_ctrl|cntr\(2) & ((\instSndDrv|inst_ctrl|cntr[1]~10\) # (GND)))
-- \instSndDrv|inst_ctrl|cntr[2]~12\ = CARRY((!\instSndDrv|inst_ctrl|cntr[1]~10\) # (!\instSndDrv|inst_ctrl|cntr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(2),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[1]~10\,
	combout => \instSndDrv|inst_ctrl|cntr[2]~11_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[2]~12\);

-- Location: FF_X97_Y37_N13
\instSndDrv|inst_ctrl|cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[5]~17_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(5));

-- Location: FF_X97_Y37_N11
\instSndDrv|inst_ctrl|cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[4]~15_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(4));

-- Location: LCCOMB_X97_Y37_N10
\instSndDrv|inst_ctrl|cntr[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[4]~15_combout\ = (\instSndDrv|inst_ctrl|cntr\(4) & (!\instSndDrv|inst_ctrl|cntr[3]~14\)) # (!\instSndDrv|inst_ctrl|cntr\(4) & ((\instSndDrv|inst_ctrl|cntr[3]~14\) # (GND)))
-- \instSndDrv|inst_ctrl|cntr[4]~16\ = CARRY((!\instSndDrv|inst_ctrl|cntr[3]~14\) # (!\instSndDrv|inst_ctrl|cntr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(4),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[3]~14\,
	combout => \instSndDrv|inst_ctrl|cntr[4]~15_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[4]~16\);

-- Location: LCCOMB_X97_Y37_N12
\instSndDrv|inst_ctrl|cntr[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[5]~17_combout\ = (\instSndDrv|inst_ctrl|cntr\(5) & (\instSndDrv|inst_ctrl|cntr[4]~16\ $ (GND))) # (!\instSndDrv|inst_ctrl|cntr\(5) & (!\instSndDrv|inst_ctrl|cntr[4]~16\ & VCC))
-- \instSndDrv|inst_ctrl|cntr[5]~18\ = CARRY((\instSndDrv|inst_ctrl|cntr\(5) & !\instSndDrv|inst_ctrl|cntr[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(5),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[4]~16\,
	combout => \instSndDrv|inst_ctrl|cntr[5]~17_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[5]~18\);

-- Location: DSPOUT_X93_Y37_N2
\inst2|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst2|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPMULT_X93_Y37_N0
\inst2|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \inst2|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst2|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst2|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: FF_X94_Y38_N25
\inst2|sample_out_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[0]~0_combout\,
	asdata => \inst2|Mux14~0_wirecell_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(0));

-- Location: FF_X94_Y38_N19
\inst2|sample_out_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[1]~1_combout\,
	asdata => \inst2|Mux13~0_wirecell_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(1));

-- Location: FF_X94_Y38_N21
\inst2|sample_out_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[2]~2_combout\,
	asdata => \inst2|Mux12~0_wirecell_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(2));

-- Location: FF_X94_Y38_N31
\inst2|sample_out_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[3]~3_combout\,
	asdata => \inst2|Mux11~0_wirecell_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(3));

-- Location: FF_X97_Y38_N25
\inst2|sample_out_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[4]~4_combout\,
	asdata => \inst2|Mux10~0_wirecell_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(4));

-- Location: FF_X97_Y38_N3
\inst2|sample_out_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[5]~5_combout\,
	asdata => \inst2|Mux9~0_wirecell_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(5));

-- Location: FF_X97_Y38_N29
\inst2|sample_out_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[6]~6_combout\,
	asdata => \inst2|Mux8~0_wirecell_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(6));

-- Location: FF_X97_Y38_N31
\inst2|sample_out_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[7]~7_combout\,
	asdata => \inst2|Mux7~0_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(7));

-- Location: FF_X95_Y37_N25
\inst2|sample_out_tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[8]~8_combout\,
	asdata => \inst2|Mux6~0_wirecell_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(8));

-- Location: FF_X94_Y38_N1
\inst2|sample_out_tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[9]~9_combout\,
	asdata => \inst2|Mux24~1_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(9));

-- Location: FF_X97_Y38_N17
\inst2|sample_out_tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[10]~10_combout\,
	asdata => \inst2|Mux25~0_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(10));

-- Location: FF_X94_Y38_N11
\inst2|sample_out_tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[11]~11_combout\,
	asdata => \inst2|Mux3~0_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(11));

-- Location: FF_X94_Y38_N29
\inst2|sample_out_tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[12]~12_combout\,
	asdata => \inst2|Mux3~0_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(12));

-- Location: FF_X94_Y38_N7
\inst2|sample_out_tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[13]~13_combout\,
	asdata => \inst2|Mux3~0_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(13));

-- Location: FF_X94_Y38_N17
\inst2|sample_out_tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[14]~14_combout\,
	asdata => \inst2|Mux3~0_combout\,
	sload => \inst2|process_0~3_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(14));

-- Location: LCCOMB_X95_Y38_N0
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|Mux14~0_combout\ $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux14~0_combout\,
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X95_Y38_N2
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|Mux13~0_combout\ & (!\inst2|Add0~1\)) # (!\inst2|Mux13~0_combout\ & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux13~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X95_Y38_N4
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|Mux12~0_combout\ & (\inst2|Add0~3\ $ (GND))) # (!\inst2|Mux12~0_combout\ & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|Mux12~0_combout\ & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux12~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X95_Y38_N6
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|Mux11~0_combout\ & (!\inst2|Add0~5\)) # (!\inst2|Mux11~0_combout\ & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux11~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X95_Y38_N8
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|Mux10~0_combout\ & (\inst2|Add0~7\ $ (GND))) # (!\inst2|Mux10~0_combout\ & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|Mux10~0_combout\ & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux10~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X95_Y38_N10
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|Mux9~0_combout\ & (!\inst2|Add0~9\)) # (!\inst2|Mux9~0_combout\ & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux9~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X95_Y38_N12
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|Mux8~0_combout\ & (\inst2|Add0~11\ $ (GND))) # (!\inst2|Mux8~0_combout\ & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|Mux8~0_combout\ & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux8~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X95_Y38_N14
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|Mux7~0_combout\ & ((\inst2|Add0~13\) # (GND))) # (!\inst2|Mux7~0_combout\ & (!\inst2|Add0~13\))
-- \inst2|Add0~15\ = CARRY((\inst2|Mux7~0_combout\) # (!\inst2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux7~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X95_Y38_N16
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|Mux6~0_combout\ & (\inst2|Add0~15\ $ (GND))) # (!\inst2|Mux6~0_combout\ & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|Mux6~0_combout\ & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux6~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X95_Y38_N18
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|Mux24~1_combout\ & ((\inst2|Add0~17\) # (GND))) # (!\inst2|Mux24~1_combout\ & (!\inst2|Add0~17\))
-- \inst2|Add0~19\ = CARRY((\inst2|Mux24~1_combout\) # (!\inst2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux24~1_combout\,
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X95_Y38_N20
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|Mux25~0_combout\ & (!\inst2|Add0~19\ & VCC)) # (!\inst2|Mux25~0_combout\ & (\inst2|Add0~19\ $ (GND)))
-- \inst2|Add0~21\ = CARRY((!\inst2|Mux25~0_combout\ & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux25~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X95_Y38_N22
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|Mux3~0_combout\ & ((\inst2|Add0~21\) # (GND))) # (!\inst2|Mux3~0_combout\ & (!\inst2|Add0~21\))
-- \inst2|Add0~23\ = CARRY((\inst2|Mux3~0_combout\) # (!\inst2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux3~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X95_Y38_N24
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|Mux3~0_combout\ & (!\inst2|Add0~23\ & VCC)) # (!\inst2|Mux3~0_combout\ & (\inst2|Add0~23\ $ (GND)))
-- \inst2|Add0~25\ = CARRY((!\inst2|Mux3~0_combout\ & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux3~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X95_Y38_N26
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|Mux3~0_combout\ & ((\inst2|Add0~25\) # (GND))) # (!\inst2|Mux3~0_combout\ & (!\inst2|Add0~25\))
-- \inst2|Add0~27\ = CARRY((\inst2|Mux3~0_combout\) # (!\inst2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux3~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X95_Y38_N28
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|Mux3~0_combout\ & (!\inst2|Add0~27\ & VCC)) # (!\inst2|Mux3~0_combout\ & (\inst2|Add0~27\ $ (GND)))
-- \inst2|Add0~29\ = CARRY((!\inst2|Mux3~0_combout\ & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux3~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X95_Y38_N30
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = !\inst2|Add0~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\);

-- Location: LCCOMB_X96_Y38_N0
\inst2|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_cout\ = CARRY((!\inst4|Y[0]~0_combout\ & \inst2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[0]~0_combout\,
	datab => \inst2|Add0~0_combout\,
	datad => VCC,
	cout => \inst2|LessThan2~1_cout\);

-- Location: LCCOMB_X96_Y38_N2
\inst2|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~3_cout\ = CARRY((\inst2|Add0~2_combout\ & (\inst4|Y[1]~15_combout\ & !\inst2|LessThan2~1_cout\)) # (!\inst2|Add0~2_combout\ & ((\inst4|Y[1]~15_combout\) # (!\inst2|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst4|Y[1]~15_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~1_cout\,
	cout => \inst2|LessThan2~3_cout\);

-- Location: LCCOMB_X96_Y38_N4
\inst2|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~5_cout\ = CARRY((\inst4|Y[2]~14_combout\ & (\inst2|Add0~4_combout\ & !\inst2|LessThan2~3_cout\)) # (!\inst4|Y[2]~14_combout\ & ((\inst2|Add0~4_combout\) # (!\inst2|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[2]~14_combout\,
	datab => \inst2|Add0~4_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~3_cout\,
	cout => \inst2|LessThan2~5_cout\);

-- Location: LCCOMB_X96_Y38_N6
\inst2|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~7_cout\ = CARRY((\inst4|Y[3]~13_combout\ & ((!\inst2|LessThan2~5_cout\) # (!\inst2|Add0~6_combout\))) # (!\inst4|Y[3]~13_combout\ & (!\inst2|Add0~6_combout\ & !\inst2|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[3]~13_combout\,
	datab => \inst2|Add0~6_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~5_cout\,
	cout => \inst2|LessThan2~7_cout\);

-- Location: LCCOMB_X96_Y38_N8
\inst2|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~9_cout\ = CARRY((\inst4|Y[4]~12_combout\ & (\inst2|Add0~8_combout\ & !\inst2|LessThan2~7_cout\)) # (!\inst4|Y[4]~12_combout\ & ((\inst2|Add0~8_combout\) # (!\inst2|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[4]~12_combout\,
	datab => \inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~7_cout\,
	cout => \inst2|LessThan2~9_cout\);

-- Location: LCCOMB_X96_Y38_N10
\inst2|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~11_cout\ = CARRY((\inst2|Add0~10_combout\ & (\inst4|Y[5]~11_combout\ & !\inst2|LessThan2~9_cout\)) # (!\inst2|Add0~10_combout\ & ((\inst4|Y[5]~11_combout\) # (!\inst2|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~10_combout\,
	datab => \inst4|Y[5]~11_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~9_cout\,
	cout => \inst2|LessThan2~11_cout\);

-- Location: LCCOMB_X96_Y38_N12
\inst2|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~13_cout\ = CARRY((\inst2|Add0~12_combout\ & ((!\inst2|LessThan2~11_cout\) # (!\inst4|Y[6]~10_combout\))) # (!\inst2|Add0~12_combout\ & (!\inst4|Y[6]~10_combout\ & !\inst2|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datab => \inst4|Y[6]~10_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~11_cout\,
	cout => \inst2|LessThan2~13_cout\);

-- Location: LCCOMB_X96_Y38_N14
\inst2|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~15_cout\ = CARRY((\inst2|Add0~14_combout\ & (\inst4|Y[7]~9_combout\ & !\inst2|LessThan2~13_cout\)) # (!\inst2|Add0~14_combout\ & ((\inst4|Y[7]~9_combout\) # (!\inst2|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst4|Y[7]~9_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~13_cout\,
	cout => \inst2|LessThan2~15_cout\);

-- Location: LCCOMB_X96_Y38_N16
\inst2|LessThan2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~17_cout\ = CARRY((\inst2|Add0~16_combout\ & ((!\inst2|LessThan2~15_cout\) # (!\inst4|Y[8]~8_combout\))) # (!\inst2|Add0~16_combout\ & (!\inst4|Y[8]~8_combout\ & !\inst2|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst4|Y[8]~8_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~15_cout\,
	cout => \inst2|LessThan2~17_cout\);

-- Location: LCCOMB_X96_Y38_N18
\inst2|LessThan2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~19_cout\ = CARRY((\inst4|Y[9]~7_combout\ & ((!\inst2|LessThan2~17_cout\) # (!\inst2|Add0~18_combout\))) # (!\inst4|Y[9]~7_combout\ & (!\inst2|Add0~18_combout\ & !\inst2|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[9]~7_combout\,
	datab => \inst2|Add0~18_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~17_cout\,
	cout => \inst2|LessThan2~19_cout\);

-- Location: LCCOMB_X96_Y38_N20
\inst2|LessThan2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~21_cout\ = CARRY((\inst2|Add0~20_combout\ & ((!\inst2|LessThan2~19_cout\) # (!\inst4|Y[10]~6_combout\))) # (!\inst2|Add0~20_combout\ & (!\inst4|Y[10]~6_combout\ & !\inst2|LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~20_combout\,
	datab => \inst4|Y[10]~6_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~19_cout\,
	cout => \inst2|LessThan2~21_cout\);

-- Location: LCCOMB_X96_Y38_N22
\inst2|LessThan2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~23_cout\ = CARRY((\inst4|Y[11]~5_combout\ & ((!\inst2|LessThan2~21_cout\) # (!\inst2|Add0~22_combout\))) # (!\inst4|Y[11]~5_combout\ & (!\inst2|Add0~22_combout\ & !\inst2|LessThan2~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[11]~5_combout\,
	datab => \inst2|Add0~22_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~21_cout\,
	cout => \inst2|LessThan2~23_cout\);

-- Location: LCCOMB_X96_Y38_N24
\inst2|LessThan2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~25_cout\ = CARRY((\inst4|Y[12]~4_combout\ & (\inst2|Add0~24_combout\ & !\inst2|LessThan2~23_cout\)) # (!\inst4|Y[12]~4_combout\ & ((\inst2|Add0~24_combout\) # (!\inst2|LessThan2~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[12]~4_combout\,
	datab => \inst2|Add0~24_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~23_cout\,
	cout => \inst2|LessThan2~25_cout\);

-- Location: LCCOMB_X96_Y38_N26
\inst2|LessThan2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~27_cout\ = CARRY((\inst2|Add0~26_combout\ & (\inst4|Y[13]~3_combout\ & !\inst2|LessThan2~25_cout\)) # (!\inst2|Add0~26_combout\ & ((\inst4|Y[13]~3_combout\) # (!\inst2|LessThan2~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~26_combout\,
	datab => \inst4|Y[13]~3_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~25_cout\,
	cout => \inst2|LessThan2~27_cout\);

-- Location: LCCOMB_X96_Y38_N28
\inst2|LessThan2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~29_cout\ = CARRY((\inst2|Add0~28_combout\ & ((!\inst2|LessThan2~27_cout\) # (!\inst4|Y[14]~2_combout\))) # (!\inst2|Add0~28_combout\ & (!\inst4|Y[14]~2_combout\ & !\inst2|LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~28_combout\,
	datab => \inst4|Y[14]~2_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~27_cout\,
	cout => \inst2|LessThan2~29_cout\);

-- Location: LCCOMB_X96_Y38_N30
\inst2|LessThan2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~30_combout\ = (\inst2|Add0~30_combout\ & (\inst2|LessThan2~29_cout\ & \inst4|Y[15]~1_combout\)) # (!\inst2|Add0~30_combout\ & ((\inst2|LessThan2~29_cout\) # (\inst4|Y[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~30_combout\,
	datad => \inst4|Y[15]~1_combout\,
	cin => \inst2|LessThan2~29_cout\,
	combout => \inst2|LessThan2~30_combout\);

-- Location: LCCOMB_X94_Y38_N24
\inst2|sample_out_tmp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[0]~0_combout\ = (\inst2|process_0~4_combout\ & (\inst2|Add0~0_combout\)) # (!\inst2|process_0~4_combout\ & ((\inst4|Y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst2|Add0~0_combout\,
	datad => \inst4|Y[0]~0_combout\,
	combout => \inst2|sample_out_tmp[0]~0_combout\);

-- Location: LCCOMB_X94_Y38_N18
\inst2|sample_out_tmp[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[1]~1_combout\ = (\inst2|process_0~4_combout\ & ((\inst2|Add0~2_combout\))) # (!\inst2|process_0~4_combout\ & (\inst4|Y[1]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst4|Y[1]~15_combout\,
	datad => \inst2|Add0~2_combout\,
	combout => \inst2|sample_out_tmp[1]~1_combout\);

-- Location: LCCOMB_X94_Y38_N20
\inst2|sample_out_tmp[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[2]~2_combout\ = (\inst2|process_0~4_combout\ & (\inst2|Add0~4_combout\)) # (!\inst2|process_0~4_combout\ & ((\inst4|Y[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst2|Add0~4_combout\,
	datad => \inst4|Y[2]~14_combout\,
	combout => \inst2|sample_out_tmp[2]~2_combout\);

-- Location: LCCOMB_X94_Y38_N30
\inst2|sample_out_tmp[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[3]~3_combout\ = (\inst2|process_0~4_combout\ & ((\inst2|Add0~6_combout\))) # (!\inst2|process_0~4_combout\ & (\inst4|Y[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst4|Y[3]~13_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|sample_out_tmp[3]~3_combout\);

-- Location: LCCOMB_X97_Y38_N24
\inst2|sample_out_tmp[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[4]~4_combout\ = (\inst2|process_0~4_combout\ & (\inst2|Add0~8_combout\)) # (!\inst2|process_0~4_combout\ & ((\inst4|Y[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst2|Add0~8_combout\,
	datad => \inst4|Y[4]~12_combout\,
	combout => \inst2|sample_out_tmp[4]~4_combout\);

-- Location: LCCOMB_X97_Y38_N2
\inst2|sample_out_tmp[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[5]~5_combout\ = (\inst2|process_0~4_combout\ & ((\inst2|Add0~10_combout\))) # (!\inst2|process_0~4_combout\ & (\inst4|Y[5]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst4|Y[5]~11_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|sample_out_tmp[5]~5_combout\);

-- Location: LCCOMB_X97_Y38_N28
\inst2|sample_out_tmp[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[6]~6_combout\ = (\inst2|process_0~4_combout\ & ((\inst2|Add0~12_combout\))) # (!\inst2|process_0~4_combout\ & (\inst4|Y[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[6]~10_combout\,
	datab => \inst2|process_0~4_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|sample_out_tmp[6]~6_combout\);

-- Location: LCCOMB_X97_Y38_N30
\inst2|sample_out_tmp[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[7]~7_combout\ = (\inst2|process_0~4_combout\ & (\inst2|Add0~14_combout\)) # (!\inst2|process_0~4_combout\ & ((\inst4|Y[7]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst2|Add0~14_combout\,
	datad => \inst4|Y[7]~9_combout\,
	combout => \inst2|sample_out_tmp[7]~7_combout\);

-- Location: LCCOMB_X95_Y37_N24
\inst2|sample_out_tmp[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[8]~8_combout\ = (\inst2|process_0~4_combout\ & (\inst2|Add0~16_combout\)) # (!\inst2|process_0~4_combout\ & ((\inst4|Y[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst4|Y[8]~8_combout\,
	datad => \inst2|process_0~4_combout\,
	combout => \inst2|sample_out_tmp[8]~8_combout\);

-- Location: LCCOMB_X94_Y38_N0
\inst2|sample_out_tmp[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[9]~9_combout\ = (\inst2|process_0~4_combout\ & (\inst2|Add0~18_combout\)) # (!\inst2|process_0~4_combout\ & ((\inst4|Y[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst2|Add0~18_combout\,
	datad => \inst4|Y[9]~7_combout\,
	combout => \inst2|sample_out_tmp[9]~9_combout\);

-- Location: LCCOMB_X97_Y38_N16
\inst2|sample_out_tmp[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[10]~10_combout\ = (\inst2|process_0~4_combout\ & ((\inst2|Add0~20_combout\))) # (!\inst2|process_0~4_combout\ & (\inst4|Y[10]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst4|Y[10]~6_combout\,
	datad => \inst2|Add0~20_combout\,
	combout => \inst2|sample_out_tmp[10]~10_combout\);

-- Location: LCCOMB_X94_Y38_N10
\inst2|sample_out_tmp[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[11]~11_combout\ = (\inst2|process_0~4_combout\ & ((\inst2|Add0~22_combout\))) # (!\inst2|process_0~4_combout\ & (\inst4|Y[11]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst4|Y[11]~5_combout\,
	datad => \inst2|Add0~22_combout\,
	combout => \inst2|sample_out_tmp[11]~11_combout\);

-- Location: LCCOMB_X94_Y38_N28
\inst2|sample_out_tmp[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[12]~12_combout\ = (\inst2|process_0~4_combout\ & (\inst2|Add0~24_combout\)) # (!\inst2|process_0~4_combout\ & ((\inst4|Y[12]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst2|Add0~24_combout\,
	datad => \inst4|Y[12]~4_combout\,
	combout => \inst2|sample_out_tmp[12]~12_combout\);

-- Location: LCCOMB_X94_Y38_N6
\inst2|sample_out_tmp[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[13]~13_combout\ = (\inst2|process_0~4_combout\ & ((\inst2|Add0~26_combout\))) # (!\inst2|process_0~4_combout\ & (\inst4|Y[13]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst4|Y[13]~3_combout\,
	datad => \inst2|Add0~26_combout\,
	combout => \inst2|sample_out_tmp[13]~13_combout\);

-- Location: LCCOMB_X94_Y38_N16
\inst2|sample_out_tmp[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[14]~14_combout\ = (\inst2|process_0~4_combout\ & (\inst2|Add0~28_combout\)) # (!\inst2|process_0~4_combout\ & ((\inst4|Y[14]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst2|Add0~28_combout\,
	datad => \inst4|Y[14]~2_combout\,
	combout => \inst2|sample_out_tmp[14]~14_combout\);

-- Location: FF_X97_Y37_N1
\instSndDrv|inst_ctrl|cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[0]~27_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(0));

-- Location: FF_X92_Y37_N25
\instSndDrv|inst_left|TXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~0_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(15));

-- Location: FF_X92_Y37_N3
\instSndDrv|inst_right|TXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~0_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(15));

-- Location: FF_X92_Y37_N21
\instSndDrv|inst_left|TXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~2_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(14));

-- Location: LCCOMB_X92_Y37_N24
\instSndDrv|inst_left|TXReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(14),
	datac => \inst2|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~0_combout\);

-- Location: LCCOMB_X97_Y37_N26
\instSndDrv|inst_left|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|process_1~0_combout\ = (((!\instSndDrv|inst_ctrl|cntr\(0)) # (!\instSndDrv|inst_ctrl|cntr\(1))) # (!\instSndDrv|inst_ctrl|cntr\(3))) # (!\instSndDrv|inst_ctrl|cntr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(2),
	datab => \instSndDrv|inst_ctrl|cntr\(3),
	datac => \instSndDrv|inst_ctrl|cntr\(1),
	datad => \instSndDrv|inst_ctrl|cntr\(0),
	combout => \instSndDrv|inst_left|process_1~0_combout\);

-- Location: LCCOMB_X97_Y37_N30
\instSndDrv|inst_left|TXReg[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg[15]~1_combout\ = (\rstn~input_o\ & ((\instSndDrv|inst_ctrl|cntr\(9)) # (!\instSndDrv|inst_left|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|process_1~0_combout\,
	datab => \rstn~input_o\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg[15]~1_combout\);

-- Location: FF_X92_Y37_N23
\instSndDrv|inst_right|TXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~2_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(14));

-- Location: LCCOMB_X92_Y37_N2
\instSndDrv|inst_right|TXReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(14))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(14),
	datac => \inst2|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~0_combout\);

-- Location: LCCOMB_X97_Y37_N24
\instSndDrv|inst_right|TXReg[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg[15]~1_combout\ = (\rstn~input_o\ & ((!\instSndDrv|inst_ctrl|cntr\(9)) # (!\instSndDrv|inst_left|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|process_1~0_combout\,
	datab => \rstn~input_o\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg[15]~1_combout\);

-- Location: FF_X92_Y37_N17
\instSndDrv|inst_left|TXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~3_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(13));

-- Location: LCCOMB_X92_Y37_N20
\instSndDrv|inst_left|TXReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~2_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(13),
	datac => \inst2|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~2_combout\);

-- Location: FF_X92_Y37_N19
\instSndDrv|inst_right|TXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~3_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(13));

-- Location: LCCOMB_X92_Y37_N22
\instSndDrv|inst_right|TXReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~2_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(13))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_right|TXReg\(13),
	datac => \inst2|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~2_combout\);

-- Location: FF_X97_Y38_N19
\inst2|sample_out_tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp~15_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(15));

-- Location: LCCOMB_X95_Y37_N10
\inst2|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux25~0_combout\ = (!\Switches[3]~input_o\ & (!\Switches[1]~input_o\ & !\Switches[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switches[3]~input_o\,
	datac => \Switches[1]~input_o\,
	datad => \Switches[2]~input_o\,
	combout => \inst2|Mux25~0_combout\);

-- Location: LCCOMB_X94_Y37_N24
\inst2|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux24~0_combout\ = (!\Switches[2]~input_o\ & (!\Switches[3]~input_o\ & (!\Switches[0]~input_o\ & \Switches[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux24~0_combout\);

-- Location: LCCOMB_X94_Y37_N18
\inst2|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux23~0_combout\ = (!\Switches[3]~input_o\ & (\Switches[0]~input_o\ & (\Switches[2]~input_o\ $ (\Switches[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux23~0_combout\);

-- Location: LCCOMB_X94_Y37_N20
\inst2|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux22~0_combout\ = (\Switches[2]~input_o\ & (!\Switches[3]~input_o\ & ((\Switches[0]~input_o\) # (!\Switches[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux22~0_combout\);

-- Location: LCCOMB_X94_Y37_N30
\inst2|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux21~0_combout\ = (\Switches[2]~input_o\ & (!\Switches[3]~input_o\ & ((\Switches[1]~input_o\)))) # (!\Switches[2]~input_o\ & (\Switches[3]~input_o\ & (\Switches[0]~input_o\ & !\Switches[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux21~0_combout\);

-- Location: LCCOMB_X94_Y37_N16
\inst2|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux20~0_combout\ = (!\Switches[2]~input_o\ & (\Switches[3]~input_o\ & ((\Switches[0]~input_o\) # (!\Switches[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux20~0_combout\);

-- Location: LCCOMB_X95_Y37_N12
\inst2|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux19~0_combout\ = (\Switches[3]~input_o\ & (\Switches[1]~input_o\ & !\Switches[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switches[3]~input_o\,
	datac => \Switches[1]~input_o\,
	datad => \Switches[2]~input_o\,
	combout => \inst2|Mux19~0_combout\);

-- Location: LCCOMB_X94_Y37_N2
\inst2|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux18~0_combout\ = (\Switches[2]~input_o\ & (\Switches[3]~input_o\ & (!\Switches[0]~input_o\ & !\Switches[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux18~0_combout\);

-- Location: LCCOMB_X94_Y37_N12
\inst2|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux17~0_combout\ = (\Switches[2]~input_o\ & (\Switches[3]~input_o\ & (\Switches[0]~input_o\ & !\Switches[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux17~0_combout\);

-- Location: LCCOMB_X94_Y37_N22
\inst2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux16~0_combout\ = (\Switches[2]~input_o\ & (\Switches[3]~input_o\ & (!\Switches[0]~input_o\ & \Switches[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux16~0_combout\);

-- Location: LCCOMB_X94_Y37_N8
\inst2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux15~0_combout\ = (\Switches[2]~input_o\ & (\Switches[3]~input_o\ & (\Switches[0]~input_o\ & \Switches[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux15~0_combout\);

-- Location: FF_X92_Y37_N5
\instSndDrv|inst_left|TXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~4_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(12));

-- Location: LCCOMB_X92_Y37_N16
\instSndDrv|inst_left|TXReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~3_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT13\)) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \instSndDrv|inst_left|TXReg\(12),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~3_combout\);

-- Location: FF_X92_Y37_N7
\instSndDrv|inst_right|TXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~4_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(12));

-- Location: LCCOMB_X92_Y37_N18
\instSndDrv|inst_right|TXReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~3_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(12))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(12),
	datac => \inst2|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~3_combout\);

-- Location: LCCOMB_X95_Y37_N30
\inst2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux14~0_combout\ = (\Switches[1]~input_o\ & (((!\Switches[2]~input_o\) # (!\Switches[0]~input_o\)) # (!\Switches[3]~input_o\))) # (!\Switches[1]~input_o\ & ((\Switches[3]~input_o\) # ((\Switches[0]~input_o\) # (\Switches[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[1]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[2]~input_o\,
	combout => \inst2|Mux14~0_combout\);

-- Location: FF_X99_Y38_N1
\instSndDrv|inst_left|RXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adcdat~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(0));

-- Location: FF_X99_Y38_N15
\instSndDrv|inst_right|RXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adcdat~input_o\,
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(0));

-- Location: LCCOMB_X99_Y38_N14
\inst4|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[0]~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(0)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(0),
	datad => \instSndDrv|inst_left|RXReg\(0),
	combout => \inst4|Y[0]~0_combout\);

-- Location: FF_X98_Y38_N1
\instSndDrv|inst_left|RXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(14),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(15));

-- Location: FF_X98_Y38_N11
\instSndDrv|inst_right|RXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(14),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(15));

-- Location: LCCOMB_X98_Y38_N10
\inst4|Y[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[15]~1_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(15)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(15),
	datad => \instSndDrv|inst_left|RXReg\(15),
	combout => \inst4|Y[15]~1_combout\);

-- Location: LCCOMB_X94_Y37_N10
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (!\Switches[2]~input_o\ & (!\Switches[3]~input_o\ & (!\Switches[0]~input_o\ & !\Switches[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X95_Y37_N0
\inst2|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux24~1_combout\ = (!\Switches[3]~input_o\ & (!\Switches[0]~input_o\ & !\Switches[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[2]~input_o\,
	combout => \inst2|Mux24~1_combout\);

-- Location: LCCOMB_X94_Y37_N4
\inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\Switches[2]~input_o\) # ((\Switches[3]~input_o\) # (\Switches[0]~input_o\ $ (\Switches[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X95_Y37_N26
\inst2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (!\Switches[1]~input_o\ & (!\Switches[0]~input_o\ & !\Switches[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[1]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[3]~input_o\,
	combout => \inst2|Mux7~0_combout\);

-- Location: LCCOMB_X94_Y37_N6
\inst2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~0_combout\ = (\Switches[3]~input_o\) # ((\Switches[2]~input_o\ & (\Switches[0]~input_o\ $ (!\Switches[1]~input_o\))) # (!\Switches[2]~input_o\ & ((\Switches[0]~input_o\) # (\Switches[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux8~0_combout\);

-- Location: LCCOMB_X94_Y37_N0
\inst2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux9~0_combout\ = (\Switches[2]~input_o\ & ((\Switches[3]~input_o\) # ((!\Switches[0]~input_o\)))) # (!\Switches[2]~input_o\ & (((\Switches[0]~input_o\) # (\Switches[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux9~0_combout\);

-- Location: LCCOMB_X94_Y37_N26
\inst2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux10~0_combout\ = (\Switches[2]~input_o\ & ((\Switches[3]~input_o\) # ((!\Switches[1]~input_o\) # (!\Switches[0]~input_o\)))) # (!\Switches[2]~input_o\ & ((\Switches[3]~input_o\ & (\Switches[0]~input_o\ $ (!\Switches[1]~input_o\))) # 
-- (!\Switches[3]~input_o\ & ((\Switches[0]~input_o\) # (\Switches[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux10~0_combout\);

-- Location: LCCOMB_X94_Y37_N28
\inst2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux11~0_combout\ = (\Switches[0]~input_o\ & ((\Switches[2]~input_o\) # ((!\Switches[3]~input_o\)))) # (!\Switches[0]~input_o\ & ((\Switches[1]~input_o\) # (\Switches[2]~input_o\ $ (\Switches[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux11~0_combout\);

-- Location: LCCOMB_X94_Y37_N14
\inst2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux12~0_combout\ = (\Switches[3]~input_o\ & ((\Switches[2]~input_o\ $ (!\Switches[1]~input_o\)) # (!\Switches[0]~input_o\))) # (!\Switches[3]~input_o\ & ((\Switches[2]~input_o\) # ((\Switches[0]~input_o\) # (\Switches[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[2]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[1]~input_o\,
	combout => \inst2|Mux12~0_combout\);

-- Location: LCCOMB_X95_Y37_N4
\inst2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux13~0_combout\ = (\Switches[0]~input_o\) # ((\Switches[1]~input_o\ & ((!\Switches[2]~input_o\) # (!\Switches[3]~input_o\))) # (!\Switches[1]~input_o\ & ((\Switches[3]~input_o\) # (\Switches[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches[1]~input_o\,
	datab => \Switches[3]~input_o\,
	datac => \Switches[0]~input_o\,
	datad => \Switches[2]~input_o\,
	combout => \inst2|Mux13~0_combout\);

-- Location: FF_X98_Y37_N17
\instSndDrv|inst_left|RXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(13),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(14));

-- Location: FF_X98_Y37_N19
\instSndDrv|inst_right|RXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(13),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(14));

-- Location: LCCOMB_X98_Y37_N18
\inst4|Y[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[14]~2_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(14)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(14),
	datad => \instSndDrv|inst_left|RXReg\(14),
	combout => \inst4|Y[14]~2_combout\);

-- Location: FF_X98_Y37_N3
\instSndDrv|inst_left|RXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[13]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(13));

-- Location: FF_X98_Y37_N23
\instSndDrv|inst_right|RXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(12),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(13));

-- Location: LCCOMB_X98_Y37_N22
\inst4|Y[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[13]~3_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(13)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(13),
	datad => \instSndDrv|inst_left|RXReg\(13),
	combout => \inst4|Y[13]~3_combout\);

-- Location: FF_X98_Y37_N21
\instSndDrv|inst_left|RXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[12]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(12));

-- Location: FF_X98_Y37_N9
\instSndDrv|inst_right|RXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(11),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(12));

-- Location: LCCOMB_X98_Y37_N8
\inst4|Y[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[12]~4_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(12)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(12),
	datad => \instSndDrv|inst_left|RXReg\(12),
	combout => \inst4|Y[12]~4_combout\);

-- Location: FF_X98_Y37_N11
\instSndDrv|inst_left|RXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[11]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(11));

-- Location: FF_X98_Y37_N31
\instSndDrv|inst_right|RXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(10),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(11));

-- Location: LCCOMB_X98_Y37_N30
\inst4|Y[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[11]~5_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(11)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(11),
	datad => \instSndDrv|inst_left|RXReg\(11),
	combout => \inst4|Y[11]~5_combout\);

-- Location: FF_X98_Y37_N25
\instSndDrv|inst_left|RXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[10]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(10));

-- Location: FF_X98_Y37_N15
\instSndDrv|inst_right|RXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(9),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(10));

-- Location: LCCOMB_X98_Y37_N14
\inst4|Y[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[10]~6_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(10)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(10),
	datad => \instSndDrv|inst_left|RXReg\(10),
	combout => \inst4|Y[10]~6_combout\);

-- Location: FF_X98_Y37_N13
\instSndDrv|inst_left|RXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[9]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(9));

-- Location: FF_X98_Y37_N27
\instSndDrv|inst_right|RXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(8),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(9));

-- Location: LCCOMB_X98_Y37_N26
\inst4|Y[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[9]~7_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(9)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(9),
	datad => \instSndDrv|inst_left|RXReg\(9),
	combout => \inst4|Y[9]~7_combout\);

-- Location: FF_X98_Y37_N29
\instSndDrv|inst_left|RXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(7),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(8));

-- Location: FF_X98_Y37_N7
\instSndDrv|inst_right|RXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(7),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(8));

-- Location: LCCOMB_X98_Y37_N6
\inst4|Y[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[8]~8_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(8)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(8),
	datad => \instSndDrv|inst_left|RXReg\(8),
	combout => \inst4|Y[8]~8_combout\);

-- Location: FF_X99_Y38_N11
\instSndDrv|inst_left|RXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[7]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(7));

-- Location: FF_X99_Y38_N7
\instSndDrv|inst_right|RXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(6),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(7));

-- Location: LCCOMB_X99_Y38_N6
\inst4|Y[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[7]~9_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(7)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(7),
	datad => \instSndDrv|inst_left|RXReg\(7),
	combout => \inst4|Y[7]~9_combout\);

-- Location: FF_X99_Y38_N27
\instSndDrv|inst_left|RXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[6]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(6));

-- Location: FF_X99_Y38_N25
\instSndDrv|inst_right|RXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(5),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(6));

-- Location: LCCOMB_X99_Y38_N24
\inst4|Y[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[6]~10_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(6)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(6),
	datad => \instSndDrv|inst_left|RXReg\(6),
	combout => \inst4|Y[6]~10_combout\);

-- Location: FF_X99_Y38_N19
\instSndDrv|inst_left|RXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[5]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(5));

-- Location: FF_X99_Y38_N31
\instSndDrv|inst_right|RXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(4),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(5));

-- Location: LCCOMB_X99_Y38_N30
\inst4|Y[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[5]~11_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(5)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(5),
	datad => \instSndDrv|inst_left|RXReg\(5),
	combout => \inst4|Y[5]~11_combout\);

-- Location: FF_X99_Y38_N3
\instSndDrv|inst_left|RXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[4]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(4));

-- Location: FF_X99_Y38_N5
\instSndDrv|inst_right|RXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(3),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(4));

-- Location: LCCOMB_X99_Y38_N4
\inst4|Y[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[4]~12_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(4)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(4),
	datad => \instSndDrv|inst_left|RXReg\(4),
	combout => \inst4|Y[4]~12_combout\);

-- Location: FF_X99_Y38_N9
\instSndDrv|inst_left|RXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(2),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(3));

-- Location: FF_X99_Y38_N17
\instSndDrv|inst_right|RXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(2),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(3));

-- Location: LCCOMB_X99_Y38_N16
\inst4|Y[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[3]~13_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(3)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(3),
	datad => \instSndDrv|inst_left|RXReg\(3),
	combout => \inst4|Y[3]~13_combout\);

-- Location: FF_X99_Y38_N13
\instSndDrv|inst_left|RXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[2]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(2));

-- Location: FF_X99_Y38_N21
\instSndDrv|inst_right|RXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(1),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(2));

-- Location: LCCOMB_X99_Y38_N20
\inst4|Y[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[2]~14_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(2)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(2),
	datad => \instSndDrv|inst_left|RXReg\(2),
	combout => \inst4|Y[2]~14_combout\);

-- Location: FF_X99_Y38_N29
\instSndDrv|inst_left|RXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[1]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(1));

-- Location: FF_X99_Y38_N23
\instSndDrv|inst_right|RXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_right|RXReg\(0),
	sload => VCC,
	ena => \instSndDrv|inst_right|RXReg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(1));

-- Location: LCCOMB_X99_Y38_N22
\inst4|Y[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[1]~15_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(1)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(1),
	datad => \instSndDrv|inst_left|RXReg\(1),
	combout => \inst4|Y[1]~15_combout\);

-- Location: LCCOMB_X98_Y38_N4
\inst2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (\inst4|Y[12]~4_combout\) # ((\inst4|Y[13]~3_combout\) # ((\inst4|Y[0]~0_combout\) # (\inst4|Y[14]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[12]~4_combout\,
	datab => \inst4|Y[13]~3_combout\,
	datac => \inst4|Y[0]~0_combout\,
	datad => \inst4|Y[14]~2_combout\,
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X98_Y38_N6
\inst2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_combout\ = (\inst4|Y[11]~5_combout\) # ((\inst4|Y[8]~8_combout\) # ((\inst4|Y[9]~7_combout\) # (\inst4|Y[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[11]~5_combout\,
	datab => \inst4|Y[8]~8_combout\,
	datac => \inst4|Y[9]~7_combout\,
	datad => \inst4|Y[10]~6_combout\,
	combout => \inst2|LessThan1~1_combout\);

-- Location: LCCOMB_X97_Y38_N20
\inst2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_combout\ = (\inst4|Y[4]~12_combout\) # ((\inst4|Y[5]~11_combout\) # ((\inst4|Y[6]~10_combout\) # (\inst4|Y[7]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[4]~12_combout\,
	datab => \inst4|Y[5]~11_combout\,
	datac => \inst4|Y[6]~10_combout\,
	datad => \inst4|Y[7]~9_combout\,
	combout => \inst2|LessThan1~2_combout\);

-- Location: LCCOMB_X94_Y38_N2
\inst2|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~3_combout\ = (\inst4|Y[3]~13_combout\) # ((\inst4|Y[2]~14_combout\) # ((\inst2|LessThan1~2_combout\) # (\inst4|Y[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[3]~13_combout\,
	datab => \inst4|Y[2]~14_combout\,
	datac => \inst2|LessThan1~2_combout\,
	datad => \inst4|Y[1]~15_combout\,
	combout => \inst2|LessThan1~3_combout\);

-- Location: LCCOMB_X98_Y38_N8
\inst2|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = (!\inst4|Y[15]~1_combout\ & ((\inst2|LessThan1~1_combout\) # ((\inst2|LessThan1~0_combout\) # (\inst2|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~1_combout\,
	datab => \inst2|LessThan1~0_combout\,
	datac => \inst4|Y[15]~1_combout\,
	datad => \inst2|LessThan1~3_combout\,
	combout => \inst2|process_0~2_combout\);

-- Location: LCCOMB_X98_Y38_N18
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst4|Y[11]~5_combout\ & (\inst4|Y[13]~3_combout\ & (\inst2|Mux3~0_combout\ & \inst4|Y[12]~4_combout\))) # (!\inst4|Y[11]~5_combout\ & (!\inst4|Y[13]~3_combout\ & (!\inst2|Mux3~0_combout\ & !\inst4|Y[12]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[11]~5_combout\,
	datab => \inst4|Y[13]~3_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst4|Y[12]~4_combout\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X98_Y37_N16
\inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = \inst2|Mux3~0_combout\ $ (((\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|RXReg\(14))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|RXReg\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux3~0_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|RXReg\(14),
	datad => \instSndDrv|inst_right|RXReg\(14),
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X98_Y38_N20
\inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (!\inst2|LessThan0~5_combout\ & (\inst2|LessThan0~4_combout\ & (\inst4|Y[10]~6_combout\ $ (!\inst2|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[10]~6_combout\,
	datab => \inst2|LessThan0~5_combout\,
	datac => \inst2|Mux25~0_combout\,
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X98_Y38_N14
\inst2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_combout\ = (\inst2|LessThan0~6_combout\ & (\inst2|Mux24~1_combout\ $ (!\inst4|Y[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux24~1_combout\,
	datac => \inst4|Y[9]~7_combout\,
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|LessThan0~7_combout\);

-- Location: LCCOMB_X97_Y38_N6
\inst2|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~8_combout\ = (\inst4|Y[6]~10_combout\ & (!\inst2|Mux8~0_combout\ & (\inst2|Mux7~0_combout\ $ (!\inst4|Y[7]~9_combout\)))) # (!\inst4|Y[6]~10_combout\ & (\inst2|Mux8~0_combout\ & (\inst2|Mux7~0_combout\ $ (!\inst4|Y[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[6]~10_combout\,
	datab => \inst2|Mux8~0_combout\,
	datac => \inst2|Mux7~0_combout\,
	datad => \inst4|Y[7]~9_combout\,
	combout => \inst2|LessThan0~8_combout\);

-- Location: LCCOMB_X97_Y38_N0
\inst2|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~9_combout\ = (\inst2|LessThan0~8_combout\ & (\inst2|Mux9~0_combout\ $ (\inst4|Y[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~8_combout\,
	datac => \inst2|Mux9~0_combout\,
	datad => \inst4|Y[5]~11_combout\,
	combout => \inst2|LessThan0~9_combout\);

-- Location: LCCOMB_X97_Y38_N10
\inst2|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~10_combout\ = (\inst4|Y[3]~13_combout\ & (\inst2|Mux10~0_combout\ $ (((\inst4|Y[4]~12_combout\))))) # (!\inst4|Y[3]~13_combout\ & (\inst2|Mux11~0_combout\ & (\inst2|Mux10~0_combout\ $ (\inst4|Y[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux10~0_combout\,
	datab => \inst4|Y[3]~13_combout\,
	datac => \inst2|Mux11~0_combout\,
	datad => \inst4|Y[4]~12_combout\,
	combout => \inst2|LessThan0~10_combout\);

-- Location: LCCOMB_X94_Y38_N12
\inst2|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~11_combout\ = (\inst4|Y[1]~15_combout\ & ((\inst2|Mux13~0_combout\) # ((\inst4|Y[0]~0_combout\ & \inst2|Mux14~0_combout\)))) # (!\inst4|Y[1]~15_combout\ & (\inst4|Y[0]~0_combout\ & (\inst2|Mux13~0_combout\ & \inst2|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[0]~0_combout\,
	datab => \inst4|Y[1]~15_combout\,
	datac => \inst2|Mux13~0_combout\,
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|LessThan0~11_combout\);

-- Location: LCCOMB_X94_Y38_N22
\inst2|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~12_combout\ = (\inst2|LessThan0~11_combout\ & ((\inst2|Mux12~0_combout\) # (\inst4|Y[2]~14_combout\))) # (!\inst2|LessThan0~11_combout\ & (\inst2|Mux12~0_combout\ & \inst4|Y[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~11_combout\,
	datab => \inst2|Mux12~0_combout\,
	datad => \inst4|Y[2]~14_combout\,
	combout => \inst2|LessThan0~12_combout\);

-- Location: LCCOMB_X98_Y38_N16
\inst2|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~13_combout\ = (\inst2|LessThan0~9_combout\ & (\inst2|LessThan0~10_combout\ & ((\inst2|LessThan0~23_combout\) # (\inst2|LessThan0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~9_combout\,
	datab => \inst2|LessThan0~23_combout\,
	datac => \inst2|LessThan0~12_combout\,
	datad => \inst2|LessThan0~10_combout\,
	combout => \inst2|LessThan0~13_combout\);

-- Location: LCCOMB_X97_Y38_N12
\inst2|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~14_combout\ = (\inst4|Y[5]~11_combout\ & ((\inst2|Mux9~0_combout\) # ((\inst2|Mux10~0_combout\ & \inst4|Y[4]~12_combout\)))) # (!\inst4|Y[5]~11_combout\ & (\inst2|Mux10~0_combout\ & (\inst2|Mux9~0_combout\ & \inst4|Y[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux10~0_combout\,
	datab => \inst4|Y[5]~11_combout\,
	datac => \inst2|Mux9~0_combout\,
	datad => \inst4|Y[4]~12_combout\,
	combout => \inst2|LessThan0~14_combout\);

-- Location: LCCOMB_X97_Y38_N22
\inst2|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~15_combout\ = (\inst2|Mux7~0_combout\ & (\inst4|Y[6]~10_combout\ & (\inst2|Mux8~0_combout\ & \inst4|Y[7]~9_combout\))) # (!\inst2|Mux7~0_combout\ & ((\inst4|Y[7]~9_combout\) # ((\inst4|Y[6]~10_combout\ & \inst2|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[6]~10_combout\,
	datab => \inst2|Mux8~0_combout\,
	datac => \inst2|Mux7~0_combout\,
	datad => \inst4|Y[7]~9_combout\,
	combout => \inst2|LessThan0~15_combout\);

-- Location: LCCOMB_X97_Y38_N8
\inst2|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~16_combout\ = (\inst2|LessThan0~15_combout\) # ((\inst2|LessThan0~14_combout\ & \inst2|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~14_combout\,
	datac => \inst2|LessThan0~15_combout\,
	datad => \inst2|LessThan0~8_combout\,
	combout => \inst2|LessThan0~16_combout\);

-- Location: LCCOMB_X98_Y38_N2
\inst2|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~17_combout\ = (\inst2|LessThan0~7_combout\ & (\inst2|LessThan0~22_combout\ & ((\inst2|LessThan0~16_combout\) # (\inst2|LessThan0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~16_combout\,
	datab => \inst2|LessThan0~13_combout\,
	datac => \inst2|LessThan0~7_combout\,
	datad => \inst2|LessThan0~22_combout\,
	combout => \inst2|LessThan0~17_combout\);

-- Location: LCCOMB_X98_Y38_N28
\inst2|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~18_combout\ = (\inst4|Y[10]~6_combout\ & (!\inst2|LessThan0~5_combout\ & (!\inst2|Mux25~0_combout\ & \inst2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[10]~6_combout\,
	datab => \inst2|LessThan0~5_combout\,
	datac => \inst2|Mux25~0_combout\,
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|LessThan0~18_combout\);

-- Location: LCCOMB_X98_Y38_N22
\inst2|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~19_combout\ = (\inst2|Mux24~1_combout\ & (\inst2|Mux6~0_combout\ & (\inst4|Y[9]~7_combout\ & \inst4|Y[8]~8_combout\))) # (!\inst2|Mux24~1_combout\ & ((\inst4|Y[9]~7_combout\) # ((\inst2|Mux6~0_combout\ & \inst4|Y[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux6~0_combout\,
	datab => \inst2|Mux24~1_combout\,
	datac => \inst4|Y[9]~7_combout\,
	datad => \inst4|Y[8]~8_combout\,
	combout => \inst2|LessThan0~19_combout\);

-- Location: LCCOMB_X98_Y38_N24
\inst2|LessThan0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~20_combout\ = (\inst4|Y[11]~5_combout\) # ((\inst4|Y[14]~2_combout\) # ((\inst4|Y[13]~3_combout\) # (\inst4|Y[12]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[11]~5_combout\,
	datab => \inst4|Y[14]~2_combout\,
	datac => \inst4|Y[13]~3_combout\,
	datad => \inst4|Y[12]~4_combout\,
	combout => \inst2|LessThan0~20_combout\);

-- Location: LCCOMB_X98_Y38_N26
\inst2|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~21_combout\ = (\inst2|LessThan0~19_combout\ & ((\inst2|LessThan0~6_combout\) # ((\inst2|LessThan0~20_combout\ & !\inst2|Mux3~0_combout\)))) # (!\inst2|LessThan0~19_combout\ & (\inst2|LessThan0~20_combout\ & (!\inst2|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~19_combout\,
	datab => \inst2|LessThan0~20_combout\,
	datac => \inst2|Mux3~0_combout\,
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|LessThan0~21_combout\);

-- Location: LCCOMB_X98_Y38_N12
\inst2|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = (\inst2|process_0~2_combout\ & ((\inst2|LessThan0~21_combout\) # ((\inst2|LessThan0~18_combout\) # (\inst2|LessThan0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~21_combout\,
	datab => \inst2|LessThan0~18_combout\,
	datac => \inst2|process_0~2_combout\,
	datad => \inst2|LessThan0~17_combout\,
	combout => \inst2|process_0~3_combout\);

-- Location: LCCOMB_X97_Y38_N18
\inst2|sample_out_tmp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~15_combout\ = (\inst4|Y[15]~1_combout\ & ((\inst2|Add0~30_combout\) # (!\inst2|LessThan2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[15]~1_combout\,
	datab => \inst2|Add0~30_combout\,
	datad => \inst2|LessThan2~30_combout\,
	combout => \inst2|sample_out_tmp~15_combout\);

-- Location: FF_X92_Y37_N1
\instSndDrv|inst_left|TXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~5_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(11));

-- Location: LCCOMB_X92_Y37_N4
\instSndDrv|inst_left|TXReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~4_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT12\)) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \instSndDrv|inst_left|TXReg\(11),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~4_combout\);

-- Location: FF_X92_Y37_N27
\instSndDrv|inst_right|TXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~5_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(11));

-- Location: LCCOMB_X92_Y37_N6
\instSndDrv|inst_right|TXReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~4_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(11)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datac => \instSndDrv|inst_right|TXReg\(11),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~4_combout\);

-- Location: LCCOMB_X97_Y37_N2
\instSndDrv|inst_left|RXReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[0]~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(2) & (\instSndDrv|inst_ctrl|cntr\(1) & (\rstn~input_o\ & \instSndDrv|inst_ctrl|cntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(2),
	datab => \instSndDrv|inst_ctrl|cntr\(1),
	datac => \rstn~input_o\,
	datad => \instSndDrv|inst_ctrl|cntr\(0),
	combout => \instSndDrv|inst_left|RXReg[0]~0_combout\);

-- Location: LCCOMB_X98_Y37_N0
\instSndDrv|inst_left|RXReg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[0]~1_combout\ = (!\instSndDrv|inst_ctrl|cntr\(3) & (!\instSndDrv|inst_ctrl|cntr\(8) & (!\instSndDrv|inst_ctrl|cntr\(9) & \instSndDrv|inst_left|RXReg[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(3),
	datab => \instSndDrv|inst_ctrl|cntr\(8),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_left|RXReg[0]~0_combout\,
	combout => \instSndDrv|inst_left|RXReg[0]~1_combout\);

-- Location: LCCOMB_X98_Y37_N4
\instSndDrv|inst_right|RXReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|RXReg[0]~0_combout\ = (!\instSndDrv|inst_ctrl|cntr\(3) & (!\instSndDrv|inst_ctrl|cntr\(8) & (\instSndDrv|inst_ctrl|cntr\(9) & \instSndDrv|inst_left|RXReg[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(3),
	datab => \instSndDrv|inst_ctrl|cntr\(8),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_left|RXReg[0]~0_combout\,
	combout => \instSndDrv|inst_right|RXReg[0]~0_combout\);

-- Location: FF_X92_Y37_N13
\instSndDrv|inst_left|TXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~6_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(10));

-- Location: LCCOMB_X92_Y37_N0
\instSndDrv|inst_left|TXReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~5_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT11\))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(10),
	datac => \inst2|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~5_combout\);

-- Location: FF_X92_Y37_N31
\instSndDrv|inst_right|TXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~6_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(10));

-- Location: LCCOMB_X92_Y37_N26
\instSndDrv|inst_right|TXReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~5_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(10)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \instSndDrv|inst_right|TXReg\(10),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~5_combout\);

-- Location: FF_X92_Y37_N9
\instSndDrv|inst_left|TXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~7_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(9));

-- Location: LCCOMB_X92_Y37_N12
\instSndDrv|inst_left|TXReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~6_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT10\)) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datac => \instSndDrv|inst_left|TXReg\(9),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~6_combout\);

-- Location: FF_X92_Y37_N11
\instSndDrv|inst_right|TXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~7_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(9));

-- Location: LCCOMB_X92_Y37_N30
\instSndDrv|inst_right|TXReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~6_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(9))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(9),
	datac => \inst2|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~6_combout\);

-- Location: FF_X92_Y37_N29
\instSndDrv|inst_left|TXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~8_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(8));

-- Location: LCCOMB_X92_Y37_N8
\instSndDrv|inst_left|TXReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~7_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT9\))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(8),
	datac => \inst2|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~7_combout\);

-- Location: FF_X92_Y37_N15
\instSndDrv|inst_right|TXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~8_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(8));

-- Location: LCCOMB_X92_Y37_N10
\instSndDrv|inst_right|TXReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~7_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(8))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_right|TXReg\(8),
	datac => \inst2|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~7_combout\);

-- Location: FF_X96_Y37_N1
\instSndDrv|inst_left|TXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~9_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(7));

-- Location: LCCOMB_X92_Y37_N28
\instSndDrv|inst_left|TXReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~8_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT8\))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(7),
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~8_combout\);

-- Location: FF_X96_Y37_N27
\instSndDrv|inst_right|TXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~9_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(7));

-- Location: LCCOMB_X92_Y37_N14
\instSndDrv|inst_right|TXReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~8_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(7)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \instSndDrv|inst_right|TXReg\(7),
	combout => \instSndDrv|inst_right|TXReg~8_combout\);

-- Location: FF_X96_Y37_N13
\instSndDrv|inst_left|TXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~10_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(6));

-- Location: LCCOMB_X96_Y37_N0
\instSndDrv|inst_left|TXReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~9_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(6),
	datac => \inst2|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~9_combout\);

-- Location: FF_X96_Y37_N31
\instSndDrv|inst_right|TXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~10_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(6));

-- Location: LCCOMB_X96_Y37_N26
\instSndDrv|inst_right|TXReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~9_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(6)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \instSndDrv|inst_right|TXReg\(6),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~9_combout\);

-- Location: FF_X96_Y37_N25
\instSndDrv|inst_left|TXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~11_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(5));

-- Location: LCCOMB_X96_Y37_N12
\instSndDrv|inst_left|TXReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~10_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT6\)) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \instSndDrv|inst_left|TXReg\(5),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~10_combout\);

-- Location: FF_X96_Y37_N3
\instSndDrv|inst_right|TXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~11_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(5));

-- Location: LCCOMB_X96_Y37_N30
\instSndDrv|inst_right|TXReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~10_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(5)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \instSndDrv|inst_right|TXReg\(5),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~10_combout\);

-- Location: FF_X96_Y37_N21
\instSndDrv|inst_left|TXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~12_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(4));

-- Location: LCCOMB_X96_Y37_N24
\instSndDrv|inst_left|TXReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~11_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT5\)) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \instSndDrv|inst_left|TXReg\(4),
	combout => \instSndDrv|inst_left|TXReg~11_combout\);

-- Location: FF_X96_Y37_N23
\instSndDrv|inst_right|TXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~12_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(4));

-- Location: LCCOMB_X96_Y37_N2
\instSndDrv|inst_right|TXReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~11_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(4))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|Mult0|auto_generated|mac_out2~DATAOUT5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(4),
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~11_combout\);

-- Location: FF_X96_Y37_N9
\instSndDrv|inst_left|TXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~13_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(3));

-- Location: LCCOMB_X96_Y37_N20
\instSndDrv|inst_left|TXReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~12_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT4\)) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datac => \instSndDrv|inst_left|TXReg\(3),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~12_combout\);

-- Location: FF_X96_Y37_N19
\instSndDrv|inst_right|TXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~13_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(3));

-- Location: LCCOMB_X96_Y37_N22
\instSndDrv|inst_right|TXReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~12_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(3)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \instSndDrv|inst_right|TXReg\(3),
	combout => \instSndDrv|inst_right|TXReg~12_combout\);

-- Location: FF_X96_Y37_N29
\instSndDrv|inst_left|TXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~14_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(2));

-- Location: LCCOMB_X96_Y37_N8
\instSndDrv|inst_left|TXReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~13_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \instSndDrv|inst_left|TXReg\(2),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~13_combout\);

-- Location: FF_X96_Y37_N15
\instSndDrv|inst_right|TXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~14_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(2));

-- Location: LCCOMB_X96_Y37_N18
\instSndDrv|inst_right|TXReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~13_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(2)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \instSndDrv|inst_right|TXReg\(2),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~13_combout\);

-- Location: FF_X96_Y37_N17
\instSndDrv|inst_left|TXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~15_combout\,
	ena => \instSndDrv|inst_left|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(1));

-- Location: LCCOMB_X96_Y37_N28
\instSndDrv|inst_left|TXReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~14_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT2\)) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \instSndDrv|inst_left|TXReg\(1),
	combout => \instSndDrv|inst_left|TXReg~14_combout\);

-- Location: FF_X96_Y37_N11
\instSndDrv|inst_right|TXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~15_combout\,
	ena => \instSndDrv|inst_right|TXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(1));

-- Location: LCCOMB_X96_Y37_N14
\instSndDrv|inst_right|TXReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~14_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(1)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \instSndDrv|inst_right|TXReg\(1),
	combout => \instSndDrv|inst_right|TXReg~14_combout\);

-- Location: FF_X97_Y37_N29
\instSndDrv|inst_left|TXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~16_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(0));

-- Location: LCCOMB_X96_Y37_N16
\instSndDrv|inst_left|TXReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~15_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT1\)) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \instSndDrv|inst_left|TXReg\(0),
	combout => \instSndDrv|inst_left|TXReg~15_combout\);

-- Location: FF_X97_Y37_N23
\instSndDrv|inst_right|TXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~16_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(0));

-- Location: LCCOMB_X96_Y37_N10
\instSndDrv|inst_right|TXReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~15_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(0)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|Mult0|auto_generated|mac_out2~DATAOUT1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \inst2|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \instSndDrv|inst_right|TXReg\(0),
	combout => \instSndDrv|inst_right|TXReg~15_combout\);

-- Location: LCCOMB_X97_Y37_N28
\instSndDrv|inst_left|TXReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~16_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (((\inst2|Mult0|auto_generated|mac_out2~dataout\)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|process_1~0_combout\ & (\instSndDrv|inst_left|TXReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|process_1~0_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|TXReg\(0),
	datad => \inst2|Mult0|auto_generated|mac_out2~dataout\,
	combout => \instSndDrv|inst_left|TXReg~16_combout\);

-- Location: LCCOMB_X97_Y37_N22
\instSndDrv|inst_right|TXReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~16_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|process_1~0_combout\ & (\instSndDrv|inst_right|TXReg\(0)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (((\inst2|Mult0|auto_generated|mac_out2~dataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|process_1~0_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|TXReg\(0),
	datad => \inst2|Mult0|auto_generated|mac_out2~dataout\,
	combout => \instSndDrv|inst_right|TXReg~16_combout\);

-- Location: LCCOMB_X98_Y38_N0
\inst2|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = (\inst2|LessThan2~30_combout\ & ((\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(15)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(15),
	datab => \inst2|LessThan2~30_combout\,
	datac => \instSndDrv|inst_left|RXReg\(15),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \inst2|process_0~4_combout\);

-- Location: LCCOMB_X98_Y37_N28
\inst2|LessThan0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~22_combout\ = \inst2|Mux6~0_combout\ $ (((\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(8)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(8),
	datab => \inst2|Mux6~0_combout\,
	datac => \instSndDrv|inst_left|RXReg\(8),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \inst2|LessThan0~22_combout\);

-- Location: LCCOMB_X99_Y38_N8
\inst2|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~23_combout\ = (\inst2|Mux11~0_combout\ & ((\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|RXReg\(3))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|RXReg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \inst2|Mux11~0_combout\,
	datac => \instSndDrv|inst_left|RXReg\(3),
	datad => \instSndDrv|inst_right|RXReg\(3),
	combout => \inst2|LessThan0~23_combout\);

-- Location: LCCOMB_X97_Y37_N0
\instSndDrv|inst_ctrl|cntr[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[0]~27_combout\ = !\instSndDrv|inst_ctrl|cntr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instSndDrv|inst_ctrl|cntr\(0),
	combout => \instSndDrv|inst_ctrl|cntr[0]~27_combout\);

-- Location: LCCOMB_X97_Y38_N26
\inst2|Mux10~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux10~0_wirecell_combout\ = !\inst2|Mux10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Mux10~0_combout\,
	combout => \inst2|Mux10~0_wirecell_combout\);

-- Location: LCCOMB_X94_Y38_N8
\inst2|Mux11~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux11~0_wirecell_combout\ = !\inst2|Mux11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux11~0_combout\,
	combout => \inst2|Mux11~0_wirecell_combout\);

-- Location: LCCOMB_X94_Y38_N26
\inst2|Mux12~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux12~0_wirecell_combout\ = !\inst2|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux12~0_combout\,
	combout => \inst2|Mux12~0_wirecell_combout\);

-- Location: LCCOMB_X94_Y38_N4
\inst2|Mux13~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux13~0_wirecell_combout\ = !\inst2|Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux13~0_combout\,
	combout => \inst2|Mux13~0_wirecell_combout\);

-- Location: LCCOMB_X94_Y38_N14
\inst2|Mux14~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux14~0_wirecell_combout\ = !\inst2|Mux14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Mux14~0_combout\,
	combout => \inst2|Mux14~0_wirecell_combout\);

-- Location: LCCOMB_X95_Y37_N22
\inst2|Mux6~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_wirecell_combout\ = !\inst2|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux6~0_combout\,
	combout => \inst2|Mux6~0_wirecell_combout\);

-- Location: LCCOMB_X97_Y38_N4
\inst2|Mux8~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~0_wirecell_combout\ = !\inst2|Mux8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Mux8~0_combout\,
	combout => \inst2|Mux8~0_wirecell_combout\);

-- Location: LCCOMB_X97_Y38_N14
\inst2|Mux9~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux9~0_wirecell_combout\ = !\inst2|Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mux9~0_combout\,
	combout => \inst2|Mux9~0_wirecell_combout\);

-- Location: IOIBUF_X115_Y14_N1
\Switches[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switches(1),
	o => \Switches[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\Switches[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switches(3),
	o => \Switches[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\Switches[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switches(2),
	o => \Switches[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\Switches[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switches(0),
	o => \Switches[0]~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\adcdat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adcdat,
	o => \adcdat~input_o\);

-- Location: LCCOMB_X99_Y38_N28
\instSndDrv|inst_left|RXReg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[1]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(0),
	combout => \instSndDrv|inst_left|RXReg[1]~feeder_combout\);

-- Location: LCCOMB_X98_Y37_N2
\instSndDrv|inst_left|RXReg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[13]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(12),
	combout => \instSndDrv|inst_left|RXReg[13]~feeder_combout\);

-- Location: LCCOMB_X98_Y37_N20
\instSndDrv|inst_left|RXReg[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[12]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(11),
	combout => \instSndDrv|inst_left|RXReg[12]~feeder_combout\);

-- Location: LCCOMB_X98_Y37_N10
\instSndDrv|inst_left|RXReg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[11]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(10),
	combout => \instSndDrv|inst_left|RXReg[11]~feeder_combout\);

-- Location: LCCOMB_X98_Y37_N24
\instSndDrv|inst_left|RXReg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[10]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(9),
	combout => \instSndDrv|inst_left|RXReg[10]~feeder_combout\);

-- Location: LCCOMB_X98_Y37_N12
\instSndDrv|inst_left|RXReg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[9]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(8),
	combout => \instSndDrv|inst_left|RXReg[9]~feeder_combout\);

-- Location: LCCOMB_X99_Y38_N10
\instSndDrv|inst_left|RXReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[7]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(6),
	combout => \instSndDrv|inst_left|RXReg[7]~feeder_combout\);

-- Location: LCCOMB_X99_Y38_N26
\instSndDrv|inst_left|RXReg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[6]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(5),
	combout => \instSndDrv|inst_left|RXReg[6]~feeder_combout\);

-- Location: LCCOMB_X99_Y38_N18
\instSndDrv|inst_left|RXReg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[5]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(4),
	combout => \instSndDrv|inst_left|RXReg[5]~feeder_combout\);

-- Location: LCCOMB_X99_Y38_N2
\instSndDrv|inst_left|RXReg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[4]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(3),
	combout => \instSndDrv|inst_left|RXReg[4]~feeder_combout\);

-- Location: LCCOMB_X99_Y38_N12
\instSndDrv|inst_left|RXReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[2]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(1),
	combout => \instSndDrv|inst_left|RXReg[2]~feeder_combout\);

-- Location: IOOBUF_X0_Y61_N23
\mclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instSndDrv|inst_ctrl|ALT_INV_cntr\(1),
	devoe => ww_devoe,
	o => \mclk~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\bclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instSndDrv|inst_ctrl|cntr\(3),
	devoe => ww_devoe,
	o => \bclk~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\adclrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instSndDrv|inst_ctrl|ALT_INV_cntr\(9),
	devoe => ww_devoe,
	o => \adclrc~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\daclrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instSndDrv|inst_ctrl|ALT_INV_cntr\(9),
	devoe => ww_devoe,
	o => \daclrc~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\dacdat~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instSndDrv|inst_or|output~0_combout\,
	devoe => ww_devoe,
	o => \dacdat~output_o\);

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
	i => VCC,
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
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X97_Y37_N4
\instSndDrv|inst_ctrl|cntr[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[1]~9_combout\ = (\instSndDrv|inst_ctrl|cntr\(0) & (\instSndDrv|inst_ctrl|cntr\(1) $ (VCC))) # (!\instSndDrv|inst_ctrl|cntr\(0) & (\instSndDrv|inst_ctrl|cntr\(1) & VCC))
-- \instSndDrv|inst_ctrl|cntr[1]~10\ = CARRY((\instSndDrv|inst_ctrl|cntr\(0) & \instSndDrv|inst_ctrl|cntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(0),
	datab => \instSndDrv|inst_ctrl|cntr\(1),
	datad => VCC,
	combout => \instSndDrv|inst_ctrl|cntr[1]~9_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[1]~10\);

-- Location: IOIBUF_X115_Y40_N8
\rstn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstn,
	o => \rstn~input_o\);

-- Location: FF_X97_Y37_N5
\instSndDrv|inst_ctrl|cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[1]~9_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(1));

-- Location: LCCOMB_X97_Y37_N8
\instSndDrv|inst_ctrl|cntr[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[3]~13_combout\ = (\instSndDrv|inst_ctrl|cntr\(3) & (\instSndDrv|inst_ctrl|cntr[2]~12\ $ (GND))) # (!\instSndDrv|inst_ctrl|cntr\(3) & (!\instSndDrv|inst_ctrl|cntr[2]~12\ & VCC))
-- \instSndDrv|inst_ctrl|cntr[3]~14\ = CARRY((\instSndDrv|inst_ctrl|cntr\(3) & !\instSndDrv|inst_ctrl|cntr[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(3),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[2]~12\,
	combout => \instSndDrv|inst_ctrl|cntr[3]~13_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[3]~14\);

-- Location: FF_X97_Y37_N9
\instSndDrv|inst_ctrl|cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[3]~13_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(3));

-- Location: LCCOMB_X97_Y37_N14
\instSndDrv|inst_ctrl|cntr[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[6]~19_combout\ = (\instSndDrv|inst_ctrl|cntr\(6) & (!\instSndDrv|inst_ctrl|cntr[5]~18\)) # (!\instSndDrv|inst_ctrl|cntr\(6) & ((\instSndDrv|inst_ctrl|cntr[5]~18\) # (GND)))
-- \instSndDrv|inst_ctrl|cntr[6]~20\ = CARRY((!\instSndDrv|inst_ctrl|cntr[5]~18\) # (!\instSndDrv|inst_ctrl|cntr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(6),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[5]~18\,
	combout => \instSndDrv|inst_ctrl|cntr[6]~19_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[6]~20\);

-- Location: FF_X97_Y37_N15
\instSndDrv|inst_ctrl|cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[6]~19_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(6));

-- Location: LCCOMB_X97_Y37_N16
\instSndDrv|inst_ctrl|cntr[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[7]~21_combout\ = (\instSndDrv|inst_ctrl|cntr\(7) & (\instSndDrv|inst_ctrl|cntr[6]~20\ $ (GND))) # (!\instSndDrv|inst_ctrl|cntr\(7) & (!\instSndDrv|inst_ctrl|cntr[6]~20\ & VCC))
-- \instSndDrv|inst_ctrl|cntr[7]~22\ = CARRY((\instSndDrv|inst_ctrl|cntr\(7) & !\instSndDrv|inst_ctrl|cntr[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(7),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[6]~20\,
	combout => \instSndDrv|inst_ctrl|cntr[7]~21_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[7]~22\);

-- Location: FF_X97_Y37_N17
\instSndDrv|inst_ctrl|cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[7]~21_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(7));

-- Location: LCCOMB_X97_Y37_N18
\instSndDrv|inst_ctrl|cntr[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[8]~23_combout\ = (\instSndDrv|inst_ctrl|cntr\(8) & (!\instSndDrv|inst_ctrl|cntr[7]~22\)) # (!\instSndDrv|inst_ctrl|cntr\(8) & ((\instSndDrv|inst_ctrl|cntr[7]~22\) # (GND)))
-- \instSndDrv|inst_ctrl|cntr[8]~24\ = CARRY((!\instSndDrv|inst_ctrl|cntr[7]~22\) # (!\instSndDrv|inst_ctrl|cntr\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(8),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[7]~22\,
	combout => \instSndDrv|inst_ctrl|cntr[8]~23_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[8]~24\);

-- Location: FF_X97_Y37_N19
\instSndDrv|inst_ctrl|cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[8]~23_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(8));

-- Location: LCCOMB_X97_Y37_N20
\instSndDrv|inst_ctrl|cntr[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[9]~25_combout\ = \instSndDrv|inst_ctrl|cntr[8]~24\ $ (!\instSndDrv|inst_ctrl|cntr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	cin => \instSndDrv|inst_ctrl|cntr[8]~24\,
	combout => \instSndDrv|inst_ctrl|cntr[9]~25_combout\);

-- Location: FF_X97_Y37_N21
\instSndDrv|inst_ctrl|cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_ctrl|cntr[9]~25_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_ctrl|cntr\(9));

-- Location: LCCOMB_X91_Y37_N0
\instSndDrv|inst_left|dacdat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|dacdat~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (((\instSndDrv|inst_left|dacdat~q\)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\rstn~input_o\ & (\instSndDrv|inst_left|TXReg\(15))) # (!\rstn~input_o\ & 
-- ((\instSndDrv|inst_left|dacdat~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(15),
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|dacdat~q\,
	datad => \rstn~input_o\,
	combout => \instSndDrv|inst_left|dacdat~0_combout\);

-- Location: FF_X91_Y37_N1
\instSndDrv|inst_left|dacdat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|dacdat~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|dacdat~q\);

-- Location: LCCOMB_X91_Y37_N2
\instSndDrv|inst_right|dacdat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|dacdat~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\rstn~input_o\ & (\instSndDrv|inst_right|TXReg\(15))) # (!\rstn~input_o\ & ((\instSndDrv|inst_right|dacdat~q\))))) # (!\instSndDrv|inst_ctrl|cntr\(9) & 
-- (((\instSndDrv|inst_right|dacdat~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(15),
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|dacdat~q\,
	datad => \rstn~input_o\,
	combout => \instSndDrv|inst_right|dacdat~0_combout\);

-- Location: FF_X91_Y37_N3
\instSndDrv|inst_right|dacdat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|dacdat~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|dacdat~q\);

-- Location: LCCOMB_X91_Y37_N4
\instSndDrv|inst_or|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_or|output~0_combout\ = (\instSndDrv|inst_left|dacdat~q\) # (\instSndDrv|inst_right|dacdat~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|dacdat~q\,
	datad => \instSndDrv|inst_right|dacdat~q\,
	combout => \instSndDrv|inst_or|output~0_combout\);

ww_mclk <= \mclk~output_o\;

ww_bclk <= \bclk~output_o\;

ww_adclrc <= \adclrc~output_o\;

ww_daclrc <= \daclrc~output_o\;

ww_dacdat <= \dacdat~output_o\;

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
END structure;


