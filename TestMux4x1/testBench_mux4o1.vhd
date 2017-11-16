library ieee;
use ieee.std_logic_1164.all;

entity testBench_mux4o1 is
	port(
		input0t: in std_logic_vector(31 downto 0);
		input1t: in std_logic_vector(31 downto 0);
		input2t: in std_logic_vector(31 downto 0);
		input3t: in std_logic_vector(31 downto 0);
		selt: in std_logic_vector (1 downto 0);
		outputt: out std_logic_vector(31 downto 0)
	);
end entity;

architecture Benehmen of testBench_mux4o1 is 

	component mux4o1 
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
	end component;

begin

	M0: mux4o1 
		generic map(N => 32) 
		port map(
			input0 => input0t,
			input1 => input1t,
			input2 => input2t,
			input3 => input3t,
			sel => selt,
			output => outputt 
		);

end architecture;
