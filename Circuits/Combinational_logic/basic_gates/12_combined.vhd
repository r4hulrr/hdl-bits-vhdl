library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top is
    port(
        i_x, i_y    : in std_logic;
        o_z         : out std_logic
    );
end entity;

architecture behavioural of top is
    component A is
        port(
            i_x, i_y    : in std_logic;
            o_z         : out std_logic
        );
    end component;
    component B is
        port(
            i_x, i_y    : in std_logic;
            o_z         : out std_logic
        );
    end component;
    -- first stage signals
    signal sig_z1, sig_z2, sig_z3, sig_z4 : std_logic := '0';
    -- second stage signals
    signal sig_p1, sig_p2 : std_logic := '0';
begin
    IA1: A port map (i_x => i_x, i_y => i_y, o_z => sig_z1);
    IB1: B port map (i_x => i_x, i_y => i_y, o_z => sig_z2);
    IA2: A port map (i_x => i_x, i_y => i_y, o_z => sig_z3);
    IB2: B port map (i_x => i_x, i_y => i_y, o_z => sig_z4);
    
    sig_p1 <= sig_z1 or sig_z2;
    sig_p2 <= sig_z3 and sig_z4;

    o_z <= sig_p1 xor sig_p2;

end behavioural;