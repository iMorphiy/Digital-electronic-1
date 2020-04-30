
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY TEST_ALU IS
END TEST_ALU;
 
ARCHITECTURE behavior OF TEST_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         clk_i : IN  std_logic;
         A_number_i : IN  std_logic_vector(7 downto 0);
         B_number_i : IN  std_logic_vector(7 downto 0);
         instruction_i : IN  std_logic_vector(1 downto 0);
         S_number_o : OUT  std_logic_vector(7 downto 0);
         status_o : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal A_number_i : std_logic_vector(7 downto 0) := (others => '0');
   signal B_number_i : std_logic_vector(7 downto 0) := (others => '0');
   signal instruction_i : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal S_number_o : std_logic_vector(7 downto 0);
   signal status_o : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          clk_i => clk_i,
          A_number_i => A_number_i,
          B_number_i => B_number_i,
          instruction_i => instruction_i,
          S_number_o => S_number_o,
          status_o => status_o
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
		instruction_i <= "00";
		A_number_i <= "00000010"; -- 	2
		B_number_i <= "00000111"; -- 	7
		wait for 100 ns;
		instruction_i <= "00";
		A_number_i <= "00000011"; -- 	2
		B_number_i <= "11111111"; -- -1
      wait for 100 ns;
		instruction_i <= "00";
		A_number_i <= "01111111"; -- 	128
		B_number_i <= "00000001"; -- 	1 

		wait for 100 ns;
		instruction_i <= "01";
		A_number_i <= "00000000"; -- 	128
		B_number_i <= "11111111"; -- 	-1
		wait for 100 ns;
		instruction_i <= "01";
		A_number_i <= "11111111"; -- 	-1
		B_number_i <= "11111111"; -- 	-1
		wait for 100 ns;
		instruction_i <= "01";
		A_number_i <= "10000000"; -- 	-129
		B_number_i <= "00000001"; -- 	1
		
		
		wait for 100 ns;
		instruction_i <= "10";
		A_number_i <= "00000010"; -- 	2
		B_number_i <= "00000111"; -- 	7
		wait for 100 ns;
		instruction_i <= "10";
		A_number_i <= "00000011"; -- 	2
		B_number_i <= "11111111"; -- -1
      wait for 100 ns;
		instruction_i <= "10";
		A_number_i <= "01111111"; -- 	128
		B_number_i <= "00000001"; -- 	1 

		wait for 100 ns;
		instruction_i <= "11";
		A_number_i <= "00000000"; -- 	128
		B_number_i <= "11111111"; -- 	-1
		wait for 100 ns;
		instruction_i <= "11";
		A_number_i <= "11111111"; -- 	-1
		B_number_i <= "11111111"; -- 	-1
		wait for 100 ns;
		instruction_i <= "11";
		A_number_i <= "10000000"; -- 	-129
		B_number_i <= "00000001"; -- 	1



      wait;
   end process;

END;
