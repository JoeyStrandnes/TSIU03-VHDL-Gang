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
			ECHO_VOL					: in unsigned(3 downto 0);
			ECHO_NUM					: in unsigned(1 downto 0);
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
	signal OUT_TMP: signed(15 downto 0);
	constant fs  : integer := 48828;
	signal ECHO_M : signed(15 downto 0);
	signal RES 	: signed(31 downto 0);
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
			-- Needs to be here to not sound like ass
			if cntr < 10 then
				offset <= (others => '0' );
				RW <= '1';
			-- First ECHO read
			elsif cntr < 50 then
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*1
				, offset'length);
				RW <= '1';
			elsif cntr < 75 then
				ECHO1 <= resize( DATA_READ(15 downto 1) , 16);
			-- Secound ECHO read
			elsif cntr < 100 then
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*2
				, offset'length);
				RW <= '1';
			elsif cntr < 125 then
				ECHO2 <= resize( DATA_READ(15 downto 2) , 16);
			-- Third ECHO read
			elsif cntr < 150 then
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*3
				, offset'length);
				RW <= '1';
			elsif cntr < 175 then
					ECHO3 <= resize( DATA_READ(15 downto 3) , 16);
			-- Fourth ECHO read
			elsif cntr < 200 then
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6104*4
				, offset'length);

				RW <= '1';
			elsif cntr < 225 then
				ECHO4 <= resize( DATA_READ(15 downto 4) , 16);
			elsif cntr < 250 then

				-- Muting echos not wanted decided by ECHO_NUM 
				if ECHO_NUM = "00" then
					ECHO2 <= (others => '0');
					ECHO3 <= (others => '0');
					ECHO4 <= (others => '0');
				elsif ECHO_NUM = "01" then
					ECHO3 <= (others => '0');
					ECHO4 <= (others => '0');
				elsif ECHO_NUM = "10" then
					ECHO4 <= (others => '0');
				end if;
				
--				case ECHO_VOL is
--					when "1111" => ECHO_M <= to_signed(16384, 16);
--					when "1110" => ECHO_M <= to_signed(11468, 16);	
--					when "1101" => ECHO_M <= to_signed(5620, 16);
--					when "1100" => ECHO_M <= to_signed(3934, 16);
--					when "1011" => ECHO_M <= to_signed(2754, 16);
--					when "1010" => ECHO_M <= to_signed(1928, 16);
--					when "1001" => ECHO_M <= to_signed(1350, 16);
--					when "1000" => ECHO_M <= to_signed(944, 16);
--					when "0111" => ECHO_M <= to_signed(662, 16);
--					when "0110" => ECHO_M <= to_signed(462, 16);
--					when "0101" => ECHO_M <= to_signed(324, 16);
--					when "0100" => ECHO_M <= to_signed(226, 16);
--					when "0011" => ECHO_M <= to_signed(158, 16);
--					when "0010" => ECHO_M <= to_signed(112, 16);
--					when "0001" => ECHO_M <= to_signed(78, 16); --basically zero
--					when others => ECHO_M <= to_signed(0, 16);
--				end case;	
				-- Adding all echos together
				OUT_TMP <= ECHO1 + ECHO2 + ECHO3 + ECHO4;
				
				
			else --Writing to SRAM
				offset <= (others => '0');
				RW <= '0';
			end if;
		end if;
	end process;
	
	with ECHO_VOL select
		ECHO_M <=   	to_signed(16384, 16) when "0000",
							to_signed(11468, 16) when "0001", 
							to_signed(8028, 16) when "0010",	
							to_signed(5620, 16) when "0011",  
							to_signed(3934, 16) when "0100",
							to_signed(2754, 16) when "0101",
							to_signed(1928, 16) when "0110",
							to_signed(1350, 16) when "0111",
							to_signed(944, 16) when "1000",
							to_signed(662, 16) when "1001",
							to_signed(462, 16) when "1010",
							to_signed(324, 16) when "1011",
							to_signed(226, 16) when "1100",
							to_signed(158, 16) when "1101",
							to_signed(112, 16) when "1110",	
							to_signed(78, 16)  when "1111", 
							to_signed(0, 16)  when others;  
		
		RES<= (ECHO_M * OUT_TMP);
			
	-- Adding all signals together
	SAMPLE_OUT <= 	RES(31 downto 16) +SAMPLE_IN;
end architecture;