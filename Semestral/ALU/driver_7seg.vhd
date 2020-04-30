library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity driver_7seg is
port (
    clk_i    : in  std_logic;
    srst_n_i : in  std_logic;   -- Synchronous reset (active low)
    data0_i  : in  std_logic_vector(4-1 downto 0);  -- Input values
    data1_i  : in  std_logic_vector(4-1 downto 0);
    data2_i  : in  std_logic_vector(4-1 downto 0);
    data3_i  : in  std_logic_vector(4-1 downto 0);
    seg_o    : out std_logic_vector(7-1 downto 0);
    dig_o    : out std_logic_vector(4-1 downto 0)
);
end entity driver_7seg;

------------------------------------------------------------------------
-- Architecture declaration for display driver
------------------------------------------------------------------------
architecture Behavioral of driver_7seg is
    signal s_en  : std_logic;
    signal s_hex : std_logic_vector(4-1 downto 0);
	 signal s_dig : std_logic_vector(4-1 downto 0);
    signal s_cnt : std_logic_vector(2-1 downto 0) := "00";
begin

    --------------------------------------------------------------------
    -- Sub-block of clock_enable entity. Create s_en signal.
    --- WRITE YOUR CODE HERE
		CLOCK_ENABLE : entity work.clock_enable
		generic map (
         -- period of 4 ms = 40 * 0.1 ms ;{40 dec => 28 hex}
			g_NPERIOD => x"0028"   
		)
		port map (
			clk_i => clk_i,
			srst_n_i => srst_n_i,
			clock_enable_o => s_en
		);

    --------------------------------------------------------------------
    -- Sub-block of hex_to_7seg entity
    --- WRITE YOUR CODE HERE
		HEX_TO_7SEG : entity work.hex_to_7seg
		port map (
			hex_i => s_hex,
         seg_o => seg_o
		);

    --------------------------------------------------------------------
    -- p_select_cnt:
    -- Sequential process with synchronous reset and clock enable,
    -- which implements an internal 2-bit counter s_cnt for multiplexer
    -- selection bits.
    --------------------------------------------------------------------
    p_select_cnt : process (clk_i)
    begin
        if rising_edge(clk_i) then  -- Rising clock edge
            if srst_n_i = '0' then  -- Synchronous reset (active low)
					s_cnt <= "00";
            elsif s_en = '1' then
                -- WRITE YOUR CODE HERE
					 if s_cnt = "11" then
						s_cnt <= "00";
					else
						s_cnt <= s_cnt + '1';
					end if;
            end if;
        end if;
    end process p_select_cnt;

    --------------------------------------------------------------------
    -- p_mux:
    -- Combinational process which implements a 4-to-1 mux.
    --------------------------------------------------------------------
	p_mux : process (s_cnt, data0_i, data1_i, data2_i, data3_i)
	begin
		case s_cnt is
			when "00" =>
				s_hex <= data0_i;
				dig_o <= "1110";
			when "01" =>
				s_hex <= data1_i;
				dig_o <= "1101";
			when "10" =>
				s_hex <= data2_i;
				dig_o <= "1011";
			when others =>
				s_hex <= data3_i;
				dig_o <= "0111";
		end case;
	end process p_mux;

end architecture Behavioral;