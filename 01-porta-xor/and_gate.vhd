-- Bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;

-- Descriçao da interface (entradas e saidas
entity and_gate is
	port(
		A, B : in std_logic;
		S	  : out std_logic
	);
end entity;

-- Descriçao da arquitetura (funcionamento, logica)
architecture main of and_gate is
begin

	S <= A and B;
	
end architecture;
