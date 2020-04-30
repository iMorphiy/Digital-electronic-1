library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
port(
	clk_i	: in std_logic;
	SW_CPLD	: in std_logic_vector(7 downto 0);
	BTN0	: in std_logic;
	BTN1	: in std_logic;
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
	signal operation_s : std_logic_vector(7 downto 0);
	signal instruction_s : std_logic_vector(1 downto 0);
	signal enable_s : std_logic;
	
begin

	instruction_s(0) <= operation_s(0);
	instruction_s(1) <= operation_s(1);


	BUTTON_ENABLE : entity work.instruction_enable
	port map(
		clk_i => clk_i,
		button_i => not BTN0,
		enale_o => enable_s
	);

	SECV_READER : entity work.READER
	port map(
		clk_i => clk_i,
		action_i => enable_s,
		reset_i => not BTN1,
		data_i => SW_CPLD,
		A_o => A_s,
		B_o => B_s,
		operation_o => operation_s
	);


	MY_ALU : entity work.ALU
	port map(
		clk_i => clk_i, 
		A_number_i => A_s,
		B_number_i => B_s,
		instruction_i => instruction_s,
		S_number_o => number_s,
		status_o => status_s
	);


	DISPLAY : entity work.driver_7seg
	port map (
		clk_i => clk_i,
		srst_n_i => not BTN1,
		data_i => number_s,
		seg_o => disp_seg_o,
		dig_o => disp_dig_o
	);

	LED_CPLD	<= status_s;

end Behavioral;

