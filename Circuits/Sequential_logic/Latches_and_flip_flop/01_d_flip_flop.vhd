library ieee;
use ieee.std_logic_1164.all;

entity top is
	port(
		i_clk, i_d 	: in std_logic;
		o_q		: out std_logic
	);
end entity;

architecture behavioural of top is
begin
	process(i_clk) is
	begin
		if rising_edge(i_clk) then
			o_q <= i_d;
		end if;
	end process;
end behavioural;
