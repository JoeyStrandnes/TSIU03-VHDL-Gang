library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mono2stereo is
	port(
			Y  	: in signed(15 downto 0);
			A, B	: out signed(15 downto 0);
			s		: in std_logic
	);
end entity;

architecture rtl of mono2stereo is
	begin
	A <= Y when s = '1';
	B <= Y when s = '0';
end architecture;