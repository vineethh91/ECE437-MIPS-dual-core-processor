#### TWO THREAD MERGE SORT ###
    # Chris Cange and Scott Stack
    
    
    	org 0x0000

    	ori $2, $0, 100     # $2 is length of array
    	ori $3, $0, 0x1000  # $3 is the head of the array
    	ori $4, $0, 50	    # $4 is outer loop counter
    	ori $5, $0, 0       # $5 is an inner loop counter
    	ori $6, $0, 49      # $6 is the outer compare value
    	ori $7, $0, 1       # this is a 1
    	ori $8, $0, 0x1000  # $8 is the current address being looked at
    
outer:
    	beq $0, $6, done1
    	

    	or $5, $0, $6       #store outer loop count into the inner loop counter 
    	ori $8, $0, 0x1000  # reset address 
    
inner:
    	subu $5, $5, $7
    	lw $10, 0($8) 
    	lw $11, 4($8)

    	slt $12, $11, $10    #compare the adjacent elements
    	beq $12, $0, check1  #if the i+1 element is less than the i element swap
    	sw $10, 4($8)
    	sw $11, 0($8)
    	
check1:
    	addiu $8, $8, 4
    	bne $5, $0, inner 


    
    	subu $6, $6, $7
    	j outer
done1:
    	
    	#do parallelllll-y things

    	ori $20, $0, 0x0F00
    	ori $9, $0, 1
    	ll $14, 0($20)
	
	#every core adds one to this address and when the first core sees that all cores
 	#have added one, it will continue.
addone1:
    	ll $14, 0($20)
	beq $14, $0, addone1
	addiu $14, $14, 1
	sc $14, 0($20)	
    	beq $14, $0, addone1

	#wait for all cores to finish (when the value = 2)
spinwait:
	lw $14, 0($20)
	ori $9, $0, 2
	bne $14, $9, spinwait

#    	#threads are now syncronized!!!
#    	#DO MERGE SORT NOW
#    	ori $2, $0, 0x1000    #first array
#    	ori $3, $0, 0x10C8    # second array
#    	ori $4, $0, 0x2000    #THE SORTED ARRAY
#    	ori $5, $0, 100       # loop counter
#    	ori $6, $0, 0x10C8    #limit of first array
#    	ori $8, $0, 0x1190    #limit of the second array
#    
#loopguy:
#    	lw $10, 0($2)
#    	lw $11, 0($3)	
#
#    	beq $2, $6, storeP2
#    	beq $3, $8, storeP1
#    
#    	slt $12, $11, $10
#    	beq $12, $0, storeP1 #if $10 > $11 branch to storeP1 else store P2's val
#storeP2:    
#    	#store P2
#    	sw $11, 0($4)
#    	addiu $3, $3, 4    #increment address counter for P2's array 
#    	j storedone
#    
#storeP1:
#    	#store P1
#    	sw $10, 0($4)
#    	addiu $2, $2, 4    #increment address counter for P1's array
#    	
#    
#storedone:  
#    	addiu $4, $4, 4    # increment the sorted address counter
#    	subu $5, $5, $7    #sub 1 from counter
#    	bne $5, $0, loopguy
    	
    
    	halt


################################SECOND PROCESS#########################
    	org 0x0200

    	ori $2, $0, 100     # $2 is length of array
    	ori $3, $0, 0x1000  # $3 is the head of the array
    	ori $4, $0, 50	    # $4 is outer loop counter
    	ori $5, $0, 0       # $5 is an inner loop counter
    	ori $6, $0, 49      # $6 is the outer compare value
    	ori $7, $0, 1       # this is a 1
    	ori $8, $0, 0x10C8  # $8 is the current address being looked at
    	
outer2:
    	beq $0, $6, done2
    	

    	or $5, $0, $6       #store outer loop count into the inner loop counter 
    	ori $8, $0, 0x10C8  # reset address 
    
inner2:
    	subu $5, $5, $7
    	lw $10, 0($8) 
    	lw $11, 4($8)

    	slt $12, $11, $10    #compare the adjacent elements
    	beq $12, $0, check2  #if the i+1 element is less than the i element swap
    	sw $10, 4($8)
    	sw $11, 0($8)
    	
check2:
    	addiu $8, $8, 4
    	bne $5, $0, inner2 


    
    	subu $6, $6, $7
    	j outer2
done2:

    	#do parallelllll-y things PT 2
    	ori $20, $0, 0x0F00
    	ori $9, $0, 1

	#every core adds one to this address and when the first core sees that all cores
 	#have added one, it will continue.
addone2:
    	ll $14, 0($20)
    	addiu $14, $14, 1
	sc $14, 0($20)
    	beq $14, $0, addone2	
	    	
    	halt


    	org 0x0F00
link_var:   
    	cfw 0x0000
#------ DATA VARIABLES----------
    	org 0x1000    
sortdata: 
	cfw 0x087d
	cfw 0x5fcb
	cfw 0xa41a
	cfw 0x4109
	cfw 0x4522
	cfw 0x700f
	cfw 0x766d
	cfw 0x6f60
	cfw 0x8a5e
	cfw 0x9580
	cfw 0x70a3
	cfw 0xaea9
	cfw 0x711a
	cfw 0x6f81
	cfw 0x8f9a
	cfw 0x2584
	cfw 0xa599
	cfw 0x4015
	cfw 0xce81
	cfw 0xf55b
	cfw 0x399e
	cfw 0xa23f
	cfw 0x3588
	cfw 0x33ac
	cfw 0xbce7
	cfw 0x2a6b
	cfw 0x9fa1
	cfw 0xc94b
	cfw 0xc65b
	cfw 0x0068
	cfw 0xf499
	cfw 0x5f71
	cfw 0xd06f
	cfw 0x14df
	cfw 0x1165
	cfw 0xf88d
	cfw 0x4ba4
	cfw 0x2e74
	cfw 0x5c6f
	cfw 0xd11e
	cfw 0x9222
	cfw 0xacdb
	cfw 0x1038
	cfw 0xab17
	cfw 0xf7ce
	cfw 0x8a9e
	cfw 0x9aa3
	cfw 0xb495
	cfw 0x8a5e
	cfw 0xd859
	cfw 0x0bac
	cfw 0xd0db
	cfw 0x3552
	cfw 0xa6b0
	cfw 0x727f
	cfw 0x28e4
	cfw 0xe5cf
	cfw 0x163c
	cfw 0x3411
	cfw 0x8f07
	cfw 0xfab7
	cfw 0x0f34
	cfw 0xdabf
	cfw 0x6f6f
	cfw 0xc598
	cfw 0xf496
	cfw 0x9a9a
	cfw 0xbd6a
	cfw 0x2136
	cfw 0x810a
	cfw 0xca55
	cfw 0x8bce
	cfw 0x2ac4
	cfw 0xddce
	cfw 0xdd06
	cfw 0xc4fc
	cfw 0xfb2f
	cfw 0xee5f
	cfw 0xfd30
	cfw 0xc540
	cfw 0xd5f1
	cfw 0xbdad
	cfw 0x45c3
	cfw 0x708a
	cfw 0xa359
	cfw 0xf40d
	cfw 0xba06
	cfw 0xbace
	cfw 0xb447
	cfw 0x3f48
	cfw 0x899e
	cfw 0x8084
	cfw 0xbdb9
	cfw 0xa05a
	cfw 0xe225
	cfw 0xfb0c
	cfw 0xb2b2
	cfw 0xa4db
	cfw 0x8bf9
	cfw 0x12f7
