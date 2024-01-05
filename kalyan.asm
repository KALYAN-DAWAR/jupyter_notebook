.text
.global main
main:
li $s0,2
li $s1,4

beq $s0,$s1,Else
sll $t3,$s0,2
sll $t4,$s1,2
j aaa
Else: sll $t3,$s0,1
      sll $t4,$s1,1
      
aaa: li $v0,10
syscall