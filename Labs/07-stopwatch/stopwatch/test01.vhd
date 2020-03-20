--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:15:33 03/19/2020
-- Design Name:   
-- Module Name:   C:/Users/vyma9/OneDrive/Plocha/VUT/DE1/Digital-electronic-1/Labs/07-stopwatch/stopwatch/test01.vhd
-- Project Name:  stopwatch
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: stopwatchCounter
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
 
ENTITY test01 IS
END test01;
 
ARCHITECTURE behavior OF test01 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT stopwatchCounter
    PORT(
         sec_h_o : OUT  std_logic_vector(3 downto 0);
         sec_l_o : OUT  std_logic_vector(3 downto 0);
         hth_h_o : OUT  std_logic_vector(3 downto 0);
         hth_l_o : OUT  std_logic_vector(3 downto 0);
         clk_i : IN  std_logic;
         srst_n_i : IN  std_logic;
         ce_100Hz_i : IN  std_logic;
         cnt_en_i : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal srst_n_i : std_logic := '0';
   signal ce_100Hz_i : std_logic := '0';
   signal cnt_en_i : std_logic := '0';

 	--Outputs
   signal sec_h_o : std_logic_vector(3 downto 0);
   signal sec_l_o : std_logic_vector(3 downto 0);
   signal hth_h_o : std_logic_vector(3 downto 0);
   signal hth_l_o : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
	constant clk100_i_period : time := 100 ns;
	constant per : time := 600000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: stopwatchCounter PORT MAP (
          sec_h_o => sec_h_o,
          sec_l_o => sec_l_o,
          hth_h_o => hth_h_o,
          hth_l_o => hth_l_o,
          clk_i => clk_i,
          srst_n_i => srst_n_i,
          ce_100Hz_i => ce_100Hz_i,
          cnt_en_i => cnt_en_i
        );

   -- Clock process definitions
   clk_i_process :process
   begin
		clk_i <= '0';
		wait for clk_i_period/2;
		clk_i <= '1';
		wait for clk_i_period/2;
   end process;
 
   clk100_i_process :process
   begin
		ce_100Hz_i <= '0';
		wait for clk100_i_period/2;
		ce_100Hz_i <= '1';
		wait for clk100_i_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin
		srst_n_i <= '1';
		cnt_en_i <= '1';
      wait for per;
		
		srst_n_i <= '1';
		cnt_en_i <= '1';
		wait for clk100_i_period*2;
		
		srst_n_i <= '0';
		cnt_en_i <= '1';
		wait for clk100_i_period*2;
		
		srst_n_i <= '0';
		cnt_en_i <= '0';
		wait for clk100_i_period*2;

      wait;
   end process;

END;
