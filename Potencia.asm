.text
Main:
	li $a0,6 # Load n
	li $a1,6 # Load m
	jal Potencia # Calling procedure
	j Exit # Jump to Main label
Potencia:
	slti $t0, $a0, 1 # if n = 1
	beq $t0, $zero, Loop # Branch to Loop
	addi $v0, $zero, 1 # Loading 1
	jr $ra # Return to the caller
Loop:
	addi $sp, $sp,-8 # Decreasing the stack pointer
	sw $ra 4($sp) # Storing n
	sw $a0, 0($sp) #  Storing the return address
	addi $a0, $a0, -1 # Decreasing n
	jal Potencia # Recursive function
	lw $a0, 0($sp) # Loading values from stack
	lw $ra, 4($sp) # Loading values from stack
	addi $sp, $sp, 8 # Increasing stack pointer
	mul $v0, $a1, $v0 # Multiplying m*Potencia(m,n-1)
	jr $ra  # Return to the caller
Exit:
	nop
