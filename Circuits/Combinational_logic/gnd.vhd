library ieee;
use ieee.std_logic_1164.all;

entity gnd is
    port(
        o_out   : out std_logic
    );
end entity;

architecture behavioural of gnd is
begin
    o_out <= '0';
end behavioural;