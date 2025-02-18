```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity buggy_code_solution is
    port (
A : in std_logic_vector(7 downto 0);
    B : in std_logic_vector(7 downto 0);
    C : out std_logic_vector(7 downto 0);
    overflow : out std_logic); -- Added overflow indicator
end entity;

architecture behavioral of buggy_code_solution is
    signal sum : unsigned(9 downto 0);
begin
    process(A, B)
    begin
        sum <= unsigned(A) + unsigned(B); -- Use unsigned for addition
        C <= std_logic_vector(sum(7 downto 0)); -- Assign lower 8 bits to output
        overflow <= '1' when sum > 255 else '0'; -- Set overflow flag if necessary
    end process;
end architecture;
```