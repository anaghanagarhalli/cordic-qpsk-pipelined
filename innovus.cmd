#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Sep 17 17:22:31 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
set init_gnd_net VSS
set init_lef_file ../../../../install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
set init_design_settop 0
set init_verilog output/netlist/qpsk_pipelined_top_opt.v
set init_mmmc_file Default.view
set init_pwr_net VDD
init_design
saveDesign qpsk_pipelined_top_PREFLOORPLAN
saveDesign qpsk_pipelined_top_PREFLOORPLAN
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.983911810064 0.69999 8 8 8 8
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.96393442623 0.699844 8.12 8.12 8.12 8.12
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {}
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.5 bottom 0.5 left 0.5 right 0.5} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.5 bottom 0.5 left 0.5 right 0.5} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal9 -direction horizontal -width 1.8 -spacing 0.5 -number_of_sets 3 -start_from bottom -start_offset 1 -stop_offset 1 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 1.8 -spacing 0.5 -number_of_sets 3 -start_from left -start_offset 1 -stop_offset 1 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 1.8 -spacing 0.5 -number_of_sets 3 -start_from left -start_offset 1 -stop_offset 1 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
saveDesign qpsk_pipelined_top_PREPOWERROUTING
saveDesign qpsk_pipelined_top_PREPOWERROUTING
getSrouteMode -allowWrongWayRoute -quiet
getSrouteMode -viaThruToClosestRing -quiet
getSrouteMode -extendNearestTarget -quiet
getSrouteMode -targetNumber -quiet
getSrouteMode -targetSearchDistance -quiet
getSrouteMode -jogThresholdRatio -quiet
getSrouteMode -blockPinConnectRingPinCorners -quiet
getSrouteMode -blockPinRouteWithPinWidth -quiet
getSrouteMode -padPinMinViaSize -quiet
getSrouteMode -padPinSplit -quiet
getSrouteMode -padRingLefConvention -quiet
getSrouteMode -signalPinAsPG -quiet
getSrouteMode -corePinJoinLimit -quiet
getSrouteMode -corePinLength -quiet
getSrouteMode -corePinLengthAsInstance -quiet
getSrouteMode -corePinReferenceMacro -quiet
getSrouteMode -treatEndcapAsCore -quiet
getSrouteMode -secondaryPinMaxGap -quiet
getSrouteMode -secondaryPinRailWidth -quiet
getSrouteMode -srpgAonCellPin -quiet
getSrouteMode -viaConnectToShape -quiet
getSrouteMode -layerNormalCost -quiet
getSrouteMode -layerWrongWayCost -quiet
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
saveDesign qpsk_pipelined_top_POSTPOWERROUTING
saveDesign qpsk_pipelined_top_POSTPOWERROUTING
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -prePlace -pathReports -drvReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -prePlace -pathReports -drvReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_preCTS -outDir timingReports
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFDefaultRouteSpec_gpdk090
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
saveDesign qpsk_pipelined_top_POSTPLACEMENT
saveDesign qpsk_pipelined_top_POSTPLACEMENT
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_preCTS -outDir timingReports
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setOptMode -effort high -powerEffort none -leakageToDynamicRatio 1 -reclaimArea true -simplifyNetlist true -allEndPoints true -setupTargetSlack 0 -holdTargetSlack 0 -maxDensity 0.95 -drcMargin 0 -usefulSkew true
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -pathReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -pathReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_preCTS -outDir timingReports
getCTSMode -engine -quiet
create_ccopt_clock_tree_spec
ctd_win -side none -id ctd_window
selectInst {u_cordic/y_pipe_reg[14][5]}
deselectInst {u_cordic/y_pipe_reg[14][5]}
selectObject IO_Pin clk
zoomSelected
deselectObject IO_Pin clk
selectInst {u_cordic/y_pipe_reg[9][10]}
zoomSelected
fit
getCTSMode -engine -quiet
ctd_win -side none -id ctd_window
deselectInst {u_cordic/y_pipe_reg[9][10]}
selectInst {u_cordic/z_pipe_reg[5][15]}
zoomSelected
deselectInst {u_cordic/z_pipe_reg[5][15]}
selectObject Net clk
zoomSelected
deselectObject Net clk
selectInst {u_cordic/y_pipe_reg[9][9]}
zoomSelected
deselectInst {u_cordic/y_pipe_reg[9][9]}
selectObject IO_Pin clk
zoomSelected
zoomBox 143.81700 -0.74750 146.30950 0.45750
zoomBox 142.40750 -1.32300 147.18450 0.98650
zoomBox 140.52850 -2.06250 148.30850 1.69900
zoomBox 135.98350 -3.59850 150.88850 3.60750
zoomBox 127.10250 -6.31550 155.65700 7.48950
zoomBox 103.72850 -13.38050 168.08550 17.73400
zoomBox 77.31900 -21.35650 182.11600 29.30900
zoomBox 12.58650 -37.58250 213.34500 59.47700
zoomBox -119.73400 -64.66550 264.85850 121.27100
zoomBox -373.21800 -116.54850 363.54150 239.64800
zoomBox -591.87400 -147.00750 427.86200 345.99800
zoomBox -473.68250 -130.54350 393.09400 288.51150
fit
deselectObject IO_Pin clk
selectInst {u_cordic/z_pipe_reg[12][8]}
zoomSelected
deselectInst {u_cordic/z_pipe_reg[12][8]}
selectInst {u_cordic/z_pipe_reg[7][4]}
zoomSelected
deselectInst {u_cordic/z_pipe_reg[7][4]}
selectInst {u_demod/filtered_i_reg[14]}
zoomSelected
deselectInst {u_demod/filtered_i_reg[14]}
selectObject Net clk
zoomSelected
deselectObject Net clk
selectInst {u_demod/i_delay_reg[2][18]}
zoomSelected
deselectInst {u_demod/i_delay_reg[2][18]}
selectInst {u_demod/i_delay_reg[3][15]}
zoomSelected
deselectInst {u_demod/i_delay_reg[3][15]}
selectInst {u_demod/i_delay_reg[3][31]}
zoomSelected
deselectInst {u_demod/i_delay_reg[3][31]}
selectInst {u_cordic/y_pipe_reg[16][6]}
zoomSelected
deselectInst {u_cordic/y_pipe_reg[16][6]}
selectInst {u_cordic/x_pipe_reg[9][13]}
zoomSelected
deselectInst {u_cordic/x_pipe_reg[9][13]}
selectObject Net clk
zoomSelected
deselectObject Net clk
selectInst {u_cordic/x_pipe_reg[13][3]}
zoomSelected
deselectInst {u_cordic/x_pipe_reg[13][3]}
selectInst {u_cordic/x_pipe_reg[4][8]}
zoomSelected
deselectInst {u_cordic/x_pipe_reg[4][8]}
selectInst {u_cordic/x_pipe_reg[6][9]}
zoomSelected
deselectInst {u_cordic/x_pipe_reg[6][9]}
selectObject Net clk
zoomSelected
deselectObject Net clk
selectObject IO_Pin clk
zoomSelected
fit
deselectAll
setNanoRouteMode -quiet -routeWithTimingDriven 0
setNanoRouteMode -quiet -routeWithSiDriven 0
setNanoRouteMode -quiet -routeTopRoutingLayer 9
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setNanoRouteMode -quiet -routeWithTimingDriven 0
setNanoRouteMode -quiet -routeWithSiDriven 0
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setAnalysisMode -cppr both -clockGatingCheck true -timeBorrowing true -useOutputPinCap true -sequentialConstProp false -timingSelfLoopsNoSkew false -enableMultipleDriveNet true -clkSrcPath false -warn true -usefulSkew true -analysisType onChipVariation -log true
getNanoRouteMode -quiet -routeWithTimingDriven
setSIMode -acceptableWNS same -fixDRC 1 -fixHoldIncludeXtalkSetup 1
setSIMode -save siFix.option
setSIMode -acceptableWNS same -fixDRC 1 -fixHoldIncludeXtalkSetup 1
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
setDelayCalMode -engine default -siAware true
optDesign -postRoute -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
setDelayCalMode -engine default -siAware true
optDesign -postRoute -hold
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -pathReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_postCTS -outDir timingReports
getCTSMode -engine -quiet
getNanoRouteMode -quiet -routeWithTimingDriven
setSIMode -acceptableWNS same -fixDRC 1 -fixHoldIncludeXtalkSetup 1
setSIMode -save siFix.option
setSIMode -acceptableWNS same -fixDRC 1 -fixHoldIncludeXtalkSetup 1
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
setDelayCalMode -engine default -siAware true
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
setDelayCalMode -engine default -siAware true
optDesign -postRoute
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_postRoute -outDir timingReports
verifyConnectivity -type all -error 1000 -warning 50
verifyConnectivity -type all -error 1000 -warning 50
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report qpsk_pipelined_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report qpsk_pipelined_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
getCTSMode -engine -quiet
getFillerMode -quiet
addFiller -cell FILL1 FILL2 FILL64 FILL8 FILL16 FILL4 FILL32 -prefix FILLER -doDRC
addFiller -cell FILL1 FILL2 FILL64 FILL8 FILL16 FILL4 FILL32 -prefix FILLER -doDRC
addMetalFill -layer { Metal1 Metal2 Metal3 Metal4 Metal5 Metal6 Metal7 Metal8 Metal9 } -net { VSS VDD }
addMetalFill -layer { Metal1 Metal2 Metal3 Metal4 Metal5 Metal6 Metal7 Metal8 Metal9 } -net { VSS VDD }
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_signOff -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_signOff -outDir timingReports
getNanoRouteMode -quiet -routeWithTimingDriven
setSIMode -acceptableWNS same -fixDRC 1 -fixHoldIncludeXtalkSetup 1
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
setDelayCalMode -engine default -siAware true
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
setDelayCalMode -engine default -siAware true
optDesign -postRoute
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -hold -pathReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_signOff -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -hold -pathReports -slackReports -numPaths 50 -prefix qpsk_pipelined_top_signOff -outDir timingReports
getCTSMode -engine -quiet
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
setDelayCalMode -engine default -siAware true
optDesign -postRoute -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
setDelayCalMode -engine default -siAware true
optDesign -postRoute -hold
verifyConnectivity -type all -error 1000 -warning 50
verifyConnectivity -type all -error 1000 -warning 50
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report qpsk_pipelined_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report qpsk_pipelined_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
saveDesign qpsk_pipelined_top_SIGNOFF
saveDesign qpsk_pipelined_top_SIGNOFF
saveNetlist qpsk_pipelined_top.v
saveFPlan qpsk_pipelined_top.fp
saveIoFile -locations qpsk_pipelined_top.save.io
streamOut GDSPIPELINEDPD -libName DesignLib -units 2000 -mode ALL
streamOut GDSPIPELINEDPD -libName DesignLib -units 2000 -mode ALL
saveDesign qpsk_pipelined_top_FINAL
saveDesign qpsk_pipelined_top_FINAL
