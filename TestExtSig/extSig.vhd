library ieee;
use ieee.std_logic_1164.all;

entity extSig is
	generic (
		N : integer := 32 
	);
	port(
		input: in std_logic_vector((N/2)-1 downto 0);
		output: out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture Benehmen of extSig is
begin
	output((N/2)-1 downto 0) <= input;
	output(N-1 downto (N/2)) <= (others => '0');
end architecture;