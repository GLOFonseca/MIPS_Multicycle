# http://www.tkt.cs.tut.fi/tools/public/tutorials/mentor/modelsim/getting_started/gsms.html
# copy this file to simulation folder

# Start Simulate
vsim +altera -do MIPS_Mult_run_msim_gate_vhdl.do -l msim_transcript -gui -sdftyp {/=C:/Users/Usuario/Desktop/Aula MIPS/simulation/modelsim/MIPS_Mult_vhd.sdo} work.testbench_desloc2

# adding Waves
add wave -position insertpoint  \
sim:/testbench_desloc2/inputt \
sim:/testbench_desloc2/outputt

# force signalss
force inputt 00000000000000000000000000000011 0ns, 00000000000000000000000000000001 20ns, 00000000000000000000000000000010 40ns

# run 
run 60ns
