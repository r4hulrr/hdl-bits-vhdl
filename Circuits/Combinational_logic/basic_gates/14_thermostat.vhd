-- heater = 1 when mode = 1 and too_cold = 1
-- aircon = 1 when mode = 0 and too_hot = 1
-- fan = 1 when heater = 1 or aircon = 1 or fan_on = 1
library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        i_too_cold  : in std_logic;
        i_too_hot   : in std_logic;
        i_mode      : in std_logic;
        i_fan_on    : in std_logic;
        o_heater    : out std_logic;
        o_aircon    : out std_logic;
        o_fan       : out std_logic
    );
end entity;

architecture behavioural of top is
begin
    o_heater <= (i_mode) and (i_too_cold);
    o_aircon <= (not i_mode) and (i_too_hot);
    -- vhdl 2008 allows us to read an out port but vhdl 2002 does not
    -- going to use this for maximum compatability
    o_fan <= ((i_mode) and (i_too_cold)) or ((not i_mode) and (i_too_hot)) or (i_fan_on);
end behavioural;