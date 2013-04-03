#-----------------------
# First Processor
#-----------------------

	org 0x0000
# Location of sort data	
	ori	$1, $0, 0x400
	ori	$10, $0, 0x0
# Number of data elements to sort
	ori	$2, $0, 50
# Multiply length by 4
	sll	$2, $2, 2
# Use the length to find end address
	addu	$2, $2, $1

# Number of data elements to sort for whole array
	ori	$9, $0, 100
# Multiply length by 4
	sll	$9, $9, 2
# Use the length to find end address
	addu	$9, $9, $1

Sort:
# Outer iteration - incrementing $3
	or	$3, $0, $1
OuterLoop1:
	beq	$3, $2, OuterEnd1
# Inner iteration - incrementing $4 from $3 on
	or	$4, $0, $3
	addiu	$4, $4, 4
# Load the Data at outer location $3	
	lw	$5, 0($3)
	j 	InnerLoop1
InnerEnd1:
	addiu	$3, $3, 4
	j	OuterLoop1
	
InnerLoop1:
	beq	$4, $2, InnerEnd1
	lw	$6, 0($4)
	slt	$7, $6, $5
	beq	$7, $0, NoSwap1
Swap1:
	sw	$5, 0($4)
	sw	$6, 0($3)
	or	$5, $0, $6
NoSwap1:
	addiu	$4, $4, 4
	j	InnerLoop1

lock:
aquire:
	ll      $15, 0($20)                                             # load lock location
        bne     $15, $0, aquire                                         # wait on lock to be open
        addiu   $15, $15, 1
        sc      $15, 0($20)
        beq     $15, $0, lock                                           # if sc failed retry
        jr      $ra

unlock: 
        sw              $0, 0($20)
        jr              $ra

OuterEnd1:
# Check if done sorting
	bne	$10, $0, END
# Acquire the lock
	ori	$20, $0, l1
	jal	lock
# MERGE
	or	$2, $0, $9
	ori	$10, $0, 1
	j	Sort

END:
	jal	unlock
	halt

#-----------------------
# Second Processor
#-----------------------

	org 0x200
# Set lock
	ori	$20, $0, l1
	jal	lock

# Location of sort data	
	ori	$1, $0, 0x400
# Number of data elements to sort
	ori	$2, $0, 50
# Multiply length by 4
	sll	$2, $2, 2
# Use the length to find end address
	addu	$1, $1, $2
	addu	$2, $1, $2
	 
# Outer iteration - incrementing $3
	or	$3, $0, $1
OuterLoop2:
	beq	$3, $2, OuterEnd2
# Inner iteration - incrementing $4 from $3 on
	or	$4, $0, $3
	addiu	$4, $4, 4
# Load the Data at outer location $3	
	lw	$5, 0($3)
	j 	InnerLoop2
InnerEnd2:
	addiu	$3, $3, 4
	j	OuterLoop2
	
InnerLoop2:
	beq	$4, $2, InnerEnd2
	lw	$6, 0($4)
	slt	$7, $6, $5
	beq	$7, $0, NoSwap2
Swap2:
	sw	$5, 0($4)
	sw	$6, 0($3)
	or	$5, $0, $6
NoSwap2:
	addiu	$4, $4, 4
	j	InnerLoop2

OuterEnd2:
	ori	$20, $0, l1
	jal	unlock
	halt

l1:
	cfw	0x0

org 0x400
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

#org 0x500
#cfw 0x0000
