library ieee;
use ieee.std_logic_1164.all;

entity nor is
    port(
        i_in1   : in std_logic;
        i_in2   : in std_logic;
        o_out   : out std_logic
    );
end entity;

architecture behavioural of nor is
begin
    o_out <= i_in1 nor i_in2;
end behavioural;