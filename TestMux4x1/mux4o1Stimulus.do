# http://www.tkt.cs.tut.fi/tools/public/tutorials/mentor/modelsim/getting_started/gsms.html
# copy this file to simulation folder

#start simulation
vsim +altera -do MIPS_Mult_run_msim_gate_vhdl.do -l msim_transcript -gui -sdftyp {/=C:/Users/Usuario/Desktop/Aula MIPS/simulation/modelsim/MIPS_Mult_vhd.sdo} work.testbench_mux4o1

# add waves
add wave -position insertpoint  \
sim:/testbench_mux4o1/input0t \
sim:/testbench_mux4o1/input1t \
sim:/testbench_mux4o1/input2t \
sim:/testbench_mux4o1/input3t \
sim:/testbench_mux4o1/selt \
sim:/testbench_mux4o1/outputt 

# force signals
force input0t 00000000000000000000000000000001 0ns
force input1t 00000000000000000000000000000010 0ns
force input2t 00000000000000000000000000000011 0ns
force input3t 00000000000000000000000000000100 0ns
force selt 00 0ns, 01 20ns, 10 40ns, 11 60ns

# run 
run 80ns
