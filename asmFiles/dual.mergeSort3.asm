
	# Processor 0 #
	org 0x0000
	ori		$sp, $zero, 0x3ffc

	push		$ra							# save return address
	ori		$a0, $zero, lockValue					# move lock to argument register
	jal		lock							# try to aquire the lock
	
startP0:
	ori		$1, $zero, 0x01
	ori		$2, $zero, 0x04
	ori		$3, $zero, size  # position of size
	ori  		$4, $zero, data  # position of start of data
	lw		$3, 0($3)	# load length into $3
	srl 		$3, $3, 1 	# divide size by two
	sll		$3, $3, 2  	#multiply length by 4
	addu   		$3, $4, $3 	#store end of arrary + 4 to $3
	subu   		$3, $3, $2 	#$3 now holds pointer to last data location
	or		$5, $3, $zero 	#set $5 equal to $3 - initialize i
outerloopP0:
	beq 		$5, $4, doneP0
	addiu 		$6, $4, 0x04 	#initialize j
innerloopP0:
	addiu 		$11, $5, 4
	beq 		$11, $6, endinnerP0
	subu 		$7,  $6, $2  	#$7 points to lower value 6 to upper
	lw 		$8,  0($6)
	lw 		$9,  0($7)
	slt 		$10, $8, $9
	beq 		$10, $zero, noswapP0
swapP0:
	sw 		$8,0($7)
	sw 		$9,0($6)
noswapP0:
	addiu 		$6,$6,4
	j 		innerloopP0
endinnerP0:
	subu 		$5,$5,$2 	#dec by 4 
	j 		outerloopP0
doneP0:
	ori		$a0, $zero, lockValue					# move lock to argument register
	jal		unlock							# release the lock
	
	halt  

	
lock:
aquire:
	ll              $t0, 0($a0)       					# load lock location
        bne             $t0, $0, aquire   					# wait on lock to be open
        addiu           $t0, $t0, 1
        sc              $t0, 0($a0)
        beq             $t0, $0, lock     					# if sc failed retry
        jr              $ra

# pass in an address to unlock function in argument register 0
# returns when lock is free
unlock: 
	sw              $0, 0($a0)
        jr              $ra

lockValue:
	cfw 0x00


	

	# Processor 1 #
	org 0x0200
	ori		$sp, $zero, 0x7ffc

	
startP1:
	ori		$1, $zero, 0x01
	ori		$2, $zero, 0x04
	ori		$3, $zero, size  # position of size
	ori  		$4, $zero, data  # position of start of data
	lw		$3, 0($3)	# load length into $3
	andi 		$5, $3, 1 	 # 5 = size is odd ? 1 : 0 
	srl 		$3, $3, 1 	 # divide size by two
	sll		$3, $3, 2  	#multiply length by 4
	addu		$4, $4, $3	 # start of data
	sll 		$5, $5, 2 
	addu		$3, $3, $5	 # increment length by 4 if odd size
	addu   		$3, $4, $3 	#store end of arrary + 4 to $3
	subu   		$3, $3, $2 	#$3 now holds pointer to last data location
	or		$5, $3, $zero 	#set $5 equal to $3 - initialize i
outerloopP1:
	beq 		$5, $4, doneP1
	addiu 		$6, $4, 0x04 	#initialize j
innerloopP1:
	addiu 		$11, $5, 4
	beq 		$11, $6, endinnerP1
	subu 		$7,  $6, $2  	#$7 points to lower value 6 to upper
	lw 		$8,  0($6)
	lw 		$9,  0($7)
	slt 		$10, $8, $9
	beq 		$10, $zero, noswapP1
swapP1:
	sw 		$8,0($7)
	sw 		$9,0($6)
noswapP1:
	addiu 		$6,$6,4
	j 		innerloopP1
endinnerP1:
	subu 		$5,$5,$2 	#dec by 4 
	j 		outerloopP1
doneP1:

	push 		$4 #save r4 on stack
	push		$ra							# save return address
	ori		$a0, $zero, lockValue					# move lock to argument register
	jal		lock							# try to aquire the lock
	pop 		$4
	pop		$4 #pop r4 off stack
	

	# merge here
	or		$6, $zero, $3
	or 		$5, $zero, $4
	ori  		$3, $zero, data  # position of start of data
	subu		$4, $5, $zero
	addiu		$6, $6, 1
	
	# first half of array -> first value is at M[r3] and last value is at M[r4-1]
	# second half of array -> first value is at M[r5] and last value is at M[r6-1]
	# for r7 in r3 to r4-1
	# for r8 in r5 to r6-1
	or		$7, $zero, $3
	or 		$8, $zero, $5
	
loop:
	slt		$13, $7,  $4
	slt 		$14, $8,  $6
	and 		$15, $13, $14
	bne		$15, $zero, compare      # if both pointers not past ends
	or		$15, $13, $14
	beq		$15, $zero, mergedone # if both poiners past ends
	beq		$13, $zero, firstPast
	j secondPast
	
   
compare:
	addu $15, $7, $8
	lw $16, 0($7)
	lw $17, 0($8)
	slt $13, $16, $17
	beq $13, $zero, secondLess 
	sw $16, 0($15)
	addiu $7, $7, 4
	j loop
secondLess:
	addu $15, $7, $8
	sw $17, 0($15)
	addiu $8, $8, 4
	j loop
	
firstPast:
	addu $15, $7, $8
	lw   $16, 0($8)
	sw   $16, 0($15)
	addiu $8, $8, 4
	j loop

secondPast:	
	addu $15, $7, $8
	lw   $16, 0($7)
	sw   $16, 0($15)
	addiu $7, $7, 4
	j loop
	
	
mergedone:	
	
	ori		$a0, $zero, lockValue					# move lock to argument register
	jal		unlock							# release the lock
	
	



	halt  
     
	



	# Data #
	org 0x400
size:	
	# Number of values
	cfw 100
	
data:	
	# Values
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
