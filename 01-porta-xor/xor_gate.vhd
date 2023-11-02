library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is
	port (
		A, B	: in std_logic;
		S		: out std_logic
	);
end entity;

architecture main of xor_gate is
	component not_gate is
		port(
			A	: in std_logic;
			S	: out std_logic
		);
	end component;
	
	component and_gate is
		port(
			A, B : in std_logic;
			S	  : out std_logic
		);
	end component;
	
	component or_gate is
		port(
			A, B : in std_logic;
			S	  : out std_logic
		);
	end component;
	
	signal s_nota, s_notb, s_and1, s_and2 : std_logic;
	
begin
	not1: not_gate port map(
		A => A,
		S => s_nota
	);

	not2: not_gate port map(
		A => B,
		S => s_notb
	);
	
	and1: and_gate port map(
		A => s_nota,
		B => B,
		S => s_and1
	);
	
	and2: and_gate port map(
		A => A,
		B => s_notb,
		S => s_and2
	);
	
	or1: or_gate port map(
		A => s_and1,
		B => s_and2,
		S => S
	);	
end architecture;
