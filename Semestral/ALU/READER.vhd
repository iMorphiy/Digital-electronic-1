
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity READER is
port(
	clk_i		:	in std_logic;
	action_i		:	in std_logic;
	reset_i		:	in std_logic; -- LOW active
	data_i 	:	in std_logic_vector(7 downto 0);
	A_o 	:	out std_logic_vector(7 downto 0);
	B_o 	:	out std_logic_vector(7 downto 0);
	operation_o 	:	out std_logic_vector(7 downto 0)
);
end READER;

architecture Behavioral of READER is
	type FAZE_ST is (FAZE_A_ST, FAZE_B_ST, FAZE_OPER_ST);
	signal s_state: FAZE_ST := FAZE_A_ST;
	signal A_s : std_logic_vector(7 downto 0) := "00000000";
	signal B_s : std_logic_vector(7 downto 0) := "00000000";
	signal OPER_s : std_logic_vector(1 downto 0) := "00";
	signal regA : bit_vector (7 downto 0) := "00000000";
	signal regB : bit_vector (7 downto 0) := "00000000";
	signal regO : bit_vector (7 downto 0) := "00000000";
		
begin

process(clk_i, action_i, reset_i, data_i, s_state) 
begin

		if reset_i = '0' then
			s_state <= FAZE_A_ST;
		elsif rising_edge(action_i) then
			case s_state is
				when FAZE_A_ST =>
					regA <= To_bitvector(data_i);
					
					s_state <= FAZE_B_ST;
					
				when FAZE_B_ST =>
					regB <= To_bitvector(data_i);
					
					s_state <= FAZE_OPER_ST;
					
				when FAZE_OPER_ST =>
					regO <= To_bitvector(data_i);					
					s_state <= FAZE_A_ST;
					
				when others =>
					s_state <= FAZE_A_ST;
			end case;
		end if;
	end process;

	C2: process(s_state)
	begin
		case s_state is
			when FAZE_A_ST =>
				A_o <= To_StdLogicVector(regA);
				B_o <= To_StdLogicVector(regB);
				operation_o <= To_StdLogicVector(regO);
			when FAZE_B_ST =>
			when others =>
		end case;
	end process;


end Behavioral;

