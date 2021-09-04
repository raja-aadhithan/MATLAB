# HDL Coder Downstream Integration Tcl Script

set myTool "Intel Quartus Pro 20.4.0"
set myProject "Pulse_Detector_qpro"
set myProjectFile "Pulse_Detector_qpro.qpf"
set myTopLevelEntity "Pulse_Detector"

set Family "Cyclone 10 GX"
set Device "10CX150YF672E5G"
set Package ""
set Speed ""
set UseTimeQuest "ON"

# Open existing project
puts "### Open existing $myTool project hdl_project_verilog\\qpro_prj\\Pulse_Detector_qpro.qpf"
load_package flow
project_open -current_revision $myProject

# Running Synthesis
puts "### Running Synthesis in $myTool ..."
execute_module -tool map
puts "### Synthesis Complete."

# Close project
puts "### Close $myTool project."
project_close

