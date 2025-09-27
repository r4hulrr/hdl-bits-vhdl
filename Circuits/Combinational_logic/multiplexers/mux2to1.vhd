library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        i_a, i_b, i_sel : in std_logic;
        o_out           : out std_logic
    );
end top;

architecture behavioural of top is
begin
    case(i_sel) is
        when '0' =>
            o_out <= i_a;
        when '1' =>
            o_out <= i_b;
        when others =>
            o_out <= i_a;
    end case;
end behavioural;