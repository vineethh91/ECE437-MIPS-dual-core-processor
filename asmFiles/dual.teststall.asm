	org 0x0000
	
	ori $2, $0, 1
	ori $3, $0, 0x80

	lw $2, 0($3)
	addiu $2, $2, 1

	halt


	org 0x0200
	
	ori $2, $0, 1
	ori $3, $0, 0x90

	lw $2, 0($3)
	addiu $2, $2, 1

	halt


