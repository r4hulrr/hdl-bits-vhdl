library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top is
    port(
        i_a : in std_logic_vector(1 downto 0);
        i_b : in std_logic_vector(1 downto 0);
        o_z : out std_logic
    );
end entity;

architecture behavioural of top is
begin
    o_z <= '1' when (i_a = i_b) else '0';
end behavioural;