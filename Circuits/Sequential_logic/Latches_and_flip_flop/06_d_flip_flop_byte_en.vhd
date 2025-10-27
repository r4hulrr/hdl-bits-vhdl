library ieee;
use ieee.std_logic_1164.all;

entity top is
        port(
                i_clk, i_resetn : in std_logic;
                i_byteena       : in std_logic_vector(1 downto 0);
                i_d             : in std_logic_vector(15 downto 0);
                o_q             : out std_logic_vector(15 downto 0)
        );
end entity;

architecture behavioural of top is
begin
        process(i_clk, i_resetn)
        begin
                if i_resetn = '1' then
                        o_q <= (others => '0');
                elsif falling_edge(clk) then
                        case(i_byteena) is
                                -- VHDL 2008 syntax
                                when "00" => o_q <= o_q;
                                when "01" => o_q(7 downto 0) <= i_d(7 downto 0);
                                when "10" => o_q(15 downto 8) <= i_d(15 downto 8);
                                when "11" => o_q <= i_d;
                                when others => o_q <= o_q;
                        end case;
                end if;
        end process;
end behavioural;