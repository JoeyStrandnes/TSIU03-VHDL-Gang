library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RGB_gen is
  Port ( clk, rstn, ce : in std_logic;
         pixcode :  in std_logic;
         -- Signals to the video DAC:
         vga_r :  out unsigned(7 downto 0);
         vga_g :  out unsigned(7 downto 0);
         vga_b :  out unsigned(7 downto 0);
         vga_sync  : out std_logic);
end entity;

architecture rtl of RGB_gen is

begin
	process(clk)
	
	begin
		if (rising_edge(clk)) then
			
			
			--vga_r <= (pixcode(6 downto 5) & pixcode(6 downto 5) & pixcode(6 downto 5) & pixcode(6 downto 5));
			--vga_g <= (pixcode(4 downto 2) & pixcode(4 downto 2) & pixcode(4 downto 3));
			--vga_b <= (pixcode(1 downto 0) & pixcode(1 downto 0) & pixcode(1 downto 0) & pixcode(1 downto 0));
			
			vga_r <= (others => pixcode);
			vga_g <= (others => pixcode);
			vga_b <= (others => pixcode);
			
		end if;
	end process;
	vga_sync <= '0';
	
end architecture;
