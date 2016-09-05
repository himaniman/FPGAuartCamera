onerror {exit -code 1}
vlib work
vlog -work work test14.vo
vlog -work work WaveformTestDelay2Byte.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.test14_vlg_vec_tst -voptargs="+acc"
vcd file -direction test14.msim.vcd
vcd add -internal test14_vlg_vec_tst/*
vcd add -internal test14_vlg_vec_tst/i1/*
run -all
quit -f
