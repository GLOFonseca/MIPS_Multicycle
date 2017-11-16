# copy this file to simulation folder

# Start Simulate
vsim -do MIPS_Mult_run_msim_gate_vhdl.do -l msim_transcript -i -sdftyp {/=/home/100000000757601/Desktop/Aula MIPS/simulation/modelsim/MIPS_Mult_vhd.sdo} work.testbench_reg

# adding Waves
add wave -position insertpoint  \
sim:/testbench_reg/clockt \
sim:/testbench_reg/inputt \
sim:/testbench_reg/outputt

# force signals
force clockt 0 0ns, 1 20ns -r 40ns
force inputt 00010001100010111011101110001000 0ns

# run 
run 60ns
