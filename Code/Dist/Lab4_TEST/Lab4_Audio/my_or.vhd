library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_or is
	Port (inputA, inputB : in std_logic;
			output : out std_logic);
end entity;


architecture my_orArch of my_or is
	
begin
	output <= '1' when inputA = '1' or inputB = '1' else
					'0' when inputA = '0' and inputB = '0';
end architecture;