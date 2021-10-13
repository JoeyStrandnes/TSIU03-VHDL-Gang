library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_mux is
	port(
			A, B  : in signed(15 downto 0);
			Y		: out signed(15 downto 0);
			s		: in std_logic
	);
end entity;

architecture rtl of my_mux is
	begin
	Y <= A when s = '1' else B;
end architecture;