cls:
ghdl -a pc.vhdl
ghdl -e pc
ghdl -a rom.vhdl
ghdl -e rom
ghdl -a registrador17b.vhdl
ghdl -e registrador17b
ghdl -a banco_reg17b.vhdl
ghdl -e banco_reg17b
ghdl -a maq_estado2b.vhdl
ghdl -e maq_estado2b
ghdl -a estado_pulo.vhdl
ghdl -e estado_pulo
ghdl -a ula.vhdl
ghdl -e ula
ghdl -a ram.vhdl
ghdl -e ram
ghdl -a uc.vhdl
ghdl -e uc
ghdl -a uc_tb.vhdl
ghdl -e uc_tb
ghdl -r uc_tb --stop-time=10000000ns --wave=uc_tb.ghw
gtkwave uc_tb.ghw 
pause