# Processor 1

        org     0x0000
        ori     $1, $zero, 0x0400
        ori     $2, $zero, 0x0408
        lw      $3, 0($1)
        lw      $4, 0($2)
        addiu   $3, $3, 4
        addiu   $4, $4, 4
        sw      $3, 0($1)
        sw      $4, 0($2)
        halt

# Processor 2

        org     0x0200
        ori     $1, $zero, 0x0400
        ori     $2, $zero, 0x0408
        lw      $3, 4($1)
        lw      $4, 4($2)
        addiu   $3, $3, 4
        addiu   $4, $4, 4
        sw      $3, 4($1)
        sw      $4, 4($2)
        halt


        org     0x0400
        cfw     0x0001  # 0x0400
        cfw     0x0002  # 0x0404
        cfw     0x0003  # 0x0408
        cfw     0x0004  # 0x040C
