library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        i_a, i_b, i_cin : in std_logic;
        o_cout, o_sum   : out std_logic
    );
end entity;

architecture behavioural of top is
begin
    o_sum   <= i_a xor i_b xor i_cin;
    o_cout  <= (i_a and i_b) or (i_a and i_cin) or (i_b and i_cin);
end behavioural;