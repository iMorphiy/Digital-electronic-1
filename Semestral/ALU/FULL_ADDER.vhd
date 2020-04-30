library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER is 
port(
	a_i : in std_logic;
	b_i : in std_logic;
	carry_i : in std_logic;
	s_o : out std_logic;
	carry_o : out std_logic
);
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is
begin

s_o <= a_i xor b_i xor carry_i; 
carry_o <= (a_i and b_i) or (a_i and carry_i) or (b_i and carry_i); 

end Behavioral;

