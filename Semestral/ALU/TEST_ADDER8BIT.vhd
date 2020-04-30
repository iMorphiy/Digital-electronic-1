LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_signed.all;
  
ENTITY TEST_ADDER8BIT IS
END TEST_ADDER8BIT;
 
ARCHITECTURE behavior OF TEST_ADDER8BIT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADDER8BIT
    PORT(
         a_vector_i : IN  std_logic_vector(7 downto 0);
         b_vector_i : IN  std_logic_vector(7 downto 0);
         control_i : IN  std_logic;
         s_vector_o : OUT  std_logic_vector(7 downto 0);
         carry_o : OUT  std_logic;
         overFlow_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a_vector_i : std_logic_vector(7 downto 0) := (others => '0');
   signal b_vector_i : std_logic_vector(7 downto 0) := (others => '0');
   signal control_i : std_logic := '0';

 	--Outputs
   signal s_vector_o : std_logic_vector(7 downto 0);
   signal carry_o : std_logic;
   signal overFlow_o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADDER8BIT PORT MAP (
          a_vector_i => a_vector_i,
          b_vector_i => b_vector_i,
          control_i => control_i,
          s_vector_o => s_vector_o,
          carry_o => carry_o,
          overFlow_o => overFlow_o
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
		control_i <= '0';
		a_vector_i <= "00000010"; -- 	2
		b_vector_i <= "00000111"; -- 	7
		wait for 100 ns;
		control_i <= '0';
		a_vector_i <= "00000011"; -- 	2
		b_vector_i <= "11111111"; -- -1
      wait for 100 ns;
		control_i <= '0';
		a_vector_i <= "01111111"; -- 	128
		b_vector_i <= "00000001"; -- 	1 

		wait for 100 ns;
		control_i <= '1';
		a_vector_i <= "00000000"; -- 	128
		b_vector_i <= "11111111"; -- 	-1
		wait for 100 ns;
		control_i <= '1';
		a_vector_i <= "11111111"; -- 	-1
		b_vector_i <= "11111111"; -- 	-1
		wait for 100 ns;
		control_i <= '1';
		a_vector_i <= "10000000"; -- 	-129
		b_vector_i <= "00000001"; -- 	1
      wait;
   end process;

END;
