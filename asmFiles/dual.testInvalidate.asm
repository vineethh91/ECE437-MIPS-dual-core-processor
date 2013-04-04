	org 0x0200
	
	ori $2, $0, 1
	ori $3, $0, 2
	ori $8, $0, 0x80

	ll $4, 0($8)
	nop
	nop
	nop
	nop
	nop
	nop
	sc $4, 0($8)
	sw $4, 0($8)
	halt


	org 0x0000
	
	ori $2, $0, 1
	ori $3, $0, 2
	ori $8, $0, 0x80

	nop
	nop
		
	sw $4, 0($8)
        	
	nop
	nop
	nop
	halt

	

