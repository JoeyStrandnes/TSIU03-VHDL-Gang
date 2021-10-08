library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity masking is 
  Port ( clk, rstn, pixcode_single  : in std_logic;
         pixcode       : out unsigned(7 downto 0);
			vcnt,hcnt : in unsigned(9 downto 0);
			Number : in unsigned(6 downto 0));
			
end entity;

	
architecture RT_masking of masking is 

signal counter : unsigned(19 downto 0);
signal h_limit : unsigned(8 downto 0) := "010000111";
signal h_limit_2 : unsigned(9 downto 0) := "0111000111";
signal h_limit_Graph : unsigned(9 downto 0) := "0000100111";
signal color : unsigned(6 downto 0);

signal graph_pos_x : unsigned(9 downto 0);
signal graph_pos_y : unsigned(7 downto 0); 


signal VOL_Limit : unsigned(8 downto 0) := "011001111";
signal LR_Limit : unsigned(8 downto 0) := "011001111";
signal DIST_Limit : unsigned(8 downto 0) := "011001111";

signal ED_Limit : unsigned(9 downto 0) := "0011001111";
signal EN_Limit : unsigned(9 downto 0) := "1001101001";
signal EV_Limit : unsigned(9 downto 0) := "0011001111";

begin
	
	process(clk)	
	
	begin
	
		if (rising_edge(clk)) then
			
			--pixcode <= (others => pixcode_single);
			counter <= counter +1;
			if(counter = 1000000) then
				VOL_Limit <= VOL_Limit +10;
				ED_Limit <= ED_Limit +1;
				LR_Limit <= LR_Limit +2;
				EN_Limit <= EN_Limit -1;
				color <= color+1;
			end if;
			
			if(Number = "0010000") then -- 9
				VOL_Limit <= "100101000";
			elsif(Number = "1111001" AND VOL_Limit > 20 ) then -- 1
				VOL_Limit <= VOL_Limit + 20;
			elsif(Number = "1000000" AND VOL_Limit > 0) then -- 0
				VOL_Limit <= VOL_Limit -20;
			elsif(Number = "0010010") then -- 5
				VOL_Limit <= "011011000";
			end if;
			
			if(((vcnt > 32) AND (vcnt < 72)) AND ((hcnt > 135) AND (hcnt < VOL_Limit))) then 		-- Overlay for volume -- hcnt < 296
				pixcode <= "11100001";
			elsif(((vcnt > 103) AND (vcnt < 152)) AND ((hcnt > LR_Limit) AND (hcnt < (LR_Limit+16)))) then -- Overlay for left rigth adjust -- hcnt = 296
				pixcode <= "10000011";
			elsif(((vcnt > 184) AND (vcnt < 216)) AND ((hcnt > 135) AND (hcnt < DIST_Limit))) then -- Overlay for dist -- hcnt = 296
				pixcode <= "10000011";
			elsif(((vcnt > 40) AND (vcnt < 72)) AND ((hcnt > 455) AND (hcnt < ED_Limit))) then -- Overlay for echo delay -- hcnt = 296
				pixcode <= "10111100";
			elsif(((vcnt > 112) AND (vcnt < 145)) AND ((hcnt > 455) AND (hcnt < EN_Limit))) then -- Overlay for number of echos -- hcnt = 296
				pixcode <= "10110100";
			elsif(((vcnt > 184) AND (vcnt < 216)) AND ((hcnt > 455) AND (hcnt < ED_Limit))) then -- Overlay for echo volume -- hcnt = 296
				pixcode <= "1" & color;

			--elsif(((vcnt > 279) AND (vcnt < 440)) AND ((hcnt > 39) AND (hcnt < 600))) then -- Overlay for graph view. 600 max
			
			
			else
				pixcode <= (others => pixcode_single);
			end if;
			
			if(VOL_Limit >= 296) then
				VOL_Limit <= "010000111";
				LR_Limit <= "010000111";
				--color <= "0000000";
			end if;			
			if(ED_Limit >= 617) then
				ED_Limit <= "0111000111";
			elsif(EN_Limit < 455) then
				EN_Limit <= "1001101001";
			end if;
--			if(graph_pos_x > 600) then
--				graph_pos_x <= b"0000100111";
--			end if;
--			if(graph_pos_y > 440) then
--				graph_pos_y <= b"0100010111";
--			end if;
--			
			
		end if;
	end process;
	
	


end architecture;