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

-- DATE "10/04/2021 13:56:53"

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
	sram_ce : OUT std_logic;
	clk : IN std_logic;
	rstn : IN std_logic;
	adcdat : IN std_logic;
	DATA_SRAM : INOUT std_logic_vector(15 DOWNTO 0);
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
-- sram_oe	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_we	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_lb	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_ub	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mclk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bclk	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adclrc	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- daclrc	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dacdat	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- adcdat	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[4]~15_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[5]~17_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[0]~0_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[1]~2_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[2]~4_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[3]~6_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[4]~8_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[5]~10_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[6]~12_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[7]~14_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[8]~16_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[9]~18_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[10]~20_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[11]~22_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[12]~24_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[13]~26_combout\ : std_logic;
SIGNAL \inst|RW~0_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~2_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~3_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~3_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~4_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~4_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~5_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~5_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~6_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~6_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~7_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~7_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~8_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~8_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~9_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~9_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~10_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~10_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~11_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~11_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~12_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~12_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~13_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~13_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~14_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~14_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~15_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~15_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~16_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~16_combout\ : std_logic;
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
SIGNAL \inst2|DATA_ECHO_OUT[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \inst|ECHO1[15]~feeder_combout\ : std_logic;
SIGNAL \inst|ECHO1[14]~feeder_combout\ : std_logic;
SIGNAL \inst|ECHO1[11]~feeder_combout\ : std_logic;
SIGNAL \inst|ECHO1[10]~feeder_combout\ : std_logic;
SIGNAL \inst|ECHO1[7]~feeder_combout\ : std_logic;
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
SIGNAL \adcdat~input_o\ : std_logic;
SIGNAL \rstn~input_o\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[1]~9_combout\ : std_logic;
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
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[0]~27_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[2]~11_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|tx~0_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|rx~0_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|RXReg[1]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|RXReg[2]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|RXReg[3]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|RXReg[5]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|RXReg[9]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|RXReg[10]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|RXReg[11]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|RXReg[13]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|rx~0_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|RXReg[1]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|RXReg[2]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|RXReg[3]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|RXReg[6]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|RXReg[7]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|RXReg[9]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|RXReg[11]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|RXReg[13]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|RXReg[14]~feeder_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|RXReg[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[15]~0_combout\ : std_logic;
SIGNAL \inst|RW~1_combout\ : std_logic;
SIGNAL \inst|RW~q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[13]~16_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[15]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[14]~1_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[14]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[13]~2_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[13]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[12]~3_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[12]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[11]~4_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[11]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[10]~5_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[10]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[9]~6_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[9]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[8]~7_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[8]~reg0_q\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[8]~24\ : std_logic;
SIGNAL \inst_SND|b2v_inst_ctrl|cntr[9]~25_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[7]~8_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[7]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[6]~9_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[6]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[5]~10_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[5]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[4]~11_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[4]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[3]~12_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[3]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[2]~13_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[2]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[1]~14_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[1]~reg0_q\ : std_logic;
SIGNAL \inst2|DATA_SRAM[0]~reg0feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[0]~reg0_q\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|tx~1_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[15]~0_combout\ : std_logic;
SIGNAL \inst|ECHO1[13]~feeder_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[12]~feeder_combout\ : std_logic;
SIGNAL \inst|ECHO1[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst|ECHO1[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[8]~feeder_combout\ : std_logic;
SIGNAL \inst|ECHO1[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_ECHO_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \inst|ECHO1[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|DATA_SRAM[0]~15_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[0]~1\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[1]~3\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[2]~5\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[3]~7\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[4]~9\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[5]~11\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[6]~13\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[7]~15\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[8]~17\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[9]~19\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[10]~21\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[11]~23\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[12]~25\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[13]~27\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[14]~28_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~2_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg[6]~1_combout\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[14]~29\ : std_logic;
SIGNAL \inst|SAMPLE_OUT[15]~30_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_left|TXReg~0_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|tx~0_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg~0_combout\ : std_logic;
SIGNAL \inst_SND|b2v_inst_right|TXReg[8]~1_combout\ : std_logic;
SIGNAL \inst_SND|dacdat~0_combout\ : std_logic;
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
SIGNAL \inst|ECHO1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_SND|b2v_inst_right|RXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|DATA_ECHO_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_SND|b2v_inst_right|TXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_SND|b2v_inst_ctrl|cntr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_SND|b2v_inst_left|TXReg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|PTR\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst_SND|b2v_inst_left|RXReg\ : std_logic_vector(15 DOWNTO 0);
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

-- Location: FF_X5_Y9_N11
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

-- Location: FF_X5_Y9_N13
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

-- Location: LCCOMB_X5_Y9_N10
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

-- Location: LCCOMB_X5_Y9_N12
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

-- Location: LCCOMB_X8_Y9_N0
\inst|SAMPLE_OUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[0]~0_combout\ = (\inst|ECHO1\(0) & (\inst2|DATA_SRAM[0]~15_combout\ $ (VCC))) # (!\inst|ECHO1\(0) & (\inst2|DATA_SRAM[0]~15_combout\ & VCC))
-- \inst|SAMPLE_OUT[0]~1\ = CARRY((\inst|ECHO1\(0) & \inst2|DATA_SRAM[0]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ECHO1\(0),
	datab => \inst2|DATA_SRAM[0]~15_combout\,
	datad => VCC,
	combout => \inst|SAMPLE_OUT[0]~0_combout\,
	cout => \inst|SAMPLE_OUT[0]~1\);

-- Location: LCCOMB_X8_Y9_N2
\inst|SAMPLE_OUT[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[1]~2_combout\ = (\inst|ECHO1\(1) & ((\inst2|DATA_SRAM[1]~14_combout\ & (\inst|SAMPLE_OUT[0]~1\ & VCC)) # (!\inst2|DATA_SRAM[1]~14_combout\ & (!\inst|SAMPLE_OUT[0]~1\)))) # (!\inst|ECHO1\(1) & ((\inst2|DATA_SRAM[1]~14_combout\ & 
-- (!\inst|SAMPLE_OUT[0]~1\)) # (!\inst2|DATA_SRAM[1]~14_combout\ & ((\inst|SAMPLE_OUT[0]~1\) # (GND)))))
-- \inst|SAMPLE_OUT[1]~3\ = CARRY((\inst|ECHO1\(1) & (!\inst2|DATA_SRAM[1]~14_combout\ & !\inst|SAMPLE_OUT[0]~1\)) # (!\inst|ECHO1\(1) & ((!\inst|SAMPLE_OUT[0]~1\) # (!\inst2|DATA_SRAM[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ECHO1\(1),
	datab => \inst2|DATA_SRAM[1]~14_combout\,
	datad => VCC,
	cin => \inst|SAMPLE_OUT[0]~1\,
	combout => \inst|SAMPLE_OUT[1]~2_combout\,
	cout => \inst|SAMPLE_OUT[1]~3\);

-- Location: LCCOMB_X8_Y9_N4
\inst|SAMPLE_OUT[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[2]~4_combout\ = ((\inst|ECHO1\(2) $ (\inst2|DATA_SRAM[2]~13_combout\ $ (!\inst|SAMPLE_OUT[1]~3\)))) # (GND)
-- \inst|SAMPLE_OUT[2]~5\ = CARRY((\inst|ECHO1\(2) & ((\inst2|DATA_SRAM[2]~13_combout\) # (!\inst|SAMPLE_OUT[1]~3\))) # (!\inst|ECHO1\(2) & (\inst2|DATA_SRAM[2]~13_combout\ & !\inst|SAMPLE_OUT[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ECHO1\(2),
	datab => \inst2|DATA_SRAM[2]~13_combout\,
	datad => VCC,
	cin => \inst|SAMPLE_OUT[1]~3\,
	combout => \inst|SAMPLE_OUT[2]~4_combout\,
	cout => \inst|SAMPLE_OUT[2]~5\);

-- Location: LCCOMB_X8_Y9_N6
\inst|SAMPLE_OUT[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[3]~6_combout\ = (\inst2|DATA_SRAM[3]~12_combout\ & ((\inst|ECHO1\(3) & (\inst|SAMPLE_OUT[2]~5\ & VCC)) # (!\inst|ECHO1\(3) & (!\inst|SAMPLE_OUT[2]~5\)))) # (!\inst2|DATA_SRAM[3]~12_combout\ & ((\inst|ECHO1\(3) & (!\inst|SAMPLE_OUT[2]~5\)) 
-- # (!\inst|ECHO1\(3) & ((\inst|SAMPLE_OUT[2]~5\) # (GND)))))
-- \inst|SAMPLE_OUT[3]~7\ = CARRY((\inst2|DATA_SRAM[3]~12_combout\ & (!\inst|ECHO1\(3) & !\inst|SAMPLE_OUT[2]~5\)) # (!\inst2|DATA_SRAM[3]~12_combout\ & ((!\inst|SAMPLE_OUT[2]~5\) # (!\inst|ECHO1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DATA_SRAM[3]~12_combout\,
	datab => \inst|ECHO1\(3),
	datad => VCC,
	cin => \inst|SAMPLE_OUT[2]~5\,
	combout => \inst|SAMPLE_OUT[3]~6_combout\,
	cout => \inst|SAMPLE_OUT[3]~7\);

-- Location: LCCOMB_X8_Y9_N8
\inst|SAMPLE_OUT[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[4]~8_combout\ = ((\inst|ECHO1\(4) $ (\inst2|DATA_SRAM[4]~11_combout\ $ (!\inst|SAMPLE_OUT[3]~7\)))) # (GND)
-- \inst|SAMPLE_OUT[4]~9\ = CARRY((\inst|ECHO1\(4) & ((\inst2|DATA_SRAM[4]~11_combout\) # (!\inst|SAMPLE_OUT[3]~7\))) # (!\inst|ECHO1\(4) & (\inst2|DATA_SRAM[4]~11_combout\ & !\inst|SAMPLE_OUT[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ECHO1\(4),
	datab => \inst2|DATA_SRAM[4]~11_combout\,
	datad => VCC,
	cin => \inst|SAMPLE_OUT[3]~7\,
	combout => \inst|SAMPLE_OUT[4]~8_combout\,
	cout => \inst|SAMPLE_OUT[4]~9\);

-- Location: LCCOMB_X8_Y9_N10
\inst|SAMPLE_OUT[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[5]~10_combout\ = (\inst2|DATA_SRAM[5]~10_combout\ & ((\inst|ECHO1\(5) & (\inst|SAMPLE_OUT[4]~9\ & VCC)) # (!\inst|ECHO1\(5) & (!\inst|SAMPLE_OUT[4]~9\)))) # (!\inst2|DATA_SRAM[5]~10_combout\ & ((\inst|ECHO1\(5) & 
-- (!\inst|SAMPLE_OUT[4]~9\)) # (!\inst|ECHO1\(5) & ((\inst|SAMPLE_OUT[4]~9\) # (GND)))))
-- \inst|SAMPLE_OUT[5]~11\ = CARRY((\inst2|DATA_SRAM[5]~10_combout\ & (!\inst|ECHO1\(5) & !\inst|SAMPLE_OUT[4]~9\)) # (!\inst2|DATA_SRAM[5]~10_combout\ & ((!\inst|SAMPLE_OUT[4]~9\) # (!\inst|ECHO1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DATA_SRAM[5]~10_combout\,
	datab => \inst|ECHO1\(5),
	datad => VCC,
	cin => \inst|SAMPLE_OUT[4]~9\,
	combout => \inst|SAMPLE_OUT[5]~10_combout\,
	cout => \inst|SAMPLE_OUT[5]~11\);

-- Location: LCCOMB_X8_Y9_N12
\inst|SAMPLE_OUT[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[6]~12_combout\ = ((\inst2|DATA_SRAM[6]~9_combout\ $ (\inst|ECHO1\(6) $ (!\inst|SAMPLE_OUT[5]~11\)))) # (GND)
-- \inst|SAMPLE_OUT[6]~13\ = CARRY((\inst2|DATA_SRAM[6]~9_combout\ & ((\inst|ECHO1\(6)) # (!\inst|SAMPLE_OUT[5]~11\))) # (!\inst2|DATA_SRAM[6]~9_combout\ & (\inst|ECHO1\(6) & !\inst|SAMPLE_OUT[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DATA_SRAM[6]~9_combout\,
	datab => \inst|ECHO1\(6),
	datad => VCC,
	cin => \inst|SAMPLE_OUT[5]~11\,
	combout => \inst|SAMPLE_OUT[6]~12_combout\,
	cout => \inst|SAMPLE_OUT[6]~13\);

-- Location: LCCOMB_X8_Y9_N14
\inst|SAMPLE_OUT[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[7]~14_combout\ = (\inst|ECHO1\(7) & ((\inst2|DATA_SRAM[7]~8_combout\ & (\inst|SAMPLE_OUT[6]~13\ & VCC)) # (!\inst2|DATA_SRAM[7]~8_combout\ & (!\inst|SAMPLE_OUT[6]~13\)))) # (!\inst|ECHO1\(7) & ((\inst2|DATA_SRAM[7]~8_combout\ & 
-- (!\inst|SAMPLE_OUT[6]~13\)) # (!\inst2|DATA_SRAM[7]~8_combout\ & ((\inst|SAMPLE_OUT[6]~13\) # (GND)))))
-- \inst|SAMPLE_OUT[7]~15\ = CARRY((\inst|ECHO1\(7) & (!\inst2|DATA_SRAM[7]~8_combout\ & !\inst|SAMPLE_OUT[6]~13\)) # (!\inst|ECHO1\(7) & ((!\inst|SAMPLE_OUT[6]~13\) # (!\inst2|DATA_SRAM[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ECHO1\(7),
	datab => \inst2|DATA_SRAM[7]~8_combout\,
	datad => VCC,
	cin => \inst|SAMPLE_OUT[6]~13\,
	combout => \inst|SAMPLE_OUT[7]~14_combout\,
	cout => \inst|SAMPLE_OUT[7]~15\);

-- Location: LCCOMB_X8_Y9_N16
\inst|SAMPLE_OUT[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[8]~16_combout\ = ((\inst2|DATA_SRAM[8]~7_combout\ $ (\inst|ECHO1\(8) $ (!\inst|SAMPLE_OUT[7]~15\)))) # (GND)
-- \inst|SAMPLE_OUT[8]~17\ = CARRY((\inst2|DATA_SRAM[8]~7_combout\ & ((\inst|ECHO1\(8)) # (!\inst|SAMPLE_OUT[7]~15\))) # (!\inst2|DATA_SRAM[8]~7_combout\ & (\inst|ECHO1\(8) & !\inst|SAMPLE_OUT[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DATA_SRAM[8]~7_combout\,
	datab => \inst|ECHO1\(8),
	datad => VCC,
	cin => \inst|SAMPLE_OUT[7]~15\,
	combout => \inst|SAMPLE_OUT[8]~16_combout\,
	cout => \inst|SAMPLE_OUT[8]~17\);

-- Location: LCCOMB_X8_Y9_N18
\inst|SAMPLE_OUT[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[9]~18_combout\ = (\inst2|DATA_SRAM[9]~6_combout\ & ((\inst|ECHO1\(9) & (\inst|SAMPLE_OUT[8]~17\ & VCC)) # (!\inst|ECHO1\(9) & (!\inst|SAMPLE_OUT[8]~17\)))) # (!\inst2|DATA_SRAM[9]~6_combout\ & ((\inst|ECHO1\(9) & 
-- (!\inst|SAMPLE_OUT[8]~17\)) # (!\inst|ECHO1\(9) & ((\inst|SAMPLE_OUT[8]~17\) # (GND)))))
-- \inst|SAMPLE_OUT[9]~19\ = CARRY((\inst2|DATA_SRAM[9]~6_combout\ & (!\inst|ECHO1\(9) & !\inst|SAMPLE_OUT[8]~17\)) # (!\inst2|DATA_SRAM[9]~6_combout\ & ((!\inst|SAMPLE_OUT[8]~17\) # (!\inst|ECHO1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DATA_SRAM[9]~6_combout\,
	datab => \inst|ECHO1\(9),
	datad => VCC,
	cin => \inst|SAMPLE_OUT[8]~17\,
	combout => \inst|SAMPLE_OUT[9]~18_combout\,
	cout => \inst|SAMPLE_OUT[9]~19\);

-- Location: LCCOMB_X8_Y9_N20
\inst|SAMPLE_OUT[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[10]~20_combout\ = ((\inst|ECHO1\(10) $ (\inst2|DATA_SRAM[10]~5_combout\ $ (!\inst|SAMPLE_OUT[9]~19\)))) # (GND)
-- \inst|SAMPLE_OUT[10]~21\ = CARRY((\inst|ECHO1\(10) & ((\inst2|DATA_SRAM[10]~5_combout\) # (!\inst|SAMPLE_OUT[9]~19\))) # (!\inst|ECHO1\(10) & (\inst2|DATA_SRAM[10]~5_combout\ & !\inst|SAMPLE_OUT[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ECHO1\(10),
	datab => \inst2|DATA_SRAM[10]~5_combout\,
	datad => VCC,
	cin => \inst|SAMPLE_OUT[9]~19\,
	combout => \inst|SAMPLE_OUT[10]~20_combout\,
	cout => \inst|SAMPLE_OUT[10]~21\);

-- Location: LCCOMB_X8_Y9_N22
\inst|SAMPLE_OUT[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[11]~22_combout\ = (\inst|ECHO1\(11) & ((\inst2|DATA_SRAM[11]~4_combout\ & (\inst|SAMPLE_OUT[10]~21\ & VCC)) # (!\inst2|DATA_SRAM[11]~4_combout\ & (!\inst|SAMPLE_OUT[10]~21\)))) # (!\inst|ECHO1\(11) & ((\inst2|DATA_SRAM[11]~4_combout\ & 
-- (!\inst|SAMPLE_OUT[10]~21\)) # (!\inst2|DATA_SRAM[11]~4_combout\ & ((\inst|SAMPLE_OUT[10]~21\) # (GND)))))
-- \inst|SAMPLE_OUT[11]~23\ = CARRY((\inst|ECHO1\(11) & (!\inst2|DATA_SRAM[11]~4_combout\ & !\inst|SAMPLE_OUT[10]~21\)) # (!\inst|ECHO1\(11) & ((!\inst|SAMPLE_OUT[10]~21\) # (!\inst2|DATA_SRAM[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ECHO1\(11),
	datab => \inst2|DATA_SRAM[11]~4_combout\,
	datad => VCC,
	cin => \inst|SAMPLE_OUT[10]~21\,
	combout => \inst|SAMPLE_OUT[11]~22_combout\,
	cout => \inst|SAMPLE_OUT[11]~23\);

-- Location: LCCOMB_X8_Y9_N24
\inst|SAMPLE_OUT[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[12]~24_combout\ = ((\inst2|DATA_SRAM[12]~3_combout\ $ (\inst|ECHO1\(12) $ (!\inst|SAMPLE_OUT[11]~23\)))) # (GND)
-- \inst|SAMPLE_OUT[12]~25\ = CARRY((\inst2|DATA_SRAM[12]~3_combout\ & ((\inst|ECHO1\(12)) # (!\inst|SAMPLE_OUT[11]~23\))) # (!\inst2|DATA_SRAM[12]~3_combout\ & (\inst|ECHO1\(12) & !\inst|SAMPLE_OUT[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DATA_SRAM[12]~3_combout\,
	datab => \inst|ECHO1\(12),
	datad => VCC,
	cin => \inst|SAMPLE_OUT[11]~23\,
	combout => \inst|SAMPLE_OUT[12]~24_combout\,
	cout => \inst|SAMPLE_OUT[12]~25\);

-- Location: LCCOMB_X8_Y9_N26
\inst|SAMPLE_OUT[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[13]~26_combout\ = (\inst2|DATA_SRAM[13]~2_combout\ & ((\inst|ECHO1\(13) & (\inst|SAMPLE_OUT[12]~25\ & VCC)) # (!\inst|ECHO1\(13) & (!\inst|SAMPLE_OUT[12]~25\)))) # (!\inst2|DATA_SRAM[13]~2_combout\ & ((\inst|ECHO1\(13) & 
-- (!\inst|SAMPLE_OUT[12]~25\)) # (!\inst|ECHO1\(13) & ((\inst|SAMPLE_OUT[12]~25\) # (GND)))))
-- \inst|SAMPLE_OUT[13]~27\ = CARRY((\inst2|DATA_SRAM[13]~2_combout\ & (!\inst|ECHO1\(13) & !\inst|SAMPLE_OUT[12]~25\)) # (!\inst2|DATA_SRAM[13]~2_combout\ & ((!\inst|SAMPLE_OUT[12]~25\) # (!\inst|ECHO1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DATA_SRAM[13]~2_combout\,
	datab => \inst|ECHO1\(13),
	datad => VCC,
	cin => \inst|SAMPLE_OUT[12]~25\,
	combout => \inst|SAMPLE_OUT[13]~26_combout\,
	cout => \inst|SAMPLE_OUT[13]~27\);

-- Location: LCCOMB_X10_Y9_N26
\inst|RW~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RW~0_combout\ = ((!\inst_SND|b2v_inst_ctrl|cntr\(3) & (!\inst_SND|b2v_inst_ctrl|cntr\(4) & !\inst_SND|b2v_inst_ctrl|cntr\(5)))) # (!\inst_SND|b2v_inst_ctrl|cntr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(6),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(3),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(4),
	datad => \inst_SND|b2v_inst_ctrl|cntr\(5),
	combout => \inst|RW~0_combout\);

-- Location: FF_X9_Y9_N25
\inst_SND|b2v_inst_right|TXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~2_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(14));

-- Location: FF_X8_Y8_N9
\inst|ECHO1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ECHO1[15]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(15));

-- Location: FF_X8_Y8_N11
\inst|ECHO1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ECHO1[14]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(14));

-- Location: FF_X8_Y8_N13
\inst|ECHO1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ECHO1[11]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(11));

-- Location: FF_X8_Y8_N15
\inst|ECHO1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ECHO1[10]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(10));

-- Location: FF_X8_Y8_N21
\inst|ECHO1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ECHO1[7]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(7));

-- Location: FF_X8_Y9_N31
\inst|ECHO1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|DATA_ECHO_OUT\(4),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(4));

-- Location: FF_X8_Y9_N11
\inst|ECHO1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|DATA_ECHO_OUT\(2),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(2));

-- Location: FF_X8_Y9_N25
\inst|ECHO1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|DATA_ECHO_OUT\(1),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(1));

-- Location: FF_X8_Y9_N17
\inst|ECHO1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|DATA_ECHO_OUT\(0),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(0));

-- Location: FF_X9_Y9_N19
\inst_SND|b2v_inst_right|TXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~3_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(13));

-- Location: LCCOMB_X9_Y9_N24
\inst_SND|b2v_inst_right|TXReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~2_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(13))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|tx~0_combout\,
	datab => \inst_SND|b2v_inst_right|TXReg\(13),
	datad => \inst|SAMPLE_OUT[14]~28_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~2_combout\);

-- Location: FF_X7_Y8_N13
\inst2|DATA_ECHO_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[15]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(15));

-- Location: FF_X7_Y8_N15
\inst2|DATA_ECHO_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[14]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(14));

-- Location: FF_X4_Y9_N27
\inst2|DATA_ECHO_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[11]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(11));

-- Location: FF_X4_Y9_N29
\inst2|DATA_ECHO_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[10]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(10));

-- Location: FF_X9_Y8_N5
\inst2|DATA_ECHO_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[7]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(7));

-- Location: FF_X4_Y9_N15
\inst2|DATA_ECHO_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[4]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(4));

-- Location: FF_X8_Y8_N19
\inst2|DATA_ECHO_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[2]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(2));

-- Location: FF_X4_Y9_N21
\inst2|DATA_ECHO_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[1]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(1));

-- Location: FF_X4_Y9_N3
\inst2|DATA_ECHO_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[0]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(0));

-- Location: FF_X7_Y9_N31
\inst_SND|b2v_inst_left|TXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~3_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(13));

-- Location: FF_X9_Y9_N1
\inst_SND|b2v_inst_right|TXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~4_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(12));

-- Location: LCCOMB_X9_Y9_N18
\inst_SND|b2v_inst_right|TXReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~3_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(12))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_right|TXReg\(12),
	datac => \inst|SAMPLE_OUT[13]~26_combout\,
	datad => \inst_SND|b2v_inst_right|tx~0_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~3_combout\);

-- Location: FF_X7_Y9_N1
\inst_SND|b2v_inst_left|TXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~4_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(12));

-- Location: LCCOMB_X7_Y9_N30
\inst_SND|b2v_inst_left|TXReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~3_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(12))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_left|TXReg\(12),
	datac => \inst_SND|b2v_inst_left|tx~1_combout\,
	datad => \inst|SAMPLE_OUT[13]~26_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~3_combout\);

-- Location: FF_X9_Y9_N31
\inst_SND|b2v_inst_right|TXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~5_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(11));

-- Location: LCCOMB_X9_Y9_N0
\inst_SND|b2v_inst_right|TXReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~4_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(11))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|tx~0_combout\,
	datac => \inst_SND|b2v_inst_right|TXReg\(11),
	datad => \inst|SAMPLE_OUT[12]~24_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~4_combout\);

-- Location: FF_X7_Y9_N3
\inst_SND|b2v_inst_left|TXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~5_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(11));

-- Location: LCCOMB_X7_Y9_N0
\inst_SND|b2v_inst_left|TXReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~4_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(11))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_left|TXReg\(11),
	datac => \inst_SND|b2v_inst_left|tx~1_combout\,
	datad => \inst|SAMPLE_OUT[12]~24_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~4_combout\);

-- Location: FF_X9_Y9_N17
\inst_SND|b2v_inst_right|TXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~6_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(10));

-- Location: LCCOMB_X9_Y9_N30
\inst_SND|b2v_inst_right|TXReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~5_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(10))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|tx~0_combout\,
	datab => \inst_SND|b2v_inst_right|TXReg\(10),
	datad => \inst|SAMPLE_OUT[11]~22_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~5_combout\);

-- Location: FF_X7_Y9_N17
\inst_SND|b2v_inst_left|TXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~6_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(10));

-- Location: LCCOMB_X7_Y9_N2
\inst_SND|b2v_inst_left|TXReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~5_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(10))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_left|TXReg\(10),
	datac => \inst_SND|b2v_inst_left|tx~1_combout\,
	datad => \inst|SAMPLE_OUT[11]~22_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~5_combout\);

-- Location: FF_X9_Y9_N23
\inst_SND|b2v_inst_right|TXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~7_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(9));

-- Location: LCCOMB_X9_Y9_N16
\inst_SND|b2v_inst_right|TXReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~6_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(9))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|tx~0_combout\,
	datac => \inst_SND|b2v_inst_right|TXReg\(9),
	datad => \inst|SAMPLE_OUT[10]~20_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~6_combout\);

-- Location: FF_X7_Y9_N19
\inst_SND|b2v_inst_left|TXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~7_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(9));

-- Location: LCCOMB_X7_Y9_N16
\inst_SND|b2v_inst_left|TXReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~6_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(9))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|tx~1_combout\,
	datab => \inst_SND|b2v_inst_left|TXReg\(9),
	datac => \inst|SAMPLE_OUT[10]~20_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~6_combout\);

-- Location: FF_X9_Y9_N29
\inst_SND|b2v_inst_right|TXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~8_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(8));

-- Location: LCCOMB_X9_Y9_N22
\inst_SND|b2v_inst_right|TXReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~7_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(8))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|tx~0_combout\,
	datab => \inst_SND|b2v_inst_right|TXReg\(8),
	datad => \inst|SAMPLE_OUT[9]~18_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~7_combout\);

-- Location: FF_X7_Y9_N29
\inst_SND|b2v_inst_left|TXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~8_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(8));

-- Location: LCCOMB_X7_Y9_N18
\inst_SND|b2v_inst_left|TXReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~7_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(8))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_left|TXReg\(8),
	datac => \inst_SND|b2v_inst_left|tx~1_combout\,
	datad => \inst|SAMPLE_OUT[9]~18_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~7_combout\);

-- Location: FF_X9_Y9_N7
\inst_SND|b2v_inst_right|TXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~9_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(7));

-- Location: LCCOMB_X9_Y9_N28
\inst_SND|b2v_inst_right|TXReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~8_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(7))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|TXReg\(7),
	datac => \inst_SND|b2v_inst_right|tx~0_combout\,
	datad => \inst|SAMPLE_OUT[8]~16_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~8_combout\);

-- Location: FF_X7_Y9_N15
\inst_SND|b2v_inst_left|TXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~9_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(7));

-- Location: LCCOMB_X7_Y9_N28
\inst_SND|b2v_inst_left|TXReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~8_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(7))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_left|TXReg\(7),
	datac => \inst_SND|b2v_inst_left|tx~1_combout\,
	datad => \inst|SAMPLE_OUT[8]~16_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~8_combout\);

-- Location: FF_X9_Y9_N21
\inst_SND|b2v_inst_right|TXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~10_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(6));

-- Location: LCCOMB_X9_Y9_N6
\inst_SND|b2v_inst_right|TXReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~9_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(6))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|tx~0_combout\,
	datab => \inst_SND|b2v_inst_right|TXReg\(6),
	datad => \inst|SAMPLE_OUT[7]~14_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~9_combout\);

-- Location: FF_X7_Y9_N13
\inst_SND|b2v_inst_left|TXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~10_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(6));

-- Location: LCCOMB_X7_Y9_N14
\inst_SND|b2v_inst_left|TXReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~9_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst_SND|b2v_inst_left|TXReg\(6)))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst|SAMPLE_OUT[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|tx~1_combout\,
	datac => \inst|SAMPLE_OUT[7]~14_combout\,
	datad => \inst_SND|b2v_inst_left|TXReg\(6),
	combout => \inst_SND|b2v_inst_left|TXReg~9_combout\);

-- Location: FF_X9_Y9_N3
\inst_SND|b2v_inst_right|TXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~11_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(5));

-- Location: LCCOMB_X9_Y9_N20
\inst_SND|b2v_inst_right|TXReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~10_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(5))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|tx~0_combout\,
	datab => \inst_SND|b2v_inst_right|TXReg\(5),
	datad => \inst|SAMPLE_OUT[6]~12_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~10_combout\);

-- Location: FF_X7_Y9_N7
\inst_SND|b2v_inst_left|TXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~11_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(5));

-- Location: LCCOMB_X7_Y9_N12
\inst_SND|b2v_inst_left|TXReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~10_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst_SND|b2v_inst_left|TXReg\(5)))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst|SAMPLE_OUT[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|tx~1_combout\,
	datac => \inst|SAMPLE_OUT[6]~12_combout\,
	datad => \inst_SND|b2v_inst_left|TXReg\(5),
	combout => \inst_SND|b2v_inst_left|TXReg~10_combout\);

-- Location: FF_X9_Y9_N9
\inst_SND|b2v_inst_right|TXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~12_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(4));

-- Location: LCCOMB_X9_Y9_N2
\inst_SND|b2v_inst_right|TXReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~11_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(4))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|tx~0_combout\,
	datac => \inst_SND|b2v_inst_right|TXReg\(4),
	datad => \inst|SAMPLE_OUT[5]~10_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~11_combout\);

-- Location: FF_X7_Y9_N25
\inst_SND|b2v_inst_left|TXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~12_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(4));

-- Location: LCCOMB_X7_Y9_N6
\inst_SND|b2v_inst_left|TXReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~11_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(4))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|tx~1_combout\,
	datab => \inst_SND|b2v_inst_left|TXReg\(4),
	datac => \inst|SAMPLE_OUT[5]~10_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~11_combout\);

-- Location: FF_X9_Y9_N15
\inst_SND|b2v_inst_right|TXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~13_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(3));

-- Location: LCCOMB_X9_Y9_N8
\inst_SND|b2v_inst_right|TXReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~12_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(3))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|tx~0_combout\,
	datac => \inst_SND|b2v_inst_right|TXReg\(3),
	datad => \inst|SAMPLE_OUT[4]~8_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~12_combout\);

-- Location: FF_X7_Y9_N11
\inst_SND|b2v_inst_left|TXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~13_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(3));

-- Location: LCCOMB_X7_Y9_N24
\inst_SND|b2v_inst_left|TXReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~12_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst_SND|b2v_inst_left|TXReg\(3)))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst|SAMPLE_OUT[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|tx~1_combout\,
	datac => \inst|SAMPLE_OUT[4]~8_combout\,
	datad => \inst_SND|b2v_inst_left|TXReg\(3),
	combout => \inst_SND|b2v_inst_left|TXReg~12_combout\);

-- Location: FF_X9_Y9_N13
\inst_SND|b2v_inst_right|TXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~14_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(2));

-- Location: LCCOMB_X9_Y9_N14
\inst_SND|b2v_inst_right|TXReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~13_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(2))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|TXReg\(2),
	datac => \inst|SAMPLE_OUT[3]~6_combout\,
	datad => \inst_SND|b2v_inst_right|tx~0_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~13_combout\);

-- Location: FF_X7_Y9_N9
\inst_SND|b2v_inst_left|TXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~14_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(2));

-- Location: LCCOMB_X7_Y9_N10
\inst_SND|b2v_inst_left|TXReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~13_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(2))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_left|TXReg\(2),
	datac => \inst_SND|b2v_inst_left|tx~1_combout\,
	datad => \inst|SAMPLE_OUT[3]~6_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~13_combout\);

-- Location: FF_X9_Y9_N11
\inst_SND|b2v_inst_right|TXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~15_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(1));

-- Location: LCCOMB_X9_Y9_N12
\inst_SND|b2v_inst_right|TXReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~14_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(1))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|TXReg\(1),
	datac => \inst|SAMPLE_OUT[2]~4_combout\,
	datad => \inst_SND|b2v_inst_right|tx~0_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~14_combout\);

-- Location: FF_X7_Y9_N23
\inst_SND|b2v_inst_left|TXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~15_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(1));

-- Location: LCCOMB_X7_Y9_N8
\inst_SND|b2v_inst_left|TXReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~14_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(1))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|TXReg\(1),
	datac => \inst_SND|b2v_inst_left|tx~1_combout\,
	datad => \inst|SAMPLE_OUT[2]~4_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~14_combout\);

-- Location: FF_X9_Y9_N5
\inst_SND|b2v_inst_right|TXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~16_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(0));

-- Location: LCCOMB_X9_Y9_N10
\inst_SND|b2v_inst_right|TXReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~15_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(0))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|tx~0_combout\,
	datac => \inst_SND|b2v_inst_right|TXReg\(0),
	datad => \inst|SAMPLE_OUT[1]~2_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~15_combout\);

-- Location: FF_X9_Y9_N27
\inst_SND|b2v_inst_left|TXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~16_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(0));

-- Location: LCCOMB_X7_Y9_N22
\inst_SND|b2v_inst_left|TXReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~15_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(0))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|TXReg\(0),
	datac => \inst_SND|b2v_inst_left|tx~1_combout\,
	datad => \inst|SAMPLE_OUT[1]~2_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~15_combout\);

-- Location: LCCOMB_X9_Y9_N4
\inst_SND|b2v_inst_right|TXReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~16_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (((\inst_SND|b2v_inst_right|TXReg\(0) & !\inst_SND|b2v_inst_right|tx~0_combout\)))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst|SAMPLE_OUT[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SAMPLE_OUT[0]~0_combout\,
	datab => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datac => \inst_SND|b2v_inst_right|TXReg\(0),
	datad => \inst_SND|b2v_inst_right|tx~0_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~16_combout\);

-- Location: LCCOMB_X9_Y9_N26
\inst_SND|b2v_inst_left|TXReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~16_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst|SAMPLE_OUT[0]~0_combout\)) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & (((\inst_SND|b2v_inst_left|TXReg\(0) & !\inst_SND|b2v_inst_left|tx~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SAMPLE_OUT[0]~0_combout\,
	datab => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datac => \inst_SND|b2v_inst_left|TXReg\(0),
	datad => \inst_SND|b2v_inst_left|tx~1_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~16_combout\);

-- Location: LCCOMB_X7_Y8_N12
\inst2|DATA_ECHO_OUT[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[15]~feeder_combout\ = \inst2|DATA_SRAM[15]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[15]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[15]~feeder_combout\);

-- Location: LCCOMB_X7_Y8_N14
\inst2|DATA_ECHO_OUT[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[14]~feeder_combout\ = \inst2|DATA_SRAM[14]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[14]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[14]~feeder_combout\);

-- Location: LCCOMB_X4_Y9_N26
\inst2|DATA_ECHO_OUT[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[11]~feeder_combout\ = \inst2|DATA_SRAM[11]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DATA_SRAM[11]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[11]~feeder_combout\);

-- Location: LCCOMB_X4_Y9_N28
\inst2|DATA_ECHO_OUT[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[10]~feeder_combout\ = \inst2|DATA_SRAM[10]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DATA_SRAM[10]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[10]~feeder_combout\);

-- Location: LCCOMB_X9_Y8_N4
\inst2|DATA_ECHO_OUT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[7]~feeder_combout\ = \inst2|DATA_SRAM[7]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[7]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[7]~feeder_combout\);

-- Location: LCCOMB_X4_Y9_N14
\inst2|DATA_ECHO_OUT[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[4]~feeder_combout\ = \inst2|DATA_SRAM[4]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[4]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[4]~feeder_combout\);

-- Location: LCCOMB_X8_Y8_N18
\inst2|DATA_ECHO_OUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[2]~feeder_combout\ = \inst2|DATA_SRAM[2]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[2]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[2]~feeder_combout\);

-- Location: LCCOMB_X4_Y9_N20
\inst2|DATA_ECHO_OUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[1]~feeder_combout\ = \inst2|DATA_SRAM[1]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[1]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[1]~feeder_combout\);

-- Location: LCCOMB_X4_Y9_N2
\inst2|DATA_ECHO_OUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[0]~feeder_combout\ = \inst2|DATA_SRAM[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DATA_SRAM[0]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[0]~feeder_combout\);

-- Location: LCCOMB_X8_Y8_N8
\inst|ECHO1[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ECHO1[15]~feeder_combout\ = \inst2|DATA_ECHO_OUT\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_ECHO_OUT\(15),
	combout => \inst|ECHO1[15]~feeder_combout\);

-- Location: LCCOMB_X8_Y8_N10
\inst|ECHO1[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ECHO1[14]~feeder_combout\ = \inst2|DATA_ECHO_OUT\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_ECHO_OUT\(14),
	combout => \inst|ECHO1[14]~feeder_combout\);

-- Location: LCCOMB_X8_Y8_N12
\inst|ECHO1[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ECHO1[11]~feeder_combout\ = \inst2|DATA_ECHO_OUT\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_ECHO_OUT\(11),
	combout => \inst|ECHO1[11]~feeder_combout\);

-- Location: LCCOMB_X8_Y8_N14
\inst|ECHO1[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ECHO1[10]~feeder_combout\ = \inst2|DATA_ECHO_OUT\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DATA_ECHO_OUT\(10),
	combout => \inst|ECHO1[10]~feeder_combout\);

-- Location: LCCOMB_X8_Y8_N20
\inst|ECHO1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ECHO1[7]~feeder_combout\ = \inst2|DATA_ECHO_OUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_ECHO_OUT\(7),
	combout => \inst|ECHO1[7]~feeder_combout\);

-- Location: IOOBUF_X3_Y0_N16
\DATA_SRAM[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[15]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[15]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\DATA_SRAM[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[14]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\DATA_SRAM[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[13]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[13]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\DATA_SRAM[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[12]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[12]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\DATA_SRAM[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[11]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[11]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\DATA_SRAM[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[10]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\DATA_SRAM[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[9]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[9]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\DATA_SRAM[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[8]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\DATA_SRAM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[7]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\DATA_SRAM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[6]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\DATA_SRAM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[5]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\DATA_SRAM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[4]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\DATA_SRAM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\DATA_SRAM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\DATA_SRAM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_SRAM[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\DATA_SRAM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATA_SRAM[0]~reg0_q\,
	oe => VCC,
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

-- Location: IOOBUF_X0_Y61_N23
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

-- Location: IOOBUF_X0_Y60_N16
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

-- Location: IOOBUF_X0_Y69_N9
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

-- Location: IOOBUF_X0_Y66_N16
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

-- Location: IOOBUF_X0_Y68_N9
\dacdat~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_SND|dacdat~0_combout\,
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

-- Location: LCCOMB_X5_Y9_N4
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

-- Location: FF_X5_Y9_N5
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

-- Location: LCCOMB_X5_Y9_N6
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

-- Location: LCCOMB_X5_Y9_N8
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

-- Location: FF_X5_Y9_N9
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

-- Location: LCCOMB_X5_Y9_N14
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

-- Location: FF_X5_Y9_N15
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

-- Location: LCCOMB_X5_Y9_N16
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

-- Location: FF_X5_Y9_N17
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

-- Location: LCCOMB_X5_Y9_N18
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

-- Location: FF_X5_Y9_N19
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

-- Location: LCCOMB_X10_Y9_N0
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

-- Location: FF_X10_Y9_N1
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

-- Location: FF_X5_Y9_N7
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

-- Location: LCCOMB_X10_Y9_N10
\inst_SND|b2v_inst_left|tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|tx~0_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(0) & (\inst_SND|b2v_inst_ctrl|cntr\(1) & \inst_SND|b2v_inst_ctrl|cntr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_ctrl|cntr\(0),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(1),
	datad => \inst_SND|b2v_inst_ctrl|cntr\(2),
	combout => \inst_SND|b2v_inst_left|tx~0_combout\);

-- Location: LCCOMB_X10_Y9_N6
\inst_SND|b2v_inst_left|rx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|rx~0_combout\ = (!\inst_SND|b2v_inst_ctrl|cntr\(9) & (!\inst_SND|b2v_inst_ctrl|cntr\(3) & (!\inst_SND|b2v_inst_ctrl|cntr\(8) & \inst_SND|b2v_inst_left|tx~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(3),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(8),
	datad => \inst_SND|b2v_inst_left|tx~0_combout\,
	combout => \inst_SND|b2v_inst_left|rx~0_combout\);

-- Location: FF_X6_Y9_N13
\inst_SND|b2v_inst_left|RXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adcdat~input_o\,
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(0));

-- Location: LCCOMB_X3_Y9_N6
\inst_SND|b2v_inst_left|RXReg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|RXReg[1]~feeder_combout\ = \inst_SND|b2v_inst_left|RXReg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_left|RXReg\(0),
	combout => \inst_SND|b2v_inst_left|RXReg[1]~feeder_combout\);

-- Location: FF_X3_Y9_N7
\inst_SND|b2v_inst_left|RXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|RXReg[1]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(1));

-- Location: LCCOMB_X6_Y9_N8
\inst_SND|b2v_inst_left|RXReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|RXReg[2]~feeder_combout\ = \inst_SND|b2v_inst_left|RXReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_left|RXReg\(1),
	combout => \inst_SND|b2v_inst_left|RXReg[2]~feeder_combout\);

-- Location: FF_X6_Y9_N9
\inst_SND|b2v_inst_left|RXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|RXReg[2]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(2));

-- Location: LCCOMB_X6_Y9_N30
\inst_SND|b2v_inst_left|RXReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|RXReg[3]~feeder_combout\ = \inst_SND|b2v_inst_left|RXReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_left|RXReg\(2),
	combout => \inst_SND|b2v_inst_left|RXReg[3]~feeder_combout\);

-- Location: FF_X6_Y9_N31
\inst_SND|b2v_inst_left|RXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|RXReg[3]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(3));

-- Location: FF_X6_Y9_N3
\inst_SND|b2v_inst_left|RXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_left|RXReg\(3),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(4));

-- Location: LCCOMB_X6_Y9_N4
\inst_SND|b2v_inst_left|RXReg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|RXReg[5]~feeder_combout\ = \inst_SND|b2v_inst_left|RXReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_left|RXReg\(4),
	combout => \inst_SND|b2v_inst_left|RXReg[5]~feeder_combout\);

-- Location: FF_X6_Y9_N5
\inst_SND|b2v_inst_left|RXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|RXReg[5]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(5));

-- Location: FF_X6_Y9_N21
\inst_SND|b2v_inst_left|RXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_left|RXReg\(5),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(6));

-- Location: FF_X6_Y9_N7
\inst_SND|b2v_inst_left|RXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_left|RXReg\(6),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(7));

-- Location: FF_X6_Y9_N23
\inst_SND|b2v_inst_left|RXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_left|RXReg\(7),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(8));

-- Location: LCCOMB_X3_Y9_N2
\inst_SND|b2v_inst_left|RXReg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|RXReg[9]~feeder_combout\ = \inst_SND|b2v_inst_left|RXReg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_left|RXReg\(8),
	combout => \inst_SND|b2v_inst_left|RXReg[9]~feeder_combout\);

-- Location: FF_X3_Y9_N3
\inst_SND|b2v_inst_left|RXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|RXReg[9]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(9));

-- Location: LCCOMB_X3_Y9_N18
\inst_SND|b2v_inst_left|RXReg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|RXReg[10]~feeder_combout\ = \inst_SND|b2v_inst_left|RXReg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_left|RXReg\(9),
	combout => \inst_SND|b2v_inst_left|RXReg[10]~feeder_combout\);

-- Location: FF_X3_Y9_N19
\inst_SND|b2v_inst_left|RXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|RXReg[10]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(10));

-- Location: LCCOMB_X3_Y9_N30
\inst_SND|b2v_inst_left|RXReg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|RXReg[11]~feeder_combout\ = \inst_SND|b2v_inst_left|RXReg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_left|RXReg\(10),
	combout => \inst_SND|b2v_inst_left|RXReg[11]~feeder_combout\);

-- Location: FF_X3_Y9_N31
\inst_SND|b2v_inst_left|RXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|RXReg[11]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(11));

-- Location: FF_X3_Y9_N11
\inst_SND|b2v_inst_left|RXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_left|RXReg\(11),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(12));

-- Location: LCCOMB_X3_Y9_N14
\inst_SND|b2v_inst_left|RXReg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|RXReg[13]~feeder_combout\ = \inst_SND|b2v_inst_left|RXReg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_left|RXReg\(12),
	combout => \inst_SND|b2v_inst_left|RXReg[13]~feeder_combout\);

-- Location: FF_X3_Y9_N15
\inst_SND|b2v_inst_left|RXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|RXReg[13]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(13));

-- Location: FF_X3_Y9_N27
\inst_SND|b2v_inst_left|RXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_left|RXReg\(13),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(14));

-- Location: FF_X3_Y9_N23
\inst_SND|b2v_inst_left|RXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_left|RXReg\(14),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_left|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|RXReg\(15));

-- Location: LCCOMB_X10_Y9_N12
\inst_SND|b2v_inst_right|rx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|rx~0_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (!\inst_SND|b2v_inst_ctrl|cntr\(3) & (!\inst_SND|b2v_inst_ctrl|cntr\(8) & \inst_SND|b2v_inst_left|tx~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(3),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(8),
	datad => \inst_SND|b2v_inst_left|tx~0_combout\,
	combout => \inst_SND|b2v_inst_right|rx~0_combout\);

-- Location: FF_X6_Y9_N11
\inst_SND|b2v_inst_right|RXReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adcdat~input_o\,
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(0));

-- Location: LCCOMB_X3_Y9_N24
\inst_SND|b2v_inst_right|RXReg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|RXReg[1]~feeder_combout\ = \inst_SND|b2v_inst_right|RXReg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_right|RXReg\(0),
	combout => \inst_SND|b2v_inst_right|RXReg[1]~feeder_combout\);

-- Location: FF_X3_Y9_N25
\inst_SND|b2v_inst_right|RXReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|RXReg[1]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(1));

-- Location: LCCOMB_X6_Y9_N28
\inst_SND|b2v_inst_right|RXReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|RXReg[2]~feeder_combout\ = \inst_SND|b2v_inst_right|RXReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_right|RXReg\(1),
	combout => \inst_SND|b2v_inst_right|RXReg[2]~feeder_combout\);

-- Location: FF_X6_Y9_N29
\inst_SND|b2v_inst_right|RXReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|RXReg[2]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(2));

-- Location: LCCOMB_X6_Y9_N26
\inst_SND|b2v_inst_right|RXReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|RXReg[3]~feeder_combout\ = \inst_SND|b2v_inst_right|RXReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_right|RXReg\(2),
	combout => \inst_SND|b2v_inst_right|RXReg[3]~feeder_combout\);

-- Location: FF_X6_Y9_N27
\inst_SND|b2v_inst_right|RXReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|RXReg[3]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(3));

-- Location: FF_X6_Y9_N25
\inst_SND|b2v_inst_right|RXReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_right|RXReg\(3),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(4));

-- Location: FF_X6_Y9_N19
\inst_SND|b2v_inst_right|RXReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_right|RXReg\(4),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(5));

-- Location: LCCOMB_X6_Y9_N16
\inst_SND|b2v_inst_right|RXReg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|RXReg[6]~feeder_combout\ = \inst_SND|b2v_inst_right|RXReg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_right|RXReg\(5),
	combout => \inst_SND|b2v_inst_right|RXReg[6]~feeder_combout\);

-- Location: FF_X6_Y9_N17
\inst_SND|b2v_inst_right|RXReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|RXReg[6]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(6));

-- Location: LCCOMB_X6_Y9_N14
\inst_SND|b2v_inst_right|RXReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|RXReg[7]~feeder_combout\ = \inst_SND|b2v_inst_right|RXReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_right|RXReg\(6),
	combout => \inst_SND|b2v_inst_right|RXReg[7]~feeder_combout\);

-- Location: FF_X6_Y9_N15
\inst_SND|b2v_inst_right|RXReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|RXReg[7]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(7));

-- Location: FF_X6_Y9_N1
\inst_SND|b2v_inst_right|RXReg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_right|RXReg\(7),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(8));

-- Location: LCCOMB_X3_Y9_N8
\inst_SND|b2v_inst_right|RXReg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|RXReg[9]~feeder_combout\ = \inst_SND|b2v_inst_right|RXReg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_right|RXReg\(8),
	combout => \inst_SND|b2v_inst_right|RXReg[9]~feeder_combout\);

-- Location: FF_X3_Y9_N9
\inst_SND|b2v_inst_right|RXReg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|RXReg[9]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(9));

-- Location: FF_X3_Y9_N13
\inst_SND|b2v_inst_right|RXReg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_right|RXReg\(9),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(10));

-- Location: LCCOMB_X3_Y9_N4
\inst_SND|b2v_inst_right|RXReg[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|RXReg[11]~feeder_combout\ = \inst_SND|b2v_inst_right|RXReg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_right|RXReg\(10),
	combout => \inst_SND|b2v_inst_right|RXReg[11]~feeder_combout\);

-- Location: FF_X3_Y9_N5
\inst_SND|b2v_inst_right|RXReg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|RXReg[11]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(11));

-- Location: FF_X3_Y9_N29
\inst_SND|b2v_inst_right|RXReg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst_SND|b2v_inst_right|RXReg\(11),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(12));

-- Location: LCCOMB_X3_Y9_N20
\inst_SND|b2v_inst_right|RXReg[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|RXReg[13]~feeder_combout\ = \inst_SND|b2v_inst_right|RXReg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_right|RXReg\(12),
	combout => \inst_SND|b2v_inst_right|RXReg[13]~feeder_combout\);

-- Location: FF_X3_Y9_N21
\inst_SND|b2v_inst_right|RXReg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|RXReg[13]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(13));

-- Location: LCCOMB_X3_Y9_N0
\inst_SND|b2v_inst_right|RXReg[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|RXReg[14]~feeder_combout\ = \inst_SND|b2v_inst_right|RXReg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_right|RXReg\(13),
	combout => \inst_SND|b2v_inst_right|RXReg[14]~feeder_combout\);

-- Location: FF_X3_Y9_N1
\inst_SND|b2v_inst_right|RXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|RXReg[14]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(14));

-- Location: LCCOMB_X3_Y9_N16
\inst_SND|b2v_inst_right|RXReg[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|RXReg[15]~feeder_combout\ = \inst_SND|b2v_inst_right|RXReg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_SND|b2v_inst_right|RXReg\(14),
	combout => \inst_SND|b2v_inst_right|RXReg[15]~feeder_combout\);

-- Location: FF_X3_Y9_N17
\inst_SND|b2v_inst_right|RXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|RXReg[15]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|RXReg\(15));

-- Location: LCCOMB_X4_Y9_N16
\inst2|DATA_SRAM[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[15]~0_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(15))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_left|RXReg\(15),
	datad => \inst_SND|b2v_inst_right|RXReg\(15),
	combout => \inst2|DATA_SRAM[15]~0_combout\);

-- Location: LCCOMB_X10_Y9_N28
\inst|RW~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RW~1_combout\ = (!\inst_SND|b2v_inst_ctrl|cntr\(8) & ((\inst|RW~0_combout\) # (!\inst_SND|b2v_inst_ctrl|cntr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RW~0_combout\,
	datac => \inst_SND|b2v_inst_ctrl|cntr\(8),
	datad => \inst_SND|b2v_inst_ctrl|cntr\(7),
	combout => \inst|RW~1_combout\);

-- Location: FF_X10_Y9_N29
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

-- Location: LCCOMB_X10_Y9_N8
\inst2|DATA_SRAM[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[13]~16_combout\ = (\inst|RW~q\) # (!\rstn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rstn~input_o\,
	datad => \inst|RW~q\,
	combout => \inst2|DATA_SRAM[13]~16_combout\);

-- Location: FF_X4_Y9_N17
\inst2|DATA_SRAM[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[15]~0_combout\,
	asdata => \inst2|DATA_SRAM[15]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[15]~reg0_q\);

-- Location: LCCOMB_X4_Y9_N30
\inst2|DATA_SRAM[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[14]~1_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(14))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_left|RXReg\(14),
	datad => \inst_SND|b2v_inst_right|RXReg\(14),
	combout => \inst2|DATA_SRAM[14]~1_combout\);

-- Location: FF_X4_Y9_N31
\inst2|DATA_SRAM[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[14]~1_combout\,
	asdata => \inst2|DATA_SRAM[14]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[14]~reg0_q\);

-- Location: LCCOMB_X4_Y9_N24
\inst2|DATA_SRAM[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[13]~2_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_left|RXReg\(13)))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_right|RXReg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_right|RXReg\(13),
	datad => \inst_SND|b2v_inst_left|RXReg\(13),
	combout => \inst2|DATA_SRAM[13]~2_combout\);

-- Location: FF_X4_Y9_N25
\inst2|DATA_SRAM[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[13]~2_combout\,
	asdata => \inst2|DATA_SRAM[13]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[13]~reg0_q\);

-- Location: LCCOMB_X4_Y9_N18
\inst2|DATA_SRAM[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[12]~3_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_left|RXReg\(12)))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_right|RXReg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_right|RXReg\(12),
	datad => \inst_SND|b2v_inst_left|RXReg\(12),
	combout => \inst2|DATA_SRAM[12]~3_combout\);

-- Location: FF_X4_Y9_N19
\inst2|DATA_SRAM[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[12]~3_combout\,
	asdata => \inst2|DATA_SRAM[12]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[12]~reg0_q\);

-- Location: LCCOMB_X4_Y9_N0
\inst2|DATA_SRAM[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[11]~4_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_left|RXReg\(11)))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_right|RXReg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_right|RXReg\(11),
	datad => \inst_SND|b2v_inst_left|RXReg\(11),
	combout => \inst2|DATA_SRAM[11]~4_combout\);

-- Location: FF_X4_Y9_N1
\inst2|DATA_SRAM[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[11]~4_combout\,
	asdata => \inst2|DATA_SRAM[11]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[11]~reg0_q\);

-- Location: LCCOMB_X4_Y9_N22
\inst2|DATA_SRAM[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[10]~5_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(10))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_left|RXReg\(10),
	datad => \inst_SND|b2v_inst_right|RXReg\(10),
	combout => \inst2|DATA_SRAM[10]~5_combout\);

-- Location: FF_X4_Y9_N23
\inst2|DATA_SRAM[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[10]~5_combout\,
	asdata => \inst2|DATA_SRAM[10]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[10]~reg0_q\);

-- Location: LCCOMB_X4_Y9_N8
\inst2|DATA_SRAM[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[9]~6_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(9))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_left|RXReg\(9),
	datad => \inst_SND|b2v_inst_right|RXReg\(9),
	combout => \inst2|DATA_SRAM[9]~6_combout\);

-- Location: FF_X4_Y9_N9
\inst2|DATA_SRAM[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[9]~6_combout\,
	asdata => \inst2|DATA_SRAM[9]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[9]~reg0_q\);

-- Location: LCCOMB_X5_Y9_N24
\inst2|DATA_SRAM[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[8]~7_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_left|RXReg\(8)))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_right|RXReg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_right|RXReg\(8),
	datad => \inst_SND|b2v_inst_left|RXReg\(8),
	combout => \inst2|DATA_SRAM[8]~7_combout\);

-- Location: FF_X5_Y9_N25
\inst2|DATA_SRAM[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[8]~7_combout\,
	asdata => \inst2|DATA_SRAM[8]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[8]~reg0_q\);

-- Location: LCCOMB_X5_Y9_N20
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

-- Location: FF_X5_Y9_N21
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

-- Location: LCCOMB_X5_Y9_N30
\inst2|DATA_SRAM[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[7]~8_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(7))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|RXReg\(7),
	datab => \inst_SND|b2v_inst_right|RXReg\(7),
	datad => \inst_SND|b2v_inst_ctrl|cntr\(9),
	combout => \inst2|DATA_SRAM[7]~8_combout\);

-- Location: FF_X5_Y9_N31
\inst2|DATA_SRAM[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[7]~8_combout\,
	asdata => \inst2|DATA_SRAM[7]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[7]~reg0_q\);

-- Location: LCCOMB_X5_Y9_N26
\inst2|DATA_SRAM[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[6]~9_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(6))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|RXReg\(6),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datad => \inst_SND|b2v_inst_right|RXReg\(6),
	combout => \inst2|DATA_SRAM[6]~9_combout\);

-- Location: FF_X5_Y9_N27
\inst2|DATA_SRAM[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[6]~9_combout\,
	asdata => \inst2|DATA_SRAM[6]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[6]~reg0_q\);

-- Location: LCCOMB_X5_Y9_N28
\inst2|DATA_SRAM[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[5]~10_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(5))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|RXReg\(5),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datad => \inst_SND|b2v_inst_right|RXReg\(5),
	combout => \inst2|DATA_SRAM[5]~10_combout\);

-- Location: FF_X5_Y9_N29
\inst2|DATA_SRAM[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[5]~10_combout\,
	asdata => \inst2|DATA_SRAM[5]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[5]~reg0_q\);

-- Location: LCCOMB_X5_Y9_N22
\inst2|DATA_SRAM[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[4]~11_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(4))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|RXReg\(4),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datad => \inst_SND|b2v_inst_right|RXReg\(4),
	combout => \inst2|DATA_SRAM[4]~11_combout\);

-- Location: FF_X5_Y9_N23
\inst2|DATA_SRAM[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[4]~11_combout\,
	asdata => \inst2|DATA_SRAM[4]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[4]~reg0_q\);

-- Location: LCCOMB_X5_Y9_N0
\inst2|DATA_SRAM[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[3]~12_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(3))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|RXReg\(3),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datad => \inst_SND|b2v_inst_right|RXReg\(3),
	combout => \inst2|DATA_SRAM[3]~12_combout\);

-- Location: FF_X5_Y9_N1
\inst2|DATA_SRAM[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[3]~12_combout\,
	asdata => \inst2|DATA_SRAM[3]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[3]~reg0_q\);

-- Location: LCCOMB_X5_Y9_N2
\inst2|DATA_SRAM[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[2]~13_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(2))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_left|RXReg\(2),
	datad => \inst_SND|b2v_inst_right|RXReg\(2),
	combout => \inst2|DATA_SRAM[2]~13_combout\);

-- Location: FF_X5_Y9_N3
\inst2|DATA_SRAM[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[2]~13_combout\,
	asdata => \inst2|DATA_SRAM[2]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[2]~reg0_q\);

-- Location: LCCOMB_X4_Y9_N6
\inst2|DATA_SRAM[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[1]~14_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|RXReg\(1))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|RXReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datab => \inst_SND|b2v_inst_left|RXReg\(1),
	datad => \inst_SND|b2v_inst_right|RXReg\(1),
	combout => \inst2|DATA_SRAM[1]~14_combout\);

-- Location: FF_X4_Y9_N7
\inst2|DATA_SRAM[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[1]~14_combout\,
	asdata => \inst2|DATA_SRAM[1]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[1]~reg0_q\);

-- Location: LCCOMB_X4_Y9_N4
\inst2|DATA_SRAM[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[0]~reg0feeder_combout\ = \inst2|DATA_SRAM[0]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DATA_SRAM[0]~15_combout\,
	combout => \inst2|DATA_SRAM[0]~reg0feeder_combout\);

-- Location: FF_X4_Y9_N5
\inst2|DATA_SRAM[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_SRAM[0]~reg0feeder_combout\,
	asdata => \inst2|DATA_SRAM[0]~reg0_q\,
	sload => \inst2|DATA_SRAM[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_SRAM[0]~reg0_q\);

-- Location: LCCOMB_X10_Y9_N24
\inst_SND|b2v_inst_left|tx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|tx~1_combout\ = (!\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_ctrl|cntr\(3) & \inst_SND|b2v_inst_left|tx~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(3),
	datad => \inst_SND|b2v_inst_left|tx~0_combout\,
	combout => \inst_SND|b2v_inst_left|tx~1_combout\);

-- Location: LCCOMB_X7_Y8_N24
\inst2|DATA_ECHO_OUT[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[13]~feeder_combout\ = \inst2|DATA_SRAM[13]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DATA_SRAM[13]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[13]~feeder_combout\);

-- Location: LCCOMB_X10_Y9_N22
\inst2|DATA_ECHO_OUT[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[15]~0_combout\ = (\rstn~input_o\ & \inst|RW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rstn~input_o\,
	datad => \inst|RW~q\,
	combout => \inst2|DATA_ECHO_OUT[15]~0_combout\);

-- Location: FF_X7_Y8_N25
\inst2|DATA_ECHO_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[13]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(13));

-- Location: LCCOMB_X8_Y8_N0
\inst|ECHO1[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ECHO1[13]~feeder_combout\ = \inst2|DATA_ECHO_OUT\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_ECHO_OUT\(13),
	combout => \inst|ECHO1[13]~feeder_combout\);

-- Location: LCCOMB_X10_Y9_N14
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ((!\inst_SND|b2v_inst_ctrl|cntr\(1) & (!\inst_SND|b2v_inst_ctrl|cntr\(3) & !\inst_SND|b2v_inst_ctrl|cntr\(2)))) # (!\inst_SND|b2v_inst_ctrl|cntr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(4),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(1),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(3),
	datad => \inst_SND|b2v_inst_ctrl|cntr\(2),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y9_N16
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst_SND|b2v_inst_ctrl|cntr\(7) & (!\inst_SND|b2v_inst_ctrl|cntr\(8) & !\inst_SND|b2v_inst_ctrl|cntr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SND|b2v_inst_ctrl|cntr\(7),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(8),
	datad => \inst_SND|b2v_inst_ctrl|cntr\(6),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y9_N20
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|LessThan0~0_combout\ & ((\inst|LessThan0~1_combout\) # (!\inst_SND|b2v_inst_ctrl|cntr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(5),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: FF_X8_Y8_N1
\inst|ECHO1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ECHO1[13]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(13));

-- Location: LCCOMB_X7_Y8_N10
\inst2|DATA_ECHO_OUT[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[12]~feeder_combout\ = \inst2|DATA_SRAM[12]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[12]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[12]~feeder_combout\);

-- Location: FF_X7_Y8_N11
\inst2|DATA_ECHO_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[12]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(12));

-- Location: LCCOMB_X8_Y8_N2
\inst|ECHO1[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ECHO1[12]~feeder_combout\ = \inst2|DATA_ECHO_OUT\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_ECHO_OUT\(12),
	combout => \inst|ECHO1[12]~feeder_combout\);

-- Location: FF_X8_Y8_N3
\inst|ECHO1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ECHO1[12]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(12));

-- Location: LCCOMB_X4_Y9_N10
\inst2|DATA_ECHO_OUT[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[9]~feeder_combout\ = \inst2|DATA_SRAM[9]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DATA_SRAM[9]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[9]~feeder_combout\);

-- Location: FF_X4_Y9_N11
\inst2|DATA_ECHO_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[9]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(9));

-- Location: LCCOMB_X8_Y8_N16
\inst|ECHO1[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ECHO1[9]~feeder_combout\ = \inst2|DATA_ECHO_OUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_ECHO_OUT\(9),
	combout => \inst|ECHO1[9]~feeder_combout\);

-- Location: FF_X8_Y8_N17
\inst|ECHO1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ECHO1[9]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(9));

-- Location: LCCOMB_X7_Y8_N20
\inst2|DATA_ECHO_OUT[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[8]~feeder_combout\ = \inst2|DATA_SRAM[8]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[8]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[8]~feeder_combout\);

-- Location: FF_X7_Y8_N21
\inst2|DATA_ECHO_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[8]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(8));

-- Location: LCCOMB_X8_Y8_N26
\inst|ECHO1[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ECHO1[8]~feeder_combout\ = \inst2|DATA_ECHO_OUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_ECHO_OUT\(8),
	combout => \inst|ECHO1[8]~feeder_combout\);

-- Location: FF_X8_Y8_N27
\inst|ECHO1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ECHO1[8]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(8));

-- Location: LCCOMB_X8_Y8_N22
\inst2|DATA_ECHO_OUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[6]~feeder_combout\ = \inst2|DATA_SRAM[6]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[6]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[6]~feeder_combout\);

-- Location: FF_X8_Y8_N23
\inst2|DATA_ECHO_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[6]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(6));

-- Location: FF_X8_Y8_N7
\inst|ECHO1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|DATA_ECHO_OUT\(6),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(6));

-- Location: LCCOMB_X4_Y9_N12
\inst2|DATA_ECHO_OUT[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[5]~feeder_combout\ = \inst2|DATA_SRAM[5]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[5]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[5]~feeder_combout\);

-- Location: FF_X4_Y9_N13
\inst2|DATA_ECHO_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[5]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(5));

-- Location: FF_X8_Y9_N29
\inst|ECHO1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|DATA_ECHO_OUT\(5),
	clrn => \rstn~input_o\,
	sload => VCC,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(5));

-- Location: LCCOMB_X8_Y8_N28
\inst2|DATA_ECHO_OUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_ECHO_OUT[3]~feeder_combout\ = \inst2|DATA_SRAM[3]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_SRAM[3]~reg0_q\,
	combout => \inst2|DATA_ECHO_OUT[3]~feeder_combout\);

-- Location: FF_X8_Y8_N29
\inst2|DATA_ECHO_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|DATA_ECHO_OUT[3]~feeder_combout\,
	ena => \inst2|DATA_ECHO_OUT[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DATA_ECHO_OUT\(3));

-- Location: LCCOMB_X8_Y8_N4
\inst|ECHO1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ECHO1[3]~feeder_combout\ = \inst2|DATA_ECHO_OUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DATA_ECHO_OUT\(3),
	combout => \inst|ECHO1[3]~feeder_combout\);

-- Location: FF_X8_Y8_N5
\inst|ECHO1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ECHO1[3]~feeder_combout\,
	clrn => \rstn~input_o\,
	ena => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ECHO1\(3));

-- Location: LCCOMB_X6_Y9_N22
\inst2|DATA_SRAM[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATA_SRAM[0]~15_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_left|RXReg\(0)))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_right|RXReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|RXReg\(0),
	datab => \inst_SND|b2v_inst_left|RXReg\(0),
	datad => \inst_SND|b2v_inst_ctrl|cntr\(9),
	combout => \inst2|DATA_SRAM[0]~15_combout\);

-- Location: LCCOMB_X8_Y9_N28
\inst|SAMPLE_OUT[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[14]~28_combout\ = ((\inst|ECHO1\(14) $ (\inst2|DATA_SRAM[14]~1_combout\ $ (!\inst|SAMPLE_OUT[13]~27\)))) # (GND)
-- \inst|SAMPLE_OUT[14]~29\ = CARRY((\inst|ECHO1\(14) & ((\inst2|DATA_SRAM[14]~1_combout\) # (!\inst|SAMPLE_OUT[13]~27\))) # (!\inst|ECHO1\(14) & (\inst2|DATA_SRAM[14]~1_combout\ & !\inst|SAMPLE_OUT[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ECHO1\(14),
	datab => \inst2|DATA_SRAM[14]~1_combout\,
	datad => VCC,
	cin => \inst|SAMPLE_OUT[13]~27\,
	combout => \inst|SAMPLE_OUT[14]~28_combout\,
	cout => \inst|SAMPLE_OUT[14]~29\);

-- Location: LCCOMB_X7_Y9_N20
\inst_SND|b2v_inst_left|TXReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~2_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(13))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|TXReg\(13),
	datac => \inst_SND|b2v_inst_left|tx~1_combout\,
	datad => \inst|SAMPLE_OUT[14]~28_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~2_combout\);

-- Location: LCCOMB_X10_Y9_N18
\inst_SND|b2v_inst_left|TXReg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg[6]~1_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9)) # ((\inst_SND|b2v_inst_ctrl|cntr\(3) & \inst_SND|b2v_inst_left|tx~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(3),
	datad => \inst_SND|b2v_inst_left|tx~0_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\);

-- Location: FF_X7_Y9_N21
\inst_SND|b2v_inst_left|TXReg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~2_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(14));

-- Location: LCCOMB_X8_Y9_N30
\inst|SAMPLE_OUT[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SAMPLE_OUT[15]~30_combout\ = \inst|ECHO1\(15) $ (\inst|SAMPLE_OUT[14]~29\ $ (\inst2|DATA_SRAM[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ECHO1\(15),
	datad => \inst2|DATA_SRAM[15]~0_combout\,
	cin => \inst|SAMPLE_OUT[14]~29\,
	combout => \inst|SAMPLE_OUT[15]~30_combout\);

-- Location: LCCOMB_X7_Y9_N26
\inst_SND|b2v_inst_left|TXReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_left|TXReg~0_combout\ = (\inst_SND|b2v_inst_left|tx~1_combout\ & (\inst_SND|b2v_inst_left|TXReg\(14))) # (!\inst_SND|b2v_inst_left|tx~1_combout\ & ((\inst|SAMPLE_OUT[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|tx~1_combout\,
	datab => \inst_SND|b2v_inst_left|TXReg\(14),
	datac => \inst|SAMPLE_OUT[15]~30_combout\,
	combout => \inst_SND|b2v_inst_left|TXReg~0_combout\);

-- Location: FF_X7_Y9_N27
\inst_SND|b2v_inst_left|TXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_left|TXReg~0_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_left|TXReg[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_left|TXReg\(15));

-- Location: LCCOMB_X10_Y9_N4
\inst_SND|b2v_inst_right|tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|tx~0_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_ctrl|cntr\(3) & \inst_SND|b2v_inst_left|tx~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(3),
	datad => \inst_SND|b2v_inst_left|tx~0_combout\,
	combout => \inst_SND|b2v_inst_right|tx~0_combout\);

-- Location: LCCOMB_X7_Y9_N4
\inst_SND|b2v_inst_right|TXReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg~0_combout\ = (\inst_SND|b2v_inst_right|tx~0_combout\ & (\inst_SND|b2v_inst_right|TXReg\(14))) # (!\inst_SND|b2v_inst_right|tx~0_combout\ & ((\inst|SAMPLE_OUT[15]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_right|TXReg\(14),
	datac => \inst|SAMPLE_OUT[15]~30_combout\,
	datad => \inst_SND|b2v_inst_right|tx~0_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg~0_combout\);

-- Location: LCCOMB_X10_Y9_N2
\inst_SND|b2v_inst_right|TXReg[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|b2v_inst_right|TXReg[8]~1_combout\ = ((\inst_SND|b2v_inst_ctrl|cntr\(3) & \inst_SND|b2v_inst_left|tx~0_combout\)) # (!\inst_SND|b2v_inst_ctrl|cntr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datac => \inst_SND|b2v_inst_ctrl|cntr\(3),
	datad => \inst_SND|b2v_inst_left|tx~0_combout\,
	combout => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\);

-- Location: FF_X7_Y9_N5
\inst_SND|b2v_inst_right|TXReg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst_SND|b2v_inst_right|TXReg~0_combout\,
	clrn => \rstn~input_o\,
	ena => \inst_SND|b2v_inst_right|TXReg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_SND|b2v_inst_right|TXReg\(15));

-- Location: LCCOMB_X6_Y9_N10
\inst_SND|dacdat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_SND|dacdat~0_combout\ = (\inst_SND|b2v_inst_ctrl|cntr\(9) & ((\inst_SND|b2v_inst_right|TXReg\(15)))) # (!\inst_SND|b2v_inst_ctrl|cntr\(9) & (\inst_SND|b2v_inst_left|TXReg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SND|b2v_inst_left|TXReg\(15),
	datab => \inst_SND|b2v_inst_ctrl|cntr\(9),
	datad => \inst_SND|b2v_inst_right|TXReg\(15),
	combout => \inst_SND|dacdat~0_combout\);

-- Location: LCCOMB_X4_Y8_N14
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

-- Location: LCCOMB_X4_Y7_N26
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

-- Location: FF_X4_Y7_N27
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

-- Location: LCCOMB_X4_Y7_N28
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

-- Location: FF_X4_Y7_N29
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

-- Location: FF_X4_Y8_N15
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

-- Location: LCCOMB_X4_Y8_N16
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

-- Location: FF_X4_Y8_N17
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

-- Location: LCCOMB_X4_Y8_N18
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

-- Location: FF_X4_Y8_N19
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

-- Location: LCCOMB_X4_Y8_N20
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

-- Location: FF_X4_Y8_N21
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

-- Location: LCCOMB_X4_Y8_N22
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

-- Location: LCCOMB_X4_Y8_N24
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

-- Location: FF_X4_Y8_N25
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

-- Location: LCCOMB_X4_Y8_N26
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

-- Location: LCCOMB_X4_Y8_N28
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

-- Location: FF_X4_Y8_N29
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

-- Location: LCCOMB_X4_Y8_N30
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

-- Location: LCCOMB_X4_Y7_N0
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

-- Location: FF_X4_Y7_N1
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

-- Location: LCCOMB_X4_Y7_N2
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

-- Location: FF_X4_Y7_N3
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

-- Location: LCCOMB_X4_Y7_N4
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

-- Location: FF_X4_Y7_N5
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

-- Location: LCCOMB_X4_Y7_N6
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

-- Location: LCCOMB_X4_Y7_N8
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

-- Location: FF_X4_Y7_N9
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

-- Location: LCCOMB_X4_Y7_N10
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

-- Location: LCCOMB_X4_Y7_N12
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

-- Location: LCCOMB_X4_Y7_N14
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

-- Location: FF_X4_Y7_N15
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

-- Location: LCCOMB_X4_Y7_N16
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

-- Location: FF_X4_Y7_N17
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

-- Location: LCCOMB_X4_Y7_N18
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

-- Location: FF_X4_Y7_N19
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

-- Location: FF_X4_Y7_N13
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

-- Location: FF_X4_Y7_N11
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

-- Location: FF_X4_Y7_N7
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

-- Location: FF_X4_Y8_N31
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

-- Location: FF_X4_Y8_N27
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

-- Location: FF_X4_Y8_N23
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

-- Location: LCCOMB_X4_Y8_N12
\inst2|PTR[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|PTR[0]~57_combout\ = \inst2|lrsel_change~q\ $ (\inst2|PTR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lrsel_change~q\,
	datac => \inst2|PTR\(0),
	combout => \inst2|PTR[0]~57_combout\);

-- Location: FF_X4_Y8_N13
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


