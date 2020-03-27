# File traffic.vhd

```vhdl
library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;



entity traffic is
	port(	clk		: in std_logic;
			clr		: in std_logic;
			lights	: out std_logic_vector(5 downto 0));
end traffic;

architecture traffic of traffic is

	type state_type is (s0, s1, s2, s3, s4, s5);
	signal state: state_type := s0;
	signal count : unsigned(3 downto 0) := (others => '0');
	constant SEC5: unsigned(3 downto 0) := "1111";
	constant SEC1: unsigned(3 downto 0) := "0011";

begin
	process(clk, clr) begin
		if clr = '1' then
			state <= s0;
			count <= (others => '0');
		elsif rising_edge(clk) then
			case state is
				when s0 =>
					if count < SEC5 then
						state <= s0;
						count <= count + 1;
					else
						state <= s1;
						count <= (others => '0');
					end if;
				when s1 =>
					if count < SEC1 then
						state <= s1;
						count <= count + 1;
					else
						state <= s2;
						count <= (others => '0');
					end if;
				when s2 =>
					if count < SEC1 then
						state <= s2;
						count <= count + 1;
					else
						state <= s3;
						count <= (others => '0');
					end if;
				when s3 =>
					if count < SEC5 then
						state <= s3;
						count <= count + 1;
					else
						state <= s4;
						count <= (others => '0');
					end if;
				when s4 =>
					if count < SEC1 then
						state <= s4;
						count <= count + 1;
					else
						state <= s5;
						count <= (others => '0');
					end if;
				when s5 =>
					if count < SEC1 then
						state <= s5;
						count <= count + 1;
					else
						state <= s0;
						count <= (others => '0');
					end if;
				when others =>
					state <= s0;
			end case;
		end if;
	end process;

	C2: process(state)
	begin
		case state is
			when s0 => lights <= "100001";
			when s1 => lights <= "100010";
			when s2 => lights <= "100100";
			when s3 => lights <= "001100";
			when s4 => lights <= "010100";
			when s5 => lights <= "100100";
			when others => lights <= "100001";
		end case;
	end process;


end traffic;

```

# top.vhd

```vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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



  -- LED active on negative
	TRAFFIC1_LED_RED		<= not s_lights(0);
	TRAFFIC1_LED_ORANGE	<= not s_lights(1);
	TRAFFIC1_LED_GREEN 	<= not s_lights(2);

	TRAFFIC2_LED_RED		<= not s_lights(3);
	TRAFFIC2_LED_ORANGE	<= not s_lights(4);
	TRAFFIC2_LED_GREEN	<= not s_lights(5);

end Behavioral;


```
# SIMULATION
## Test of traffic.vhd (test)
![SIM_0](../../IMG/SIM_08_2.png)
## Test of top.vhd (test_top)
![SIM_0](../../IMG/SIM_08_1.png)

# Implementation

will be soon by using Altera Cyclone II
