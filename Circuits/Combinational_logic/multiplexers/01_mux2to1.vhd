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
    with i_sel select
        o_out <= i_a when '0',
                i_b when '1',
                i_a when others;
end behavioural;