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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Mon Sep 20 18:00:59 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY work;

ENTITY SndDriver IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		rstn :  IN  STD_LOGIC;
		adcdat :  IN  STD_LOGIC;
		LDAC :  IN  SIGNED(15 DOWNTO 0);
		RDAC :  IN  SIGNED(15 DOWNTO 0);
		dacdat :  OUT  STD_LOGIC;
		mclk :  OUT  STD_LOGIC;
		bclk :  OUT  STD_LOGIC;
		adclrc :  OUT  STD_LOGIC;
		daclrc :  OUT  STD_LOGIC;
		lrsel :  OUT  STD_LOGIC;
		LADC :  OUT  SIGNED(15 DOWNTO 0);
		RADC :  OUT  SIGNED(15 DOWNTO 0)
	);
END SndDriver;

ARCHITECTURE bdf_type OF SndDriver IS 

COMPONENT ctrl
	PORT(clk : IN STD_LOGIC;
		 rstn : IN STD_LOGIC;
		 lrsel : OUT STD_LOGIC;
		 mclk : OUT STD_LOGIC;
		 bclk : OUT STD_LOGIC;
		 adclrc : OUT STD_LOGIC;
		 daclrc : OUT STD_LOGIC;
		 men : OUT STD_LOGIC;
		 BitCnt : OUT UNSIGNED(4 DOWNTO 0);
		 SCCnt : OUT UNSIGNED(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT channel_mod
	PORT(clk : IN STD_LOGIC;
		 rstn : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 adcdat : IN STD_LOGIC;
		 men : IN STD_LOGIC;
		 BitCnt : IN UNSIGNED(4 DOWNTO 0);
		 DAC : IN SIGNED(15 DOWNTO 0);
		 SCCnt : IN UNSIGNED(1 DOWNTO 0);
		 dacdat : OUT STD_LOGIC;
		 ADC : OUT SIGNED(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT my_or
	PORT(inputA : IN STD_LOGIC;
		 inputB : IN STD_LOGIC;
		 output : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  UNSIGNED(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  UNSIGNED(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


BEGIN 
lrsel <= SYNTHESIZED_WIRE_11;



SYNTHESIZED_WIRE_7 <= NOT(SYNTHESIZED_WIRE_11);



b2v_inst_ctrl : ctrl
PORT MAP(clk => clk,
		 rstn => rstn,
		 lrsel => SYNTHESIZED_WIRE_11,
		 mclk => mclk,
		 bclk => bclk,
		 adclrc => adclrc,
		 daclrc => daclrc,
		 men => SYNTHESIZED_WIRE_12,
		 BitCnt => SYNTHESIZED_WIRE_13,
		 SCCnt => SYNTHESIZED_WIRE_14);


b2v_inst_left : channel_mod
PORT MAP(clk => clk,
		 rstn => rstn,
		 sel => SYNTHESIZED_WIRE_11,
		 adcdat => adcdat,
		 men => SYNTHESIZED_WIRE_12,
		 BitCnt => SYNTHESIZED_WIRE_13,
		 DAC => LDAC,
		 SCCnt => SYNTHESIZED_WIRE_14,
		 dacdat => SYNTHESIZED_WIRE_5,
		 ADC => LADC);


b2v_inst_or : my_or
PORT MAP(inputA => SYNTHESIZED_WIRE_5,
		 inputB => SYNTHESIZED_WIRE_6,
		 output => dacdat);


b2v_inst_right : channel_mod
PORT MAP(clk => clk,
		 rstn => rstn,
		 sel => SYNTHESIZED_WIRE_7,
		 adcdat => adcdat,
		 men => SYNTHESIZED_WIRE_12,
		 BitCnt => SYNTHESIZED_WIRE_13,
		 DAC => RDAC,
		 SCCnt => SYNTHESIZED_WIRE_14,
		 dacdat => SYNTHESIZED_WIRE_6,
		 ADC => RADC);


END bdf_type;