# you cannot copy a value form one memory location to another  dirctly or  from one register to another register directly 
.data
v: .word 10,3,4,7
.text
.globl main
main:

la $t0,v
li $t1,0
jal swap
li $v0,10
syscall
swap:
all $t0,$a1,2
add $t0,$t0,$a0
lw $t1,0($t0)
lw $t2,4($t0)
sw $t2,0($t0)
sw $t1,4($t0)
jr $ra



