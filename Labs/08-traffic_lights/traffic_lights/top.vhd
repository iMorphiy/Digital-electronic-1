----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:58:58 03/27/2020 
-- Design Name: 
-- Module Name:    top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
	port(	
			-- OUTPUTS
--			LD15_CPLD : out  std_logic;
--			LD14_CPLD : out  std_logic;
--			LD13_CPLD : out  std_logic;
--			LD12_CPLD : out  std_logic;
--			LD11_CPLD : out  std_logic;
--			LD10_CPLD : out  std_logic;
			
			TRAFFIC1_LED_RED 		: out std_logic;
			TRAFFIC1_LED_ORANGE 	: out std_logic;
			TRAFFIC1_LED_GREEN 	: out std_logic;
			
			TRAFFIC2_LED_RED 		: out std_logic;
			TRAFFIC2_LED_ORANGE 	: out std_logic;
			TRAFFIC2_LED_GREEN 	: out std_logic;
			
			-- INPUTS
			clk_i 	: in  std_logic;
         BTN0 		: in  std_logic
			
			);
end top;

architecture Behavioral of top is
	signal s_lights	: std_logic_vector(5 downto 0);
	signal s_en : std_logic;
begin
    
--	 	port(	clk		: in std_logic;
--			clr		: in std_logic;
--			lights	: out std_logic_vector(5 downto 0));

	MAIN : entity work.traffic
		port map (
			clk => s_en,
			clr => not BTN0,
			lights => s_lights
		);
		
	CLOCK_ENABLE0 : entity work.clock_enable
	generic map (g_NPERIOD => x"0d05")
		port map (
			clk_i => clk_i,
			srst_n_i => BTN0,
			clock_enable_o => s_en
		);
	 
	

	
	TRAFFIC1_LED_RED		<= not s_lights(0);
	TRAFFIC1_LED_ORANGE	<= not s_lights(1);
	TRAFFIC1_LED_GREEN 	<= not s_lights(2);
	
	TRAFFIC2_LED_RED		<= not s_lights(3);
	TRAFFIC2_LED_ORANGE	<= not s_lights(4);
	TRAFFIC2_LED_GREEN	<= not s_lights(5);	
	 
end Behavioral;

