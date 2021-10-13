
library ieee;


use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Balance_Control is
	
	port(clk, rstn : in std_logic;
			lrsel : in std_logic;
			input : in signed(15 downto 0);
			control_setting : in unsigned(3 downto 0);
			output : out signed(15 downto 0)
		  );

end entity;




architecture rtl of Balance_Control is
	signal left_volume : signed(15 downto 0);
	signal right_volume : signed(15 downto 0);
	signal balance_volume : signed(15 downto 0);
	signal result : signed(30 downto 0);
begin 
		
	with control_setting select
	balance_volume <=		
								to_signed(0*2, 16) when ("0000" ),
								to_signed(226*2, 16) when ("0001" ),
								to_signed(462*2, 16) when ("0010" ),
								to_signed(944*2, 16) when ("0011" ),
								to_signed(1928*2, 16) when ("0100" ),
								to_signed(3934*2, 16) when ("0101" ),
								to_signed(8028*2, 16) when ("0110" ),
								
								to_signed(8028*2, 16) when ("1000" ),	
								to_signed(3934*2, 16) when ("1001" ),
								to_signed(1928*2, 16) when ("1010" ),
								to_signed(944*2, 16) when ("1011" ),
								to_signed(462*2, 16) when ("1100" ),
								to_signed(226*2, 16) when ("1101" ),
								to_signed(0*2, 16) when ("1110" ),
								
								to_signed(32767, 16) when others;
		process(clk, rstn)
		begin
			if rstn ='0' then
			--null
			elsif rising_edge(clk) then
				if lrsel = '1' and control_setting > 7 then-- even balance
					result <= resize( balance_volume*input ,31 );
				elsif lrsel = '0' and control_setting < 7 then
					result <= resize( balance_volume*input ,31);
				else 
					result <= resize( input * to_signed(16384, 16) , 31);
				end if;
			end if;
		end process;
		
	
--		left_volume <= input*balance_volume when balance_Control(4) = '0' ;
--		
--		right_volume <= input when else yada yada yada
----		
--		result = right_volume  when (lrsel = '0') else (left_volume);
		
		output <= result(30 downto 15);
				 
end architecture;
