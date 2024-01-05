.text
main:
  addi $a0, $zero, 10
  addi $a1, $zero, 5
  addi $a2, $zero, 2
  addi $a3, $zero, 3

  leaf:
  li $v0, 4
  la $a0, message
  syscall
  li $v0, 10
  syscall