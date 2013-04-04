    	org 0x0000

    	lui $2, 0xFFFF
    	ori $2, $2, 16
    	ori $3, $0, 7
    	ori $4, $0, 8
    	ori $5, $0, 1

    	ori $20, $0, 0xF0
    	
    	#test load deps...
    	ori $21, $0, 0xA00
    	sw $21, 32($20)
    	sw $5, 0($21)
    
    	lw $7, 32($20)
    	lw $8, 0($7)
    	addu $9, $8, $7

    	sw $7, 20($20)
    	sw $8, 24($20)
    	sw $9, 28($20)
    
    	halt




    	#10 -> 1
    	#11 -> 0
    	#12 -> 1
    	#13 -> 16


    	org 0x0200
    	halt
