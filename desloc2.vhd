library ieee;
use ieee.std_logic_1164.all;

entity desloc2 is
	generic (
		N : integer := 32 
	);
	port(
		input: in std_logic_vector(N-1 downto 0);
		output: out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture Benehmen of desloc2 is
begin
	output(N-1 downto 2) <= input(N-3 downto 0);
	output(1 downto 0) <= "00";
end architecture;