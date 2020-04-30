library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
port(
	clk_i : in std_logic;
	A_number_i : in std_logic_vector(7 downto 0);
	B_number_i : in std_logic_vector(7 downto 0);
	instruction_i : in std_logic_vector(1 downto 0);
	S_number_o : out std_logic_vector(7 downto 0);
	status_o : out std_logic_vector(4 downto 0)
);
end ALU;

architecture Behavioral of ALU is
	signal SA_number_s : std_logic_vector(7 downto 0);
	signal S_number_s : std_logic_vector(7 downto 0);
	signal control_s : std_logic;
	signal carryOut_staus_s : std_logic;
	signal overFlow_staus_s : std_logic;
	signal Y1_s : std_logic;
	signal Y2_s : std_logic;
	signal X1_s : std_logic;
	signal X2_s : std_logic;
begin

	F_ADDER_1 : entity work.ADDER8BIT
	port map(
		a_vector_i => A_number_i,
		b_vector_i => B_number_i,
		control_i => control_s,
		s_vector_o => SA_number_s,
		carry_o => carryOut_staus_s,
		overFlow_o => overFlow_staus_s
	);

	process(clk_i, instruction_i, SA_number_s, S_number_s, B_number_i, A_number_i) begin
		if rising_edge(clk_i) then
			case instruction_i is
				when "00" =>
					control_s <= '0';
					S_number_s <= SA_number_s;
				when "01" =>
					control_s <= '1';
					S_number_s <= SA_number_s;
				when "10" =>
					S_number_s <= B_number_i and A_number_i;
				when "11" =>
					S_number_s <= B_number_i or A_number_i;				
				when others =>
					S_number_s <= "00000000";
			end case;
		end if;

	end process;
	
	status_o(0) <= carryOut_staus_s;
		
	Y1_s <= S_number_s(0) or S_number_s(1) or S_number_s(2) or S_number_s(3);
	Y2_s <= S_number_s(4) or S_number_s(5) or S_number_s(6) or S_number_s(7);
	status_o(1) <= not (Y1_s or Y2_s);
		
	status_o(2) <= S_number_s(7);
		
	status_o(3) <= overFlow_staus_s;
		
	X1_s <= S_number_s(0) xor S_number_s(1) xor S_number_s(2) xor S_number_s(3);
	X2_s <= S_number_s(4) xor S_number_s(5) xor S_number_s(6) xor S_number_s(7);
	status_o(4) <= X1_s xor X2_s;
		
	S_number_o <= S_number_s;


end Behavioral;

