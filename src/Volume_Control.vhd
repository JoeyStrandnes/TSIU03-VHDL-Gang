
library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std;

entity Volume_Control is
	
	port(input : in signed(15 downto 0);
		  control_setting : in unsigned(3 downto 0);
		  output : out signed(15 downto 0));

end entity;




architecture Volume of Volume_Control is


begin






end architecture;
