--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:25:57 04/30/2020
-- Design Name:   
-- Module Name:   C:/Users/vyma9/OneDrive/Plocha/VUT/DE1/Digital-electronic-1/Semestral/ALU/TEST_READER.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: READER
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
 
ENTITY TEST_READER IS
END TEST_READER;
 
ARCHITECTURE behavior OF TEST_READER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT READER
    PORT(
         clk_i : IN  std_logic;
         action_i : IN  std_logic;
         reset_i : IN  std_logic;
         data_i : IN  std_logic_vector(7 downto 0);
         A_o : OUT  std_logic_vector(7 downto 0);
         B_o : OUT  std_logic_vector(7 downto 0);
         operation_o : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal action_i : std_logic := '0';
   signal reset_i : std_logic := '0';

 	--Outputs
   signal data_i : std_logic_vector(7 downto 0);
   signal A_o : std_logic_vector(7 downto 0);
   signal B_o : std_logic_vector(7 downto 0);
   signal operation_o : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: READER PORT MAP (
          clk_i => clk_i,
          action_i => action_i,
          reset_i => reset_i,
          data_i => data_i,
          A_o => A_o,
          B_o => B_o,
          operation_o => operation_o
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
      wait for 10 ns;
		action_i <= '0';
		reset_i <= '1';
		
		data_i <= "00000010"; -- 	2
		wait for 50 ns;
		action_i <= '1';
		wait for 50 ns;
		action_i <= '0';
		
		data_i <= "00000111"; -- 	7
		wait for 50 ns;
      action_i <= '1';
		wait for 50 ns;
		action_i <= '0';
		
		data_i <= "00000100"; -- 	7
		wait for 50 ns;
      action_i <= '1';
		wait for 50 ns;
		action_i <= '0';
		
		data_i <= "00000011"; -- 	2
		wait for 50 ns;
		action_i <= '1';
		wait for 50 ns;
		action_i <= '0';
		
		data_i <= "00000110"; -- 	7
		wait for 50 ns;
      action_i <= '1';
		wait for 50 ns;
		action_i <= '0';
		
		data_i <= "10000101"; -- 	7
		wait for 50 ns;
      action_i <= '1';
		wait for 50 ns;
		action_i <= '0';
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
