#Q2.Put a value in $S5, if it is zero put 55H in $S0 else put zero value in $S5.
.data
    value: .word 10      

.text
    main:
        lw $s5, value   

        beqz $s5, is_zero 
        li $s0, 0        
        j end             
    is_zero:
        li $s0, 0x55     
    end:
        
