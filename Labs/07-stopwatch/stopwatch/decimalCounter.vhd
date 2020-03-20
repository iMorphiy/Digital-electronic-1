----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:43:08 03/20/2020 
-- Design Name: 
-- Module Name:    decimalCounter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decimalCounter is
generic(
	max 		: positive := 9
);
port (
	clk_i    	: in  std_logic;
	srst_n_i 	: in  std_logic;
	enable_i    : in  std_logic;
	counter_o   : out std_logic_vector(3 downto 0);
	carry_o    	: out std_logic := '0'
);
end decimalCounter;

architecture Behavioral of decimalCounter is
	signal s_counter : unsigned(3 downto 0) := (others => '0');
begin
	p_decimal : process(clk_i)
	begin
		if rising_edge(clk_i) then
			carry_o <= '0';
			if srst_n_i = '0' then
				s_counter <= (others => '0');
			elsif enable_i = '1' then
				s_counter <= s_counter + 1;
				if s_counter = max then
					s_counter <= (others => '0');
					carry_o <= '1';
				end if;
			end if;
		end if;
	end process p_decimal;

	counter_o <= std_logic_vector(s_counter);


end Behavioral;

