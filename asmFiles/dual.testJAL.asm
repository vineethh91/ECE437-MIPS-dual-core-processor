	org 0x0000
	
	ori $2, $0, 0x0F00
	ori $3, $0, 123


	sw $3, 0($2)
	lw $4, 0($2)
	addiu $4, $4, 1
	
	jal routine

	sw $4, 0($2)

	halt


routine:
	addiu $4, $4, 2
	addiu $4, $4, 2
	addiu $4, $4, 2
	addiu $4, $4, 2
	addiu $4, $4, 2
	jr $31

	org 0x200
	
	ori $3, $0, 123

	halt


	
