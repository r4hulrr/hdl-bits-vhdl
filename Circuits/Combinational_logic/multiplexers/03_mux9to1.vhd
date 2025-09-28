library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        i_a, i_b, i_c, i_d, i_e, i_f, i_g, i_h, i_i : std_logic_vector(15 downto 0);
        i_sel                                       : std_logic_vector(3 downto 0);
        o_out                                       : std_logic_vector(15 downto 0)
    );
end entity;

architecture behavioural of top is
begin
    with i_sel select
        o_out <= i_a when "0000",
                i_b when "0001",
                i_c when "0010",
                i_d when "0011",
                i_e when "0100",
                i_f when "0101",
                i_g when "0110",
                i_h when "0111",
                i_i when "1000",
                (others => '0') when others;
end behavioural;