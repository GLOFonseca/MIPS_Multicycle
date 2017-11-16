library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControlBlock is
	port (
		-- Basic Input
		clock: in std_logic;
		-- Control Input
		opcode: in std_logic_vector(5 downto 0);
		-- Control Outputs (In order from Teoric Class)
		PCEscCond, PCEsc, IouD: out std_logic;
		LerMem, EscMem, MemParaReg, IREsc: out std_logic;
		FontePC, ULAOp, ULAFonteB: out std_logic_vector(1 downto 0);
		ULAFonteA, EscReg, RegDst: out std_logic
	);
end entity;

architecture Benehmen of ControlBlock is

	type state is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, Exc);
	signal act_state, next_state: state;

begin

	process(act_state, opcode) is
	begin
		next_state <= act_state;
		case (act_state) is
			when S0 =>
				next_state <= S1;
				
			when S1 =>
				if (opcode = "100011" OR opcode = "101011") then
					next_state <= S2;
				elsif (opcode = "000000") then
					next_state <= S6;
				elsif (opcode = "000100") then
					next_state <= S8;
				elsif (opcode = "000010") then
					next_state <= S9;
				else 
					next_state <= Exc;
				end if;
				
			when S2 =>
				if (opcode = "100011") then
					next_state <= S3;
				elsif (opcode = "101011") then
					next_state <= S5;
				end if;
				
			when S3 =>
				next_state <= S4;
			when S4 =>
				next_state <= S0;
			when S5 =>
				next_state <= S0;
			when S6 =>
				next_state <= S7;
			when S7 =>
				next_state <= S0;
			when S8 =>
				next_state <= S0;
			when S9 =>
				next_state <= S0;
			-- Exception State (For errors)
			when Exc =>
					next_state <= S0;
		end case;
	end process;

	-- Clock process
	process(clock) is
	begin
		if (clock'event and clock = '1') then
			act_state <= next_state;
		end if;
	end process;

	PCEscCond <= 	'1' when (act_state = S8) else
						'0';
	PCEsc <=	'1' when (act_state = S0 OR act_state = S9) else
				'0';
	IouD <=	'1' when (act_state = S3 OR act_state = S5) else
				'0';
	LerMem <=	'1' when (act_state = S0 OR act_state = S3) else
					'0';
	EscMem <= 	'1' when (act_state = S4 OR act_state = S5) else
					'0';
	MemParaReg <= 	'1' when (act_state = S4) else
						'0';
	IREsc <=	'1' when (act_state = S0) else
				'0';
	FontePC <= 	"01" when (act_state = S8) else
					"10" when (act_state = S9) else
					"00";
	ULAOp <=	"01" when (act_state = S8) else
				"10" when (act_state = S6) else
				"00";
	ULAFonteB <=	"01" when (act_state = S0) else
						"10" when (act_state = S2) else
						"11" when (act_state = S1) else
						"00";
	ULAFonteA <=	'1' when (act_state = S2 OR act_state = S6 OR act_state = S8) else
						'0';
	EscReg <=	'1' when  (act_state = S4 OR act_state = S7) else
					'0';
	RegDst <=	'1' when (act_state = S7) else
					'0';
	
end architecture;