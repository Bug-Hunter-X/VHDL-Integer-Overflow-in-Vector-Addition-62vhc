```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity buggy_code is
    port (
A : in std_logic_vector(7 downto 0);
    B : in std_logic_vector(7 downto 0);
    C : out std_logic_vector(7 downto 0));
end entity;

architecture behavioral of buggy_code is

begin
    process(A, B)
    begin
        C <= A + B;  -- This line may cause an error
    end process;
end architecture;
```