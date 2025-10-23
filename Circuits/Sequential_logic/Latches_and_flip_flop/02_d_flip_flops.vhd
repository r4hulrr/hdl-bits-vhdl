library ieee;
use ieee.std_logic_1164.all;

entity top is
        port(
                i_clk   : in std_logic;
                i_d     : in std_logic_vector(7 downto 0);
                o_q     : out std_logic_vector(7 downto 0)     
        );
end entity;

architecture behavioural of top is
        process(i_clk)
        begin
                if rising_edge(i_clk) then
                        o_q <= i_d;
                end if;
        end process;
end behavioural;