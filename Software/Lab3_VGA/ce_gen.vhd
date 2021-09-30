library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ce_gen is
  Port ( clk : in std_logic;
         rstn : in std_logic;
         ce : out std_logic); -- "clock enable" in 25 MHz, to match the video clock.
end entity;

architecture rtl of ce_gen is

	signal counter: unsigned(1 downto 0);
	signal Clock_Enable: std_logic := '0';
begin

	process(clk, rstn)
	begin
		if rstn = '0' then
			counter <= (others => '0');
		elsif rising_edge(clk) then
			if (cOuNtEr = 0) then
				counter <= counter + 1;
			else
				counter <= "00";
			end if;
		end if;
	end process;
	
	ce <= '1' when counter = 1 else '0';
--	Clock_Enable <= NOT Clock_Enable when counter = 1;

	
end architecture;
