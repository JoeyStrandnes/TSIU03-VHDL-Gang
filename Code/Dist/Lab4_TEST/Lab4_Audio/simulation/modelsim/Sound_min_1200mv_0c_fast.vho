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

-- DATE "10/05/2021 15:33:49"

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
SIGNAL ww_bclk : std_logic;
SIGNAL ww_adclrc : std_logic;
SIGNAL ww_daclrc : std_logic;
SIGNAL ww_dacdat : std_logic;
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instSndDrv|inst_ctrl|cntr[4]~15_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[5]~17_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|process_0~6_combout\ : std_logic;
SIGNAL \inst2|process_0~8_combout\ : std_logic;
SIGNAL \inst2|process_0~9_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[15]~11_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~3_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~4_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~5_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~6_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~7_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~8_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~8_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~9_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~9_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~13_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~10_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~10_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~14_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~11_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~11_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~15_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~12_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~12_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~16_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~13_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~13_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~17_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~14_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~14_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~18_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~15_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~15_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~19_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~16_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~16_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~20_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~21_combout\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[0]~27_combout\ : std_logic;
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
SIGNAL \adcdat~input_o\ : std_logic;
SIGNAL \instSndDrv|inst_ctrl|cntr[2]~11_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|process_1~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[15]~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[15]~1_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[2]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[3]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[5]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[6]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[11]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|RXReg[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp~8_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg[15]~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg[2]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg[3]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg[6]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg[7]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg[9]~feeder_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[12]~2_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|process_0~10_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[13]~1_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[11]~3_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[15]~9_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[10]~4_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[9]~5_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[15]~10_combout\ : std_logic;
SIGNAL \inst2|process_0~5_combout\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst4|Y[8]~0_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|process_0~7_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[15]~12_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~7_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg[15]~1_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~6_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~5_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~4_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~3_combout\ : std_logic;
SIGNAL \inst2|sample_out_tmp[14]~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~2_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|TXReg~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|dacdat~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|dacdat~q\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~2_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg[15]~1_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|TXReg~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|dacdat~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_left|dacdat~q\ : std_logic;
SIGNAL \instSndDrv|inst_or|output~0_combout\ : std_logic;
SIGNAL \instSndDrv|inst_right|RXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_right|TXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_left|TXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_left|RXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_ctrl|cntr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|sample_out_tmp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instSndDrv|inst_ctrl|ALT_INV_cntr\ : std_logic_vector(9 DOWNTO 1);

BEGIN

mclk <= ww_mclk;
ww_clk <= clk;
ww_rstn <= rstn;
ww_adcdat <= adcdat;
bclk <= ww_bclk;
adclrc <= ww_adclrc;
daclrc <= ww_daclrc;
dacdat <= ww_dacdat;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\instSndDrv|inst_ctrl|ALT_INV_cntr\(9) <= NOT \instSndDrv|inst_ctrl|cntr\(9);
\instSndDrv|inst_ctrl|ALT_INV_cntr\(1) <= NOT \instSndDrv|inst_ctrl|cntr\(1);

-- Location: FF_X107_Y42_N13
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

-- Location: FF_X107_Y42_N11
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

-- Location: LCCOMB_X107_Y42_N10
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

-- Location: LCCOMB_X107_Y42_N12
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

-- Location: FF_X110_Y42_N23
\inst2|sample_out_tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[11]~3_combout\,
	asdata => \inst2|process_0~10_combout\,
	sload => \inst2|sample_out_tmp[15]~12_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(11));

-- Location: FF_X108_Y42_N17
\instSndDrv|inst_left|TXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|TXReg~16_combout\,
	asdata => \inst2|sample_out_tmp\(0),
	sload => \instSndDrv|inst_ctrl|cntr\(9),
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|TXReg\(0));

-- Location: FF_X107_Y42_N1
\instSndDrv|inst_right|TXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|TXReg~16_combout\,
	asdata => \inst2|sample_out_tmp\(0),
	sload => \instSndDrv|inst_ctrl|ALT_INV_cntr\(9),
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|TXReg\(0));

-- Location: FF_X107_Y42_N27
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

-- Location: FF_X110_Y42_N27
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

-- Location: LCCOMB_X113_Y42_N4
\inst2|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = (!\instSndDrv|inst_left|RXReg\(4) & (!\instSndDrv|inst_left|RXReg\(5) & (!\instSndDrv|inst_left|RXReg\(7) & !\instSndDrv|inst_left|RXReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|RXReg\(4),
	datab => \instSndDrv|inst_left|RXReg\(5),
	datac => \instSndDrv|inst_left|RXReg\(7),
	datad => \instSndDrv|inst_left|RXReg\(6),
	combout => \inst2|process_0~2_combout\);

-- Location: LCCOMB_X111_Y42_N14
\inst2|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~6_combout\ = (!\instSndDrv|inst_right|RXReg\(2) & (!\instSndDrv|inst_right|RXReg\(3) & (!\instSndDrv|inst_right|RXReg\(0) & !\instSndDrv|inst_right|RXReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(2),
	datab => \instSndDrv|inst_right|RXReg\(3),
	datac => \instSndDrv|inst_right|RXReg\(0),
	datad => \instSndDrv|inst_right|RXReg\(1),
	combout => \inst2|process_0~6_combout\);

-- Location: LCCOMB_X110_Y42_N20
\inst2|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~8_combout\ = (!\inst2|sample_out_tmp[14]~0_combout\ & (!\inst2|sample_out_tmp[13]~1_combout\ & (!\inst2|sample_out_tmp[11]~3_combout\ & !\inst2|sample_out_tmp[12]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[14]~0_combout\,
	datab => \inst2|sample_out_tmp[13]~1_combout\,
	datac => \inst2|sample_out_tmp[11]~3_combout\,
	datad => \inst2|sample_out_tmp[12]~2_combout\,
	combout => \inst2|process_0~8_combout\);

-- Location: LCCOMB_X110_Y42_N14
\inst2|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~9_combout\ = (\inst2|process_0~7_combout\ & (\inst2|process_0~8_combout\ & (!\inst2|sample_out_tmp[10]~4_combout\ & !\inst2|sample_out_tmp[9]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~7_combout\,
	datab => \inst2|process_0~8_combout\,
	datac => \inst2|sample_out_tmp[10]~4_combout\,
	datad => \inst2|sample_out_tmp[9]~5_combout\,
	combout => \inst2|process_0~9_combout\);

-- Location: LCCOMB_X110_Y42_N12
\inst2|sample_out_tmp[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[15]~11_combout\ = (!\inst2|sample_out_tmp[9]~5_combout\ & (!\inst2|sample_out_tmp[10]~4_combout\ & \inst2|process_0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[9]~5_combout\,
	datac => \inst2|sample_out_tmp[10]~4_combout\,
	datad => \inst2|process_0~8_combout\,
	combout => \inst2|sample_out_tmp[15]~11_combout\);

-- Location: FF_X108_Y42_N25
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

-- Location: LCCOMB_X110_Y42_N26
\instSndDrv|inst_left|TXReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~3_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(13)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(12),
	datab => \inst2|sample_out_tmp\(13),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~3_combout\);

-- Location: FF_X108_Y42_N27
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

-- Location: LCCOMB_X108_Y42_N24
\instSndDrv|inst_left|TXReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~4_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(12))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp\(12),
	datac => \instSndDrv|inst_left|TXReg\(11),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~4_combout\);

-- Location: FF_X108_Y42_N13
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

-- Location: LCCOMB_X108_Y42_N26
\instSndDrv|inst_left|TXReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~5_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(11)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(10),
	datac => \inst2|sample_out_tmp\(11),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~5_combout\);

-- Location: FF_X108_Y42_N23
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

-- Location: LCCOMB_X108_Y42_N12
\instSndDrv|inst_left|TXReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~6_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(10)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|TXReg\(9),
	datad => \inst2|sample_out_tmp\(10),
	combout => \instSndDrv|inst_left|TXReg~6_combout\);

-- Location: FF_X108_Y42_N1
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

-- Location: LCCOMB_X108_Y42_N22
\instSndDrv|inst_left|TXReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~7_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(9))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp\(9),
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_left|TXReg\(8),
	combout => \instSndDrv|inst_left|TXReg~7_combout\);

-- Location: FF_X109_Y42_N7
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

-- Location: FF_X112_Y42_N17
\inst2|sample_out_tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp~21_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(8));

-- Location: FF_X108_Y42_N11
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

-- Location: LCCOMB_X108_Y42_N0
\instSndDrv|inst_left|TXReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~8_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(8)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(7),
	datac => \inst2|sample_out_tmp\(8),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~8_combout\);

-- Location: FF_X109_Y42_N17
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

-- Location: LCCOMB_X109_Y42_N6
\instSndDrv|inst_right|TXReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~8_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(7)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp\(8),
	datab => \instSndDrv|inst_right|TXReg\(7),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~8_combout\);

-- Location: FF_X112_Y42_N27
\inst2|sample_out_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp~13_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(7));

-- Location: FF_X108_Y42_N21
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

-- Location: LCCOMB_X108_Y42_N10
\instSndDrv|inst_left|TXReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~9_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(7)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(6),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \inst2|sample_out_tmp\(7),
	combout => \instSndDrv|inst_left|TXReg~9_combout\);

-- Location: FF_X109_Y42_N19
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

-- Location: LCCOMB_X109_Y42_N16
\instSndDrv|inst_right|TXReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~9_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(6))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_right|TXReg\(6),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \inst2|sample_out_tmp\(7),
	combout => \instSndDrv|inst_right|TXReg~9_combout\);

-- Location: LCCOMB_X112_Y42_N26
\inst2|sample_out_tmp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~13_combout\ = (!\inst2|sample_out_tmp[15]~12_combout\ & ((\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(7)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[15]~12_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(7),
	datad => \instSndDrv|inst_left|RXReg\(7),
	combout => \inst2|sample_out_tmp~13_combout\);

-- Location: FF_X112_Y42_N5
\inst2|sample_out_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp~14_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(6));

-- Location: FF_X108_Y42_N15
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

-- Location: LCCOMB_X108_Y42_N20
\instSndDrv|inst_left|TXReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~10_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(6)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|TXReg\(5),
	datad => \inst2|sample_out_tmp\(6),
	combout => \instSndDrv|inst_left|TXReg~10_combout\);

-- Location: FF_X109_Y42_N29
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

-- Location: LCCOMB_X109_Y42_N18
\instSndDrv|inst_right|TXReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~10_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(5)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp\(6),
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_right|TXReg\(5),
	combout => \instSndDrv|inst_right|TXReg~10_combout\);

-- Location: LCCOMB_X112_Y42_N4
\inst2|sample_out_tmp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~14_combout\ = (!\inst2|sample_out_tmp[15]~12_combout\ & ((\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(6)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[15]~12_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(6),
	datad => \instSndDrv|inst_left|RXReg\(6),
	combout => \inst2|sample_out_tmp~14_combout\);

-- Location: FF_X112_Y42_N31
\inst2|sample_out_tmp[5]\ : dffeas
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
	q => \inst2|sample_out_tmp\(5));

-- Location: FF_X108_Y42_N9
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

-- Location: LCCOMB_X108_Y42_N14
\instSndDrv|inst_left|TXReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~11_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(5)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|TXReg\(4),
	datad => \inst2|sample_out_tmp\(5),
	combout => \instSndDrv|inst_left|TXReg~11_combout\);

-- Location: FF_X109_Y42_N23
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

-- Location: LCCOMB_X109_Y42_N28
\instSndDrv|inst_right|TXReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~11_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(4))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|TXReg\(4),
	datad => \inst2|sample_out_tmp\(5),
	combout => \instSndDrv|inst_right|TXReg~11_combout\);

-- Location: LCCOMB_X112_Y42_N30
\inst2|sample_out_tmp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~15_combout\ = (!\inst2|sample_out_tmp[15]~12_combout\ & ((\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|RXReg\(5))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|RXReg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[15]~12_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|RXReg\(5),
	datad => \instSndDrv|inst_right|RXReg\(5),
	combout => \inst2|sample_out_tmp~15_combout\);

-- Location: FF_X112_Y42_N9
\inst2|sample_out_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp~16_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(4));

-- Location: FF_X108_Y42_N19
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

-- Location: LCCOMB_X108_Y42_N8
\instSndDrv|inst_left|TXReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~12_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(4))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp\(4),
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_left|TXReg\(3),
	combout => \instSndDrv|inst_left|TXReg~12_combout\);

-- Location: FF_X109_Y42_N25
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

-- Location: LCCOMB_X109_Y42_N22
\instSndDrv|inst_right|TXReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~12_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(3)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst2|sample_out_tmp\(4),
	datad => \instSndDrv|inst_right|TXReg\(3),
	combout => \instSndDrv|inst_right|TXReg~12_combout\);

-- Location: LCCOMB_X112_Y42_N8
\inst2|sample_out_tmp~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~16_combout\ = (!\inst2|sample_out_tmp[15]~12_combout\ & ((\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(4)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(4),
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|RXReg\(4),
	datad => \inst2|sample_out_tmp[15]~12_combout\,
	combout => \inst2|sample_out_tmp~16_combout\);

-- Location: FF_X112_Y42_N11
\inst2|sample_out_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp~17_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(3));

-- Location: FF_X108_Y42_N29
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

-- Location: LCCOMB_X108_Y42_N18
\instSndDrv|inst_left|TXReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~13_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(3))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst2|sample_out_tmp\(3),
	datad => \instSndDrv|inst_left|TXReg\(2),
	combout => \instSndDrv|inst_left|TXReg~13_combout\);

-- Location: FF_X109_Y42_N11
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

-- Location: LCCOMB_X109_Y42_N24
\instSndDrv|inst_right|TXReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~13_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(2))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(2),
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \inst2|sample_out_tmp\(3),
	combout => \instSndDrv|inst_right|TXReg~13_combout\);

-- Location: LCCOMB_X112_Y42_N10
\inst2|sample_out_tmp~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~17_combout\ = (!\inst2|sample_out_tmp[15]~12_combout\ & ((\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|RXReg\(3))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|RXReg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[15]~12_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|RXReg\(3),
	datad => \instSndDrv|inst_right|RXReg\(3),
	combout => \inst2|sample_out_tmp~17_combout\);

-- Location: FF_X112_Y42_N29
\inst2|sample_out_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp~18_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(2));

-- Location: FF_X108_Y42_N31
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

-- Location: LCCOMB_X108_Y42_N28
\instSndDrv|inst_left|TXReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~14_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(2))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp\(2),
	datac => \instSndDrv|inst_left|TXReg\(1),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_left|TXReg~14_combout\);

-- Location: FF_X109_Y42_N13
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

-- Location: LCCOMB_X109_Y42_N10
\instSndDrv|inst_right|TXReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~14_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(1))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(1),
	datac => \inst2|sample_out_tmp\(2),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~14_combout\);

-- Location: LCCOMB_X112_Y42_N28
\inst2|sample_out_tmp~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~18_combout\ = (!\inst2|sample_out_tmp[15]~12_combout\ & ((\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|RXReg\(2))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|RXReg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[15]~12_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|RXReg\(2),
	datad => \instSndDrv|inst_right|RXReg\(2),
	combout => \inst2|sample_out_tmp~18_combout\);

-- Location: FF_X112_Y42_N23
\inst2|sample_out_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp~19_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(1));

-- Location: LCCOMB_X108_Y42_N30
\instSndDrv|inst_left|TXReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~15_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(1))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|TXReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst2|sample_out_tmp\(1),
	datad => \instSndDrv|inst_left|TXReg\(0),
	combout => \instSndDrv|inst_left|TXReg~15_combout\);

-- Location: LCCOMB_X109_Y42_N12
\instSndDrv|inst_right|TXReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~15_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(0)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst2|sample_out_tmp\(1),
	datad => \instSndDrv|inst_right|TXReg\(0),
	combout => \instSndDrv|inst_right|TXReg~15_combout\);

-- Location: LCCOMB_X112_Y42_N22
\inst2|sample_out_tmp~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~19_combout\ = (!\inst2|sample_out_tmp[15]~12_combout\ & ((\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(1)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[15]~12_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(1),
	datad => \instSndDrv|inst_left|RXReg\(1),
	combout => \inst2|sample_out_tmp~19_combout\);

-- Location: LCCOMB_X108_Y42_N16
\instSndDrv|inst_left|TXReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~16_combout\ = (\instSndDrv|inst_left|TXReg\(0) & ((!\instSndDrv|inst_ctrl|cntr\(3)) # (!\instSndDrv|inst_left|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|process_1~0_combout\,
	datac => \instSndDrv|inst_left|TXReg\(0),
	datad => \instSndDrv|inst_ctrl|cntr\(3),
	combout => \instSndDrv|inst_left|TXReg~16_combout\);

-- Location: FF_X112_Y42_N1
\inst2|sample_out_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp~20_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(0));

-- Location: LCCOMB_X107_Y42_N0
\instSndDrv|inst_right|TXReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~16_combout\ = (\instSndDrv|inst_right|TXReg\(0) & ((!\instSndDrv|inst_left|process_1~0_combout\) # (!\instSndDrv|inst_ctrl|cntr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(3),
	datac => \instSndDrv|inst_right|TXReg\(0),
	datad => \instSndDrv|inst_left|process_1~0_combout\,
	combout => \instSndDrv|inst_right|TXReg~16_combout\);

-- Location: LCCOMB_X112_Y42_N0
\inst2|sample_out_tmp~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~20_combout\ = (!\inst2|sample_out_tmp[15]~12_combout\ & ((\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|RXReg\(0))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|RXReg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[15]~12_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_left|RXReg\(0),
	datad => \instSndDrv|inst_right|RXReg\(0),
	combout => \inst2|sample_out_tmp~20_combout\);

-- Location: LCCOMB_X112_Y42_N16
\inst2|sample_out_tmp~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~21_combout\ = (\inst2|sample_out_tmp[15]~12_combout\) # ((\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(8)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[15]~12_combout\,
	datab => \instSndDrv|inst_right|RXReg\(8),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_left|RXReg\(8),
	combout => \inst2|sample_out_tmp~21_combout\);

-- Location: LCCOMB_X107_Y42_N26
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

-- Location: LCCOMB_X107_Y42_N4
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

-- Location: FF_X107_Y42_N5
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

-- Location: LCCOMB_X107_Y42_N6
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

-- Location: LCCOMB_X107_Y42_N8
\instSndDrv|inst_ctrl|cntr[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[3]~13_combout\ = (\instSndDrv|inst_ctrl|cntr\(3) & (\instSndDrv|inst_ctrl|cntr[2]~12\ $ (GND))) # (!\instSndDrv|inst_ctrl|cntr\(3) & (!\instSndDrv|inst_ctrl|cntr[2]~12\ & VCC))
-- \instSndDrv|inst_ctrl|cntr[3]~14\ = CARRY((\instSndDrv|inst_ctrl|cntr\(3) & !\instSndDrv|inst_ctrl|cntr[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(3),
	datad => VCC,
	cin => \instSndDrv|inst_ctrl|cntr[2]~12\,
	combout => \instSndDrv|inst_ctrl|cntr[3]~13_combout\,
	cout => \instSndDrv|inst_ctrl|cntr[3]~14\);

-- Location: FF_X107_Y42_N9
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

-- Location: LCCOMB_X107_Y42_N14
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

-- Location: FF_X107_Y42_N15
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

-- Location: LCCOMB_X107_Y42_N16
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

-- Location: FF_X107_Y42_N17
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

-- Location: LCCOMB_X107_Y42_N18
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

-- Location: FF_X107_Y42_N19
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

-- Location: LCCOMB_X107_Y42_N20
\instSndDrv|inst_ctrl|cntr[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_ctrl|cntr[9]~25_combout\ = \instSndDrv|inst_ctrl|cntr\(9) $ (!\instSndDrv|inst_ctrl|cntr[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	cin => \instSndDrv|inst_ctrl|cntr[8]~24\,
	combout => \instSndDrv|inst_ctrl|cntr[9]~25_combout\);

-- Location: FF_X107_Y42_N21
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

-- Location: FF_X107_Y42_N7
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

-- Location: LCCOMB_X107_Y42_N28
\instSndDrv|inst_left|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|process_1~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(0) & (\instSndDrv|inst_ctrl|cntr\(1) & \instSndDrv|inst_ctrl|cntr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(0),
	datac => \instSndDrv|inst_ctrl|cntr\(1),
	datad => \instSndDrv|inst_ctrl|cntr\(2),
	combout => \instSndDrv|inst_left|process_1~0_combout\);

-- Location: LCCOMB_X108_Y42_N6
\instSndDrv|inst_left|RXReg[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[15]~0_combout\ = (!\instSndDrv|inst_ctrl|cntr\(3) & (!\instSndDrv|inst_ctrl|cntr\(8) & (\rstn~input_o\ & \instSndDrv|inst_left|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(3),
	datab => \instSndDrv|inst_ctrl|cntr\(8),
	datac => \rstn~input_o\,
	datad => \instSndDrv|inst_left|process_1~0_combout\,
	combout => \instSndDrv|inst_left|RXReg[15]~0_combout\);

-- Location: LCCOMB_X113_Y42_N2
\instSndDrv|inst_left|RXReg[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[15]~1_combout\ = (!\instSndDrv|inst_ctrl|cntr\(9) & \instSndDrv|inst_left|RXReg[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	combout => \instSndDrv|inst_left|RXReg[15]~1_combout\);

-- Location: FF_X111_Y42_N13
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
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(0));

-- Location: FF_X113_Y42_N17
\instSndDrv|inst_left|RXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(0),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(1));

-- Location: LCCOMB_X113_Y42_N24
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

-- Location: FF_X113_Y42_N25
\instSndDrv|inst_left|RXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[2]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(2));

-- Location: LCCOMB_X113_Y42_N8
\instSndDrv|inst_left|RXReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[3]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(2),
	combout => \instSndDrv|inst_left|RXReg[3]~feeder_combout\);

-- Location: FF_X113_Y42_N9
\instSndDrv|inst_left|RXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[3]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(3));

-- Location: FF_X113_Y42_N13
\instSndDrv|inst_left|RXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(3),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(4));

-- Location: LCCOMB_X113_Y42_N0
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

-- Location: FF_X113_Y42_N1
\instSndDrv|inst_left|RXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[5]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(5));

-- Location: LCCOMB_X113_Y42_N6
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

-- Location: FF_X113_Y42_N7
\instSndDrv|inst_left|RXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[6]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(6));

-- Location: FF_X113_Y42_N5
\instSndDrv|inst_left|RXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(6),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(7));

-- Location: FF_X113_Y42_N27
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
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(8));

-- Location: FF_X113_Y42_N15
\instSndDrv|inst_left|RXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(8),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(9));

-- Location: FF_X113_Y42_N29
\instSndDrv|inst_left|RXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(9),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(10));

-- Location: LCCOMB_X113_Y42_N30
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

-- Location: FF_X113_Y42_N31
\instSndDrv|inst_left|RXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[11]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(11));

-- Location: FF_X113_Y42_N23
\instSndDrv|inst_left|RXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(11),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(12));

-- Location: FF_X113_Y42_N19
\instSndDrv|inst_left|RXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instSndDrv|inst_left|RXReg\(12),
	sload => VCC,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(13));

-- Location: FF_X113_Y42_N21
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
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(14));

-- Location: LCCOMB_X113_Y42_N10
\instSndDrv|inst_left|RXReg[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|RXReg[15]~feeder_combout\ = \instSndDrv|inst_left|RXReg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_left|RXReg\(14),
	combout => \instSndDrv|inst_left|RXReg[15]~feeder_combout\);

-- Location: FF_X113_Y42_N11
\instSndDrv|inst_left|RXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_left|RXReg[15]~feeder_combout\,
	ena => \instSndDrv|inst_left|RXReg[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_left|RXReg\(15));

-- Location: LCCOMB_X110_Y42_N30
\inst2|sample_out_tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp~8_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(15)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(15),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_left|RXReg\(15),
	combout => \inst2|sample_out_tmp~8_combout\);

-- Location: FF_X110_Y42_N31
\inst2|sample_out_tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp~8_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(15));

-- Location: LCCOMB_X111_Y42_N30
\instSndDrv|inst_right|RXReg[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|RXReg[15]~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & \instSndDrv|inst_left|RXReg[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \instSndDrv|inst_left|RXReg[15]~0_combout\,
	combout => \instSndDrv|inst_right|RXReg[15]~0_combout\);

-- Location: FF_X111_Y42_N15
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
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(0));

-- Location: FF_X111_Y42_N25
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
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(1));

-- Location: LCCOMB_X111_Y42_N6
\instSndDrv|inst_right|RXReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|RXReg[2]~feeder_combout\ = \instSndDrv|inst_right|RXReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_right|RXReg\(1),
	combout => \instSndDrv|inst_right|RXReg[2]~feeder_combout\);

-- Location: FF_X111_Y42_N7
\instSndDrv|inst_right|RXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|RXReg[2]~feeder_combout\,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(2));

-- Location: LCCOMB_X111_Y42_N8
\instSndDrv|inst_right|RXReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|RXReg[3]~feeder_combout\ = \instSndDrv|inst_right|RXReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_right|RXReg\(2),
	combout => \instSndDrv|inst_right|RXReg[3]~feeder_combout\);

-- Location: FF_X111_Y42_N9
\instSndDrv|inst_right|RXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|RXReg[3]~feeder_combout\,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(3));

-- Location: FF_X111_Y42_N27
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
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(4));

-- Location: FF_X111_Y42_N29
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
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(5));

-- Location: LCCOMB_X111_Y42_N2
\instSndDrv|inst_right|RXReg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|RXReg[6]~feeder_combout\ = \instSndDrv|inst_right|RXReg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_right|RXReg\(5),
	combout => \instSndDrv|inst_right|RXReg[6]~feeder_combout\);

-- Location: FF_X111_Y42_N3
\instSndDrv|inst_right|RXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|RXReg[6]~feeder_combout\,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(6));

-- Location: LCCOMB_X111_Y42_N10
\instSndDrv|inst_right|RXReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|RXReg[7]~feeder_combout\ = \instSndDrv|inst_right|RXReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_right|RXReg\(6),
	combout => \instSndDrv|inst_right|RXReg[7]~feeder_combout\);

-- Location: FF_X111_Y42_N11
\instSndDrv|inst_right|RXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|RXReg[7]~feeder_combout\,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(7));

-- Location: FF_X112_Y42_N25
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
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(8));

-- Location: LCCOMB_X112_Y42_N14
\instSndDrv|inst_right|RXReg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|RXReg[9]~feeder_combout\ = \instSndDrv|inst_right|RXReg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_right|RXReg\(8),
	combout => \instSndDrv|inst_right|RXReg[9]~feeder_combout\);

-- Location: FF_X112_Y42_N15
\instSndDrv|inst_right|RXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|RXReg[9]~feeder_combout\,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(9));

-- Location: FF_X111_Y42_N19
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
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(10));

-- Location: LCCOMB_X111_Y42_N22
\instSndDrv|inst_right|RXReg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|RXReg[11]~feeder_combout\ = \instSndDrv|inst_right|RXReg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_right|RXReg\(10),
	combout => \instSndDrv|inst_right|RXReg[11]~feeder_combout\);

-- Location: FF_X111_Y42_N23
\instSndDrv|inst_right|RXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|RXReg[11]~feeder_combout\,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(11));

-- Location: FF_X111_Y42_N17
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
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(12));

-- Location: LCCOMB_X110_Y42_N28
\inst2|sample_out_tmp[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[12]~2_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(12)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_right|RXReg\(12),
	datad => \instSndDrv|inst_left|RXReg\(12),
	combout => \inst2|sample_out_tmp[12]~2_combout\);

-- Location: LCCOMB_X111_Y42_N0
\instSndDrv|inst_right|RXReg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|RXReg[13]~feeder_combout\ = \instSndDrv|inst_right|RXReg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSndDrv|inst_right|RXReg\(12),
	combout => \instSndDrv|inst_right|RXReg[13]~feeder_combout\);

-- Location: FF_X111_Y42_N1
\instSndDrv|inst_right|RXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instSndDrv|inst_right|RXReg[13]~feeder_combout\,
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(13));

-- Location: FF_X111_Y42_N5
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
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(14));

-- Location: FF_X111_Y42_N21
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
	ena => \instSndDrv|inst_right|RXReg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instSndDrv|inst_right|RXReg\(15));

-- Location: LCCOMB_X111_Y42_N20
\inst2|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~10_combout\ = (\inst2|process_0~9_combout\) # ((\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(15)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~9_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(15),
	datad => \instSndDrv|inst_left|RXReg\(15),
	combout => \inst2|process_0~10_combout\);

-- Location: LCCOMB_X110_Y42_N18
\inst2|sample_out_tmp[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[13]~1_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(13)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_right|RXReg\(13),
	datad => \instSndDrv|inst_left|RXReg\(13),
	combout => \inst2|sample_out_tmp[13]~1_combout\);

-- Location: LCCOMB_X110_Y42_N22
\inst2|sample_out_tmp[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[11]~3_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(11)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_right|RXReg\(11),
	datad => \instSndDrv|inst_left|RXReg\(11),
	combout => \inst2|sample_out_tmp[11]~3_combout\);

-- Location: LCCOMB_X110_Y42_N0
\inst2|sample_out_tmp[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[15]~9_combout\ = (\inst2|sample_out_tmp[14]~0_combout\ & (\inst2|sample_out_tmp[13]~1_combout\ & (\inst2|sample_out_tmp[11]~3_combout\ & \inst2|sample_out_tmp[12]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[14]~0_combout\,
	datab => \inst2|sample_out_tmp[13]~1_combout\,
	datac => \inst2|sample_out_tmp[11]~3_combout\,
	datad => \inst2|sample_out_tmp[12]~2_combout\,
	combout => \inst2|sample_out_tmp[15]~9_combout\);

-- Location: LCCOMB_X110_Y42_N8
\inst2|sample_out_tmp[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[10]~4_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(10)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_right|RXReg\(10),
	datad => \instSndDrv|inst_left|RXReg\(10),
	combout => \inst2|sample_out_tmp[10]~4_combout\);

-- Location: LCCOMB_X110_Y42_N10
\inst2|sample_out_tmp[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[9]~5_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(9)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_right|RXReg\(9),
	datad => \instSndDrv|inst_left|RXReg\(9),
	combout => \inst2|sample_out_tmp[9]~5_combout\);

-- Location: LCCOMB_X110_Y42_N2
\inst2|sample_out_tmp[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[15]~10_combout\ = (\inst4|Y[8]~0_combout\ & (\inst2|sample_out_tmp[15]~9_combout\ & (\inst2|sample_out_tmp[10]~4_combout\ & \inst2|sample_out_tmp[9]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Y[8]~0_combout\,
	datab => \inst2|sample_out_tmp[15]~9_combout\,
	datac => \inst2|sample_out_tmp[10]~4_combout\,
	datad => \inst2|sample_out_tmp[9]~5_combout\,
	combout => \inst2|sample_out_tmp[15]~10_combout\);

-- Location: LCCOMB_X111_Y42_N26
\inst2|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~5_combout\ = (!\instSndDrv|inst_right|RXReg\(7) & (!\instSndDrv|inst_right|RXReg\(6) & (!\instSndDrv|inst_right|RXReg\(4) & !\instSndDrv|inst_right|RXReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|RXReg\(7),
	datab => \instSndDrv|inst_right|RXReg\(6),
	datac => \instSndDrv|inst_right|RXReg\(4),
	datad => \instSndDrv|inst_right|RXReg\(5),
	combout => \inst2|process_0~5_combout\);

-- Location: LCCOMB_X111_Y42_N12
\inst2|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = (!\instSndDrv|inst_left|RXReg\(2) & (!\instSndDrv|inst_left|RXReg\(1) & (!\instSndDrv|inst_left|RXReg\(0) & !\instSndDrv|inst_left|RXReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|RXReg\(2),
	datab => \instSndDrv|inst_left|RXReg\(1),
	datac => \instSndDrv|inst_left|RXReg\(0),
	datad => \instSndDrv|inst_left|RXReg\(3),
	combout => \inst2|process_0~3_combout\);

-- Location: LCCOMB_X112_Y42_N24
\inst4|Y[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Y[8]~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(8)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|RXReg\(8),
	datad => \instSndDrv|inst_left|RXReg\(8),
	combout => \inst4|Y[8]~0_combout\);

-- Location: LCCOMB_X112_Y42_N2
\inst2|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = ((\inst2|process_0~2_combout\ & (\instSndDrv|inst_ctrl|cntr\(9) & \inst2|process_0~3_combout\))) # (!\inst4|Y[8]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~2_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst2|process_0~3_combout\,
	datad => \inst4|Y[8]~0_combout\,
	combout => \inst2|process_0~4_combout\);

-- Location: LCCOMB_X112_Y42_N12
\inst2|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~7_combout\ = (\inst2|process_0~4_combout\) # ((\inst2|process_0~6_combout\ & (!\instSndDrv|inst_ctrl|cntr\(9) & \inst2|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~6_combout\,
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst2|process_0~5_combout\,
	datad => \inst2|process_0~4_combout\,
	combout => \inst2|process_0~7_combout\);

-- Location: LCCOMB_X110_Y42_N6
\inst2|sample_out_tmp[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[15]~12_combout\ = (\inst2|sample_out_tmp~8_combout\ & (((!\inst2|sample_out_tmp[15]~10_combout\)))) # (!\inst2|sample_out_tmp~8_combout\ & (((!\inst2|process_0~7_combout\)) # (!\inst2|sample_out_tmp[15]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp[15]~11_combout\,
	datab => \inst2|sample_out_tmp[15]~10_combout\,
	datac => \inst2|sample_out_tmp~8_combout\,
	datad => \inst2|process_0~7_combout\,
	combout => \inst2|sample_out_tmp[15]~12_combout\);

-- Location: FF_X110_Y42_N29
\inst2|sample_out_tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[12]~2_combout\,
	asdata => \inst2|process_0~10_combout\,
	sload => \inst2|sample_out_tmp[15]~12_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(12));

-- Location: FF_X110_Y42_N11
\inst2|sample_out_tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[9]~5_combout\,
	asdata => \inst2|process_0~10_combout\,
	sload => \inst2|sample_out_tmp[15]~12_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(9));

-- Location: LCCOMB_X109_Y42_N20
\instSndDrv|inst_right|TXReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~7_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(8))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_right|TXReg\(8),
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \inst2|sample_out_tmp\(9),
	combout => \instSndDrv|inst_right|TXReg~7_combout\);

-- Location: LCCOMB_X108_Y42_N4
\instSndDrv|inst_right|TXReg[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg[15]~1_combout\ = (\rstn~input_o\ & (((\instSndDrv|inst_ctrl|cntr\(3) & \instSndDrv|inst_left|process_1~0_combout\)) # (!\instSndDrv|inst_ctrl|cntr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(3),
	datab => \instSndDrv|inst_left|process_1~0_combout\,
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \rstn~input_o\,
	combout => \instSndDrv|inst_right|TXReg[15]~1_combout\);

-- Location: FF_X109_Y42_N21
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

-- Location: FF_X110_Y42_N9
\inst2|sample_out_tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[10]~4_combout\,
	asdata => \inst2|process_0~10_combout\,
	sload => \inst2|sample_out_tmp[15]~12_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(10));

-- Location: LCCOMB_X109_Y42_N26
\instSndDrv|inst_right|TXReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~6_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(9))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_right|TXReg\(9),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \inst2|sample_out_tmp\(10),
	combout => \instSndDrv|inst_right|TXReg~6_combout\);

-- Location: FF_X109_Y42_N27
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

-- Location: LCCOMB_X109_Y42_N0
\instSndDrv|inst_right|TXReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~5_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(10)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sample_out_tmp\(11),
	datac => \instSndDrv|inst_right|TXReg\(10),
	datad => \instSndDrv|inst_ctrl|cntr\(9),
	combout => \instSndDrv|inst_right|TXReg~5_combout\);

-- Location: FF_X109_Y42_N1
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

-- Location: LCCOMB_X109_Y42_N14
\instSndDrv|inst_right|TXReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~4_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(11)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst2|sample_out_tmp\(12),
	datad => \instSndDrv|inst_right|TXReg\(11),
	combout => \instSndDrv|inst_right|TXReg~4_combout\);

-- Location: FF_X109_Y42_N15
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

-- Location: FF_X110_Y42_N19
\inst2|sample_out_tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[13]~1_combout\,
	asdata => \inst2|process_0~10_combout\,
	sload => \inst2|sample_out_tmp[15]~12_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(13));

-- Location: LCCOMB_X109_Y42_N4
\instSndDrv|inst_right|TXReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~3_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(12))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|TXReg\(12),
	datad => \inst2|sample_out_tmp\(13),
	combout => \instSndDrv|inst_right|TXReg~3_combout\);

-- Location: FF_X109_Y42_N5
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

-- Location: LCCOMB_X110_Y42_N24
\inst2|sample_out_tmp[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sample_out_tmp[14]~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_left|RXReg\(14)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|RXReg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_right|RXReg\(14),
	datad => \instSndDrv|inst_left|RXReg\(14),
	combout => \inst2|sample_out_tmp[14]~0_combout\);

-- Location: FF_X110_Y42_N25
\inst2|sample_out_tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sample_out_tmp[14]~0_combout\,
	asdata => \inst2|process_0~10_combout\,
	sload => \inst2|sample_out_tmp[15]~12_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sample_out_tmp\(14));

-- Location: LCCOMB_X109_Y42_N2
\instSndDrv|inst_right|TXReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~2_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_right|TXReg\(13))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \instSndDrv|inst_right|TXReg\(13),
	datad => \inst2|sample_out_tmp\(14),
	combout => \instSndDrv|inst_right|TXReg~2_combout\);

-- Location: FF_X109_Y42_N3
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

-- Location: LCCOMB_X109_Y42_N8
\instSndDrv|inst_right|TXReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|TXReg~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\instSndDrv|inst_right|TXReg\(14)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\inst2|sample_out_tmp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_ctrl|cntr\(9),
	datac => \inst2|sample_out_tmp\(15),
	datad => \instSndDrv|inst_right|TXReg\(14),
	combout => \instSndDrv|inst_right|TXReg~0_combout\);

-- Location: FF_X109_Y42_N9
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

-- Location: LCCOMB_X107_Y42_N22
\instSndDrv|inst_right|dacdat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_right|dacdat~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\rstn~input_o\ & (\instSndDrv|inst_right|TXReg\(15))) # (!\rstn~input_o\ & ((\instSndDrv|inst_right|dacdat~q\))))) # (!\instSndDrv|inst_ctrl|cntr\(9) & 
-- (((\instSndDrv|inst_right|dacdat~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \instSndDrv|inst_right|TXReg\(15),
	datac => \instSndDrv|inst_right|dacdat~q\,
	datad => \rstn~input_o\,
	combout => \instSndDrv|inst_right|dacdat~0_combout\);

-- Location: FF_X107_Y42_N23
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

-- Location: LCCOMB_X110_Y42_N16
\instSndDrv|inst_left|TXReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~2_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(14)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_left|TXReg\(13),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \inst2|sample_out_tmp\(14),
	combout => \instSndDrv|inst_left|TXReg~2_combout\);

-- Location: LCCOMB_X108_Y42_N2
\instSndDrv|inst_left|TXReg[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg[15]~1_combout\ = (\rstn~input_o\ & ((\instSndDrv|inst_ctrl|cntr\(9)) # ((\instSndDrv|inst_ctrl|cntr\(3) & \instSndDrv|inst_left|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(3),
	datab => \instSndDrv|inst_left|process_1~0_combout\,
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \rstn~input_o\,
	combout => \instSndDrv|inst_left|TXReg[15]~1_combout\);

-- Location: FF_X110_Y42_N17
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

-- Location: LCCOMB_X110_Y42_N4
\instSndDrv|inst_left|TXReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|TXReg~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & ((\inst2|sample_out_tmp\(15)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & (\instSndDrv|inst_left|TXReg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSndDrv|inst_left|TXReg\(14),
	datac => \instSndDrv|inst_ctrl|cntr\(9),
	datad => \inst2|sample_out_tmp\(15),
	combout => \instSndDrv|inst_left|TXReg~0_combout\);

-- Location: FF_X110_Y42_N5
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

-- Location: LCCOMB_X107_Y42_N2
\instSndDrv|inst_left|dacdat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_left|dacdat~0_combout\ = (\instSndDrv|inst_ctrl|cntr\(9) & (((\instSndDrv|inst_left|dacdat~q\)))) # (!\instSndDrv|inst_ctrl|cntr\(9) & ((\rstn~input_o\ & ((\instSndDrv|inst_left|TXReg\(15)))) # (!\rstn~input_o\ & 
-- (\instSndDrv|inst_left|dacdat~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSndDrv|inst_ctrl|cntr\(9),
	datab => \rstn~input_o\,
	datac => \instSndDrv|inst_left|dacdat~q\,
	datad => \instSndDrv|inst_left|TXReg\(15),
	combout => \instSndDrv|inst_left|dacdat~0_combout\);

-- Location: FF_X107_Y42_N3
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

-- Location: LCCOMB_X107_Y42_N24
\instSndDrv|inst_or|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instSndDrv|inst_or|output~0_combout\ = (\instSndDrv|inst_right|dacdat~q\) # (\instSndDrv|inst_left|dacdat~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instSndDrv|inst_right|dacdat~q\,
	datad => \instSndDrv|inst_left|dacdat~q\,
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


