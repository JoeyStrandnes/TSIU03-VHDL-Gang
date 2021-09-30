library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SRAM_control is
  Port ( 
			rstn							: in std_logic;
			lrsel							: in std_logic;
			offset   					: in unsigned(19 downto 0);
			RW								: in std_logic; -- Read = 1, Write = 0
         ADDR                    : out unsigned(19 downto 0);
         sram_ce,sram_oe,sram_we : out std_logic;
			DATA_SRAM					: inout signed(15 downto 0);
			DATA_ECHO					: inout signed(15 downto 0);
         sram_lb,sram_ub         : out std_logic
			);
end entity;

architecture rtl of SRAM_control is
	signal PTR : unsigned(19 downto 0) ; -- current adress in memory
begin
	--tied to vdd/ground constantly, since we dont need change these...
	sram_ce <= '0';
	sram_oe <= '0';
	sram_lb <= '0';
	sram_ub <= '0';
	
	sram_we <= RW;
	DATA_ECHO <= DATA_SRAM when RW = '1';
	DATA_SRAM <= DATA_ECHO when RW = '0';
	process(rstn,lrsel)
	begin
		if rstn = '0' then
			PTR <= (others => '0');
		else
			PTR <= PTR + 1;
		end if;	
	end process;
	
	ADDR <= PTR - offset;
end architecture;
