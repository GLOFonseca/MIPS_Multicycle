# http://www.tkt.cs.tut.fi/tools/public/tutorials/mentor/modelsim/getting_started/gsms.html
# copy this file to simulation folder

# Start Simulate
vsim +altera -do MIPS_Mult_run_msim_gate_vhdl.do -l msim_transcript -gui -sdftyp {/=C:/Users/Usuario/Desktop/Aula MIPS/simulation/modelsim/MIPS_Mult_vhd.sdo} work.testbench_extsig

# adding Waves
add wave -position insertpoint  \
sim:/testbench_extsig/inputt \
sim:/testbench_extsig/outputt

# force signals
force inputt 0000000000010100 0ns, 1000000000000000 30ns

# run 
run 60ns
