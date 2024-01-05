.text 
.globl main
 main:
     li $t0,3
     li $t1,0
     loop_start:
     add $t0,$t0,$t0
     addi $t1,$t1,1
     blt $t1,10,loop_start
     li $v0,0
     syscall