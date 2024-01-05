.data
    array:  .float 2.0, 3.0, 4.0, 5.0, 6.0   
    n:      .word 5                         
    result: .float 0.0                       

.text
    main:
        l.s $f0, result      

        
        li $t0, 0                
    loop:
        l.s $f1, array($t0)      
        mul.s $f1, $f1, $f1     
        add.s $f0, $f0, $f1      
        addi $t0, $t0, 4         
        bne $t0, $1, loop        
        li $v0, 10               
        syscall
