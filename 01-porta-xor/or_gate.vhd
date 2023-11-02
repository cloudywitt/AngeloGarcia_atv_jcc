library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate is
	port(
		A, B : in std_logic;
		S	  : out std_logic
	);
end entity;

architecture main of or_gate is
begin
	
	S <= A or B;
	
end architecture;
