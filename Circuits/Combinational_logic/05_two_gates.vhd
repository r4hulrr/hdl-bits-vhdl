library ieee;
use ieee.std_logic_1164.all;

entity two_gates is
    port(
        i_in1   : in std_logic;
        i_in2   : in std_logic;
        i_in3   : in std_logic;
        o_out   : out std_logic
    );
end entity;

architecture behavioural of two_gates is
begin
    o_out <= i_in3 xor (i_in1 xnor i_in2);
end behavioural;