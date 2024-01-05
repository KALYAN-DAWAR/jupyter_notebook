  # Q1.Store a value 3 in a register and then add it 10 times using loop instructions.
      .data
    .text
    .globl main
main:
    li $t0, 3
    li $t1, 0
    add_loop:
        add $t0, $t0, $t0
        addi $t1, $t1, 1
        blt $t1, 10, add_loop
    li $v0, 10 
    syscall
