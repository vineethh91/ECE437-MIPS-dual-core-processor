        org 0x0000

        ori     $sp, $zero, 0x3ffc      # stack
        ori     $1, $zero, 0xC8 # 49*4bytes numbers to be sorted #int n
        ori     $2, $zero, 0x0004 # for loop counter #int c
        ori     $3, $zero, sortdata # int array[]
        ori     $10, $zero, 0x0004 # used for [d-1]
        jal     outerLoop
waitOnCore1:
        ori     $13, $zero, 0x3124
        ll      $12, 0($13)
        beq     $12, $zero, waitOnCore1
	ori	$12, $zero, 0x0002
	sc 	$12, 0($13)	
	
        jal     mergeArrays
        halt

        org 0x0200

        ori     $sp, $zero, 0x3ffc      # stack
        ori     $1, $zero, 0x190 # 100*4bytes numbers to be sorted #int n
        ori     $2, $zero, 0x00CC # for loop counter #int c
        ori     $3, $zero, sortdata # int array[]
        ori     $10, $zero, 0x0004 # used for [d-1]
        jal     outerLoop
        #ori     $11, $zero, 0x0001
        ori     $12, $zero, 0x3124
        #sw      $11, 0($12)

        ll      $11, 0($12)
        ori     $11, $zero, 0x0001
	sc 	$11, 0($12)	

        halt

outerLoop:
        beq     $2, $1, endOuterLoop
        addu    $4, $2, $zero # int d

innerLoop:
        beq     $4, $zero, endInnerLoop
getLock:
        ll      $6, sortdata($4) # array[d]
        subu    $5, $4, $10
        lw      $7, sortdata($5) # array[d-1]
        sltu    $8, $6, $7 # array[d] < array[d-1]
        beq     $8, $zero, endInnerLoop
        sw      $6, sortdata($5) # store array[d] to location of array[d-1]
        sc      $7, sortdata($4) # store array[d-1] to location of array[d]
	beq	$7, $zero, getLock

        subu    $4, $4, $10 # d--
        beq     $zero, $zero, innerLoop


endInnerLoop:
        addiu   $2, $2, 0x0004 # increment for loop count by 1
        beq     $zero, $zero, outerLoop

endOuterLoop:
        jr $31

        halt

mergeArrays:
        ori     $1, $zero, sortdata #index0 counter for array sorted on core0
        addiu   $16, $1, 0x00C4 #Upper limit for index0
        addiu   $2, $1, 0x00C8 # index1 counter for array sorted on core1
        addiu   $17, $1, 0x0190 #Upper limit for index1
        ori     $10, $zero, 0x2000 #address to store final merged array to
        addu    $20, $16, $17 # sum of both max indices

mergeLoop:
        addu    $19, $1, $2
        beq     $19, $20, finishedMerging
        lw      $3, 0($1)
        lw      $4, 0($2)
        beq     $1, $16, storeSecondArray
        sltu    $5, $3, $4
        bne     $5, $zero, storeFirstArrayElement
        #otherwise store second ArrayElement to memory
storeSecondArray:
        sw      $4, 0($10)
        addiu   $10, $10, 0x0004
        beq     $2, $17, mergeLoop
        addiu   $2, $2, 0x0004
        beq     $zero, $zero, mergeLoop

storeFirstArrayElement:
        sw      $3, 0($10)
        addiu   $10, $10, 0x0004
        beq     $1, $16, mergeLoop
        addiu   $1, $1, 0x0004

        beq     $zero, $zero, mergeLoop

finishedMerging:
        jr $31

        org 0x00F00
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
