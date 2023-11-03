library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2x1 is
	port(
		D0, D1, S: in std_logic;
		O			: out std_logic
	);
end entity;

architecture main of mux_2x1 is
begin

	process(D0, D1, S) is
	begin
		if (S = '0') then 
			O <= D0;
		else
			O <= D1;
		end if;
	end process;
	
end architecture;
