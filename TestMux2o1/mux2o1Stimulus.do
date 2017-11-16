# http://www.tkt.cs.tut.fi/tools/public/tutorials/mentor/modelsim/getting_started/gsms.html
# copy this file to simulation folder

# start simulation
vsim -do MIPS_Mult_run_msim_gate_vhdl.do -l msim_transcript -i -sdftyp {/=/home/100000000757601/Desktop/Aula MIPS/simulation/modelsim/MIPS_Mult_vhd.sdo} work.testbench_mux2o1

# adding Waves
add wave -position insertpoint  \
sim:/testbench_mux2o1/input0t \
sim:/testbench_mux2o1/input1t \
sim:/testbench_mux2o1/selt \
sim:/testbench_mux2o1/outputt

# force signals
force input0t 00000000000000000000000001110110 0ns
force input1t 00000000000000000000000000001000 0ns
force selt 0 0ns, 1 30ns

# run 
run 60ns
