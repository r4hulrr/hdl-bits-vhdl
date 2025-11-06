library ieee;
use ieee.std_logic_1164.all;

entity top is 
        port(
                i_clk, i_rst    : in std_logic;
                o_q             : out std_logic_vector(3 downto 0)
        );
end entity;

architecture behavioural of top is
        signal sig_count_q : std_logic_vector(3 downto 0) := (others => '0');
        signal sig_count_next : std_logic_vector(3 downto 0) := (others => '0');
begin
        process(i_clk)
        begin
                if rising_edge(i_clk) then
                        if i_rst = '1' then
                                sig_count_q <= (others => '0');
                        else
                                sig_count_q <= sig_count + 1;
                        end if;
                end if;
        end process;
        o_q <= sig_count_q;
end behavioural;