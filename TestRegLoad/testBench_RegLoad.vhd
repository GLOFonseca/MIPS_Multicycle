library ieee;
use ieee.std_logic_1164.all;

entity testBench_RegLoad is
	port(
		clockt, loadt: in std_logic;
		inputt: in std_logic_vector(31 downto 0);
		outputt: out std_logic_vector(31 downto 0)
	);
end entity;

architecture Benehmen of testBench_RegLoad is

	component regLoad 
		generic (
			N : integer := 32 
		);
		port(
			clock, load: in std_logic;
			input: in std_logic_vector(N-1 downto 0);
			output: out std_logic_vector(N-1 downto 0)
		);
	end component;

begin

	R0: regLoad 
		generic map(N => 32) 
		port map(
			clock => clockt,
			load => loadt,
			input => inputt,
			output => outputt 
		);

end architecture;