library ieee;
use ieee.std_logic_1164.all;

entity testBench_Reg is
	port(
		clockt: in std_logic;
		inputt: in std_logic_vector(31 downto 0);
		outputt: out std_logic_vector(31 downto 0)
	);
end entity;

architecture Benehmen of testBench_Reg is 

	component reg 
		generic (
			N : integer := 32 
		);
		port(
			clock: in std_logic;
			input: in std_logic_vector(N-1 downto 0);
			output: out std_logic_vector(N-1 downto 0)
		);
	end component;

begin

	R0: reg
		generic map(N => 32) 
		port map(
			clock => clockt,
			input => inputt,
			output => outputt 
		);

end architecture;