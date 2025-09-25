library ieee;
use ieee.std_logic_1164.all;

entity top_7420 is
    port(
        i_p1a, i_p2a    : in std_logic;
        i_p1b, i_p2b    : in std_logic;
        i_p1c, i_p2c    : in std_logic;
        i_p1d, i_p2d    : in std_logic;
        o_p1y, o_p2y    : out std_logic
    );
end entity;

architecture behavioural of top_7420 is
begin
    o_p1y   <= not (i_p1a and i_p1_b and i_p1_c and i_p1_d);
    o_p2y   <= not (i_p2a and i_p2_b and i_p2_c and i_p2_d);  
end behavioural;