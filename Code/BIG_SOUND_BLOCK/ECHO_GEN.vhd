library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ECHO_GEN is
  Port ( 
			clk						: in std_logic;
			rstn						: in std_logic;
			lrsel						: in std_logic;
			cntr						: in unsigned(8 downto 0); --really want first 9 bits
			SAMPLE_IN				: in signed(15 downto 0);
			SAMPLE_OUT				: out signed(15 downto 0);
			-- SETTINGS 
			ECHO_VOL					: in unsigned(4 downto 0);
			ECHO_NUM					: in unsigned(3 downto 0);
			ECHO_DELAY				: in unsigned(3 downto 0);
			-- SRAM
			offset   				: out unsigned(19 downto 0);
			RW							: out std_logic; -- Read = 1, Write = 0
			DATA_WRITE				: out signed(15 downto 0);
			DATA_READ				: in signed(15 downto 0)
			);
end entity;

architecture rtl of ECHO_GEN is

	type FSM is (Start, Read);
	signal ECHO1 : signed(15 downto 0);
	signal ECHO2 : signed(15 downto 0);
	signal ECHO3 : signed(15 downto 0);
	signal ECHO4 : signed(15 downto 0);
	signal ECHO5 : signed(15 downto 0);
	signal ECHO6 : signed(15 downto 0);
	signal ECHO7 : signed(15 downto 0);
	signal ECHO8 : signed(15 downto 0);
	signal ECHO9 : signed(15 downto 0);
	signal ECHO10 : signed(15 downto 0);
	signal OUT_TMP: signed(15 downto 0);
	signal ACCUM: signed(17 downto 0);
	constant fs  : integer := 48828;
	signal ECHO_M : signed(15 downto 0);
	signal RES 	: signed(30 downto 0);
begin
	--Combinatorical logic;
	DATA_WRITE <= SAMPLE_IN; -- We are not writing any other data in to SRAM.
	
	process(clk, rstn) is
	begin
		if rstn = '0' then
			ECHO1 <= (others => '0');
			ECHO2 <= (others => '0');
			ECHO3 <= (others => '0');
			ECHO4 <= (others => '0');
		--Vore snyggare med en "riktig" FSM och lookup-table	
		elsif rising_edge(clk) then
			
			if cntr < 10 then -- Needs to be here to not sound like ass
				offset <= (others => '0' );
				RW <= '1';
			
			elsif cntr < 20 then -- 1:st ECHO read
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*1
				, offset'length);
				RW <= '1';
			elsif cntr < 30 then
				ECHO1 <= resize( DATA_READ(15 downto 0) , 16);
			
			elsif cntr < 40 then -- 2:nd ECHO read
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*2
				, offset'length);
				RW <= '1';
			elsif cntr < 50 then
				ECHO2 <= resize( DATA_READ(15 downto 0) , 16);
			
			elsif cntr < 60 then -- 3:rd ECHO read
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*3
				, offset'length);
				RW <= '1';
			elsif cntr < 70 then
				ECHO3 <= resize( DATA_READ(15 downto 1) , 16);
			
			elsif cntr < 80 then -- 4:th ECHO read
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*4
				, offset'length);
				RW <= '1';
			elsif cntr < 90 then
				ECHO4 <= resize( DATA_READ(15 downto 1) , 16);
				
			elsif cntr < 100 then -- 5:th ECHO read
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*5
				, offset'length);
				RW <= '1';
			elsif cntr < 110 then
				ECHO5 <= resize( DATA_READ(15 downto 2) , 16);
				
			elsif cntr < 120 then -- 6:th ECHO read
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*6
				, offset'length);
				RW <= '1';
			elsif cntr < 130 then
				ECHO6 <= resize( DATA_READ(15 downto 2) , 16);
				
			elsif cntr < 140 then -- 7:th ECHO read
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*7
				, offset'length);
				RW <= '1';
			elsif cntr < 150 then
				ECHO7 <= resize( DATA_READ(15 downto 3) , 16);			
		
			elsif cntr < 160 then -- 8:th ECHO read
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*8
				, offset'length);
				RW <= '1';
			elsif cntr < 170 then
				ECHO8 <= resize( DATA_READ(15 downto 3) , 16);	

			elsif cntr < 180 then -- 9:th ECHO read
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*9
				, offset'length);
				RW <= '1';
			elsif cntr < 190 then
				ECHO9 <= resize( DATA_READ(15 downto 4) , 16);

			elsif cntr < 200 then -- 10:th ECHO read
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*10
				, offset'length);
				RW <= '1';
			elsif cntr < 210 then
				ECHO10 <= resize( DATA_READ(15 downto 4) , 16);			
	
			elsif cntr < 250 then -- Muting echos not wanted decided by ECHO_NUM 
				if ECHO_NUM = "0000" then
					ECHO1 <= (others => '0');
					ECHO2 <= (others => '0');
					ECHO3 <= (others => '0');
					ECHO4 <= (others => '0');
					ECHO5 <= (others => '0');
					ECHO6 <= (others => '0');
					ECHO7 <= (others => '0');
					ECHO8 <= (others => '0');
					ECHO9 <= (others => '0');
					ECHO10 <= (others => '0');
				elsif ECHO_NUM = "0001" then
					ECHO2 <= (others => '0');
					ECHO3 <= (others => '0');
					ECHO4 <= (others => '0');
					ECHO5 <= (others => '0');
					ECHO6 <= (others => '0');
					ECHO7 <= (others => '0');
					ECHO8 <= (others => '0');
					ECHO9 <= (others => '0');
					ECHO10 <= (others => '0');
				elsif ECHO_NUM = "0010" then
					ECHO3 <= (others => '0');
					ECHO4 <= (others => '0');
					ECHO5 <= (others => '0');
					ECHO6 <= (others => '0');
					ECHO7 <= (others => '0');
					ECHO8 <= (others => '0');
					ECHO9 <= (others => '0');
					ECHO10 <= (others => '0');
				elsif ECHO_NUM = "0011" then
					ECHO4 <= (others => '0');				
					ECHO5 <= (others => '0');
					ECHO6 <= (others => '0');
					ECHO7 <= (others => '0');
					ECHO8 <= (others => '0');
					ECHO9 <= (others => '0');
					ECHO10 <= (others => '0');
				elsif ECHO_NUM = "0100" then
					ECHO5 <= (others => '0');
					ECHO6 <= (others => '0');
					ECHO7 <= (others => '0');
					ECHO8 <= (others => '0');
					ECHO9 <= (others => '0');
					ECHO10 <= (others => '0');
				elsif ECHO_NUM = "0101" then
					ECHO6 <= (others => '0');
					ECHO7 <= (others => '0');
					ECHO8 <= (others => '0');
					ECHO9 <= (others => '0');
					ECHO10 <= (others => '0');
				elsif ECHO_NUM = "0110" then
					ECHO7 <= (others => '0');
					ECHO8 <= (others => '0');
					ECHO9 <= (others => '0');
					ECHO10 <= (others => '0');
				elsif ECHO_NUM = "0111" then
					ECHO8 <= (others => '0');
					ECHO9 <= (others => '0');
					ECHO10 <= (others => '0');
				elsif ECHO_NUM = "1000" then
					ECHO9 <= (others => '0');
					ECHO10 <= (others => '0');
				elsif ECHO_NUM = "1001" then
					ECHO10 <= (others => '0');
				end if;

				--unsure if accum is updated at this point
				if( ACCUM > 32767) then
					OUT_TMP <= to_signed(32767, 16);
				elsif ( ACCUM < -32768) then
					OUT_TMP <= to_signed(-32768 ,16);
				else
				-- Adding all echos together
					OUT_TMP <= resize(ACCUM, 16);
				end if;
				
			else --Writing to SRAM
				offset <= (others => '0');
				RW <= '0';
			end if;
		end if;
	end process;
	
	--Sum of all echos
	ACCUM <= resize(ECHO1, ACCUM'length) + resize(ECHO2, ACCUM'length) + resize(ECHO3, ACCUM'length)
			+ resize(ECHO4, ACCUM'length) +resize(ECHO5, ACCUM'length) + resize(ECHO6, ACCUM'length) 
			+ resize(ECHO7, ACCUM'length) + resize(ECHO8, ACCUM'length) + resize(ECHO9, ACCUM'length) + resize(ECHO10, ACCUM'length);
			
			
	with ECHO_VOL select
		ECHO_M <=  		to_signed(11468*2, 16) when "01111",
							to_signed(8028*2, 16) when "01110", 
							to_signed(5620*2, 16) when "01101",	
							to_signed(3934*2, 16) when "01100",  
							to_signed(2754*2, 16) when "01011",
							to_signed(1928*2, 16) when "01010",
							to_signed(1350*2, 16) when "01001",
							to_signed(944*2, 16) when "01000",
							to_signed(662*2, 16) when "00111",
							to_signed(462*2, 16) when "00110",
							to_signed(324*2, 16) when "00101",
							to_signed(226*2, 16) when "00100",
							to_signed(158*2, 16) when "00011",
							to_signed(112*2, 16) when "00010",
							to_signed(78*2, 16)  when "00001",	
							to_signed(0*2, 16)   when "00000", 
						   to_signed(32767, 16)  when others;	
		
		RES <= resize( (ECHO_M * OUT_TMP) , RES'length ) ;
			
	-- Adding all signals together
	SAMPLE_OUT <= 	RES(30 downto 15) + SAMPLE_IN;
end architecture;