
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY test_FULL_ADDER IS
END test_FULL_ADDER;
 
ARCHITECTURE behavior OF test_FULL_ADDER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FULL_ADDER
    PORT(
         a_i : IN  std_logic;
         b_i : IN  std_logic;
         carry_i : IN  std_logic;
         s_o : OUT  std_logic;
         carry_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a_i : std_logic := '0';
   signal b_i : std_logic := '0';
   signal carry_i : std_logic := '0';

 	--Outputs
   signal s_o : std_logic;
   signal carry_o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FULL_ADDER PORT MAP (
          a_i => a_i,
          b_i => b_i,
          carry_i => carry_i,
          s_o => s_o,
          carry_o => carry_o
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		a_i <= '0';
		b_i <= '0';
		carry_i <= '0';
		wait for 100 ns;
		a_i <= '1';
		b_i <= '0';
		carry_i <= '0';
		wait for 100 ns;
      a_i <= '0';
		b_i <= '1';
		carry_i <= '0';
		wait for 100 ns;
		a_i <= '1';
		b_i <= '1';
		carry_i <= '0';
		wait for 100 ns;
		a_i <= '0';
		b_i <= '0';
		carry_i <= '1';
		wait for 100 ns;
		a_i <= '1';
		b_i <= '0';
		carry_i <= '1';
		wait for 100 ns;
      a_i <= '0';
		b_i <= '1';
		carry_i <= '1';
		wait for 100 ns;
		a_i <= '1';
		b_i <= '1';
		carry_i <= '1';
		wait for 100 ns;
      wait;
   end process;

END;
