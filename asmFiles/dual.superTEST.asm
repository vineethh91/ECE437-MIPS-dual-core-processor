    	org 0x0000

    	lui $2, 0xFFFF
    	ori $2, $2, 16
    	ori $3, $0, 7
    	ori $4, $0, 8
    	ori $5, $0, 1

    	ori $20, $0, 0xF0
    
    	#test slt
    	slt $10, $2, $3

    	sltu $11, $2, $3

    	#test srl
    	srl $12, $4, 3
    	sll $13, $5, 3


    	addu $6, $5, $5
    	nop
    	nop
    	addu $6, $5, $6
    	nop
    	addu $6, $5, $6
    	addu $6, $5, $6
    	nop
    	nop
    	addu $6, $6, $5
    	nop
    	addu $6, $6, $5
    	addu $6, $6, $5
    	addu $6, $5, $6


    	

    	sw $6, 0($20)
	sw $10, 4($20)
	sw $11, 8($20)
	sw $12, 12($20)
	sw $13, 16($20)


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
    	ori $0,$0,0
    	halt
