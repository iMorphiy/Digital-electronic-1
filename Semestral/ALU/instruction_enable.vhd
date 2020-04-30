
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity instruction_enable is
port(
	clk_i : in std_logic;
	button_i : in std_logic;
	enale_o : out std_logic
);
end instruction_enable;

architecture Behavioral of instruction_enable is
	type state_t is (READY, ONN, OFF);
	signal s_state: state_t := READY;
begin

	process(clk_i, button_i, s_state) 
begin


		if rising_edge(clk_i) then
			case s_state is
				when READY =>
					if button_i = '1' then
						s_state <= ONN;
					end if;
				when ONN =>
					s_state <= OFF;
				when others =>
					if button_i = '0' then
						s_state <= READY;
					end if;
			end case;
		end if;
	end process;

	C2: process(s_state)
	begin
		case s_state is
			when READY =>
				enale_o <= '0';
			when ONN  =>
				enale_o <= '1';
			when others =>
				enale_o <= '0';
		end case;
	end process;

end Behavioral;

