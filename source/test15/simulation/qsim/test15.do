onerror {exit -code 1}
vlib work
vlog -work work test15.vo
vlog -work work testCounter.vwf.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.test15_vlg_vec_tst -voptargs="+acc"
vcd file -direction test15.msim.vcd
vcd add -internal test15_vlg_vec_tst/*
vcd add -internal test15_vlg_vec_tst/i1/*
run -all
quit -f
