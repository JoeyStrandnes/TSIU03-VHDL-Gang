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
	signal tmp: unsigned(3 downto 0);
begin
tmp <= "0001";
with tmp select
		threshold <=   to_signed(2048, 16) when "0000", -- 32767*1/16 
							to_signed(4096, 16) when "0001",
							to_signed(6144, 16) when "0010",
							to_signed(8192, 16) when "0011",
							to_signed(10240, 16) when "0100",
							to_signed(12288, 16) when "0101",
							to_signed(14336, 16) when "0110",
							to_signed(16384, 16) when "0111",
							to_signed(18432, 16) when "1000",
							to_signed(20480, 16) when "1001",
							to_signed(22528, 16) when "1010",
							to_signed(24576, 16) when "1011",
							to_signed(26624, 16) when "1100",
							to_signed(28672, 16) when "1101",
							to_signed(30720, 16) when "1110",	-- 32767*14/16 
							to_signed(32767, 16)  when "1111", -- 32767*15/16 
							to_signed(32767, 16)  when others; -- 32767*16/16 
	process (clk, rstn)
	begin
		if rstn = '0' then
			--En massa skit;
		elsif rising_edge (clk) then
			
				if sample_in > threshold then --and sample_in > 0 then -- Kollar inte 0
					sample_out_tmp <= threshold;
				elsif sample_in < -threshold then --and sample_in < 0 then --Kollar inte 0
					sample_out_tmp <= threshold;
				else 
					sample_out_tmp <= sample_in;
				end if;
			end if;
	end process;
	sample_out <= sample_out_tmp;
end architecture;

--threshold <= 2048 when distcontrol = "0000" else
--					4096 when distcontrol = "0001" else
--					6144 when distcontrol = "0010" else
--					8192 when distcontrol = "0011" else
--					10240 when distcontrol = "0100" else
--					12288 when distcontrol = "0101" else
--					14336 when distcontrol = "0110" else
--					16384 when distcontrol = "0111" else
--					18432 when distcontrol = "1000" else
--					20480 when distcontrol = "1001" else
--					22528 when distcontrol = "1010" else
--					24576 when distcontrol = "1011" else
--					26624 when distcontrol = "1100" else
--					28672 when distcontrol = "1101" else
--					30720 when distcontrol = "1110" else
--					32767 when distcontrol = "1111" else
--					def;