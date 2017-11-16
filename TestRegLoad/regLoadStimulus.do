# copy this file to simulation folder

# Start Simulate
vsim -do MIPS_Mult_run_msim_gate_vhdl.do -l msim_transcript -i -sdftyp {/=/home/100000000757601/Desktop/Aula MIPS/simulation/modelsim/MIPS_Mult_vhd.sdo} work.testbench_regload

# adding Waves
add wave -position insertpoint  \
sim:/testbench_regload/clockt \
sim:/testbench_regload/loadt \
sim:/testbench_regload/inputt \
sim:/testbench_regload/outputt

# force signals
force clockt 0 0ns, 1 20ns -r 40ns
force loadt 0 0ns, 1 50ns
force inputt 00010001100010111011101110001000 0ns

# run 
run 100ns
