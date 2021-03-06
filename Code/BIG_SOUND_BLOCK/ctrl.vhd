

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl is
	port(clk,rstn  : in  std_logic;
	
	men: out std_logic;
	mclk: out std_logic;
	bclk: out std_logic;
	adclrc: out std_logic;
	daclrc: out std_logic;
	lrsel: out std_logic;
	count : out unsigned(8 downto 0); --Added counter as output! Counts 0 to 511
	Bitcnt: out unsigned(4 downto 0);
	SCCnt: out unsigned(1 downto 0));
end entity;

architecture rtl of ctrl is
	signal cntr: unsigned(9 downto 0) := (others => '0');
begin
	process(clk,rstn) begin
		if rstn = '0' then
			cntr <= (others => '0');
		elsif rising_edge(clk) then
			cntr <= cntr + 1;
		end if;
	end process;
	
	mclk 		<= NOT cntr(1);
	bclk 		<= cntr(3);
	adclrc	<= NOT cntr(9);
	daclrc	<= NOT cntr(9);
	men 		<= cntr(0) AND cntr(1);
	lrsel		<= cntr(9);
	SCCnt 	<= cntr(3 downto 2);
	BitCnt 	<= cntr(8 downto 4);
	
	count <= cntr(8 downto 0);
end architecture;



--
--
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--
--
--entity Ctrl is 
--	port( clk, rstn : in std_logic;
--			mclk, bclk, adclrc, daclrc, lrsel : out std_logic;
--			men : out std_logic;
--			SCCnt : out unsigned (1 downto 0);
--			BitCnt : out unsigned (4 downto 0));
--end Ctrl;
--
--architecture arch of Ctrl is 
--	signal cntr : unsigned (9 downto 0);
--	signal SCCnt_temp : unsigned (1 downto 0);
--	signal BitCnt_temp : unsigned (4 downto 0);
--
--begin
--
--	process(clk,rstn)
--		begin
--			if rstn = '0' then	
--				cntr <= (others => '0');
--				men <= '0';
--				SCCnt_temp <= "00";
--				BitCnt_temp <= "00000";
--			elsif rising_edge(clk) then
--				cntr <= cntr + 1;
--				
--				if (cntr(0) AND cntr(1)) = '1' then -- when cntr is at 3, 7, 11... men goes to 1
--					men <= '1';
--				else 
--					men <= '0';
--				end if;
--				
--				if (cntr(0) OR cntr(1)) = '0' then
--					SCCnt_temp <= SCCnt_temp + 1;
--				end if;
--				
--				if cntr = "0000000000" then
--					SCCnt_temp <= "00";
--				end if;
--				
--				if (cntr(0) or cntr(1) or cntr(2) or cntr(3)) = '0' then
--					BitCnt_temp <= BitCnt_temp + 1;
--				end if;
--				
--				if (cntr = "0000000000") then
--					BitCnt_temp <= "00000";
--				end if;
--				
--				if (cntr >= "0000000000" and cntr < "1000000000") then 
--					adclrc <= '1';
--					daclrc <= '1';
--					lrsel <= '0';
--				else
--					adclrc <= '0';
--					daclrc <= '0';
--					lrsel <= '1';
--				end if;
--			
--			end if;
--	end process;
--	
--	SCCnt <= SCCnt_temp;
--	BitCnt <= BitCnt_temp;
--				 
--	mclk <= not cntr (1); 
--	bclk <= cntr (3); 
--	
--end arch;