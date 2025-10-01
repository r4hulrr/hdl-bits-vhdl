library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        i_a, i_b    : std_logic_vector(2 downto 0);
        i_cin       : std_logic;
        o_cout      : std_logic_vector(2 downto 0);
        o_sum       : std_logic_vector(2 downto 0)
    );
end entity;

architecture behavioural of top is
    -- full adder 1
    component fadd is
        port(
            i_a, i_b, i_cin : in std_logic;
            o_cout, o_sum   : out std_logic
        );
    end component;
begin
    -- assuming VHDL 2008 syntax
    FA1 : fadd port map(i_a     => i_a(0), 
                        i_b     => i_b(0), 
                        i_cin   => i_cin,
                        o_cout  => o_cout(0),
                        o_sum   => o_sum(0)
                        );
    FA2 : fadd port map(i_a     => i_a(1), 
                        i_b     => i_b(1), 
                        i_cin   => o_cout(0),
                        o_cout  => o_cout(1),
                        o_sum   => o_sum(1)
                        );
    FA3  : fadd port map(i_a     => i_a(2), 
                        i_b     => i_b(2), 
                        i_cin   => o_cout(1),
                        o_cout  => o_cout(2),
                        o_sum   => o_sum(2)
                        );
end behavioural;