library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab2_KB is
	port(rstn,clk,PS2_CLK,PS2_DAT : in std_logic ;
		HEX0 : out std_logic_vector(6 downto 0) ;
	   --LEDR : out std_logic_vector(7 downto 0) ;
		HEX7 : out std_logic_vector(6 downto 0) ;
		HEX6 : out std_logic_vector(6 downto 0));
end entity;

architecture rtl of Lab2_KB is
	signal PS2_CLK2, PS2_CLK_old, PS2_DAT2, 
		   PS2_bit_en, PS2_byte_en, E0, F0,
		   scancode_en, cntr_sel : std_logic;
	signal shiftreg 	: std_logic_vector(9 downto 0);
	signal PS2_byte 	: std_logic_vector(7 downto 0);
	signal scancode 	: std_logic_vector(9 downto 0);
	signal cntr1		: unsigned(3 downto 0);
	signal cntr2		: unsigned(3 downto 0);
begin

	--Process 1: syncronize the input
	p1 : process(clk)
	begin
		if rising_edge(clk) then
			PS2_DAT2 <= PS2_DAT;
			PS2_CLK2 <= PS2_CLK;
			PS2_CLK_old <= PS2_CLK2;

		end if; --rising edge(clk)
	end process;


	PS2_bit_en <= (not PS2_CLK2) and PS2_CLK_old;

	--Process 2: Handle shiftreg:
	p2 : process(clk,rstn)
	begin
		if rstn = '0' or PS2_byte_en = '1' then
			shiftreg <= (others => '1');
		elsif rising_edge(clk) then
			if PS2_bit_en = '1' then
				shiftreg(8 downto 0) <= shiftreg(9 downto 1);
				shiftreg(9) <= PS2_DAT2;
				PS2_byte <= shiftreg(8 downto 1);
			end if;
		end if;
	end process;

	PS2_byte_en <= not scancode(0);

	p3 : process(clk, rstn)
	begin
		if rstn = '0' then
			scancode <= (others => '0');
			E0 <= '0';
			F0 <= '0';
		elsif rising_edge(clk) then
			if PS2_byte_en = '1' then
				if PS2_byte = x"E0" then
					E0 <= '1';
				elsif PS2_byte = x"F0" then
					F0 <= '0';
				else
					scancode <= E0 & F0 & PS2_byte;
					E0 <= '0';
					F0 <= '0';
				end if;
			end if;
		end if;
	end process; 

	scancode_en <= not scancode(8); --scancode_en triggers on F0 = 1
	
	p4 : process(clk, rstn)
	begin
		if rstn = '0' then
			cntr_sel <= '0';
		elsif rising_edge(clk) then
			if scancode_en = '0' then
				if scancode(9) = '1' then --if E0 flag is set
					if scancode(7 downto 0) = x"75" and cntr1 < 15 then
						cntr1 <= cntr1 + 1;
					elsif scancode(7 downto 0) = x"72" and cntr1 > 0 then
						cntr1 <= cntr1 - 1;
					end if;
				end if;
			end if;
		end if;
	end process ; 


	decode : process(cntr1)
	 begin
		
	 	case cntr1 is
			when x"0" =>	HEX0 <= "1000000"; --scancode for no.1 to 7-seg
 	 		when x"1" =>	HEX0 <= "1111001"; --scancode for no.1 to 7-seg
	 		when x"2" =>	HEX0 <= "0100100"; --scancode for no.2 to 7-seg
	 		when x"3" =>	HEX0 <= "0110000"; --scancode for no.3 to 7-seg
	 		when x"4" =>	HEX0 <= "0011001"; --scancode for no.4 to 7-seg
	 		when x"5" =>	HEX0 <= "0010010"; --scancode for no.5 to 7-seg 
	 		when x"6" =>	HEX0 <= "0000010"; --scancode for no.6 to 7-seg
	 		when x"7" =>	HEX0 <= "1111000"; --scancode for no.7 to 7-seg 
	 		when x"8" =>	HEX0 <= "0000000"; --scancode for no.8 to 7-seg 
	 		when x"9" =>	HEX0 <= "0010000"; --scancode for no.9 to 7-seg
	 		when x"A" =>	HEX0 <= "0001000"; --scancode for no.10 to 7-seg
			when x"B" =>	HEX0 <= "0000011"; --scancode for no.11 to 7-seg
			when x"C" =>	HEX0 <= "0100111"; --scancode for no.12 to 7-seg
			when x"D" =>	HEX0 <= "0100001"; --scancode for no.13 to 7-seg
			when x"E" =>	HEX0 <= "0000110"; --scancode for no.14 to 7-seg
			when x"F" =>	HEX0 <= "0001110"; --scancode for no.15 to 7-seg
	 		when others => 	HEX0 <= "0001001";  --when not 0-9 send H
	 	end case;
	 end process;

	HEX7 <= "1111111"; --"blank"
	HEX6 <= "0001110"; --"F"
end architecture;
