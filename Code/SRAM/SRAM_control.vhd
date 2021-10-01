library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SRAM_control is
  Port ( 
			clk							: in std_logic;
			rstn							: in std_logic;
			lrsel							: in std_logic;
			offset   					: in unsigned(19 downto 0);
			RW								: in std_logic; -- Read = 1, Write = 0
         ADDR                    : out unsigned(19 downto 0);
         sram_ce,sram_oe,sram_we : out std_logic;
			DATA_SRAM					: inout signed(15 downto 0);
			DATA_ECHO_IN				: in signed(15 downto 0);
			DATA_ECHO_OUT				: out signed(15 downto 0);
         sram_lb,sram_ub         : out std_logic
			);
end entity;

architecture rtl of SRAM_control is
	signal PTR : unsigned(19 downto 0) ; -- current adress in memory
	signal lrsel_old, lrsel_change : std_logic := '0';
begin
	--tied to vdd/ground constantly, since we dont need change these...
	sram_ce <= '0';
	sram_oe <= '0';
	sram_lb <= '0';
	sram_ub <= '0';
	
	sram_we <= RW;
	
	process(clk,rstn) is begin
		if rstn = '0' then
			
		elsif rising_edge(clk) then
			if RW = '1' then
				DATA_ECHO_OUT <= DATA_SRAM;
			else
				DATA_SRAM <= DATA_ECHO_IN;
			end if;
		end if;
	end process;
	
	
	process(rstn,clk)
	begin
		if rstn = '0' then
			PTR <= (others => '0');
		elsif rising_edge(clk) then
			lrsel_old <= lrsel;
			lrsel_change <= lrsel_old xor lrsel;
			if lrsel_change = '1' then
				PTR <= PTR + 1;
			end if;
		end if;	
	end process;
	
	ADDR <= PTR - offset;
end architecture;
