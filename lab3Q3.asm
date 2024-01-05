 #  write a program that receives temperature. If it is above 50 degree, multiply the value with 8, if less 50 degree than multiply it with 4 and if it is equal to 50 degree add 10 to it. IN MIPS simple and short
    
      .data
prompt:     .asciiz "Enter the temperature (in degrees): "
result_msg: .asciiz "Result: "

    .text
    .globl main

main:
    # Print prompt
    li $v0, 4               # system call for print_str
    la $a0, prompt          # load address of prompt string
    syscall

    # Read temperature input
    li $v0, 5               # system call for read_int
    syscall
    move $t0, $v0           # store input in $t0

    # Check temperature conditions
    li $t1, 50              # threshold temperature

    bgt $t0, $t1, above_50   # branch if temperature is above 50
    blt $t0, $t1, below_50   # branch if temperature is below 50

    # Temperature is equal to 50
    li $t2, 10              # add 10
    j print_result

above_50:
    # Temperature is above 50, multiply by 8
    li $t2, 8
    mul $t0, $t0, $t2       # $t0 = $t0 * $t2
    j print_result

below_50:
    # Temperature is below 50, multiply by 4
    li $t2, 4
    mul $t0, $t0, $t2       # $t0 = $t0 * $t2

print_result:
    # Print result message
    li $v0, 4               # system call for print_str
    la $a0, result_msg      # load address of result_msg string
    syscall

    # Print result value
    li $v0, 1               # system call for print_int
    move $a0, $t0           # load result value
    syscall

    # Exit program
    li $v0, 10              # system call for exit
    syscall
