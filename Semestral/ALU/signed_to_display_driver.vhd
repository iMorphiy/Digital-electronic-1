
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_signed.ALL;
use IEEE.MATH_REAL.all;


entity signed_to_display_driver is
port(
	clk_i    : in  std_logic;
	data_i  : in  std_logic_vector(7 downto 0);
	data0_o : out std_logic_vector(4-1 downto 0);
	data1_o : out std_logic_vector(4-1 downto 0);
	data2_o : out std_logic_vector(4-1 downto 0);
	data3_o : out std_logic_vector(4-1 downto 0);
	data_minus_o : out std_logic
);
end signed_to_display_driver;

architecture Behavioral of signed_to_display_driver is
	signal data_s : signed(7 downto 0);
	signal unsigneddata_s : signed(7 downto 0);
	signal data0_s : std_logic_vector(3 downto 0) := "0000";
	signal data1_s : std_logic_vector(3 downto 0) := "0000";
	signal data2_s : std_logic_vector(3 downto 0) := "0000";
	signal data3_s : std_logic_vector(3 downto 0) := "0000";
	signal data_minus_s : std_logic;
	signal dataUN_s : std_logic_vector(7 downto 0);
	signal dataSI_s : std_logic_vector(7 downto 0);
begin

	data_s <= signed(data_i);
	unsigneddata_s <= to_signed(-to_integer(data_s),8);

	
	
	formateData : process(clk_i)
	begin
		if rising_edge(clk_i) then
			if data_s > 0 then
				-- unsigneddata_s <= data_s;
				dataUN_s <= std_logic_vector(data_s);
				data0_s(0) <= dataUN_s(0);
				data0_s(1) <= dataUN_s(1);
				data0_s(2) <= dataUN_s(2);
				data0_s(3) <= dataUN_s(3);
				data1_s(0) <= dataUN_s(4);
				data1_s(1) <= dataUN_s(5);
				data1_s(2) <= dataUN_s(6);
				data1_s(3) <= dataUN_s(7);
				data2_s <= "0000";
				data3_s <= "0000";
				data_minus_s <= '0';
			elsif data_s < 0 then
				-- unsigneddata_s <= -data_s;
				dataSI_s <= std_logic_vector(unsigneddata_s);
				data0_s(0) <= dataSI_s(0);
				data0_s(1) <= dataSI_s(1);
				data0_s(2) <= dataSI_s(2);
				data0_s(3) <= dataSI_s(3);
				data1_s(0) <= dataSI_s(4);
				data1_s(1) <= dataSI_s(5);
				data1_s(2) <= dataSI_s(6);
				data1_s(3) <= dataSI_s(7);
				data2_s <= "0000";
				data3_s <= "0000";
				data_minus_s <= '1';
			else
				data0_s <= "0000";
				data1_s <= "0000";
				data2_s <= "0000";
				data3_s <= "0000";
				data_minus_s <= '0';
			end if;
		end if;
   end process;
	
	data0_o <= data0_s;
	data1_o <= data1_s;
	data2_o <= data2_s;
	data3_o <= data3_s;
	data_minus_o <= data_minus_s;

end Behavioral;

