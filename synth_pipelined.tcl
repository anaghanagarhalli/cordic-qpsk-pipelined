# IMPORTANT: Replace with your actual top-level module name that instantiates these blocks
set TOP_MODULE "qpsk_pipelined_top"

# Set library and HDL search paths 
set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib
set_db init_hdl_search_path ./

# Read technology libraries
read_libs slow.lib

# Read all pipelined project Verilog files
read_hdl {
    cordic_pipelined.v
    phase_accumulator_pipelined.v
    qpsk_demod_pipelined.v
    sps_imp_pipelined.v
    qpsk_pipelined_top.v
}

# Elaborate the top module
elaborate $TOP_MODULE

# Apply timing constraints
read_sdc qpsk_pipelined_top.sdc

# Set synthesis effort levels (can be increased to 'high' if timing is tight in the pipeline)
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium

# Generic synthesis
syn_generic
write_hdl > output/netlist/${TOP_MODULE}_generic.v

# Map to target technology
syn_map
write_hdl > output/netlist/${TOP_MODULE}_mapped.v

# Optimize design
syn_opt
write_hdl > output/netlist/${TOP_MODULE}_opt.v

# Export generated constraints
write_sdc > output/constraints/${TOP_MODULE}_synth.sdc

# Generate comprehensive synthesis reports
report_timing > output/reports/${TOP_MODULE}_timing.rpt
report_power  > output/reports/${TOP_MODULE}_power.rpt
report_area   > output/reports/${TOP_MODULE}_area.rpt
report_gates  > output/reports/${TOP_MODULE}_gates.rpt
report_qor    > output/reports/${TOP_MODULE}_qor.rpt

# Open Genus GUI for visual analysis
gui_show
