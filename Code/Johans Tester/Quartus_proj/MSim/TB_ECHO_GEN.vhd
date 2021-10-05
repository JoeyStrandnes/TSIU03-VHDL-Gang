library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all; -- used for sin/cos. Type real is 32 bit floating point.

library work;

entity TB_ECHO_GEN is
end entity;

architecture sim of TB_ECHO_GEN is
  -- signals for clock generation:
  signal done : boolean := false;
  
  -- DUT signals:
	signal clk, rstn : std_logic := '1'; -- clk must be initiated. 'U' is not a good state.
	signal mclk, bclk, adclrc, daclrc, adcdat, dacdat : std_logic;
	signal lrsel : std_logic;
	signal count : unsigned(8 downto 0);
	signal cntr: unsigned(9 downto 0) := (others => '0');
	signal SAMPLE_IN, SAMPLE_OUT: signed(15 downto 0);
	signal DATA_READ, DATA_WRITE: signed(15 downto 0);
	signal RW		: std_logic;

	signal	VOL 				:  unsigned(3 downto 0);
	signal	NUM					:  unsigned(1 downto 0);
	signal	DELAY				:  unsigned(3 downto 0);

	signal offset				: unsigned(19 downto 0);
  -- some functions for reporting results:
  function s2str(x : signed) return string is begin
    return integer'image(to_integer(x));
  end function;
  function oknoks(ok : boolean) return string is begin
    if ok then return "OK"; else return "NOK"; end if;
  end function;
  function oknoks(ok : boolean; x : string) return string is begin
    if ok then return "OK"; else return "NOK (" & x & ")"; end if;
  end function;
  function oknoks(x, e : integer) return string is begin
    if x=e then return "OK (" & integer'image(x) & ")";
    else return "NOK (" & integer'image(x) & "/=" & integer'image(e) & ")"; end if;
  end function;
  function oknoks(x, e : time) return string is begin
    if x=e then return "OK (" & time'image(x) & ")";
    else return "NOK (" & time'image(x) & "/=" & time'image(e) & ")"; end if;
  end function;
  function oknoks(x, e : signed) return string is begin
    if x=e then return "OK (" & s2str(x) & ")";
    else return "NOK (" & s2str(x) & "/=" & s2str(e) & ")"; end if;
  end function;
  
  -- declare component DUT:
  -- The names and types are important. The order should not matter.
component ECHO_GEN 
  Port ( 
			clk							: in std_logic;
			rstn						: in std_logic;
			lrsel						: in std_logic;
			cntr						: in unsigned(8 downto 0); --really want first 9 bits
			SAMPLE_IN					: in signed(15 downto 0);
			SAMPLE_OUT					: out signed(15 downto 0);
			-- SETTINGS 
			ECHO_VOL					: in unsigned(3 downto 0);
			ECHO_NUM					: in unsigned(1 downto 0);
			ECHO_DELAY					: in unsigned(3 downto 0);
			-- SRAM
			offset   					: out unsigned(19 downto 0);
			RW							: out std_logic; -- Read = 1, Write = 0
			DATA_WRITE					: out signed(15 downto 0);
			DATA_READ					: in signed(15 downto 0)
			);
end component;


begin
  -- ### Clock generation part ###
  clk <= not clk after 10 ns when not done;
  rstn <= '0', '1' after 50 ns;
  done <= false, true after 1 ms;
  
	process(clk,rstn) begin
		if rstn = '0' then
			cntr <= (others => '0');
		elsif rising_edge(clk) then
			cntr <= cntr + 1;
		end if;
	end process;
	
	mclk 		<= NOT cntr(1);
	bclk 		<= cntr(3);
	adclrc	<= NOT cntr(9);
	daclrc	<= NOT cntr(9);
	lrsel		<= cntr(9);
	count <= cntr(8 downto 0);
  

  -- ### Instantiation ###
	DUT_ECHO_GEN : ECHO_GEN port map(
			clk		=> clk,				
			rstn	=> rstn, 				
			lrsel	=> lrsel,								
			cntr	=> count,				
			SAMPLE_IN=> SAMPLE_IN,					
			SAMPLE_OUT=> SAMPLE_OUT,					
			-- SETTINGS 
			ECHO_VOL => VOL,					
			ECHO_NUM => NUM,					
			ECHO_DELAY	=> DELAY,			
			-- SRAM
			offset  => offset, 					
			RW		=> RW,					
			DATA_WRITE	=> DATA_WRITE,		
			DATA_READ	=> DATA_READ
			);
			 

end architecture;

