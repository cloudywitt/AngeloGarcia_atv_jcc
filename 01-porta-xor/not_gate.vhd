-- Libraries and Pakcages
library IEEE;
use IEEE.std_logic_1164.all;

-- Entity
entity not_gate is
	port(
		A	: in std_logic;
		S	: out std_logic
	);
end entity;

-- Architecture
architecture main of not_gate is
begin

	S <= not A;
	
end architecture;
