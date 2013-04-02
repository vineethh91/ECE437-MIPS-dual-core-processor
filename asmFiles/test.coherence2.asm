#-----------------------------------
# Coherence Test
#-----------------------------------

  #Core 0	
	org		0x0000
	ori		$2, $zero, 0x400
  lw    $3, 4($2)
	addiu	$3, $3, 0x02
	sw		$3, 4($2)
  ori   $2, $zero, 0x400
  lw    $3, 4($2)
  addiu $3, $3, 0x08
  sw    $3, 4($2)



	ori		$2, $zero, 0x800
  lw    $3, 0($2)
	addiu	$3, $3, 0x03
	sw		$3, 0($2)
  ori   $2, $zero, 0x800
  lw    $3, 0($2)
  addiu $3, $3, 0x01
  sw    $3, 0($2)
  halt

  #Core 1
	org		0x0200
	ori		$2, $zero, 0x800
  lw    $3, 0($2)
	addiu	$3, $3, 0x03
	sw		$3, 0($2)
  ori   $2, $zero, 0x800
  lw    $3, 0($2)
  addiu $3, $3, 0x01
  sw    $3, 0($2)




	ori		$2, $zero, 0x400
  lw    $3, 4($2)
	addiu	$3, $3, 0x02
	sw		$3, 4($2)
  ori   $2, $zero, 0x400
  lw    $3, 4($2)
  addiu $3, $3, 0x08
  sw    $3, 4($2)
	halt

  #Initial values
	org 0x0400
	cfw 0x05
  cfw 0x01

  org 0x0800
  cfw 0x03
  cfw 0x07
