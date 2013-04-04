# This test case tests coherency by writing to different     #
# words in the same cache block from different processors    #
#------------------------------------------------------------#

# Processor 1

        org     0x0000
        ori     $1, $zero, 0x0400
        ori     $2, $zero, 0x0408
        ori     $5, $zero, 25
        ori     $6, $zero, 1

loop1:
        lw      $3, 0($1)
        lw      $4, 0($2)
        addiu   $3, $3, 4
        addiu   $4, $4, 4
        sw      $3, 0($1)
        sw      $4, 0($2)
        subu    $5, $5, $6
        bne     $5, $zero, loop1


        halt

# Processor 2

        org     0x0200
        ori     $1, $zero, 0x0400
        ori     $2, $zero, 0x0408
        ori     $5, $zero, 25
        ori     $6, $zero, 1

loop2:
        lw      $3, 4($1)
        lw      $4, 4($2)
        addiu   $3, $3, 4
        addiu   $4, $4, 4
        sw      $3, 4($1)
        sw      $4, 4($2)
        subu    $5, $5, $6
        bne     $5, $zero, loop2

        halt


        org     0x0400
        cfw     0x0001  # 0x0400
        cfw     0x0002  # 0x0404
        cfw     0x0003  # 0x0408
        cfw     0x0004  # 0x040C
