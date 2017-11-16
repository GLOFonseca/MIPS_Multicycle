library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity regLoad is
	generic (
		N : integer := 32 
	);
	port(
		clock, load: in std_logic;
		input: in std_logic_vector(N-1 downto 0);
		output: out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture Benehmen of regLoad is
begin
	process(clock)
	begin
		if (clock'event and clock = '1') then
			if (load = '1') then
				output <= input;
			end if;
		end if;
	end process;
end architecture;