library ieee;
use ieee.std_logic_1164.all;

entity tt is
    port(
        i_x1    : in std_logic;
        i_x2    : in std_logic;
        i_x3    : in std_logic;
        o_f     : out std_logic
    );
end entity;

architecture behavioural of tt is
begin
    o_f <= ((not i_x3) and i_x2 and (not i_x1)) or ((not i_x3) and i_x2 and i_x1) or (
        i_x3 and (not i_x2) and i_x1) or (i_x3 and i_x2 and i_x1);
end behavioural;