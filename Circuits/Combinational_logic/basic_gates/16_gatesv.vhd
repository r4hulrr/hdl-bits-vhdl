library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        i_in    : in std_logic_vector(3 downto 0);
        o_both  : out std_logic_vector(2 downto 0);
        o_any   : out std_logic_vector(3 downto 1);
        o_diff  : out std_logic_vector(3 downto 0)
    );
end entity;

architecture behavioural of top is
begin
    o_both  <= i_in(2 downto 0) and i_in(3 downto 1);
    o_any   <= i_in(3 downto 1) or i_in(2 downto 0);
    o_diff  <= i_in xor (i_in(0) & i_in(3 downto 1));
end behavioural;