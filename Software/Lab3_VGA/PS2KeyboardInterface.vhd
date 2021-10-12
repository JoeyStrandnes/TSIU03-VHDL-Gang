
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PS2KeyboardInterface is 
	port(rstn,clk,PS2_CLK, PS2_DAT : in  std_logic;
			Number :  out unsigned(2 downto 0));
end entity;

architecture rtl of PS2KeyboardInterface is

	signal shiftreg : std_logic_vector(9 downto 0);
	signal PS2_CLK2, PS2_CLK2_old, PS2_DAT2, detected_fall, E0, F0 : std_logic;
	signal break : std_logic;
	
	signal new_number : std_logic;
	
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
			shiftreg <= (others => '1' );
			--Insert reset value
		elsif rising_edge(clk) then
			if detected_fall = '1' then
				shiftreg <= PS2_DAT & shiftreg(9 downto 1);
			end if;
			
			if(new_number = '1') then
				Number <= "111"; -- Just to know when a key is not pressed.
				new_number <= '0'; 
			end if;
			
			
			if (shiftreg(0) = '0') then
				shiftreg <= (others => '1' );
				if (shiftreg(8 downto 1) = "11110000") then
					break <='1';
				elsif (break = '1') then
					break <='0';
					
					if(shiftreg(8 downto 1) = "01110101") then --75 up arrow
						Number <= "000";
						new_number <= '1'; 
					elsif(shiftreg(8 downto 1) = "01110010") then --72 down arrow
						Number <= "001";
						new_number <= '1'; 
					elsif(shiftreg(8 downto 1) = "01110100") then --74 right arrow
						Number <= "010";
						new_number <= '1'; 
					elsif(shiftreg(8 downto 1) = "01101011") then --6B left arrow
						Number <= "011";
						new_number <= '1'; 
					else
						Number <= "111"; -- Just to know when a key is not pressed.
					end if;
					
				end if;
			end if;
			
			
		end if;
	end process;

end architecture;
