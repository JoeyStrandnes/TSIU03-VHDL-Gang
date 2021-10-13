library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity channel_mod is
	port(clk,rstn  : in  std_logic;
	
	men: in std_logic;
	sel: in std_logic;
	adcdat: in std_logic;
	dacdat: out std_logic;
	
	Bitcnt: in unsigned(4 downto 0);
	SCCnt: in unsigned(1 downto 0);
	ADC: out signed(15 downto 0);
	DAC: in signed(15 downto 0));
end entity;

architecture rtl of channel_mod is
	signal RXReg: signed(15 downto 0);
	signal TXReg: signed(15 downto 0);
begin

	rx: process(clk,rstn) begin
		if rstn = '0' then
			RXReg <= (others => '0');			
		elsif rising_edge(clk) then
			if sel = '0' AND men = '1' AND SCCnt = 1 AND BitCnt < 16 then
				RXReg <= RXReg(14 downto 0) & adcdat;
			end if;
		end if;
	end process;
	
	
	tx: process(clk,rstn) begin
		if rstn = '0' then
			TXReg <= (others => '0');			
		elsif rising_edge(clk) then
			if sel = '0' AND men = '1' AND SCCnt = 3 then 	
				TXReg <= TXReg(14 downto 0) & '0';					
			elsif sel = '1' then										
				TXReg <= DAC;	
			end if;
		end if;
	end process;
	
	ADC <= RXreg;
	dacdat <= TXReg(15);
end architecture;









--
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--entity Channel_Mod is 
--	port( clk ,rstn : in  std_logic ;
--		DAC : in signed (15 downto 0);
--		men : in std_logic;
--		bclk: in std_logic;
--		SCCnt : in unsigned (1 downto 0);
--		BitCnt : in unsigned (4 downto 0);
--		adcdat : in std_logic ;
--		lrsel : in std_logic;
--		ADC : out signed (15 downto 0);
--		dacdat : out std_logic 
--		);
--end Channel_Mod;
--
--architecture arch2 of Channel_Mod is  
--	signal RXReg, TXReg : signed (15 downto 0);
--
--begin 
--RX: process (clk , rstn)
--		begin
--			if rstn = '0' then
--				RXReg <= (others => '0');
--			elsif rising_edge (clk) then
--				if lrsel = '0' then
--					if ((SCCnt = "01") AND (men = '1')) then 
--						if BitCnt < 16 then
--							RXReg <= RXReg(14 downto 0) & adcdat;
--						end if;
--					end if;		
--				end if;
--			end if;
--	end process; 
--	ADC <= RXReg;
--		
--TX: process (clk , rstn)
--		begin 
--			if rstn = '0' then
--				TXReg <= (others => '0');
--			elsif rising_edge (clk) then
--				if ((SCCnt = "11") AND (men = '1') AND (BitCnt = "00")) then
--					TXReg <= DAC;
--				end if;
--				if lrsel = '0' then
--					dacdat <= TXReg(15);
--					if ((SCCnt = "11") AND (men = '1')) then
--						dacdat <= TXReg(15);
--							TXReg	<= TXReg(14 downto 0) & '0';
--					end if;
--				end if;
--			end if;	
--	end process;
--	
--	
--end arch2;