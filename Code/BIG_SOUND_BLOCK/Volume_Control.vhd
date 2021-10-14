
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Volume_Control is
	
	port(clk, rstn : in std_logic;
			input : in signed(15 downto 0);
			control_setting : in unsigned(4 downto 0);
			output : out signed(15 downto 0)
		  );

end entity;




architecture Volume of Volume_Control is
	signal volume : signed(15 downto 0);
	signal result : signed(30 downto 0);
begin 
				 
	with control_setting select
		Volume <=  		to_signed(11468*2, 16) when "01111",
							to_signed(8028*2, 16) when "01110", 
							to_signed(5620*2, 16) when "01101",	
							to_signed(3934*2, 16) when "01100",  
							to_signed(2754*2, 16) when "01011",
							to_signed(1928*2, 16) when "01010",
							to_signed(1350*2, 16) when "01001",
							to_signed(944*2, 16) when "01000",
							to_signed(662*2, 16) when "00111",
							to_signed(462*2, 16) when "00110",
							to_signed(324*2, 16) when "00101",
							to_signed(226*2, 16) when "00100",
							to_signed(158*2, 16) when "00011",
							to_signed(112*2, 16) when "00010",
							to_signed(78*2, 16)  when "00001",	
							to_signed(0*2, 16)   when "00000", 
						   to_signed(32767, 16)  when others;	
		
		result <= resize( (Volume * input), result'length);
		
		
		process(clk)
		
		begin
			--if rstn = '0' then
			-- Skit
			
			if (rising_edge(clk)) then
			
				output <= result( 30 downto 15);
			
			end if;
		
		end process;

end architecture;
