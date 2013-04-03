	org 0x0000
# initialize the stack pointer
	ori $sp, $0, 0x3ffc
	addu $fp, $sp, $0
# call main
	ori $4, $0, 0x800
	ori $5, $0, 2
        ori $28, $zero, l1
        jal lock
	jal main
        ori $28, $zero, l1	
        jal unlock
# Now store the returned value (in $2) to a memory location.
	halt

bubblesort:
	
	addiu	$sp,$sp,-32
	sw	$fp,28($sp)
	addu	$fp,$sp,$0
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$0,16($fp)
	j	LABEL2
	
LABEL6:
	lw	$2,16($fp)
	sw	$2,12($fp)
	j	LABEL3
	
LABEL5:
	lw	$2,16($fp)
	sll	$2,$2,2
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,12($fp)
	sll	$2,$2,2
	lw	$4,32($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	slt	$2,$2,$3
	beq	$2,$0,LABEL4
	
	lw	$2,16($fp)
	sll	$2,$2,2
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,8($fp)
	lw	$2,16($fp)
	sll	$2,$2,2
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$3,12($fp)
	sll	$3,$3,2
	lw	$4,32($fp)
	addu	$3,$4,$3
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,12($fp)
	sll	$2,$2,2
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$3,8($fp)
	sw	$3,0($2)

LABEL4:
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
        
LABEL3:
	lw	$3,12($fp)
	lw	$2,36($fp)
	slt	$2,$3,$2
	bne	$2,$0,LABEL5
	
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
        
LABEL2:
	lw	$2,36($fp)
	addiu	$3,$2,-1
	lw	$2,16($fp)
	slt	$2,$2,$3
	bne	$2,$0,LABEL6
	
	addu	$sp,$fp,$0
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	jr	$31
	
main:
	addiu	$sp,$sp,-12
	sw	$31,8($sp)
	sw	$fp,4($sp)
	addu	$fp,$sp,$0
	jal	bubblesort
	
	addu	$sp,$fp,$0
	lw	$31,8($sp)
	lw	$fp,4($sp)
	addiu	$sp,$sp,12
	jr	$31
	
       halt
l1:
       cfw 0x0
       
       	org 0x200
# initialize the stack pointer
	ori $sp, $0, 0x7ffc
	addu $fp, $sp, $0
# call main
	ori $4, $0, 0x800
        addiu $4, $4, 200
	ori $5, $0, 2
	jal main
        ori $28, $zero, l1
        jal lock
        ori $3, $0, 0x800
        ori $6, $0, 2
        ori $7, $0, 0x1000
        jal merge
        ori $28, $zero, l1
        jal unlock
# Now store the returned value (in $2) to a memory location.
	halt
        
lock:
	ll              $27, 0($28)       					# load lock location
        bne             $27, $0, lock   					# wait on lock to be open
        addiu           $27, $27, 1
        sc              $27, 0($28)
        beq             $27, $0, lock     					# if sc failed retry
        jr              $ra
        
# pass in an address to unlock function in argument register 0
# returns when lock is free
unlock: 
	sw              $0, 0($28)
        jr              $ra

merge:
        push $ra
merge_inner:
        lw $8, 0($3)
        lw $9, 0($4)
        slt $1, $8, $9
        beq $1, $0, br1
        beq $5,$0,br1
        sw $8, 0($7)
        addiu $7, $7, 4
        beq $5,$0,br1
        addiu $3, $3, 4
        addiu $5, $5, -1
        j merge_inner
br1:
        beq $6, $0, check5
        sw $9, 0($7)
        addiu $7, $7, 4
        beq $6, $0, check5
        addiu $6, $6, -1
        beq $6, $0, inner
        addiu $4, $4, 4
        j merge_inner
inner:
        beq $5,$0,check5
        sw $8, 0($7)
        addiu $7, $7, 4
        beq $5,$0,check5
        addiu $5, $5, -1
        beq $5,$0,check5
        addiu $3, $3, 4
        lw $8, 0($3)
        j inner
        
check5:
        bne $5,$0, merge_inner
e1:
        pop $ra
        jr $ra

org 0x800
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
