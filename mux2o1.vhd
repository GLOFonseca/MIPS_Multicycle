library ieee;
use ieee.std_logic_1164.all;

entity mux2o1 is
	generic (
		N : integer := 32 
	);
	port(
		input0: in std_logic_vector(N-1 downto 0);
		input1: in std_logic_vector(N-1 downto 0);
		sel: in std_logic;
		output: out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture Benehmen of mux2o1 is
begin
	output <= 	input0 when (sel = '0') else 
					input1;
end architecture;