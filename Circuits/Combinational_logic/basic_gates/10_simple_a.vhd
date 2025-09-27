library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        i_x : in std_logic;
        i_y : in std_logic;
        o_z : out std_logic
    );
end top;

architecture behavioural of top is
begin
    o_z <= (i_x xor i_y) and i_x;
end behavioural;