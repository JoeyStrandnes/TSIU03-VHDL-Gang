# vsim work.lab2_kb
# vcom ../../Lab2_KB.vhd
# add wave lab2_kb/*
force -freeze sim:/lab2_kb/clk 1 0us, 0 100ns -r 200ns
force -freeze sim:/lab2_kb/rstn 0 0us, 1 1000ns
force -freeze sim:/lab2_kb/PS2_CLK 1 0us, 0 200.019us, 1 225us, 0 250.017us, 1 275us, 0 300.015us, 1 325us, 0 350.013us, 1 375us, 0 400.011us, 1 425us, 0 450.009us, 1 475us, 0 500.007us, 1 525us, 0 550.005us, 1 575us, 0 600.003us, 1 625us, 0 650.001us, 1 675us, 0 699.999us, 1 725us -r 2000.006us


#1110 0000  = 0E
#0111 0101   = 57
#0111 0010 = 72
#											  startbit	lsb																						 msb		  paritet	stoppbit				
force -freeze sim:/lab2_kb/PS2_DAT 0 175us,  0 225us,  0 275us,  0 325us,  0 375us,  0 425us,  1 475us,  1 525us,  1 575us,  0 625us, 	1 675us #0xE0
force -freeze sim:/lab2_kb/PS2_DAT 0 2175us, 1 2225us, 0 2275us, 1 2325us, 0 2375us, 1 2425us, 1 2475us, 1 2525us, 0 2575us, 0 2625us, 1 2675us #0x75

force -freeze sim:/lab2_kb/PS2_DAT 0 4175us, 0 4225us, 0 4275us, 0 4325us, 0 4375us, 0 4425us, 1 4475us, 1 4525us, 1 4575us, 0 4625us, 1 4675us #0xE0
force -freeze sim:/lab2_kb/PS2_DAT 0 6175us, 1 6225us, 0 6275us, 1 6325us, 0 6375us, 1 6425us, 1 6475us, 1 6525us, 0 6575us, 0 6625us, 1 6675us #0x75

force -freeze sim:/lab2_kb/PS2_DAT 0 8175us,  0 8225us,  0 8275us,  0 8325us,  0 8375us,  0 8425us,  1 8475us,  1 8525us,  1 8575us,  0 8625us,  1 8675us  #0xE0
force -freeze sim:/lab2_kb/PS2_DAT 0 10175us, 0 10225us, 1 10275us, 0 10325us, 0 10375us, 1 10425us, 1 10475us, 1 10525us, 0 10575us, 0 10625us, 1 10675us #0x72

#force -freeze sim:/lab2_kb/PS2_DAT 0 12175us, 0 12225us, 0 12275us, 0 12325us, 0 12375us, 0 12425us, 1 12475us, 1 12525us, 1 12575us, 0 12625us, 1 12675us  #0xE0
#force -freeze sim:/lab2_kb/PS2_DAT 0 14175us, 0 14225us, 1 14275us, 1 14325us, 1 14375us, 0 14425us, 1 14475us, 0 14525us, 1 14575us, 0 14625us, 1 14675us #0x75

#force -freeze sim:/lab2_kb/PS2_DAT 0 16175us, 0 16225us, 0 16275us, 0 16325us, 0 16375us, 0 16425us, 1 16475us, 1 16525us, 1 16575us, 0 16625us, 1 16675us  #0xE0
#force -freeze sim:/lab2_kb/PS2_DAT 0 18175us, 0 18225us, 1 18275us, 1 18325us, 1 18375us, 0 18425us, 1 18475us, 0 18525us, 1 18575us, 0 18625us, 1 18675us #0x75



run 2ms; if {[exa -radix 2 HEX0] == "1000000"} {echo "Key1: OK."} else {echo "Key1: NOK, result = \"[exa -radix 2 HEX0]\"."}
run 2ms; if {[exa -radix 2 HEX0] == "1111001"} {echo "Key2: OK."} else {echo "Key2: NOK, result = \"[exa -radix 2 HEX0]\"."}

run 2ms; if {[exa -radix 2 HEX0] == "1111001"} {echo "Key3: OK."} else {echo "Key3: NOK, result = \"[exa -radix 2 HEX0]\"."}
run 2ms; if {[exa -radix 2 HEX0] == "0100100"} {echo "Key4: OK."} else {echo "Key4: NOK, result = \"[exa -radix 2 HEX0]\"."}

run 2ms; if {[exa -radix 2 HEX0] == "0100100"} {echo "Key5: OK."} else {echo "Key5: NOK, result = \"[exa -radix 2 HEX0]\"."}
run 2ms; if {[exa -radix 2 HEX0] == "1111001"} {echo "Key6: OK."} else {echo "Key6: NOK, result = \"[exa -radix 2 HEX0]\"."}

#run 2ms; if {[exa -radix 2 HEX0] == "1111000"} {echo "Key7: OK."} else {echo "Key7: NOK, result = \"[exa -radix 2 HEX0]\"."}
#run 2ms; if {[exa -radix 2 HEX0] == "0000000"} {echo "Key8: OK."} else {echo "Key8: NOK, result = \"[exa -radix 2 HEX0]\"."}
#run 2ms; if {[exa -radix 2 HEX0] == "0010000"} {echo "Key9: OK."} else {echo "Key9: NOK, result = \"[exa -radix 2 HEX0]\"."}
#run 2ms; if {[exa -radix 2 HEX0] == "1000000"} {echo "Key0: OK."} else {echo "Key0: NOK, result = \"[exa -radix 2 HEX0]\"."}
#run 2ms; if {[exa -radix 2 HEX0] == "0000110"} {echo "Other: OK."} else {echo "Other: NOK, result = \"[exa -radix 2 HEX0]\"."}
wave zoom full

