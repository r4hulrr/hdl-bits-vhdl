library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        i_in    : in std_logic_vector(2 downto 0);
        o_out   : out std_logic_vector(1 downto 0)
    );
end entity;

architecture behavioural of top is
begin
    process(i_in)
        variable count : unsigned(1 downto 0) := "00";
    begin
        count := "00";
        for i in i_in'range loop
            if i_in(i) = '1' then
                count := count + 1;
            end if;
        end loop;
        o_out <= std_logic_vector(count);
    end process;
end behavioural;