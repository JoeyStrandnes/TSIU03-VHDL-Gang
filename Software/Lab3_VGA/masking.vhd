library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity masking is 
  Port ( clk, rstn, pixcode_single  : in std_logic;
         pixcode       : out unsigned(7 downto 0);
			vcnt,hcnt : in unsigned(9 downto 0);
			Number : in unsigned(2 downto 0);
			Vol_Out,LR_Out, Dist_out, ED_out, EN_Out, EV_Out : out unsigned(3 downto 0));
			
end entity;

	
architecture RT_masking of masking is 

signal counter : unsigned(19 downto 0);
signal h_limit : unsigned(8 downto 0) := "010000111";
signal h_limit_2 : unsigned(9 downto 0) := "0111000111";
signal h_limit_Graph : unsigned(9 downto 0) := "0000100111";
signal color : unsigned(6 downto 0);

signal graph_pos_x : unsigned(9 downto 0);
signal graph_pos_y : unsigned(7 downto 0); 


signal VOL_Limit : unsigned(8 downto 0) := "011010111";
signal LR_Limit : unsigned(8 downto 0) := "011010111";
signal DIST_Limit : unsigned(8 downto 0) := "011010111";

signal ED_Limit : unsigned(9 downto 0) := "1000010111";
signal EN_Limit : unsigned(9 downto 0) := "1000010111";
signal EV_Limit : unsigned(9 downto 0) := "1000010111";

signal Menu_Counter :unsigned(2 downto 0);

begin
	
	process(clk)	
	
	begin
	
		if (rising_edge(clk)) then
			
			-- Menu navigation
			if(Number = "001" AND Menu_Counter < 5) then -- Arrow up, increase menu selection
				Menu_Counter <= Menu_Counter +1;
			elsif(Number = "000" AND Menu_Counter >= 1) then -- Arrow down, decrease menu selection
				Menu_Counter <= Menu_Counter -1;
			-- Graphs
			elsif((Number = "010" AND VOL_Limit < 295) AND Menu_Counter = 0) then -- Right
				VOL_Limit <= VOL_Limit+10;
			elsif((Number = "011" AND VOL_Limit > 135) AND Menu_Counter = 0) then --Left
				VOL_Limit <= VOL_Limit-10;
			
			elsif((Number = "010" AND LR_Limit < 288) AND Menu_Counter = 1) then -- Right
				
				if((LR_Limit >= 200) AND (LR_Limit < 230))then
					LR_Limit <= LR_Limit+15;
				else
					LR_Limit <= LR_Limit+10;
				end if;
				
			elsif((Number = "011" AND LR_Limit > 143) AND Menu_Counter = 1) then --Left
				if((LR_Limit > 200) AND (LR_Limit <= 230))then
					LR_Limit <= LR_Limit-15;
				else
					LR_Limit <= LR_Limit-10;
				end if;

			elsif((Number = "010" AND DIST_Limit < 295) AND Menu_Counter = 2) then -- Right
				DIST_Limit <= DIST_Limit+10;
			elsif((Number = "011" AND DIST_Limit > 135) AND Menu_Counter = 2) then --Left
				DIST_Limit <= DIST_Limit-10;

			elsif((Number = "010" AND ED_Limit < 615) AND Menu_Counter = 3) then -- Right
				ED_Limit <= ED_Limit+10;
			elsif((Number = "011" AND ED_Limit > 455) AND Menu_Counter = 3) then --Left
				ED_Limit <= ED_Limit-10;

			elsif((Number = "010" AND EN_Limit < 615) AND Menu_Counter = 4) then -- Right
				EN_Limit <= EN_Limit+16;
			elsif((Number = "011" AND EN_Limit > 455) AND Menu_Counter = 4) then --Left
				EN_Limit <= EN_Limit-16;
				
			elsif((Number = "010" AND EV_Limit < 615) AND Menu_Counter = 5) then -- Right
				EV_Limit <= EV_Limit+10;
			elsif((Number = "011" AND EV_Limit > 455) AND Menu_Counter = 5) then --Left
				EV_Limit <= EV_Limit-10;				
			end if;
			
			--Graphs
			if(((vcnt > 32) AND (vcnt < 72)) AND ((hcnt > 135) AND (hcnt < VOL_Limit))) then 		-- Overlay for volume -- hcnt < 296
				pixcode <= "11100000";
			elsif(((vcnt > 103) AND (vcnt < 152)) AND ((hcnt > LR_Limit-4) AND (hcnt < (LR_Limit+4)))) then -- Overlay for left rigth adjust
				pixcode <= "10000011";
			elsif(((vcnt > 184) AND (vcnt < 216)) AND ((hcnt > 135) AND (hcnt < DIST_Limit))) then -- Overlay for dist
				pixcode <= "10000011";
			elsif(((vcnt > 40) AND (vcnt < 72)) AND ((hcnt > 455) AND (hcnt < ED_Limit))) then -- Overlay for echo delay
				pixcode <= "10111100";
			elsif(((vcnt > 112) AND (vcnt < 145)) AND ((hcnt > 455) AND (hcnt < EN_Limit))) then -- Overlay for number of echos
				pixcode <= "10110100";
			elsif(((vcnt > 184) AND (vcnt < 216)) AND ((hcnt > 455) AND (hcnt < EV_Limit))) then -- Overlay for echo volume
				pixcode <= "10110100";

			--elsif(((vcnt > 279) AND (vcnt < 440)) AND ((hcnt > 39) AND (hcnt < 600))) then -- Overlay for graph view. 600 max
			
			
			-- Menu overlays
			elsif((((vcnt > 15) AND (vcnt < 104)) AND ((hcnt > 15) AND (hcnt < 104))) AND Menu_Counter = 0) then -- Overlay for volume
					pixcode <= (others =>  not pixcode_single);					
					
			elsif((((vcnt > 112) AND (vcnt < 152)) AND ((hcnt > 8) AND (hcnt < 120))) AND Menu_Counter = 1) then -- Overlay for left rigth adjust
				pixcode <= (others =>  not pixcode_single);

			elsif((((vcnt > 160) AND (vcnt < 240)) AND ((hcnt > 8) AND (hcnt < 120))) AND Menu_Counter = 2) then -- Overlay for dist
				pixcode <= (others =>  not pixcode_single);

			elsif((((vcnt > 24) AND (vcnt < 88)) AND ((hcnt > 312) AND (hcnt < 440))) AND Menu_Counter = 3) then -- Overlay for echo delay
				pixcode <= (others =>  not pixcode_single);

			elsif((((vcnt > 96) AND (vcnt < 160)) AND ((hcnt > 312) AND (hcnt < 440))) AND Menu_Counter = 4) then -- Overlay for number of echos
				pixcode <= (others =>  not pixcode_single);				
			
			elsif((((vcnt > 168) AND (vcnt < 232)) AND ((hcnt > 312) AND (hcnt < 440))) AND Menu_Counter = 5) then -- Overlay for echo volume
				pixcode <= (others =>  not pixcode_single);
				
			else
				pixcode <= (others => pixcode_single);
			end if;
			
			-- Output for Sound group
			VOL_out <= resize((VOL_Limit/10), 4);
			LR_out <= resize((LR_Limit/10), 4);
			DIST_out <= resize((DIST_Limit/10), 4);
			ED_out <= resize((ED_Limit/10), 4);
			EN_out <= resize((EN_Limit/10), 4);
			EV_out <= resize((EV_Limit/10), 4);
			
		end if;
	end process;
	
	


end architecture;