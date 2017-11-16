library ieee;
use ieee.std_logic_1164.all;

entity testBench_extSig is
	port(
		inputt: in std_logic_vector(15 downto 0);
		outputt: out std_logic_vector(31 downto 0)
	);
end entity;

architecture Benehmen of testBench_extSig is

	component extSig 
		generic (
			N : integer := 32 
		);
		port(
			input: in std_logic_vector((N/2)-1 downto 0);
			output: out std_logic_vector(N-1 downto 0)
		);
	end component;


begin
	
	E0: extSig 
		generic map(
			N => 32
		)
		port map(
			input => inputt,
			output => outputt
		);
	
end architecture;