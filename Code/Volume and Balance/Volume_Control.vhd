
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std;

entity Volume_Control is
	
	port(clk,rstn : in std_logic;
		  input : in signed(15 downto 0);
		  control_setting : in unsigned(3 downto 0);
		  output : out signed(15 downto 0));

end entity;




architecture Volume of Volume_Control is
	signal volume : signed(15 downto 0) := (others => 0);
	signal counter : unsigned(3 downto 0) := "0000";
begin

	output <= input when control_setting = (others => 15) else
				 input(15) & 3*input(14 downto 0) when control_setting = (others => 14) else
				 input(15) & "0" & 9*input(13 downto 0) when control_setting = (others => 13) else
				 input(15) & "00" & 27*input(12 downto 0) when control_setting = (others => 12) else
				 x when control_setting = (others => 11) else
				 x when control_setting = (others => 10) else
				 x when control_setting = (others => 9) else
				 x when control_setting = (others => 8) else
				 x when control_setting = (others => 7) else
				 x when control_setting = (others => 6) else
				 x when control_setting = (others => 5) else
				 x when control_setting = (others => 4) else
				 x when control_setting = (others => 3) else
				 x when control_setting = (others => 2) else
				 x when control_setting = (others => 1) else
				 (others => 0) when control_setting = (others => 0) else (others => 0);

end architecture;
