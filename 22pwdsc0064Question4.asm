.data
    g:      .word 5      
    h:      .word 8    
    i:      .word 12    
    j:      .word 3     
    result: .word 0      
.text
    main:
        lw $t0, g         
        lw $t1, h        
        lw $t2, i         
        lw $t3, j         

        add $t4, $t0, $t1  
        sub $t4, $t4, $t2  
        sub $t4, $t4, $t3  

        sw $t4, result  
        li $v0, 10         
        syscall
