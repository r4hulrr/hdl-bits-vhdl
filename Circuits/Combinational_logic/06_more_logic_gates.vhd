library ieee;
use ieee.std_logic_1164.all;

entity more_logic_gates is
begin
    port(
        i_a     : in std_logic;
        i_b     : in std_logic;
        o_and   : out std_logic;
        o_or    : out std_logic;
        o_xor   : out std_logic;
        o_nand  : out std_logic;
        o_nor   : out std_logic;
        o_xnor  : out std_logic;
        o_anotb : out std_logic
    );
end entity;

architecture behavioural of more_logic_gates is
begin
    o_and   <= i_a and i_b;
    o_or    <= i_a or i_b;
    o_xor   <= i_a xor i_b;
    o_nand  <= i_a nand i_b;
    o_nor   <= i_a nor i_b;
    o_xnor  <= i_a xnor i_b;
    o_anotb <= i_a and (not i_b);
end behavioural;