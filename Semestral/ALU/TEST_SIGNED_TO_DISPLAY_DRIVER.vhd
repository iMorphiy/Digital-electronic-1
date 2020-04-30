
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY TEST_SIGNED_TO_DISPLAY_DRIVER IS
END TEST_SIGNED_TO_DISPLAY_DRIVER;
 
ARCHITECTURE behavior OF TEST_SIGNED_TO_DISPLAY_DRIVER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT signed_to_display_driver
    PORT(
         clk_i : IN  std_logic;
         data_i : IN  std_logic_vector(7 downto 0);
         data0_o : OUT  std_logic_vector(3 downto 0);
         data1_o : OUT  std_logic_vector(3 downto 0);
         data2_o : OUT  std_logic_vector(3 downto 0);
         data3_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal data_i : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal data0_o : std_logic_vector(3 downto 0);
   signal data1_o : std_logic_vector(3 downto 0);
   signal data2_o : std_logic_vector(3 downto 0);
   signal data3_o : std_logic;

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
          data3_o => data3_o
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

		data_i <= "10000001";
		wait for 50 ns;	
      data_i <= "00000001";
		wait for 50 ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
