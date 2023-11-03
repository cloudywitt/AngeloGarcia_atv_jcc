library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4x1 is
	port(
		A, B, C, D, S0, S1: in std_logic;
		Z 			     : out std_logic
	);
end entity;

architecture main of mux_4x1 is

component mux_2x1 is
	port(
		D0, D1, S: in std_logic;
		O			: out std_logic
	);
end component;

signal s_mux1, s_mux2 : std_logic;

begin
	
	mux1: mux_2x1 port map (
		D0 => A,
		D1 => B,
		S => S0,
		O => s_mux1
	);
	
	mux2: mux_2x1 port map (
		D0 => C,
		D1 => D,
		S => S0,
		O => s_mux2
	);
	
	mux3: mux_2x1 port map (
		D0 => s_mux1,
		D1 => s_mux2,
		S => S1,
		O => Z
	);
end architecture;
