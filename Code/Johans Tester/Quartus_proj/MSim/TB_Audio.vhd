library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all; -- used for sin/cos. Type real is 32 bit floating point.

library work;

entity TB_Audio is
end entity;

architecture sim of TB_Audio is
  -- signals for clock generation:
  signal done : boolean := false;
  -- DUT signals:
  signal clk, rstn : std_logic := '1'; -- clk must be initiated. 'U' is not a good state.
  signal mclk, bclk, adclrc, daclrc, adcdat, dacdat : std_logic;
  signal lrsel : std_logic;
  signal count : unsigned(8 downto 0);
  signal cntr: unsigned(9 downto 0) := (others => '0');
  signal SAMPLE_IN, SAMPLE_OUT: signed(15 downto 0);
  signal offset: unsigned(19 downto 0);
  signal RW		: std_logic;
  signal INPUT,OUTPUT : signed(15 downto 0);
  signal ADDR		: unsigned(19 downto 0);
  signal DATA       : signed(15 downto 0);
  -- SIGNALS BETWEEN DUTS
  signal CE, OE, WE,LB,UB : std_logic;
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

component TB_SRAM is
    port(sram_addr : in unsigned(19 downto 0);
         sram_data : inout signed(15 downto 0);
         sram_we, sram_oe, sram_ce, sram_lb, sram_ub, clk : in  std_logic);
  end component;

component SRAM_CONTROLLER
	  Port ( 
			clk							: in std_logic;
			rstn						: in std_logic;
			lrsel						: in std_logic;
			offset   					: in unsigned(19 downto 0);
			RW							: in std_logic; -- Read = 1, Write = 0
			ADDR                    	: out unsigned(19 downto 0);
			sram_ce,sram_oe,sram_we		: out std_logic;
			DATA_SRAM					: inout signed(15 downto 0);
			DATA_ECHO_IN				: in signed(15 downto 0);
			DATA_ECHO_OUT				: out signed(15 downto 0);
			sram_lb,sram_ub         	: out std_logic
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
	DUT_SRAM_CONTROLL : SRAM_CONTROLLER port map(
			clk		=> clk,				
			rstn	=> rstn, 				
			lrsel	=> lrsel,				
			offset  => offset,				
			RW		=>	RW,				
			ADDR    => ADDR,                	
			sram_ce => CE,
			sram_oe => OE,
			sram_we	=> WE,	
			DATA_SRAM => DATA,
			DATA_ECHO_IN => INPUT,				
			DATA_ECHO_OUT => OUTPUT,				
			sram_lb => UB,
			sram_ub => UB);
			 
	DUT_SRAM : TB_SRAM port map(
        sram_we => WE, sram_oe => OE, sram_ce => CE,
        sram_lb => LB, sram_ub => UB,
        sram_addr => ADDR,
        sram_data => DATA,
		clk => clk);
end architecture;

