#Q3.Write a program that receives temperature. If it is above 50 degree, multiply
#the value with 8, if less 50 degree than multiply it with 4 and if it is equal to 50
#degree add 10 to it.
.data
    prompt:     .asciiz 
    result_msg: .asciiz 
.text
    main:
        li $v0, 4            
        la $a0, prompt        
        syscall             
        li $v0, 5        
        syscall        
        move $t0, $v0    
        li $t1, 50          
        bgt $t0, $t1, above   
        blt $t0, $t1, below  
        addi $t0, $t0, 10     
        j end         
    above:
        mul $t0, $t0, 8       
        j end        
    below:
        mul $t0, $t0, 4   
    end:
        li $v0, 4            
        la $a0, result_msg   
        syscall        
        li $v0, 1             
        move $a0, $t0         
        syscall               
        li $v0, 10           
        syscall               
