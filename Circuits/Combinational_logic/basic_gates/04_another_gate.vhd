library ieee;
use ieee.std_logic_1164.all;

entity another_gate is
    port(
        i_in1   : in std_logic;
        i_in2   : in std_logic;
        o_out   : out std_logic
    );
end entity;

architecture behavioural of another_gate is
begin
    o_out   <= i_in and (not i_in2);
end behavioural;