library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ctrl is
	Port (clk, rstn : in std_logic;
			lrsel, mclk, bclk, adclrc, daclrc, men : out std_logic;
			BitCnt : out unsigned(4 downto 0);
			SCCnt : out unsigned(1 downto 0));
end entity;


architecture CtrlArch of Ctrl is
	signal cntr : unsigned(9 downto 0);
begin
	process(clk, rstn)
	begin
		if rstn = '0' then
			cntr <= "0000000000";
		elsif rising_edge(clk) then
			cntr <= cntr + 1;
		end if;
	end process;
	mclk <= not cntr(1);
	bclk <= cntr(3); --NOT?
	men <= cntr(0) and cntr(1);
	SCCnt <= cntr(3 downto 2);
	BitCnt <= cntr(8 downto 4);
	adclrc <= not cntr(9);
	daclrc <= not cntr(9);
	lrsel <= cntr(9);
end architecture;