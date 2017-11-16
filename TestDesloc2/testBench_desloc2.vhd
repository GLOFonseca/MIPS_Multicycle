library ieee;
use ieee.std_logic_1164.all;

entity testBench_desloc2 is
	port(
		inputt: in std_logic_vector(31 downto 0);
		outputt: out std_logic_vector(31 downto 0)
	);
end entity;

architecture Benehmen of testBench_desloc2 is

	component desloc2
		generic (
			N : integer := 32 
		);
		port(
			input: in std_logic_vector(N-1 downto 0);
			output: out std_logic_vector(N-1 downto 0)
		);
	end component;

begin
	
	D0: desloc2 
		generic map(
			N => 32
		)
		port map(
				input => inputt,
				output => outputt
		);
		
end architecture;