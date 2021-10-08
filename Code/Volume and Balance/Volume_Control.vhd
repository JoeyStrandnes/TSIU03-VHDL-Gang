
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Volume_Control is
	
	port(clk, rstn : in std_logic;
			input : in signed(15 downto 0);
			control_setting : in unsigned(3 downto 0);
			output : out signed(15 downto 0)
		  );

end entity;




architecture Volume of Volume_Control is
	signal volume : signed(15 downto 0);
	signal result : signed(31 downto 0);
begin 
				 
	with control_setting select
		Volume <=   to_signed(16384, 16) when "0000",
							to_signed(11468, 16) when "0001", 
							to_signed(8028, 16) when "0010",	
							to_signed(5620, 16) when "0011",  
							to_signed(3934, 16) when "0100",
							to_signed(2754, 16) when "0101",
							to_signed(1928, 16) when "0110",
							to_signed(1350, 16) when "0111",
							to_signed(944, 16) when "1000",
							to_signed(662, 16) when "1001",
							to_signed(462, 16) when "1010",
							to_signed(324, 16) when "1011",
							to_signed(226, 16) when "1100",
							to_signed(158, 16) when "1101",
							to_signed(112, 16) when "1110",	
							to_signed(78, 16)  when "1111", 
							to_signed(0, 16)  when others;  
		
		result <= (Volume * input);
		
		
		process(clk)
		
		begin
			--if rstn = '0' then
			-- Skit
			
			if (rising_edge(clk)) then
			
				output <= result(31 downto 16);
			
			end if;
		
		end process;

end architecture;
