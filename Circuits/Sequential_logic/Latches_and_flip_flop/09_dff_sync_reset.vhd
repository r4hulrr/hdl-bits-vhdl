library ieee;
use ieee.std_logic_1164.all;

entity top is
        port(
                i_clk, i_d, i_ar        : in std_logic;
                o_q                     : out std_logic 
        );
end entity;

architecture behavioural of top is
begin
        process(i_clk)
        begin
                if rising_edge(i_clk) then
                        if i_ar = '1' then
                                o_q <= '0';
                        else
                                o_q <= i_d;
                        end if;
                end if;
        end process;
end behavioural;