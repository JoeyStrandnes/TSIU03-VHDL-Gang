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

-- DATE "10/01/2021 14:29:18"

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

ENTITY 	SRAM_TEST IS
    PORT (
	DATA_SRAM : INOUT std_logic_vector(15 DOWNTO 0);
	sram_ce : OUT std_logic;
	clk : IN std_logic;
	rstn : IN std_logic;
	adcdat : IN std_logic;
	sram_oe : OUT std_logic;
	sram_we : OUT std_logic;
	sram_lb : OUT std_logic;
	sram_ub : OUT std_logic;
	mclk : OUT std_logic;
	bclk : OUT std_logic;
	adclrc : OUT std_logic;
	daclrc : OUT std_logic;
	dacdat : OUT std_logic;
	ADDR : OUT std_logic_vector(19 DOWNTO 0)
	);
END SRAM_TEST;

-- Design Ports Information
-- sram_ce	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adcdat	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_oe	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_we	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_lb	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_ub	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mclk	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bclk	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adclrc	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- daclrc	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dacdat	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[15]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[14]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[13]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[12]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[11]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[10]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[9]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[8]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[7]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[2]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_SRAM[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstn	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SRAM_TEST IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sram_ce : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rstn : std_logic;
SIGNAL ww_adcdat : std_logic;
SIGNAL ww_sram_oe : std_logic;
SIGNAL ww_sram_we : std_logic;
SIGNAL ww_sram_lb : std_logic;
SIGNAL ww_sram_ub : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL ww_bclk : std_logic;
SIGNAL ww_adclrc : std_logic;
SIGNAL ww_daclrc : std_logic;
SIGNAL ww_dacdat : std_logic;
SIGNAL ww_ADDR : std_logic_vector(19 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[2]~11_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[4]~15_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[5]~17_combout\ : std_logic;
SIGNAL \inst|RW~0_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[0]~27_combout\ : std_logic;
SIGNAL \adcdat~input_o\ : std_logic;
SIGNAL \DATA_SRAM[15]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[14]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[13]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[12]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[11]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[10]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[9]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[8]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[7]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[6]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[5]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[4]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[3]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[2]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[1]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[0]~input_o\ : std_logic;
SIGNAL \DATA_SRAM[15]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[14]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[13]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[12]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[11]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[10]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[9]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[8]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[7]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[6]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[5]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[4]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[3]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[2]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[1]~output_o\ : std_logic;
SIGNAL \DATA_SRAM[0]~output_o\ : std_logic;
SIGNAL \sram_ce~output_o\ : std_logic;
SIGNAL \sram_oe~output_o\ : std_logic;
SIGNAL \sram_we~output_o\ : std_logic;
SIGNAL \sram_lb~output_o\ : std_logic;
SIGNAL \sram_ub~output_o\ : std_logic;
SIGNAL \mclk~output_o\ : std_logic;
SIGNAL \bclk~output_o\ : std_logic;
SIGNAL \adclrc~output_o\ : std_logic;
SIGNAL \daclrc~output_o\ : std_logic;
SIGNAL \dacdat~output_o\ : std_logic;
SIGNAL \ADDR[19]~output_o\ : std_logic;
SIGNAL \ADDR[18]~output_o\ : std_logic;
SIGNAL \ADDR[17]~output_o\ : std_logic;
SIGNAL \ADDR[16]~output_o\ : std_logic;
SIGNAL \ADDR[15]~output_o\ : std_logic;
SIGNAL \ADDR[14]~output_o\ : std_logic;
SIGNAL \ADDR[13]~output_o\ : std_logic;
SIGNAL \ADDR[12]~output_o\ : std_logic;
SIGNAL \ADDR[11]~output_o\ : std_logic;
SIGNAL \ADDR[10]~output_o\ : std_logic;
SIGNAL \ADDR[9]~output_o\ : std_logic;
SIGNAL \ADDR[8]~output_o\ : std_logic;
SIGNAL \ADDR[7]~output_o\ : std_logic;
SIGNAL \ADDR[6]~output_o\ : std_logic;
SIGNAL \ADDR[5]~output_o\ : std_logic;
SIGNAL \ADDR[4]~output_o\ : std_logic;
SIGNAL \ADDR[3]~output_o\ : std_logic;
SIGNAL \ADDR[2]~output_o\ : std_logic;
SIGNAL \ADDR[1]~output_o\ : std_logic;
SIGNAL \ADDR[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[1]~9_combout\ : std_logic;
SIGNAL \rstn~input_o\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[1]~10\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[2]~12\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[3]~13_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[3]~14\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[4]~16\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[5]~18\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[6]~19_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[6]~20\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[7]~21_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[7]~22\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[8]~23_combout\ : std_logic;
SIGNAL \inst|RW~1_combout\ : std_logic;
SIGNAL \inst|RW~q\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[8]~24\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[9]~25_combout\ : std_logic;
SIGNAL \inst2|PTR[1]~19_combout\ : std_logic;
SIGNAL \inst2|lrsel_old~feeder_combout\ : std_logic;
SIGNAL \inst2|lrsel_old~q\ : std_logic;
SIGNAL \inst2|lrsel_change~0_combout\ : std_logic;
SIGNAL \inst2|lrsel_change~q\ : std_logic;
SIGNAL \inst2|PTR[1]~20\ : std_logic;
SIGNAL \inst2|PTR[2]~21_combout\ : std_logic;
SIGNAL \inst2|PTR[2]~22\ : std_logic;
SIGNAL \inst2|PTR[3]~23_combout\ : std_logic;
SIGNAL \inst2|PTR[3]~24\ : std_logic;
SIGNAL \inst2|PTR[4]~25_combout\ : std_logic;
SIGNAL \inst2|PTR[4]~26\ : std_logic;
SIGNAL \inst2|PTR[5]~28\ : std_logic;
SIGNAL \inst2|PTR[6]~29_combout\ : std_logic;
SIGNAL \inst2|PTR[6]~30\ : std_logic;
SIGNAL \inst2|PTR[7]~32\ : std_logic;
SIGNAL \inst2|PTR[8]~33_combout\ : std_logic;
SIGNAL \inst2|PTR[8]~34\ : std_logic;
SIGNAL \inst2|PTR[9]~36\ : std_logic;
SIGNAL \inst2|PTR[10]~37_combout\ : std_logic;
SIGNAL \inst2|PTR[10]~38\ : std_logic;
SIGNAL \inst2|PTR[11]~39_combout\ : std_logic;
SIGNAL \inst2|PTR[11]~40\ : std_logic;
SIGNAL \inst2|PTR[12]~41_combout\ : std_logic;
SIGNAL \inst2|PTR[12]~42\ : std_logic;
SIGNAL \inst2|PTR[13]~44\ : std_logic;
SIGNAL \inst2|PTR[14]~45_combout\ : std_logic;
SIGNAL \inst2|PTR[14]~46\ : std_logic;
SIGNAL \inst2|PTR[15]~48\ : std_logic;
SIGNAL \inst2|PTR[16]~50\ : std_logic;
SIGNAL \inst2|PTR[17]~51_combout\ : std_logic;
SIGNAL \inst2|PTR[17]~52\ : std_logic;
SIGNAL \inst2|PTR[18]~53_combout\ : std_logic;
SIGNAL \inst2|PTR[18]~54\ : std_logic;
SIGNAL \inst2|PTR[19]~55_combout\ : std_logic;
SIGNAL \inst2|PTR[16]~49_combout\ : std_logic;
SIGNAL \inst2|PTR[15]~47_combout\ : std_logic;
SIGNAL \inst2|PTR[13]~43_combout\ : std_logic;
SIGNAL \inst2|PTR[9]~35_combout\ : std_logic;
SIGNAL \inst2|PTR[7]~31_combout\ : std_logic;
SIGNAL \inst2|PTR[5]~27_combout\ : std_logic;
SIGNAL \inst2|PTR[0]~57_combout\ : std_logic;
SIGNAL \inst2|PTR\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst_SND|b2v_inst_ctrl|cntr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_SND|b2v_inst_ctrl|ALT_INV_cntr\ : std_logic_vector(9 DOWNTO 1);

BEGIN

sram_ce <= ww_sram_ce;
ww_clk <= clk;
ww_rstn <= rstn;
ww_adcdat <= adcdat;
sram_oe <= ww_sram_oe;
sram_we <= ww_sram_we;
sram_lb <= ww_sram_lb;
sram_ub <= ww_sram_ub;
mclk <= ww_mclk;
bclk <= ww_bclk;
adclrc <= ww_adclrc;
daclrc <= ww_daclrc;
dacdat <= ww_dacdat;
ADDR <= ww_ADDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst_SND|b2v_inst_ctrl|ALT_INV_cntr\(9) <= NOT \inst_SND|b2v_inst_ctrl|cntr\(9);
\inst_SND|b2v_inst_ctrl|ALT_INV_cntr\(1) <= NOT \inst_SND|b2v_inst_ctrl|cntr\(1);

-- Location: FF_X16_Y3_N11
\inst_SND|b2v_inst_ctrl|cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_ctrl|cntr[4]~15_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_ctrl|cntr\(4));

-- Location: FF_X16_Y3_N13
\inst_SND|b2v_inst_ctrl|cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_ctrl|cntr[5]~17_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_ctrl|cntr\(5));

-- Location: FF_X16_Y3_N7
\inst_SND|b2v_inst_ctrl|cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_ctrl|cntr[2]~11_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_ctrl|cntr\(2));

-- Location: LCCOMB_X16_Y3_N6
\inst_SND|b2v_inst_ctrl|cntr[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_ctrl|cntr[2]~11_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(2) & (!\inst_SND|b2v_inst_ctrl|cntr[1]~10\)) # (!\inst_SND|b2v_inst_ctrl|cntr\(2) & ((\inst_SND|b2v_inst_ctrl|cntr[1]~10\) # (GND)))
-- \inst_SND|b2v_inst_ctrl|cntr[2]~12\ = CARRY((!\inst_SND|b2v_inst_ctrl|cntr[1]~10\) # (!\inst_SND|b2v_inst_ctrl|cntr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(2),
	datad => VCC,
	cin => \inst_SND|b2v_inst_ctrl|cntr[1]~10\,
	combout => \inst_SND|b2v_inst_ctrl|cntr[2]~11_combout\,
	cout => \inst_SND|b2v_inst_ctrl|cntr[2]~12\);

-- Location: LCCOMB_X16_Y3_N10
\inst_SND|b2v_inst_ctrl|cntr[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_ctrl|cntr[4]~15_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(4) & (!\inst_SND|b2v_inst_ctrl|cntr[3]~14\)) # (!\inst_SND|b2v_inst_ctrl|cntr\(4) & ((\inst_SND|b2v_inst_ctrl|cntr[3]~14\) # (GND)))
-- \inst_SND|b2v_inst_ctrl|cntr[4]~16\ = CARRY((!\inst_SND|b2v_inst_ctrl|cntr[3]~14\) # (!\inst_SND|b2v_inst_ctrl|cntr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(4),
	datad => VCC,
	cin => \inst_SND|b2v_inst_ctrl|cntr[3]~14\,
	combout => \inst_SND|b2v_inst_ctrl|cntr[4]~15_combout\,
	cout => \inst_SND|b2v_inst_ctrl|cntr[4]~16\);

-- Location: LCCOMB_X16_Y3_N12
\inst_SND|b2v_inst_ctrl|cntr[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_ctrl|cntr[5]~17_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(5) & (\inst_SND|b2v_inst_ctrl|cntr[4]~16\ $ (GND))) # (!\inst_SND|b2v_inst_ctrl|cntr\(5) & (!\inst_SND|b2v_inst_ctrl|cntr[4]~16\ & VCC))
-- \inst_SND|b2v_inst_ctrl|cntr[5]~18\ = CARRY((\inst_SND|b2v_inst_ctrl|cntr\(5) & !\inst_SND|b2v_inst_ctrl|cntr[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(5),
	datad => VCC,
	cin => \inst_SND|b2v_inst_ctrl|cntr[4]~16\,
	combout => \inst_SND|b2v_inst_ctrl|cntr[5]~17_combout\,
	cout => \inst_SND|b2v_inst_ctrl|cntr[5]~18\);

-- Location: LCCOMB_X16_Y3_N22
\inst|RW~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RW~0_combout\ = (!\inst_SND|b2v_inst_ctrl|cntr\(5) & (!\inst_SND|b2v_inst_ctrl|cntr\(8) & (!\inst_SND|b2v_inst_ctrl|cntr\(3) & !\inst_SND|b2v_inst_ctrl|cntr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(5),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(8),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(3),
	datad => \inst_SND|b2v_inst_ctrl|cntr\(4),
	combout => \inst|RW~0_combout\);

-- Location: FF_X16_Y3_N31
\inst_SND|b2v_inst_ctrl|cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_ctrl|cntr[0]~27_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_ctrl|cntr\(0));

-- Location: LCCOMB_X16_Y3_N30
\inst_SND|b2v_inst_ctrl|cntr[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_ctrl|cntr[0]~27_combout\ = !\inst_SND|b2v_inst_ctrl|cntr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_SND|b2v_inst_ctrl|cntr\(0),
	combout => \inst_SND|b2v_inst_ctrl|cntr[0]~27_combout\);

-- Location: IOOBUF_X3_Y0_N16
\DATA_SRAM[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[15]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\DATA_SRAM[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\DATA_SRAM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[13]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\DATA_SRAM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[12]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\DATA_SRAM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[11]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\DATA_SRAM[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\DATA_SRAM[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[9]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\DATA_SRAM[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\DATA_SRAM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\DATA_SRAM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\DATA_SRAM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\DATA_SRAM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\DATA_SRAM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\DATA_SRAM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\DATA_SRAM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\DATA_SRAM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[0]~output_o\);

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
	i => \inst|RW~q\,
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

-- Location: IOOBUF_X16_Y0_N9
\mclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SND|b2v_inst_ctrl|ALT_INV_cntr\(1),
	devoe => ww_devoe,
	o => \mclk~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\bclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SND|b2v_inst_ctrl|cntr\(3),
	devoe => ww_devoe,
	o => \bclk~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\adclrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SND|b2v_inst_ctrl|ALT_INV_cntr\(9),
	devoe => ww_devoe,
	o => \adclrc~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\daclrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SND|b2v_inst_ctrl|ALT_INV_cntr\(9),
	devoe => ww_devoe,
	o => \daclrc~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\dacdat~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dacdat~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(19),
	devoe => ww_devoe,
	o => \ADDR[19]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(18),
	devoe => ww_devoe,
	o => \ADDR[18]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(17),
	devoe => ww_devoe,
	o => \ADDR[17]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(16),
	devoe => ww_devoe,
	o => \ADDR[16]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(15),
	devoe => ww_devoe,
	o => \ADDR[15]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(14),
	devoe => ww_devoe,
	o => \ADDR[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(13),
	devoe => ww_devoe,
	o => \ADDR[13]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(12),
	devoe => ww_devoe,
	o => \ADDR[12]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(11),
	devoe => ww_devoe,
	o => \ADDR[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(10),
	devoe => ww_devoe,
	o => \ADDR[10]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(9),
	devoe => ww_devoe,
	o => \ADDR[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(8),
	devoe => ww_devoe,
	o => \ADDR[8]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(7),
	devoe => ww_devoe,
	o => \ADDR[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(6),
	devoe => ww_devoe,
	o => \ADDR[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(5),
	devoe => ww_devoe,
	o => \ADDR[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(4),
	devoe => ww_devoe,
	o => \ADDR[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(3),
	devoe => ww_devoe,
	o => \ADDR[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(2),
	devoe => ww_devoe,
	o => \ADDR[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(1),
	devoe => ww_devoe,
	o => \ADDR[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PTR\(0),
	devoe => ww_devoe,
	o => \ADDR[0]~output_o\);

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

-- Location: LCCOMB_X16_Y3_N4
\inst_SND|b2v_inst_ctrl|cntr[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_ctrl|cntr[1]~9_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(0) & (\inst_SND|b2v_inst_ctrl|cntr\(1) $ (VCC))) # (!\inst_SND|b2v_inst_ctrl|cntr\(0) & (\inst_SND|b2v_inst_ctrl|cntr\(1) & VCC))
-- \inst_SND|b2v_inst_ctrl|cntr[1]~10\ = CARRY((\inst_SND|b2v_inst_ctrl|cntr\(0) & \inst_SND|b2v_inst_ctrl|cntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(0),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(1),
	datad => VCC,
	combout => \inst_SND|b2v_inst_ctrl|cntr[1]~9_combout\,
	cout => \inst_SND|b2v_inst_ctrl|cntr[1]~10\);

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

-- Location: FF_X16_Y3_N5
\inst_SND|b2v_inst_ctrl|cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_ctrl|cntr[1]~9_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_ctrl|cntr\(1));

-- Location: LCCOMB_X16_Y3_N8
\inst_SND|b2v_inst_ctrl|cntr[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_ctrl|cntr[3]~13_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(3) & (\inst_SND|b2v_inst_ctrl|cntr[2]~12\ $ (GND))) # (!\inst_SND|b2v_inst_ctrl|cntr\(3) & (!\inst_SND|b2v_inst_ctrl|cntr[2]~12\ & VCC))
-- \inst_SND|b2v_inst_ctrl|cntr[3]~14\ = CARRY((\inst_SND|b2v_inst_ctrl|cntr\(3) & !\inst_SND|b2v_inst_ctrl|cntr[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_ctrl|cntr\(3),
	datad => VCC,
	cin => \inst_SND|b2v_inst_ctrl|cntr[2]~12\,
	combout => \inst_SND|b2v_inst_ctrl|cntr[3]~13_combout\,
	cout => \inst_SND|b2v_inst_ctrl|cntr[3]~14\);

-- Location: FF_X16_Y3_N9
\inst_SND|b2v_inst_ctrl|cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_ctrl|cntr[3]~13_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_ctrl|cntr\(3));

-- Location: LCCOMB_X16_Y3_N14
\inst_SND|b2v_inst_ctrl|cntr[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_ctrl|cntr[6]~19_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(6) & (!\inst_SND|b2v_inst_ctrl|cntr[5]~18\)) # (!\inst_SND|b2v_inst_ctrl|cntr\(6) & ((\inst_SND|b2v_inst_ctrl|cntr[5]~18\) # (GND)))
-- \inst_SND|b2v_inst_ctrl|cntr[6]~20\ = CARRY((!\inst_SND|b2v_inst_ctrl|cntr[5]~18\) # (!\inst_SND|b2v_inst_ctrl|cntr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_ctrl|cntr\(6),
	datad => VCC,
	cin => \inst_SND|b2v_inst_ctrl|cntr[5]~18\,
	combout => \inst_SND|b2v_inst_ctrl|cntr[6]~19_combout\,
	cout => \inst_SND|b2v_inst_ctrl|cntr[6]~20\);

-- Location: FF_X16_Y3_N15
\inst_SND|b2v_inst_ctrl|cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_ctrl|cntr[6]~19_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_ctrl|cntr\(6));

-- Location: LCCOMB_X16_Y3_N16
\inst_SND|b2v_inst_ctrl|cntr[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_ctrl|cntr[7]~21_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(7) & (\inst_SND|b2v_inst_ctrl|cntr[6]~20\ $ (GND))) # (!\inst_SND|b2v_inst_ctrl|cntr\(7) & (!\inst_SND|b2v_inst_ctrl|cntr[6]~20\ & VCC))
-- \inst_SND|b2v_inst_ctrl|cntr[7]~22\ = CARRY((\inst_SND|b2v_inst_ctrl|cntr\(7) & !\inst_SND|b2v_inst_ctrl|cntr[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_ctrl|cntr\(7),
	datad => VCC,
	cin => \inst_SND|b2v_inst_ctrl|cntr[6]~20\,
	combout => \inst_SND|b2v_inst_ctrl|cntr[7]~21_combout\,
	cout => \inst_SND|b2v_inst_ctrl|cntr[7]~22\);

-- Location: FF_X16_Y3_N17
\inst_SND|b2v_inst_ctrl|cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_ctrl|cntr[7]~21_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_ctrl|cntr\(7));

-- Location: LCCOMB_X16_Y3_N18
\inst_SND|b2v_inst_ctrl|cntr[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_ctrl|cntr[8]~23_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(8) & (!\inst_SND|b2v_inst_ctrl|cntr[7]~22\)) # (!\inst_SND|b2v_inst_ctrl|cntr\(8) & ((\inst_SND|b2v_inst_ctrl|cntr[7]~22\) # (GND)))
-- \inst_SND|b2v_inst_ctrl|cntr[8]~24\ = CARRY((!\inst_SND|b2v_inst_ctrl|cntr[7]~22\) # (!\inst_SND|b2v_inst_ctrl|cntr\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_ctrl|cntr\(8),
	datad => VCC,
	cin => \inst_SND|b2v_inst_ctrl|cntr[7]~22\,
	combout => \inst_SND|b2v_inst_ctrl|cntr[8]~23_combout\,
	cout => \inst_SND|b2v_inst_ctrl|cntr[8]~24\);

-- Location: FF_X16_Y3_N19
\inst_SND|b2v_inst_ctrl|cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_ctrl|cntr[8]~23_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_ctrl|cntr\(8));

-- Location: LCCOMB_X16_Y3_N28
\inst|RW~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RW~1_combout\ = (\inst|RW~0_combout\) # ((!\inst_SND|b2v_inst_ctrl|cntr\(8) & ((!\inst_SND|b2v_inst_ctrl|cntr\(6)) # (!\inst_SND|b2v_inst_ctrl|cntr\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RW~0_combout\,
	datab => \inst_SND|b2v_inst_ctrl|cntr\(7),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(6),
	datad => \inst_SND|b2v_inst_ctrl|cntr\(8),
	combout => \inst|RW~1_combout\);

-- Location: FF_X16_Y3_N29
\inst|RW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|RW~1_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RW~q\);

-- Location: LCCOMB_X16_Y3_N20
\inst_SND|b2v_inst_ctrl|cntr[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_ctrl|cntr[9]~25_combout\ = \inst_SND|b2v_inst_ctrl|cntr[8]~24\ $ (!\inst_SND|b2v_inst_ctrl|cntr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_ctrl|cntr\(9),
	cin => \inst_SND|b2v_inst_ctrl|cntr[8]~24\,
	combout => \inst_SND|b2v_inst_ctrl|cntr[9]~25_combout\);

-- Location: FF_X16_Y3_N21
\inst_SND|b2v_inst_ctrl|cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_ctrl|cntr[9]~25_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_ctrl|cntr\(9));

-- Location: LCCOMB_X4_Y4_N14
\inst2|PTR[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[1]~19_combout\ = (\inst2|PTR\(0) & (\inst2|PTR\(1) $ (VCC))) # (!\inst2|PTR\(0) & (\inst2|PTR\(1) & VCC))
-- \inst2|PTR[1]~20\ = CARRY((\inst2|PTR\(0) & \inst2|PTR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PTR\(0),
	datab => \inst2|PTR\(1),
	datad => VCC,
	combout => \inst2|PTR[1]~19_combout\,
	cout => \inst2|PTR[1]~20\);

-- Location: LCCOMB_X4_Y3_N26
\inst2|lrsel_old~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lrsel_old~feeder_combout\ = \inst_SND|b2v_inst_ctrl|cntr\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_ctrl|cntr\(9),
	combout => \inst2|lrsel_old~feeder_combout\);

-- Location: FF_X4_Y3_N27
\inst2|lrsel_old\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|lrsel_old~feeder_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lrsel_old~q\);

-- Location: LCCOMB_X4_Y3_N28
\inst2|lrsel_change~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lrsel_change~0_combout\ = \inst2|lrsel_old~q\ $ (\inst_SND|b2v_inst_ctrl|cntr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|lrsel_old~q\,
	datad => \inst_SND|b2v_inst_ctrl|cntr\(9),
	combout => \inst2|lrsel_change~0_combout\);

-- Location: FF_X4_Y3_N29
\inst2|lrsel_change\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|lrsel_change~0_combout\,
	ena => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lrsel_change~q\);

-- Location: FF_X4_Y4_N15
\inst2|PTR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[1]~19_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(1));

-- Location: LCCOMB_X4_Y4_N16
\inst2|PTR[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[2]~21_combout\ = (\inst2|PTR\(2) & (!\inst2|PTR[1]~20\)) # (!\inst2|PTR\(2) & ((\inst2|PTR[1]~20\) # (GND)))
-- \inst2|PTR[2]~22\ = CARRY((!\inst2|PTR[1]~20\) # (!\inst2|PTR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(2),
	datad => VCC,
	cin => \inst2|PTR[1]~20\,
	combout => \inst2|PTR[2]~21_combout\,
	cout => \inst2|PTR[2]~22\);

-- Location: FF_X4_Y4_N17
\inst2|PTR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[2]~21_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(2));

-- Location: LCCOMB_X4_Y4_N18
\inst2|PTR[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[3]~23_combout\ = (\inst2|PTR\(3) & (\inst2|PTR[2]~22\ $ (GND))) # (!\inst2|PTR\(3) & (!\inst2|PTR[2]~22\ & VCC))
-- \inst2|PTR[3]~24\ = CARRY((\inst2|PTR\(3) & !\inst2|PTR[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(3),
	datad => VCC,
	cin => \inst2|PTR[2]~22\,
	combout => \inst2|PTR[3]~23_combout\,
	cout => \inst2|PTR[3]~24\);

-- Location: FF_X4_Y4_N19
\inst2|PTR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[3]~23_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(3));

-- Location: LCCOMB_X4_Y4_N20
\inst2|PTR[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[4]~25_combout\ = (\inst2|PTR\(4) & (!\inst2|PTR[3]~24\)) # (!\inst2|PTR\(4) & ((\inst2|PTR[3]~24\) # (GND)))
-- \inst2|PTR[4]~26\ = CARRY((!\inst2|PTR[3]~24\) # (!\inst2|PTR\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(4),
	datad => VCC,
	cin => \inst2|PTR[3]~24\,
	combout => \inst2|PTR[4]~25_combout\,
	cout => \inst2|PTR[4]~26\);

-- Location: FF_X4_Y4_N21
\inst2|PTR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[4]~25_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(4));

-- Location: LCCOMB_X4_Y4_N22
\inst2|PTR[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[5]~27_combout\ = (\inst2|PTR\(5) & (\inst2|PTR[4]~26\ $ (GND))) # (!\inst2|PTR\(5) & (!\inst2|PTR[4]~26\ & VCC))
-- \inst2|PTR[5]~28\ = CARRY((\inst2|PTR\(5) & !\inst2|PTR[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PTR\(5),
	datad => VCC,
	cin => \inst2|PTR[4]~26\,
	combout => \inst2|PTR[5]~27_combout\,
	cout => \inst2|PTR[5]~28\);

-- Location: LCCOMB_X4_Y4_N24
\inst2|PTR[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[6]~29_combout\ = (\inst2|PTR\(6) & (!\inst2|PTR[5]~28\)) # (!\inst2|PTR\(6) & ((\inst2|PTR[5]~28\) # (GND)))
-- \inst2|PTR[6]~30\ = CARRY((!\inst2|PTR[5]~28\) # (!\inst2|PTR\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(6),
	datad => VCC,
	cin => \inst2|PTR[5]~28\,
	combout => \inst2|PTR[6]~29_combout\,
	cout => \inst2|PTR[6]~30\);

-- Location: FF_X4_Y4_N25
\inst2|PTR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[6]~29_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(6));

-- Location: LCCOMB_X4_Y4_N26
\inst2|PTR[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[7]~31_combout\ = (\inst2|PTR\(7) & (\inst2|PTR[6]~30\ $ (GND))) # (!\inst2|PTR\(7) & (!\inst2|PTR[6]~30\ & VCC))
-- \inst2|PTR[7]~32\ = CARRY((\inst2|PTR\(7) & !\inst2|PTR[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PTR\(7),
	datad => VCC,
	cin => \inst2|PTR[6]~30\,
	combout => \inst2|PTR[7]~31_combout\,
	cout => \inst2|PTR[7]~32\);

-- Location: LCCOMB_X4_Y4_N28
\inst2|PTR[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[8]~33_combout\ = (\inst2|PTR\(8) & (!\inst2|PTR[7]~32\)) # (!\inst2|PTR\(8) & ((\inst2|PTR[7]~32\) # (GND)))
-- \inst2|PTR[8]~34\ = CARRY((!\inst2|PTR[7]~32\) # (!\inst2|PTR\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(8),
	datad => VCC,
	cin => \inst2|PTR[7]~32\,
	combout => \inst2|PTR[8]~33_combout\,
	cout => \inst2|PTR[8]~34\);

-- Location: FF_X4_Y4_N29
\inst2|PTR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[8]~33_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(8));

-- Location: LCCOMB_X4_Y4_N30
\inst2|PTR[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[9]~35_combout\ = (\inst2|PTR\(9) & (\inst2|PTR[8]~34\ $ (GND))) # (!\inst2|PTR\(9) & (!\inst2|PTR[8]~34\ & VCC))
-- \inst2|PTR[9]~36\ = CARRY((\inst2|PTR\(9) & !\inst2|PTR[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PTR\(9),
	datad => VCC,
	cin => \inst2|PTR[8]~34\,
	combout => \inst2|PTR[9]~35_combout\,
	cout => \inst2|PTR[9]~36\);

-- Location: LCCOMB_X4_Y3_N0
\inst2|PTR[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[10]~37_combout\ = (\inst2|PTR\(10) & (!\inst2|PTR[9]~36\)) # (!\inst2|PTR\(10) & ((\inst2|PTR[9]~36\) # (GND)))
-- \inst2|PTR[10]~38\ = CARRY((!\inst2|PTR[9]~36\) # (!\inst2|PTR\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(10),
	datad => VCC,
	cin => \inst2|PTR[9]~36\,
	combout => \inst2|PTR[10]~37_combout\,
	cout => \inst2|PTR[10]~38\);

-- Location: FF_X4_Y3_N1
\inst2|PTR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[10]~37_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(10));

-- Location: LCCOMB_X4_Y3_N2
\inst2|PTR[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[11]~39_combout\ = (\inst2|PTR\(11) & (\inst2|PTR[10]~38\ $ (GND))) # (!\inst2|PTR\(11) & (!\inst2|PTR[10]~38\ & VCC))
-- \inst2|PTR[11]~40\ = CARRY((\inst2|PTR\(11) & !\inst2|PTR[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(11),
	datad => VCC,
	cin => \inst2|PTR[10]~38\,
	combout => \inst2|PTR[11]~39_combout\,
	cout => \inst2|PTR[11]~40\);

-- Location: FF_X4_Y3_N3
\inst2|PTR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[11]~39_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(11));

-- Location: LCCOMB_X4_Y3_N4
\inst2|PTR[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[12]~41_combout\ = (\inst2|PTR\(12) & (!\inst2|PTR[11]~40\)) # (!\inst2|PTR\(12) & ((\inst2|PTR[11]~40\) # (GND)))
-- \inst2|PTR[12]~42\ = CARRY((!\inst2|PTR[11]~40\) # (!\inst2|PTR\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(12),
	datad => VCC,
	cin => \inst2|PTR[11]~40\,
	combout => \inst2|PTR[12]~41_combout\,
	cout => \inst2|PTR[12]~42\);

-- Location: FF_X4_Y3_N5
\inst2|PTR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[12]~41_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(12));

-- Location: LCCOMB_X4_Y3_N6
\inst2|PTR[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[13]~43_combout\ = (\inst2|PTR\(13) & (\inst2|PTR[12]~42\ $ (GND))) # (!\inst2|PTR\(13) & (!\inst2|PTR[12]~42\ & VCC))
-- \inst2|PTR[13]~44\ = CARRY((\inst2|PTR\(13) & !\inst2|PTR[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PTR\(13),
	datad => VCC,
	cin => \inst2|PTR[12]~42\,
	combout => \inst2|PTR[13]~43_combout\,
	cout => \inst2|PTR[13]~44\);

-- Location: LCCOMB_X4_Y3_N8
\inst2|PTR[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[14]~45_combout\ = (\inst2|PTR\(14) & (!\inst2|PTR[13]~44\)) # (!\inst2|PTR\(14) & ((\inst2|PTR[13]~44\) # (GND)))
-- \inst2|PTR[14]~46\ = CARRY((!\inst2|PTR[13]~44\) # (!\inst2|PTR\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(14),
	datad => VCC,
	cin => \inst2|PTR[13]~44\,
	combout => \inst2|PTR[14]~45_combout\,
	cout => \inst2|PTR[14]~46\);

-- Location: FF_X4_Y3_N9
\inst2|PTR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[14]~45_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(14));

-- Location: LCCOMB_X4_Y3_N10
\inst2|PTR[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[15]~47_combout\ = (\inst2|PTR\(15) & (\inst2|PTR[14]~46\ $ (GND))) # (!\inst2|PTR\(15) & (!\inst2|PTR[14]~46\ & VCC))
-- \inst2|PTR[15]~48\ = CARRY((\inst2|PTR\(15) & !\inst2|PTR[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PTR\(15),
	datad => VCC,
	cin => \inst2|PTR[14]~46\,
	combout => \inst2|PTR[15]~47_combout\,
	cout => \inst2|PTR[15]~48\);

-- Location: LCCOMB_X4_Y3_N12
\inst2|PTR[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[16]~49_combout\ = (\inst2|PTR\(16) & (!\inst2|PTR[15]~48\)) # (!\inst2|PTR\(16) & ((\inst2|PTR[15]~48\) # (GND)))
-- \inst2|PTR[16]~50\ = CARRY((!\inst2|PTR[15]~48\) # (!\inst2|PTR\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PTR\(16),
	datad => VCC,
	cin => \inst2|PTR[15]~48\,
	combout => \inst2|PTR[16]~49_combout\,
	cout => \inst2|PTR[16]~50\);

-- Location: LCCOMB_X4_Y3_N14
\inst2|PTR[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[17]~51_combout\ = (\inst2|PTR\(17) & (\inst2|PTR[16]~50\ $ (GND))) # (!\inst2|PTR\(17) & (!\inst2|PTR[16]~50\ & VCC))
-- \inst2|PTR[17]~52\ = CARRY((\inst2|PTR\(17) & !\inst2|PTR[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(17),
	datad => VCC,
	cin => \inst2|PTR[16]~50\,
	combout => \inst2|PTR[17]~51_combout\,
	cout => \inst2|PTR[17]~52\);

-- Location: FF_X4_Y3_N15
\inst2|PTR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[17]~51_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(17));

-- Location: LCCOMB_X4_Y3_N16
\inst2|PTR[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[18]~53_combout\ = (\inst2|PTR\(18) & (!\inst2|PTR[17]~52\)) # (!\inst2|PTR\(18) & ((\inst2|PTR[17]~52\) # (GND)))
-- \inst2|PTR[18]~54\ = CARRY((!\inst2|PTR[17]~52\) # (!\inst2|PTR\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PTR\(18),
	datad => VCC,
	cin => \inst2|PTR[17]~52\,
	combout => \inst2|PTR[18]~53_combout\,
	cout => \inst2|PTR[18]~54\);

-- Location: FF_X4_Y3_N17
\inst2|PTR[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[18]~53_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(18));

-- Location: LCCOMB_X4_Y3_N18
\inst2|PTR[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[19]~55_combout\ = \inst2|PTR[18]~54\ $ (!\inst2|PTR\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|PTR\(19),
	cin => \inst2|PTR[18]~54\,
	combout => \inst2|PTR[19]~55_combout\);

-- Location: FF_X4_Y3_N19
\inst2|PTR[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[19]~55_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(19));

-- Location: FF_X4_Y3_N13
\inst2|PTR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[16]~49_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(16));

-- Location: FF_X4_Y3_N11
\inst2|PTR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[15]~47_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(15));

-- Location: FF_X4_Y3_N7
\inst2|PTR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[13]~43_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(13));

-- Location: FF_X4_Y4_N31
\inst2|PTR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[9]~35_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(9));

-- Location: FF_X4_Y4_N27
\inst2|PTR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[7]~31_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(7));

-- Location: FF_X4_Y4_N23
\inst2|PTR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[5]~27_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|lrsel_change~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(5));

-- Location: LCCOMB_X4_Y4_N12
\inst2|PTR[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[0]~57_combout\ = \inst2|PTR\(0) $ (\inst2|lrsel_change~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|PTR\(0),
	datad => \inst2|lrsel_change~q\,
	combout => \inst2|PTR[0]~57_combout\);

-- Location: FF_X4_Y4_N13
\inst2|PTR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|PTR[0]~57_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PTR\(0));

-- Location: IOIBUF_X0_Y36_N22
\adcdat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adcdat,
	o => \adcdat~input_o\);

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

ww_sram_ce <= \sram_ce~output_o\;

ww_sram_oe <= \sram_oe~output_o\;

ww_sram_we <= \sram_we~output_o\;

ww_sram_lb <= \sram_lb~output_o\;

ww_sram_ub <= \sram_ub~output_o\;

ww_mclk <= \mclk~output_o\;

ww_bclk <= \bclk~output_o\;

ww_adclrc <= \adclrc~output_o\;

ww_daclrc <= \daclrc~output_o\;

ww_dacdat <= \dacdat~output_o\;

ww_ADDR(19) <= \ADDR[19]~output_o\;

ww_ADDR(18) <= \ADDR[18]~output_o\;

ww_ADDR(17) <= \ADDR[17]~output_o\;

ww_ADDR(16) <= \ADDR[16]~output_o\;

ww_ADDR(15) <= \ADDR[15]~output_o\;

ww_ADDR(14) <= \ADDR[14]~output_o\;

ww_ADDR(13) <= \ADDR[13]~output_o\;

ww_ADDR(12) <= \ADDR[12]~output_o\;

ww_ADDR(11) <= \ADDR[11]~output_o\;

ww_ADDR(10) <= \ADDR[10]~output_o\;

ww_ADDR(9) <= \ADDR[9]~output_o\;

ww_ADDR(8) <= \ADDR[8]~output_o\;

ww_ADDR(7) <= \ADDR[7]~output_o\;

ww_ADDR(6) <= \ADDR[6]~output_o\;

ww_ADDR(5) <= \ADDR[5]~output_o\;

ww_ADDR(4) <= \ADDR[4]~output_o\;

ww_ADDR(3) <= \ADDR[3]~output_o\;

ww_ADDR(2) <= \ADDR[2]~output_o\;

ww_ADDR(1) <= \ADDR[1]~output_o\;

ww_ADDR(0) <= \ADDR[0]~output_o\;

DATA_SRAM(15) <= \DATA_SRAM[15]~output_o\;

DATA_SRAM(14) <= \DATA_SRAM[14]~output_o\;

DATA_SRAM(13) <= \DATA_SRAM[13]~output_o\;

DATA_SRAM(12) <= \DATA_SRAM[12]~output_o\;

DATA_SRAM(11) <= \DATA_SRAM[11]~output_o\;

DATA_SRAM(10) <= \DATA_SRAM[10]~output_o\;

DATA_SRAM(9) <= \DATA_SRAM[9]~output_o\;

DATA_SRAM(8) <= \DATA_SRAM[8]~output_o\;

DATA_SRAM(7) <= \DATA_SRAM[7]~output_o\;

DATA_SRAM(6) <= \DATA_SRAM[6]~output_o\;

DATA_SRAM(5) <= \DATA_SRAM[5]~output_o\;

DATA_SRAM(4) <= \DATA_SRAM[4]~output_o\;

DATA_SRAM(3) <= \DATA_SRAM[3]~output_o\;

DATA_SRAM(2) <= \DATA_SRAM[2]~output_o\;

DATA_SRAM(1) <= \DATA_SRAM[1]~output_o\;

DATA_SRAM(0) <= \DATA_SRAM[0]~output_o\;
END structure;


