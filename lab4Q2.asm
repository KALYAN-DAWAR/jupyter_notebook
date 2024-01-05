.data
array:  .word 1, 2, 3, 4, 5  

.text
main:
    
    li $t0, 0                
    li $t1, 4      
swap_loop:
    lw $t2, array($t0)       
    lw $t3, array($t1)       

    sw $t3, array($t0)       
    sw $t2, array($t1)       

    addi $t0, $t0, 1         
    addi $t1, $t1, -1       

    bge $t0, $t1, end_swap   
    j swap_loop

end_swap:
    li $v0, 10               
    syscall
