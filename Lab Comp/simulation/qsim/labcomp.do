onerror {exit -code 1}
vlib work
vcom -work work labcomp.vho
vcom -work work db/LabComp.vwf.vht
vsim -voptargs=+acc -t 1ps -L cyclonev -L altera -L altera_mf  -L sgate -L altera_lnsim work.labcomp_vhd_vec_tst
vcd file -direction labcomp.msim.vcd
vcd add -internal labcomp_vhd_vec_tst/*
vcd add -internal labcomp_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
