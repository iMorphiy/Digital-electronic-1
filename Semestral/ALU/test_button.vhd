
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY test_button IS
END test_button;
 
ARCHITECTURE behavior OF test_button IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT instruction_enable
    PORT(
         clk_i : IN  std_logic;
         button_i : IN  std_logic;
         enale_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal button_i : std_logic := '0';

 	--Outputs
   signal enale_o : std_logic;

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: instruction_enable PORT MAP (
          clk_i => clk_i,
          button_i => button_i,
          enale_o => enale_o
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

      button_i <= '1';
		wait for 100 ns;
		button_i <= '0';
		wait for 100 ns;
		button_i <= '1';
      wait for 100 ns;
		button_i <= '0';

      wait;
   end process;

END;
