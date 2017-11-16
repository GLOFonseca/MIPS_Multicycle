# http://www.tkt.cs.tut.fi/tools/public/tutorials/mentor/modelsim/getting_started/gsms.html
# copy this file to simulation folder

# Radix define
radix define State {
	11'b00000000000' "S0",
	11'b11000000000' "S1",
	11'b10100000000' "S2",
	11'b10010000000' "S3",
	11'b10001000000' "S4",
	11'b10000100000' "S5",
	11'b10000010000' "S6",
	11'b10000001000' "S7",
	11'b10000000100' "S8",
	11'b10000000010' "S9",
	11'b10000000001' "Exc",
	-default hex
}

# Start Simulate
vsim +altera -do MIPS_Mult_run_msim_gate_vhdl.do -l msim_transcript -gui -sdftyp {/=C:/Users/Usuario/Desktop/Aula MIPS/simulation/modelsim/MIPS_Mult_vhd.sdo} work.controlblock

# adding Waves
add wave -position insertpoint  \
sim:/controlblock/clock \
sim:/controlblock/opcode \
sim:/controlblock/PCEscCond \
sim:/controlblock/PCEsc \
sim:/controlblock/IouD \
sim:/controlblock/LerMem \
sim:/controlblock/EscMem \
sim:/controlblock/MemParaReg \
sim:/controlblock/IREsc \
sim:/controlblock/FontePC \
sim:/controlblock/ULAOp \
sim:/controlblock/ULAFonteB \
sim:/controlblock/ULAFonteA \
sim:/controlblock/EscReg \
sim:/controlblock/RegDst \
sim:/controlblock/\\act_state.S0~regout\\ \
sim:/controlblock/\\act_state.S1~regout\\ \
sim:/controlblock/\\act_state.S2~regout\\ \
sim:/controlblock/\\act_state.S3~regout\\ \
sim:/controlblock/\\act_state.S4~regout\\ \
sim:/controlblock/\\act_state.S5~regout\\ \
sim:/controlblock/\\act_state.S6~regout\\ \
sim:/controlblock/\\act_state.S7~regout\\ \
sim:/controlblock/\\act_state.S8~regout\\ \
sim:/controlblock/\\act_state.S9~regout\\

# force signals
force clock 0 0ns, 1 20ns -r 40ns
force opcode 000100 0ns

# run 
run 120ns
