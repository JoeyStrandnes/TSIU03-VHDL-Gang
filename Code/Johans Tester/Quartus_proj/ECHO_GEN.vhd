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
			if cntr < 50 then
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6103*1
				, offset'length);
				RW <= '1';
				ECHO1 <= DATA_READ;
			elsif cntr < 75 then
				offset <= (others => '0' );
				RW <= '0';
			elsif cntr < 100 then
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6103*2
				, offset'length);
				RW <= '1';
				ECHO2 <= DATA_READ;
			elsif cntr < 125 then
				offset <= (others => '0' );
				RW <= '0';
			elsif cntr < 150 then
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6103*3
				, offset'length);
				RW <= '1';
				ECHO3 <= DATA_READ;
			elsif cntr < 175 then
				offset <= (others => '0' );
				RW <= '0';
			elsif cntr < 200 then
				offset <= resize(
				(resize(ECHO_DELAY, offset'length) + 1)*6103*4
				, offset'length);
				RW <= '1';
				ECHO4 <= DATA_READ;

			else 
				RW <= '1';
				OUT_TMP <= ECHO4 ;
			end if;
		end if;
	end process;

	

	-- Muting echos not wanted decided by ECHO_NUM NOT A GOOD SOLUTION!
--	process(clk,ECHO_NUM) is
--		begin
--			if rising_edge(clk) then	
--				if ECHO_NUM = "00" then
--					ECHO2 <= (others => '0');
--					ECHO3 <= (others => '0');
--					ECHO4 <= (others => '0');
--				elsif ECHO_NUM = "01" then
--					ECHO3 <= (others => '0');
--					ECHO4 <= (others => '0');
--				elsif ECHO_NUM = "10" then
--					ECHO4 <= (others => '0');
--				end if;
--			end if;
--	end process;
			
	-- Adding all signals together,


	SAMPLE_OUT <= 	OUT_TMP +SAMPLE_IN;
end architecture;