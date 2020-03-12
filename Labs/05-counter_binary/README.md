# Lab 5: Binary counters

## Preparation tasks (done before the lab at home)

1. Calculate how many periods of clock signal with ![equation](https://latex.codecogs.com/gif.latex?f_%7Bclk%7D%20%3D%2010%5C%2C%5Ctext%7BkHz%7D) contain time intervals 10&nbsp;ms, 250&nbsp;ms, 500&nbsp;ms, and 1&nbsp;s. Write values in decimal, binary, and hexadecimal forms.

    &nbsp;

    ![equation](https://latex.codecogs.com/gif.latex?T_%7Bclk%7D%20%3D%20%5Cfrac%7B1%7D%7Bf_%7Bclk%7D%7D%20%3D%20%5Cfrac%7B1%7D%7B10%20000%7D%20%3D%20100%20%5Cmu%20s)

    &nbsp;

    | **Freq** | **Time** | **Number of periods** | **Number of periods in binary** | **Number of periods in hexa** |
    | :-: | :-: | :-: | :-: | :-: |
    | 100&nbsp;Hz | 10&nbsp;ms | 100 | 0000 0000 0110 0100 | 64 |
    | 4&nbsp;Hz | 250&nbsp;ms | 2500 | 0000 1001 1100 0100 | 9C4 |
    | 2&nbsp;Hz | 500&nbsp;ms | 5000 | 0001 0011 1000 1000 | 1388 |
    | 1&nbsp;Hz | 1&nbsp;sec | 10000 | 0010 0111 0001 0000 | 2710 |

2. See how to create a [sequential process](https://github.com/tomas-fryza/Digital-electronics-1/wiki/VHDL-cheat-sheet#processes) in VHDL.

```vhdl
------------------------------------------------------------------------
-- p_sync_reset:
-- A sequential process with synchronous reset.
------------------------------------------------------------------------
p_sync_reset : process (clk_i)
begin
    if rising_edge(clk_i) then      -- Rising clock edge
        if srst_i = '1' then
            <synchronous reset statements>
        else
            <normal operation statements>
        end if;
    end if;
end process p_sync_reset;
```
