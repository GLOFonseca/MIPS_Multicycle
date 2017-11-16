library ieee;
use ieee.std_logic_1164.all;

entity testBench_mux2o1 is
	port(
		input0t: in std_logic_vector(31 downto 0);
		input1t: in std_logic_vector(31 downto 0);
		selt: in std_logic;
		outputt: out std_logic_vector(31 downto 0)
	);
end entity;

architecture Benehmen of testBench_mux2o1 is 

	component mux2o1 
		generic (
			N : integer := 32 
		);
		port(
			input0: in std_logic_vector(N-1 downto 0);
			input1: in std_logic_vector(N-1 downto 0);
			sel: in std_logic;
			output: out std_logic_vector(N-1 downto 0)
		);
	end component;

begin

	M0: mux2o1 
		generic map(N => 32) 
		port map(
			input0 => input0t,
			input1 => input1t,
			sel => selt,
			output => outputt 
		);

end architecture;