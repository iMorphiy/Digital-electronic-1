library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ADDER8BIT is
port(
	a_vector_i : in std_logic_vector(7 downto 0);
	b_vector_i : in std_logic_vector(7 downto 0);
	control_i : in std_logic;
	s_vector_o : out std_logic_vector(7 downto 0);
	carry_o : out std_logic;
	overFlow_o : out std_logic
);
end ADDER8BIT;

architecture Behavioral of ADDER8BIT is
	signal carry_1to2_s : std_logic;
	signal carry_2to3_s : std_logic;
	signal carry_3to4_s : std_logic;
	signal carry_4to5_s : std_logic;
	signal carry_5to6_s : std_logic;
	signal carry_6to7_s : std_logic;
	signal carry_7to8_s : std_logic;
	signal carry_s : std_logic;
	signal Y1_s : std_logic;
	signal Y2_s : std_logic;
	signal IN_b_s : std_logic_vector(6 downto 0);
begin

	IN_b_s(0) <= b_vector_i(1) xor control_i;
	IN_b_s(1) <= b_vector_i(2) xor control_i;
	IN_b_s(2) <= b_vector_i(3) xor control_i;
	IN_b_s(3) <= b_vector_i(4) xor control_i;
	IN_b_s(4) <= b_vector_i(5) xor control_i;
	IN_b_s(5) <= b_vector_i(6) xor control_i;
	IN_b_s(6) <= b_vector_i(7) xor control_i;


	F_ADDER_1 : entity work.FULL_ADDER
		port map(
			a_i => a_vector_i(0),
			b_i => b_vector_i(0),
			carry_i => control_i,
			s_o => s_vector_o(0),
			carry_o => carry_1to2_s
		);
	F_ADDER_2 : entity work.FULL_ADDER
		port map(
			a_i => a_vector_i(1),
			b_i => IN_b_s(0),
			carry_i => carry_1to2_s,
			s_o => s_vector_o(1),
			carry_o => carry_2to3_s
		);
	F_ADDER_3 : entity work.FULL_ADDER
		port map(
			a_i => a_vector_i(2),
			b_i => IN_b_s(1),
			carry_i => carry_2to3_s,
			s_o => s_vector_o(2),
			carry_o => carry_3to4_s
		);		
	F_ADDER_4 : entity work.FULL_ADDER
		port map(
			a_i => a_vector_i(3),
			b_i => IN_b_s(2),
			carry_i => carry_3to4_s,
			s_o => s_vector_o(3),
			carry_o => carry_4to5_s
		);
	F_ADDER_5 : entity work.FULL_ADDER
		port map(
			a_i => a_vector_i(4),
			b_i => IN_b_s(3),
			carry_i => carry_4to5_s,
			s_o => s_vector_o(4),
			carry_o => carry_5to6_s
		);
	F_ADDER_6 : entity work.FULL_ADDER
		port map(
			a_i => a_vector_i(5),
			b_i => IN_b_s(4),
			carry_i => carry_5to6_s,
			s_o => s_vector_o(5),
			carry_o => carry_6to7_s
		);
	F_ADDER_7 : entity work.FULL_ADDER
		port map(
			a_i => a_vector_i(6),
			b_i => IN_b_s(5),
			carry_i => carry_6to7_s,
			s_o => s_vector_o(6),
			carry_o => carry_7to8_s
		);
	F_ADDER_8 : entity work.FULL_ADDER
		port map(
			a_i => a_vector_i(7),
			b_i => IN_b_s(6),
			carry_i => carry_7to8_s,
			s_o => s_vector_o(7),
			carry_o => carry_s
		);
		
	 	
	Y1_s <= not carry_s and IN_b_s(6) and not a_vector_i(7);
	Y2_s <= carry_s and not IN_b_s(6) and a_vector_i(7);
	overFlow_o <= Y1_s or Y2_s;
	carry_o <= carry_s;
	
end Behavioral;

