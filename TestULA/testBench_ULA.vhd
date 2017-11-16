library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testBench_ULA is
  port (
    At: in std_logic_vector(31 downto 0);
    Bt: in std_logic_vector(31 downto 0);
    Ct: in std_logic_vector (2 downto 0);
    Rest: out std_logic_vector(31 downto 0);
    Zerot: out std_logic
  );
end entity;

architecture Benehmen of testBench_ULA is

  component ULA
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
	end component;

  begin

  	M0: ULA
  		generic map(N => 32)
  		port map(
  			A => At,
  			B => Bt,
  			C => Ct,
  			Res => Rest,
        Zero => Zerot
  		);

end architecture;
