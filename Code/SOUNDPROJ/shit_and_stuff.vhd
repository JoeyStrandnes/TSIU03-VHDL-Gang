library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shit_and_stuff is
  port(seccount: in unsigned(2 downto 0);
		 lrsel: out std_logic;
		 DATA: out unsigned(15 downto 0);
		 RW : out std_logic);
end entity;

architecture RTL of shit_and_stuff is

begin
	with seccount select
		DATA <= to_unsigned(4,16) when "000",
				  to_unsigned(3,16) when "010",
				  to_unsigned(2,16) when "100",
				  to_unsigned(1,16) when "110",
				  to_unsigned(0,16) when others;
	
	--RW <= '1' when seccount(2) = '1' else '0';
	RW <= seccount(0);
	
end architecture;