transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/mac_operator/mac_reg.vhd}
vcom -93 -work work {D:/mac_operator/mac_operand.vhd}
vcom -93 -work work {D:/mac_operator/mac_asp.vhd}

