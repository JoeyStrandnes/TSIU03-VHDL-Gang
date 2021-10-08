
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PS2KeyboardInterface is 
	port(rstn,clk,PS2_CLK, PS2_DAT : in  std_logic;
			Number :  out unsigned(6 downto 0));
end entity;

architecture rtl of PS2KeyboardInterface is

	signal shiftreg : std_logic_vector(9 downto 0);
	signal PS2_CLK2, PS2_CLK2_old, PS2_DAT2, detected_fall : std_logic;
	
begin

	--Handles syncronizing.
	p1: process(clk) begin
		if rising_edge(clk) then
			PS2_DAT2 <= PS2_DAT;
			PS2_CLK2 <= PS2_CLK;
			PS2_CLK2_old <= PS2_CLK2;
			--Do something
		end if;
	end process;
	detected_fall <= ((NOT PS2_CLK2) AND PS2_CLK2_old);

	--Handles shift register. 
	p2: process(clk, rstn) begin
		if rstn = '0' then			
			shiftreg <= "0000000000";
			--Insert reset value
		elsif rising_edge(clk) then
			if detected_fall = '1' then
				shiftreg <= PS2_DAT & shiftreg(9 downto 1);
			end if;
			--Assign shift regs
		end if;
	end process;
	
	Number <= "1111001" when shiftreg(7 downto 0) = "00010110" else
				"0100100" when shiftreg(7 downto 0) = "00011110" else
				"0110000" when shiftreg(7 downto 0) = "00100110" else
				"0011001" when shiftreg(7 downto 0) = "00100101" else
				"0010010" when shiftreg(7 downto 0) = "00101110" else
				"0000010" when shiftreg(7 downto 0) = "00110110" else
				"1111000" when shiftreg(7 downto 0) = "00111101" else
				"0000000" when shiftreg(7 downto 0) = "00111110" else
				"0010000" when shiftreg(7 downto 0) = "01000110" else
				"1000000" when shiftreg(7 downto 0) = "01000101" else
				"0000110";
	
end architecture;
