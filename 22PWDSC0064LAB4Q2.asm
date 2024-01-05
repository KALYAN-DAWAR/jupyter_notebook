   #Q2.Store five integer values in an array and swap it using loops.
     .data
    array:  .word 1, 2, 3, 4, 5  
    length: .word 5  
    .text
    .globl main
main:
    la $a0, array
    lw $t0, length
    li $t1, 0
    swap_loop:
        mul $t2, $t1, 4
        add $t2, $a0, $t2
        lw $t3, 0($t2)
        sub $t4, $t0, $t1
        subi $t4, $t4, 1
        mul $t5, $t4, 4
        add $t5, $a0, $t5 
        lw $t6, 0($t5)
        sw $t6, 0($t2)
        sw $t3, 0($t5)
        addi $t1, $t1, 1
        blt $t1, $t0, swap_loop
    li $v0, 10     
    syscall
