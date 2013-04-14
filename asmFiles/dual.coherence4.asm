	org 0x0000
	ori $3, $zero, 0x0080	
	addiu $4, $zero, 0x0001
	sw $4, 0($3)
	halt





	org 0x0200
	ori $3, $zero, 0x0084	
	addiu $4, $zero, 0x002
	sw $4, 0($3)
	halt
