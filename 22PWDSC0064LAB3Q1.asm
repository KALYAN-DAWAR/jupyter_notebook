#Q1.Store two values in a register and compare them if they are equal multiply them
# with 2 else with 4.
.data
    value1: .word 5    
    value2: .word 5      
    result: .word 0      

.text
    main:
        lw $t0, value1   
        lw $t1, value2   

        beq $t0, $t1, equal   
        mul $t2, $t0, 4      
        j end              

    equal:
        mul $t2, $t0, 2     

    end:
        sw $t2, result      
