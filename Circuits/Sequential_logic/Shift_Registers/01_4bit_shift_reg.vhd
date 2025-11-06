library ieee;
use ieee.std_logic_1164.all;

entity top is
        port(
                i_clk           : in std_logic;
                i_areset        : in std_logic;
                i_load          : in std_logic;
                i_ena           : in std_logic;
                i_data          : in std_logic_vector(3 downto 0);
                o_q             : out std_logic
        );
end entity;

architecture behavioural of top is
        signal shift_reg_q : std_logic_vector(3 downto 0) := (others => '0');
        signal shift_reg_next : std_logic_vector(3 downto 0) := (others => '0');
begin
        process(i_clk, i_areset)
        begin
                if i_areset = '1' then
                        shift_reg_q <= (others => '0');
                elsif rising_edge(i_clk) then
                        shift_reg_q <= shift_reg_next;
                end if;
        end process;
        -- next state of shift reg
        process(i_data, i_load, i_en)
        begin
                if i_load = '1' then
                        shift_reg_next <= i_data;
                elsif i_ena = '1' then
                        shift_reg_next <= '0' & shift_reg_q(3 downto 1);
                end if;
        end process;
        q <= shift_reg_q;
end behavioural;