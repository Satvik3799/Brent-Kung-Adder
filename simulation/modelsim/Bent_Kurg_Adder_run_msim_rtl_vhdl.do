transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/M.tech/IITB/Sem_1/EE 671 VLSI Design/Assignments/Assignment 3/Bent_Kurg_Adder.vhd}

vcom -93 -work work {E:/M.tech/IITB/Sem_1/EE 671 VLSI Design/Assignments/Assignment 3/tb_brent_kung.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_test

add wave *
view structure
view signals
run -all
