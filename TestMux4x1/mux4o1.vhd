library ieee;
use ieee.std_logic_1164.all;

entity mux4o1 is
	generic (
		N : integer := 32 
	);
	port(
		input0: in std_logic_vector(N-1 downto 0);
		input1: in std_logic_vector(N-1 downto 0);
		input2: in std_logic_vector(N-1 downto 0);
		input3: in std_logic_vector(N-1 downto 0);
		sel: in std_logic_vector (1 downto 0);
		output: out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture Benehmen of mux4o1 is
begin
	output <= 	input0 when (sel = "00") else 
					input1 when (sel = "01") else
					input2 when (sel = "10") else
					input3;
end architecture;