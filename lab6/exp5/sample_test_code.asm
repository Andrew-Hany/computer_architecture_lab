.data

.text
main:


lw t4, 0(zero)     0 
lw t5, 4(zero)     4
lw t6, 8(zero)     8
loop:
beq t4,t6,exit     12        
add  t4,t4,t5       16
beq zero,zero,loop   20

exit:
sw t4, 12(zero)