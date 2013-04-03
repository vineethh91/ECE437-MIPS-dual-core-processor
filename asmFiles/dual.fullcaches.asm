#------------------------------------------------------------------
# Dual Core load and store test program
#------------------------------------------------------------------

# the following program is fully parallel to be executed in two processors, 
# which does not require a coherence controler but needs a memory arbitrator.
# you can initially use this program to test out your dual pipeline and arbitrator,
# (required by 2nd week's demo)
# then you can change the memory pointers and the stacks 
# to have two programs working on the same piece of memory
# to test out yout coherence controler and snooping 
# feel free to add more instructions and functionalities 
# specifcally the ll and sc instructions to test even more. 
# refer to example.asm for a real dual-core program with memory coherence.

# Processor 1

	org		0x0000	
	ori		$1,$zero,0x2F0
	ori		$2,$zero,0x488

	ori		$3, $zero, 0x2F0  #memory address
	ori		$4, $zero, 64	# loop countdown
	#32 load words have only 31 registers


loop:
	lw	$6, 0($3)
	addiu	$6, $6, 0x3cE7
	lw	$7, 4($3)
	addiu	$7, $7, 0xB324

	sw	$6, 0($2)
	sw	$7, 4($2)

	addiu	$2, $2, 8
	addiu	$3, $3, 8
	addiu	$4, $4, -1
	
	bne	$4, $zero, loop	

	
	halt			# that's all



        org             0x02F0
        cfw             0x7337
        cfw             0x2701
        cfw             0x1337
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
listend:
	cfw 0x12f7
results:


