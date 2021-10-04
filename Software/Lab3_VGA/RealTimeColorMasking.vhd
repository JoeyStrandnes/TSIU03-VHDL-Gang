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
signal h_limit_2 : unsigned(9 downto 0) := "0111000111";
signal h_limit_Graph : unsigned(9 downto 0) := "0000100111";
signal color : unsigned(9 downto 0);

signal graph_pos_x : unsigned(9 downto 0);
signal graph_pos_y : unsigned(7 downto 0); 

begin
	
	process(clk)	
	
	begin
	
		if (rising_edge(clk)) then
			
			--pixcode <= (others => pixcode_single);
			counter <= counter +1;
			if(counter = 1000000) then
				h_limit <= h_limit +1;
				h_limit_2 <= h_limit_2 +2;
			end if;

			if(h_limit(8) = '1') then
				graph_pos_x <= graph_pos_x +1;
				if(graph_pos_x >= 600) then
					graph_pos_x <= "0000000000";
					graph_pos_y <= graph_pos_y +1;
					h_limit_Graph <= h_limit_Graph +1;
				end if;
				
			end if;

			
			if(((vcnt > 32) AND (vcnt < 72)) AND ((hcnt > 135) AND (hcnt < h_limit))) then 		-- Overlay for volume -- hcnt < 296

				pixcode <= "11100001";--"1" & (color(6 downto 2)) & "00";
			
			elsif(((vcnt > 184) AND (vcnt < 216)) AND ((hcnt > 135) AND (hcnt < h_limit))) then -- Overlay for dist -- hcnt = 296
				pixcode <= "10000011";
			
			elsif(((vcnt > 40) AND (vcnt < 72)) AND ((hcnt > 455) AND (hcnt < h_limit_2))) then -- Overlay for echo delay -- hcnt = 296
				pixcode <= "10111100";
			elsif(((vcnt > 112) AND (vcnt < 145)) AND ((hcnt > 455) AND (hcnt < h_limit_2))) then -- Overlay for number of echos -- hcnt = 296
				pixcode <= "10110100";
			elsif(((vcnt > 184) AND (vcnt < 216)) AND ((hcnt > 455) AND (hcnt < h_limit_2))) then -- Overlay for echo volume -- hcnt = 296
			pixcode <= "10011110";

			--elsif(((vcnt > 279) AND (vcnt < 440)) AND ((hcnt > 39) AND (hcnt < 600))) then -- Overlay for graph view. 600 max
			--elsif(((vcnt > 279) AND (vcnt < 440)) AND ((hcnt > h_limit_Graph-40) AND (hcnt < h_limit_Graph))) then -- Overlay for graph view. 600 max
				
				--pixcode <= "11111100";
	
			else
				pixcode <= (others => pixcode_single);
			end if;
			
			if(h_limit >= 296) then
				h_limit <= "010000111";
				color <= "0000000000";
			end if;			
			if(h_limit_2 >= 617) then
				h_limit_2 <= "0111000111";
				color <= "0000000000";
			end if;
			
			if(h_limit_Graph >= 600) then
				h_limit_Graph <= b"0000_1001_11";
			end if;
			
			
		end if;
	end process;
	
	


end architecture;