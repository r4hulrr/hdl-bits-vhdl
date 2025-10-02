library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        i_x     : in std_logic_vector(3 downto 0);
        i_y     : in std_logic_vector(3 downto 0);
        o_sum   : out std_logic_vector(4 downto 0)
    );
end entity;

architecture behavioural of top is
    component fadd is
        port(
            i_a, i_b, i_cin : in std_logic;
            o_cout, o_sum   : out std_logic
        );
    end component;
    -- signals for cout
    signal sig_cout0, sig_cout1, sig_cout2  : std_logic := '0';
begin
    FA0 : fadd port map(i_a     => i_x(0),
                        i_b     => i_y(0),
                        i_cin   => '0',
                        o_cout  => sig_cout0,
                        o_sum   => o_sum(0)
                        );
    FA1 : fadd port map(i_a     => i_x(1),
                        i_b     => i_y(1),
                        i_cin   => sig_cout0,
                        o_cout  => sig_cout1,
                        o_sum   => o_sum(1)
                        );
    FA2 : fadd port map(i_a     => i_x(2),
                        i_b     => i_y(2),
                        i_cin   => sig_cout1,
                        o_cout  => sig_cout2,
                        o_sum   => o_sum(2)
                        );
    FA3 : fadd port map(i_a     => i_x(3),
                        i_b     => i_y(3),
                        i_cin   => sig_cout2,
                        o_cout  => o_sum(4),
                        o_sum   => o_sum(3)
                        );
end behavioural;