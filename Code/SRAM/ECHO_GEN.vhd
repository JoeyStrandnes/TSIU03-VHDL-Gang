library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ECHO_GEN is
  Port ( 
			clk							: in std_logic;
			rstn							: in std_logic;
			lrsel							: in std_logic;
			cntr							: in unsigned(9 downto 0); --really want first 9 bits
			SAMPLE_IN					: in signed(15 downto 0);
			SAMPLE_OUT					: out signed(15 downto 0);
			--SETTINGS 
			ECHO_VOL						: in std_logic_vector(3 downto 0);
			ECHO_NUM						: in std_logic_vector(1 downto 0);
			ECHO_DELAY					: in std_logic_vector(3 downto 0);

--			rstn_tmp	: out std_logic;
--			lrsel_tmp : out std_logic;
			
			
			
			offset   					: out unsigned(19 downto 0);
			RW								: out std_logic; -- Read = 1, Write = 0
			DATA							: inout signed(15 downto 0)
			);
end entity;

architecture rtl of ECHO_GEN is
begin
	
--	
--	RW <= '0';
--	DATA <= "0000111100001111";
--	offset <= (others =>'0');
--	rstn_tmp <= '1';
--	lrsel_tmp <= '0';
--	







end architecture;