#4.Store five integer values and compare each value (arr[i]) wih k==5, if it equals
#multiply this value with 2 else with 4?
    .data
    array:  .word 1, 2, 3, 4, 5  
    length: .word 5      
    k:      .word 5   
    .text
    .globl main
main:
    la $a0, array
    lw $t0, length
    lw $t1, k
    li $t2, 0
    compare_and_multiply_loop:
        mul $t3, $t2, 4
        add $t3, $a0, $t3
        lw $t4, 0($t3)
        beq $t4, $t1, multiply_by_2 
        j multiply_by_4          
    multiply_by_2:
        mul $t4, $t4, 2
        j end_loop
    multiply_by_4:
        mul $t4, $t4, 4
    end_loop:
        sw $t4, 0($t3)
        addi $t2, $t2, 1
        blt $t2, $t0, compare_and_multiply_loop
    li $v0, 10     
    syscall
