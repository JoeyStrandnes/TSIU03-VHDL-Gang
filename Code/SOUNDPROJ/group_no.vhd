-- Author: Petter Kallstrom, petterk@isy.liu.se
-- Date: 2011-09-12

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity group_no is
  port(HEX7,HEX6 : out std_logic_vector(0 to 6);
  NUMBER : in unsigned(15 downto 0));
end entity;

architecture RTL of group_no is
  signal msd,lsd : unsigned(2 downto 0);
begin
  msd <=  NUMBER(2 downto 0); -- This is constant, and will be computed in compile-time.
	lsd <= NUMBER(2 downto 0);
  -- Hence it will not result in horrible hardware.
 
  HEX6 <= "0000001" when lsd = 0 else
          "1001111" when lsd = 1 else
          "0010010" when lsd = 2 else
          "0000110" when lsd = 3 else
          "1001100" when lsd = 4 else
          "0100100" when lsd = 5 else
          "0100000" when lsd = 6 else
          "0001101" when lsd = 7 else
          "0000000" when lsd = 8 else
          "0000100";
  
  HEX7 <= "0000001" when msd = 0 else
          "1001111" when msd = 1 else
          "0010010" when msd = 2 else
          "0000110" when msd = 3 else
          "1001100" when msd = 4 else
          "0100100" when msd = 5 else
          "0100000" when msd = 6 else
          "0001101" when msd = 7 else
          "0000000" when msd = 8 else
          "0000100";
end architecture;