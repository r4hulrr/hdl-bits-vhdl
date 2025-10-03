library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top is
    port(
        i_a, i_b    : in  std_logic_vector(7 downto 0);
        o_s         : out std_logic_vector(7 downto 0);
        o_overflow  : out std_logic
    );
end entity;

architecture behavioural of top is
    signal sig_sum : signed(8 downto 0) := (others => '0');
begin
    -- 9-bit signed add
    sig_sum <= resize(signed(i_a), 9) + resize(signed(i_b), 9);

    -- result (lower 8 bits)
    o_s <= std_logic_vector(sig_sum(7 downto 0));

    -- sign-bit rule
    o_overflow <= (i_a(7) and i_b(7) and not sig_sum(7))
               or ((not i_a(7)) and (not i_b(7)) and sig_sum(7));
end behavioural;
