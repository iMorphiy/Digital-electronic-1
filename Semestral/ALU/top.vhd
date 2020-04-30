library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
port(
	clk_i	: in std_logic;
	SW_CPLD	: in std_logic_vector(15 downto 0);
	SW	: in std_logic_vector(1 downto 0);
	disp_seg_o : out std_logic_vector(6 downto 0);
	disp_dig_o	: out std_logic_vector(3 downto 0);
	LED_CPLD	: out std_logic_vector(4 downto 0)
);
end top;

architecture Behavioral of top is
	signal status_s : std_logic_vector(4 downto 0);
	signal A_s : std_logic_vector(7 downto 0);
	signal B_s : std_logic_vector(7 downto 0);
	signal number_s : std_logic_vector(7 downto 0);
begin

	A_s(0) <= SW_CPLD(0);
	A_s(1) <= SW_CPLD(1);
	A_s(2) <= SW_CPLD(2);
	A_s(3) <= SW_CPLD(3);
	A_s(4) <= SW_CPLD(4);
	A_s(5) <= SW_CPLD(5);
	A_s(6) <= SW_CPLD(6);
	A_s(7) <= SW_CPLD(7);

	B_s(0) <= SW_CPLD(8);
	B_s(1) <= SW_CPLD(9);
	B_s(2) <= SW_CPLD(10);
	B_s(3) <= SW_CPLD(11);
	B_s(4) <= SW_CPLD(12);
	B_s(5) <= SW_CPLD(13);
	B_s(6) <= SW_CPLD(14);
	B_s(7) <= SW_CPLD(15);

	MYALU : entity work.ALU
	port map(
		clk_i => clk_i, 
		A_number_i => A_s,
		B_number_i => B_s,
		instruction_i => SW,
		S_number_o => number_s,
		status_o => status_s
	);


	DISPLAY : entity work.driver_7seg
	port map (
		clk_i => clk_i,
		srst_n_i => '1',
		data0_i => number_s(3 downto 0),
		data1_i => number_s(7 downto 4),
		data2_i => "0000",
		data3_i => "0000",
		seg_o => disp_seg_o,
		dig_o => disp_dig_o
	);

	LED_CPLD	<= status_s;

end Behavioral;

