--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:34:40 03/27/2020
-- Design Name:   
-- Module Name:   C:/Users/vyma9/OneDrive/Plocha/VUT/DE1/Digital-electronic-1/Labs/08-traffic_lights/traffic_lights/test_top.vhd
-- Project Name:  traffic_lights
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_top IS
END test_top;
 
ARCHITECTURE behavior OF test_top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         TRAFFIC1_LED_RED : OUT  std_logic;
         TRAFFIC1_LED_ORANGE : OUT  std_logic;
         TRAFFIC1_LED_GREEN : OUT  std_logic;
         TRAFFIC2_LED_RED : OUT  std_logic;
         TRAFFIC2_LED_ORANGE : OUT  std_logic;
         TRAFFIC2_LED_GREEN : OUT  std_logic;
         clk_i : IN  std_logic;
         BTN0 : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal BTN0 : std_logic := '0';

 	--Outputs
   signal TRAFFIC1_LED_RED : std_logic;
   signal TRAFFIC1_LED_ORANGE : std_logic;
   signal TRAFFIC1_LED_GREEN : std_logic;
   signal TRAFFIC2_LED_RED : std_logic;
   signal TRAFFIC2_LED_ORANGE : std_logic;
   signal TRAFFIC2_LED_GREEN : std_logic;

   -- Clock period definitions
   constant clk_i_period : time := 5 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          TRAFFIC1_LED_RED => TRAFFIC1_LED_RED,
          TRAFFIC1_LED_ORANGE => TRAFFIC1_LED_ORANGE,
          TRAFFIC1_LED_GREEN => TRAFFIC1_LED_GREEN,
          TRAFFIC2_LED_RED => TRAFFIC2_LED_RED,
          TRAFFIC2_LED_ORANGE => TRAFFIC2_LED_ORANGE,
          TRAFFIC2_LED_GREEN => TRAFFIC2_LED_GREEN,
          clk_i => clk_i,
          BTN0 => BTN0
        );

   -- Clock process definitions
   clk_i_process :process
   begin
		clk_i <= '0';
		wait for clk_i_period/2;
		clk_i <= '1';
		wait for clk_i_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      BTN0 <= '1';
      wait for clk_i_period*10;
      -- insert stimulus here 

      wait;
   end process;

END;
