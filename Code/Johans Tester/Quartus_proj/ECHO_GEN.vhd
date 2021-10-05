library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ECHO_GEN is
  Port ( 
			clk							: in std_logic;
			rstn							: in std_logic;
			lrsel							: in std_logic;
			cntr							: in unsigned(8 downto 0); --really want first 9 bits
			SAMPLE_IN					: in signed(15 downto 0);
			SAMPLE_OUT					: out signed(15 downto 0);
			-- SETTINGS 
			ECHO_VOL						: in unsigned(3 downto 0);
			ECHO_NUM						: in unsigned(1 downto 0);
			ECHO_DELAY					: in unsigned(3 downto 0);
			-- SRAM
			offset   					: out unsigned(19 downto 0);
			RW								: out std_logic; -- Read = 1, Write = 0
			DATA_WRITE					: out signed(15 downto 0);
			DATA_READ					: in signed(15 downto 0)
			);
end entity;

architecture rtl of ECHO_GEN is
	signal ECHO1 : signed(15 downto 0);
	signal ECHO2 : signed(15 downto 0);
	signal ECHO3 : signed(15 downto 0);
	signal ECHO4 : signed(15 downto 0);
	--BORDE ANVÄNDA NÅGOT ANNAT?
begin
	-- Offset and RW 
	process(clk, rstn) is begin
		if rstn = '0' then
			ECHO1 <= (others => '0');
			ECHO2 <= (others => '0');
			ECHO3 <= (others => '0');
			ECHO4 <= (others => '0');
			
		elsif rising_edge(clk) then
			if cntr < 50 then
				offset <= resize(6100*(ECHO_DELAY+1)*1, offset'length); -- the first offset time decided by ECHO_DELAY 1/16 s to 1 s 
				RW <= '1';
				ECHO1 <= DATA_READ;
			elsif cntr < 100 then
				offset <= resize(6100*(ECHO_DELAY+1)*2, offset'length); -- the first offset time decided by ECHO_DELAY 2/16 s to 2 s 
				RW <= '1';
				ECHO2 <= DATA_READ;
			elsif cntr < 150 then
				offset <= resize(6100*(ECHO_DELAY+1)*3, offset'length); -- the first offset time decided by ECHO_DELAY 3/16 s to 3 s 
				RW <= '1';
				ECHO3 <= DATA_READ;
			elsif cntr < 200 then
				offset <= resize(6100*(ECHO_DELAY+1)*4, offset'length); -- the first offset time decided by ECHO_DELAY 4/16 s to 4 s 
				RW <= '1';
				ECHO4 <= DATA_READ;
			else
				offset <= (others => '0' );
				RW <= '0';
			end if;
		end if;
	end process;

	DATA_WRITE <= SAMPLE_IN; -- We are not writing any other data in to SRAM.

	-- Muting echos not wanted decided by ECHO_NUM
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
			
	-- Adding all signals together	
	SAMPLE_OUT <= SAMPLE_IN + ECHO1; -- + ECHO2 + ECHO3 + ECHO4);
	
end architecture;