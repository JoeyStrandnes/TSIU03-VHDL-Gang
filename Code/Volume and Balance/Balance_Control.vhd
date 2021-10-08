
library ieee;


use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Volume_Control is
	
	port(clk, rstn : in std_logic;
			lrsel : in std_logic;
			input : in signed(15 downto 0);
			control_setting : in unsigned(4 downto 0);
			output : out signed(15 downto 0)
		  );

end entity;




architecture Volume of Volume_Control is
	signal left_volume : signed(15 downto 0);
	signal right_volume : signed(15 downto 0);
	signal result : signed(31 downto 0);
begin 
		
		
		left_volume <= when else yada yada yada
		
		right_volume <= when else yada yada yada
		
		result = right_volume * input when lrsel = '0' else left_volume * input;
		
		output <= result(31 downto 16);
				 
end architecture;
