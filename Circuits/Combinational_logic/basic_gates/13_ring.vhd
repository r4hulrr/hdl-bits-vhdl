-- motor = 1 when vibrate = 1 and ring = 1
-- ringer = 1 when ring = 1 and vibrate = 0
library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        i_ring      : in std_logic;
        i_vibrate   : in std_logic;
        o_ringer    : out std_logic;
        o_motor     : out std_logic
    );
end entity;

architecture behavioural of top is
begin
    o_ringer    <= '1' when (i_ring = 1) and (i_vibrate = 0) else '0';
    o_motor     <= '1' when (i_ring = 1) and (i_vibrate = 1) else '0';
end behavioural;