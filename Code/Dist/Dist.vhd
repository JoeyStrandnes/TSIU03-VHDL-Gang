library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dist is
	Port (clk, rstn : in std_logic;
			distcontrol : in unsigned(3 downto 0);
			sample_in : in signed (15 downto 0);
			sample_out : out signed(15 downto 0));
end entity;

architecture distArch of Dist is
	signal threshold : signed (15 downto 0);
	signal sample_out_tmp : signed(15 downto 0);
	signal mult_tmp: signed(31 downto 0);
	signal tmp: unsigned(3 downto 0);
	signal gain: signed(15 downto 0);
begin
--tmp <= "0001";
with distcontrol select
		threshold <=   to_signed(32767, 16) when "0000", -- 32767*1/16 
							to_signed(1024, 16) when "0001", -- 32767*2/16 
							to_signed(512, 16) when "0010",	-- 32767*3/16 
							to_signed(256, 16) when "0011", -- 32767*4/16 
							to_signed(128, 16) when "0100",
							to_signed(96, 16) when "0101",
							to_signed(64, 16) when "0110",
							to_signed(48, 16) when "0111",
							to_signed(32, 16) when "1000",
							to_signed(24, 16) when "1001",
							to_signed(16, 16) when "1010",
							to_signed(12, 16) when "1011",
							to_signed(8, 16) when "1100",
							to_signed(4, 16) when "1101",
							to_signed(2, 16) when "1110",	-- 32767*14/16 
							to_signed(1, 16)  when "1111", -- 32767*15/16 
							to_signed(32767, 16)  when others; -- 
							
with distcontrol select
		gain <=				to_signed(1, 16) when "0000", -- 32767*1/16 
								to_signed(1, 16) when "0001", -- 32767*2/16 
								to_signed(2, 16) when"0010",	-- 32767*3/16 
								to_signed(4, 16) when "0011", -- 32767*4/16 
								to_signed(8, 16) when "0100",
								to_signed(12, 16) when "0101",
								to_signed(16, 16) when "0110",
								to_signed(24, 16) when "0111",
								to_signed(32, 16) when "1000",
								to_signed(48, 16) when "1001",
								to_signed(64, 16) when "1010",
								to_signed(96, 16) when "1011",
								to_signed(128, 16) when "1100",
								to_signed(256, 16) when "1101",
								to_signed(512, 16) when "1110",	-- 32767*14/16 
								to_signed(1024, 16)  when "1111", -- 32767*15/16 
								to_signed(1, 16)  when others; -- 
						
	process (clk, rstn)
	begin
		if rstn = '0' then
			--En massa skit;
		elsif rising_edge (clk) then
			
				if sample_in > threshold and sample_in > 0 then -- Kollar inte 0
					sample_out_tmp <= threshold;
				elsif sample_in < -threshold and sample_in < 0 then --Kollar inte 0
					sample_out_tmp <= -threshold;
				else 
					sample_out_tmp <= sample_in;
				end if;
			end if;
	end process;
	
	mult_tmp <= (sample_out_tmp * gain);
	sample_out <= mult_tmp(15 downto 0);
end architecture;

