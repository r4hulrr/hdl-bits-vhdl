library ieee;
use ieee.std_logic_1164.all;

entity wire is
    port(
        i_in    : in std_logic;
        o_out   : out std_logic
    );
end entity;

architecture behavioural of wire is
begin
    o_out <= i_in;
end behavioural;