--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:15:36 04/30/2020
-- Design Name:   
-- Module Name:   C:/Users/vyma9/OneDrive/Plocha/VUT/DE1/Digital-electronic-1/Semestral/ALU/TEST_DRIVER_TO_DIGITS.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: signed_to_display_driver
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
 
ENTITY TEST_DRIVER_TO_DIGITS IS
END TEST_DRIVER_TO_DIGITS;
 
ARCHITECTURE behavior OF TEST_DRIVER_TO_DIGITS IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT signed_to_display_driver
    PORT(
	clk_i    : in  std_logic;
	data_i  : in  std_logic_vector(7 downto 0);
	data0_o : out std_logic_vector(4-1 downto 0);
	data1_o : out std_logic_vector(4-1 downto 0);
	data2_o : out std_logic_vector(4-1 downto 0);
	data3_o : out std_logic_vector(4-1 downto 0);
	data_minus_o : out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal data_i : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal data0_o : std_logic_vector(3 downto 0);
   signal data1_o : std_logic_vector(3 downto 0);
   signal data2_o : std_logic_vector(3 downto 0);
   signal data3_o : std_logic_vector(3 downto 0);
	signal data_minus_o : std_logic;

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: signed_to_display_driver PORT MAP (
          clk_i => clk_i,
          data_i => data_i,
          data0_o => data0_o,
          data1_o => data1_o,
          data2_o => data2_o,
          data3_o => data3_o,
			 data_minus_o => data_minus_o 
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
      wait for 100 ns;	

		data_i <= "11111111";
		wait for 100 ns;	
      data_i <= "00000011";
		wait for 100 ns;
		data_i <= "01111111";
		wait for 100 ns;
		data_i <= "10000000";
		wait for 100 ns;
		data_i <= "01010101";
		wait for 100 ns;
		data_i <= "10101010";
		wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
