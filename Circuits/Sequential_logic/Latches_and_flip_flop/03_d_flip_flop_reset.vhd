library ieee;
use ieee.std_logic_1164.all;

entity top is
        port(
                i_clk, i_reset  : in std_logic;
                i_d             : in std_logic_vector(7 downto 0);
                o_q             : out std_logic_vector(7 downot 0)
        );
end entity;

architecture behavioural of top is
begin
        process(i_clk)
        begin
                if rising_edge(clk) then
                        if i_reset = '1' then
                                o_q <= (others => '0');
                        else
                                o_q <= i_d;
                        end if;
                end if;
        end process;
end behavioural;