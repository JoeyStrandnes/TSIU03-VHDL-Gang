library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity masking is 
  Port ( clk, rstn, pixcode_single  : in std_logic;
         pixcode       : out unsigned(7 downto 0);
         vcnt,hcnt : in unsigned(9 downto 0));

end entity;


architecture RT_masking of masking is 

signal counter : unsigned(19 downto 0);
signal h_limit : unsigned(8 downto 0) := "010000111";

begin
	
	process(clk)	
	
	begin
	
		if (rising_edge(clk)) then
			counter <= counter +1;
			if(counter = 1000000) then
				h_limit <= h_limit +1;
			end if;
			
			if(((vcnt > 32) AND (vcnt < 72)) AND ((hcnt > 135) AND (hcnt < h_limit))) then -- Overlay for volume -- hcnt = 296
				pixcode <= "11100000";
			else
				pixcode <= (others => pixcode_single);
			end if;
			
			if(h_limit = 296) then
				h_limit <= "010000111";
			end if;			
		end if;
	end process;

end architecture;