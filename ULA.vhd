library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is
	generic (
		N : integer := 32 
	);
	port(
		A: in std_logic_vector(N-1 downto 0);
		B: in std_logic_vector(N-1 downto 0);
		C: in std_logic_vector (2 downto 0);
		Res: out std_logic_vector(N-1 downto 0);
		Zero: out std_logic
	);
end entity;

architecture Benehmen of ULA is
begin
	Res <= 	(A and B) when C = "000" else
				(A or B) when C = "001" else
				(std_logic_vector( to_unsigned( to_integer(unsigned(A)) + to_integer(unsigned(B)) , Res'length) ) ) when C = "010" else
				(std_logic_vector( to_unsigned( to_integer(unsigned(A)) - to_integer(unsigned(B)) , Res'length) ) ) when C = "110" else
				(std_logic_vector( to_unsigned( to_integer(unsigned(A)) - to_integer(unsigned(B)) , Res'length) ) ) when C = "111"; --else
end architecture;