library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hs_gen is
  Port ( clk, rstn : in std_logic;
         hcnt : in unsigned(9 downto 0);
         hsync : out std_logic);
end entity;

architecture rtl of hs_gen is
begin

  process(clk, rstn)
  begin
    if rstn = '0' then
      hsync <= '1';
    elsif rising_edge(clk) then
      if hcnt < 654 or hcnt >= 749 then
			hsync <= '1';
		else 
			hsync <= '0';
      end if; -- Let it keep its value in between (An "=" test operation
              --  is often simpler than a "<" test operation in hardware).
    end if;
  end process;
end architecture;
