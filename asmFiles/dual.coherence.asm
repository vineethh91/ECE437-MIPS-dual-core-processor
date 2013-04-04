#-----------------------------------
# Coherence Test
#-----------------------------------

  #Core 0	
	org		0x0000
	ori		$2, $zero, 0x400
lock2:
	ll    $3, 4($2)
	addiu	$3, $3, 0x02
	sc		$3, 4($2)
    beq     $3, $0, lock2
	sc		$3, 4($2)
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lock3:
	ll    $3, 4($2)
	addiu	$3, $3, 0x02
	sc		$3, 4($2)
    beq     $3, $0, lock3
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lock4:
	ll    $3, 4($2)
	addiu	$3, $3, 0x02
	sc		$3, 4($2)
    beq     $3, $0, lock4
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lock5:
	ll    $3, 4($2)
	addiu	$3, $3, 0x02
	sc		$3, 4($2)
    beq     $3, $0, lock5
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lock6:
	ll    $3, 4($2)
	addiu	$3, $3, 0x02
	sc		$3, 4($2)
    beq     $3, $0, lock6
	halt

  #Core 1
	org		0x0200
	ori		$2, $zero, 0x400
	nop
	nop
	nop
	nop
	nop
lock7:
	ll    $3, 4($2)
	addiu	$3, $3, 0x03
	sc		$3, 4($2)
    beq     $3, $0, lock7
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lock8:
	ll    $3, 4($2)
	addiu	$3, $3, 0x02
	sc		$3, 4($2)
    beq     $3, $0, lock8
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lock9:
	ll    $3, 4($2)
	addiu	$3, $3, 0x02
	sc		$3, 4($2)
    beq     $3, $0, lock9
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
lock10:
	ll    $3, 4($2)
	addiu	$3, $3, 0x02
	sc		$3, 4($2)
    beq     $3, $0, lock10
	halt

  #Initial values
  org 0x0400
  cfw 0x05
  cfw 0x01

  org 0x0800
  cfw 0x03
  cfw 0x07
