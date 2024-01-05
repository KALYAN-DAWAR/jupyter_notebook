.data
array:  .word 1, 2, 3, 4, 5  
k:      .word 5              
.text
main:
    li $t0, 0                
    li $t1, 5               
compare_loop:
    lw $t2, array($t0)     
    lw $t3, k               

    beq $t2, $t3, found_match 

    addi $t0, $t0, 1        
    bne $t0, $t1, compare_loop  
    j end_comparison         

found_match:
    addi $t4, $t4, 1
    j end_comparison

end_comparison:

    li $v0, 10
    syscall
