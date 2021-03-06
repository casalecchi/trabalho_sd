transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/VHDL/TESTEALU1/testealu1.vhd}

vcom -93 -work work {C:/VHDL/TESTEALU1/testealu1_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  testealu1_tb

add wave *
view structure
view signals
run 1 us
