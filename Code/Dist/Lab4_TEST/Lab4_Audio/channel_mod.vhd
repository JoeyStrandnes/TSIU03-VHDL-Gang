library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity channel_mod is
	Port (clk, rstn : in std_logic;
			sel, adcdat, men : in std_logic;
			dacdat : out std_logic;
			BitCnt : in unsigned(4 downto 0);
			SCCnt : in unsigned(1 downto 0);
			ADC : out signed(15 downto 0);
			DAC : in signed (15 downto 0));
end entity;


architecture channelArch of channel_mod is
	signal RXReg : signed(15 downto 0);
	signal TXReg : signed(15 downto 0);
begin
	process(clk, rstn) --rx
	begin
		if rstn = '0' then
			--ADC <= "0000000000000000";
		elsif rising_edge(clk) then
			if SCCnt = "01" and men='1' and sel='0' and BitCnt < "10000" then
				RXReg(0) <= adcdat;
				RXReg(15 downto 1) <= RXreg(14 downto 0);
			end if;
		end if;
	end process;
	
	process(clk, rstn) --tx
	begin
		if rstn = '0' then
			--dacdat <= '0';
		elsif rising_edge(clk) then
			if sel = '0' then
				dacdat <= TXReg(15);
				if SCCnt = "11" and men='1' then
					dacdat <= TXReg(15);
					TXReg <= TXReg(14 downto 0) & '0';
				end if;
			elsif sel = '1' then
				TXReg <= DAC;
			end if;
		end if;
	end process;
	ADC <= RXReg;
end architecture;