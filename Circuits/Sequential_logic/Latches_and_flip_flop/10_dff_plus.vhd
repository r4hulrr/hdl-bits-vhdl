library ieee;
use ieee.std_logic_1164.all;

entity top is
        port(
                i_clk, i_in     : in std_logic;
                o_out           : out std_logic
        );
end entity;

architecture behavioural of top is
begin
        process(i_clk)
        begin
                if rising_edge(i_clk) then
                        o_out <= i_in xor o_out;
                end if;
        end process;
end behavioural;