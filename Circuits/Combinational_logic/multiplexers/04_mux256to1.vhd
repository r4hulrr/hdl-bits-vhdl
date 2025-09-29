library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top is
    port(
        i_in    : in std_logic_vector(255 downto 0);
        i_sel   : in std_logic_vector(7 downto 0);
        o_out   : out std_logic
    );
end top;    

architecture behavioural of top is
begin
    o_out <= i_in(to_integer(unsigned(i_sel)));
end behavioural;