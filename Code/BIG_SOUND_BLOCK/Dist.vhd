library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dist is
	Port (clk, rstn : in std_logic;
			distcontrol : in unsigned(4 downto 0);
			sample_in : in signed (15 downto 0);
			sample_out : out signed(15 downto 0));
end entity;

architecture distArch of Dist is
	signal threshold : signed (15 downto 0);
	signal sample_out_tmp : signed(15 downto 0);
	signal mult_tmp: signed(31 downto 0);
	signal gain: signed(15 downto 0);
	constant N : integer := 1;
begin
with distcontrol select

		threshold <=   to_signed(32767, 16) when "00000", -- 32767*1/16 
							to_signed(16834*N, 16) when "00001", -- 32767*2/16 
							to_signed(8192*N, 16) when "00010",	-- 32767*3/16 
							to_signed(4096*N, 16) when "00011", -- 32767*4/16 
							to_signed(2048*N, 16) when "00100",
							to_signed(1024*N, 16) when "00101",
							to_signed(512*N, 16) when "00110",
							to_signed(256*N, 16) when "00111",
							to_signed(128*N, 16) when "01000",
							to_signed(64*N, 16) when "01001",
							to_signed(32*N, 16) when "01010",
							to_signed(16*N, 16) when "01011",
							to_signed(8*N, 16) when "01100",
							to_signed(4*N, 16) when "01101",
							to_signed(2*N, 16) when "01110",	-- 32767*14/16 
							to_signed(1*N, 16)  when "01111", -- 32767*15/16 
							to_signed(0, 16)  when others; 

					
with distcontrol select
		gain <=				to_signed(1, 16) when "00000",  
								to_signed(1*N, 16) when "00001", 
								to_signed(2*N, 16) when"00010",	 
								to_signed(4*N, 16) when "00011", 
								to_signed(4*N, 16) when "00100",
								to_signed(8*N, 16) when "00101",
								to_signed(8*N, 16) when "00110",
								to_signed(16*N, 16) when "00111",
								to_signed(16*N, 16) when "01000",
								to_signed(32*N, 16) when "01001",
								to_signed(64*N, 16) when "01010",
								to_signed(128*N, 16) when "01011",
								to_signed(256*N, 16) when "01100",
								to_signed(512*N, 16) when "01101",
								to_signed(1024*N, 16) when "01110",	 
								to_signed(2048*N, 16)  when "01111",  
								to_signed(1*N, 16)  when others; 
						
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
	
	mult_tmp <= sample_out_tmp * gain;
	sample_out <= resize( mult_tmp, sample_out'length);
	
end architecture;

