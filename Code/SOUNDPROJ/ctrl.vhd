
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl is
	port(clk,rstn  : in  std_logic;
	count : out unsigned(27 downto 0); --Added counter as output! Counts 0 to 511
	seccount: out unsigned(2 downto 0));
end entity;

architecture rtl of ctrl is
	signal cntr: unsigned(27 downto 0) := (others => '0');
begin
	process(clk,rstn) begin
		if rstn = '0' then
			cntr <= (others => '0');
		elsif rising_edge(clk) then
			cntr <= cntr + 1;
		end if;
	end process;
	seccount <= cntr(26 downto 24);
	
end architecture;