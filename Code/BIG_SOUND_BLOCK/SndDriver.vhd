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
-- CREATED		"Fri Oct 01 13:37:21 2021"

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
		LDAC :  IN  signed(15 DOWNTO 0);
		RDAC :  IN  signed(15 DOWNTO 0);
		dacdat :  OUT  STD_LOGIC;
		mclk :  OUT  STD_LOGIC;
		bclk :  OUT  STD_LOGIC;
		adclrc :  OUT  STD_LOGIC;
		daclrc :  OUT  STD_LOGIC;
		lrsel :  OUT  STD_LOGIC;
		cntr :  OUT  unsigned(8 DOWNTO 0);
		LADC :  OUT  signed(15 DOWNTO 0);
		RADC :  OUT  signed(15 DOWNTO 0)
	);
END SndDriver;

ARCHITECTURE bdf_type OF SndDriver IS 

COMPONENT ctrl
	PORT(clk : IN STD_LOGIC;
		 rstn : IN STD_LOGIC;
		 men : OUT STD_LOGIC;
		 mclk : OUT STD_LOGIC;
		 bclk : OUT STD_LOGIC;
		 adclrc : OUT STD_LOGIC;
		 daclrc : OUT STD_LOGIC;
		 lrsel : OUT STD_LOGIC;
		 Bitcnt : OUT unsigned(4 DOWNTO 0);
		 count : OUT unsigned(8 DOWNTO 0);
		 SCCnt : OUT unsigned(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT channel_mod
	PORT(clk : IN STD_LOGIC;
		 rstn : IN STD_LOGIC;
		 men : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 adcdat : IN STD_LOGIC;
		 Bitcnt : IN unsigned(4 DOWNTO 0);
		 DAC : IN signed(15 DOWNTO 0);
		 SCCnt : IN unsigned(1 DOWNTO 0);
		 dacdat : OUT STD_LOGIC;
		 ADC : OUT signed(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	Bitcnt :  unsigned(4 DOWNTO 0);
SIGNAL	daclrc_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	men :  STD_LOGIC;
SIGNAL	SCCnt :  unsigned(1 DOWNTO 0);
SIGNAL	sel :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_5 <= NOT(sel);



SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_0 AND daclrc_ALTERA_SYNTHESIZED;


SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_1);



SYNTHESIZED_WIRE_3 <= NOT(SYNTHESIZED_WIRE_2 OR daclrc_ALTERA_SYNTHESIZED);


dacdat <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


b2v_inst_ctrl : ctrl
PORT MAP(clk => clk,
		 rstn => rstn,
		 men => men,
		 mclk => mclk,
		 bclk => bclk,
		 adclrc => adclrc,
		 daclrc => daclrc_ALTERA_SYNTHESIZED,
		 lrsel => sel,
		 Bitcnt => Bitcnt,
		 count => cntr,
		 SCCnt => SCCnt);


b2v_inst_left : channel_mod
PORT MAP(clk => clk,
		 rstn => rstn,
		 men => men,
		 sel => sel,
		 adcdat => adcdat,
		 Bitcnt => Bitcnt,
		 DAC => LDAC,
		 SCCnt => SCCnt,
		 dacdat => SYNTHESIZED_WIRE_0,
		 ADC => LADC);


b2v_inst_right : channel_mod
PORT MAP(clk => clk,
		 rstn => rstn,
		 men => men,
		 sel => SYNTHESIZED_WIRE_5,
		 adcdat => adcdat,
		 Bitcnt => Bitcnt,
		 DAC => RDAC,
		 SCCnt => SCCnt,
		 dacdat => SYNTHESIZED_WIRE_1,
		 ADC => RADC);

daclrc <= daclrc_ALTERA_SYNTHESIZED;
lrsel <= sel;

END bdf_type;