library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top is
    port(
        i_a, i_b    : in std_logic_vector(99 downto 0);
        i_cin       : in std_logic;
        o_cout      : out std_logic;
        o_sum       : out std_logic_vector(99 downto 0)
    );
end entity;

architecture behavioural of top_module is
    signal tmp : unsigned(100 downto 0) := (others => '0');
begin
    tmp  <= unsigned(a) + unsigned(b) + unsigned(cin);
    sum  <= std_logic_vector(tmp(99 downto 0));
    cout <= tmp(100);
end architecture;