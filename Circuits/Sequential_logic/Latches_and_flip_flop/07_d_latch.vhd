library ieee;
use ieee.std_logic_1164.all;

entity top is
        port(
                i_d     : in std_logic;
                i_ena   : in std_logic;
                o_q     : out std_logic
        );
end entity;

architecture behavioural of top is
begin
        -- vhdl 2008
        o_q <= i_d when i_ena = '1' else o_q;
end behavioural;