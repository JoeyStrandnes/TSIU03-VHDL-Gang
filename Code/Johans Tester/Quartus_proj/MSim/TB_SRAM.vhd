library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TB_SRAM is
	generic( N : integer := 2**10	);
  port( sram_addr : in unsigned(19 downto 0);
        sram_data : inout signed(15 downto 0);
        sram_we   : in  std_logic;
        sram_oe   : in  std_logic;
        sram_ce   : in  std_logic;
        sram_lb   : in  std_logic;
        sram_ub   : in  std_logic); -- added for Testbench
end entity;

architecture sim of TB_SRAM is
  --signal data : unsigned(15 downto 0); 
  type RAM_1Mx16 is array (0 to N -1) of signed(15 downto 0);
  --signal RAM_DATA : RAM_1Mx16 := (others => (others=>'0'));
  
begin
	process(sram_addr, sram_data, sram_we, sram_ce) begin	
		if sram_ce = '0' and sram_we = '0' then
	--		RAM_DATA( to_integer(sram_addr) ) <= sram_data;
		end if;
	end process;
	--sram_data <= RAM_DATA(to_integer(sram_addr)) when sram_ce = '0' and sram_oe = '0' else
	--             (others=>'Z');

-- SHARED VAR VERSION:
	process(sram_addr, sram_data, sram_we, sram_ce, sram_oe)
		variable RAM_DAT : RAM_1Mx16 := (others => (others=>'0'));
	begin	
		if sram_ce = '0' and sram_we = '0' then
			RAM_DAT( to_integer(sram_addr) ) := sram_data;
		end if;
		if sram_ce = '0' and sram_oe = '0' then
			sram_data <= RAM_DAT(to_integer(sram_addr));
		else 
			sram_data <= (others=>'Z');
		end if;
	end process;

--	--RAM_DATA <= (others => '0'); WANT TO SET SRAM TO ZEROS
--	process(clk)
	-- begin
		-- if rising_edge(clk) then
			-- if sram_we = '0' then --WRITE
				-- RAM_DATA( to_integer(sram_addr) ) <= sram_data;
			-- else
				-- sram_data <= RAM_DATA(to_integer(sram_addr) );
			-- end if;
		-- end if;
	-- end process;
end architecture;
