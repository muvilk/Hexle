set projDir "C:/Users/rapha/Desktop/beta-starter/work/vivado"
set projName "beta-32"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/rapha/Desktop/beta-starter/work/verilog/au_top_0.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/motherboard_1.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/button_conditioner_2.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/edge_detector_3.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/counter_4.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/multi_seven_seg_5.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/reset_conditioner_6.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/beta_cpu_7.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/instruction_rom_8.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/memory_unit_9.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/pipeline_10.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/counter_11.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/seven_seg_12.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/decoder_13.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/control_unit_14.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/alu_15.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/regfile_unit_16.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/pc_unit_17.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/simple_ram_18.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/simple_dual_ram_19.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/adder_20.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/boolean_21.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/shifter_22.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/compare_23.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/multiplier_24.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/mux_2_25.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/mux_4_26.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/regfile_memory_27.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/thirtytwobit_rca_28.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/x_bit_shifter_29.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/rca_adderarray_30.v" "C:/Users/rapha/Desktop/beta-starter/work/verilog/full_adder_31.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/rapha/Desktop/beta-starter/work/constraint/alchitry.xdc" "C:/Users/rapha/Desktop/beta-starter/work/constraint/io.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
