        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 71
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 26
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 84
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 74
        LDI  R7, 83
        ST   [R7], R4
        LDI  R5, 218
        LDI  R7, 0
        ST   [R7], R5
        LDI  R5, 247
        LDI  R7, 1
        ST   [R7], R5
        LDI  R5, 17
        LDI  R7, 2
        ST   [R7], R5
        LDI  R5, 3
        LDI  R7, 3
        ST   [R7], R5
        LDI  R5, 61
        LDI  R7, 4
        ST   [R7], R5
        LDI  R5, 60
        LDI  R7, 5
        ST   [R7], R5
        LDI  R5, 221
        LDI  R7, 6
        ST   [R7], R5
        LDI  R5, 64
        LDI  R7, 7
        ST   [R7], R5
        LDI  R5, 217
        LDI  R7, 8
        ST   [R7], R5
        LDI  R5, 5
        LDI  R7, 9
        ST   [R7], R5
        LDI  R5, 242
        LDI  R7, 10
        ST   [R7], R5
        LDI  R5, 46
        LDI  R7, 11
        ST   [R7], R5
        LDI  R5, 236
        LDI  R7, 12
        ST   [R7], R5
        LDI  R5, 228
        LDI  R7, 13
        ST   [R7], R5
        LDI  R5, 226
        LDI  R7, 14
        ST   [R7], R5
        LDI  R5, 205
        LDI  R7, 15
        ST   [R7], R5
        LDI  R5, 86
        LDI  R7, 16
        ST   [R7], R5
        LDI  R5, 17
        LDI  R7, 17
        ST   [R7], R5
        LDI  R5, 12
        LDI  R7, 18
        ST   [R7], R5
        LDI  R5, 179
        LDI  R7, 19
        ST   [R7], R5
        LDI  R5, 6
        LDI  R7, 20
        ST   [R7], R5
        LDI  R5, 18
        LDI  R7, 21
        ST   [R7], R5
        LDI  R5, 127
        LDI  R7, 22
        ST   [R7], R5
        LDI  R5, 190
        LDI  R7, 23
        ST   [R7], R5
        LDI  R5, 0
        LDI  R7, 24
        ST   [R7], R5
        LDI  R5, 81
        LDI  R7, 25
        ST   [R7], R5
        LDI  R5, 0
        LDI  R7, 26
        ST   [R7], R5
        LDI  R5, 252
        LDI  R7, 27
        ST   [R7], R5
        LDI  R5, 232
        LDI  R7, 28
        ST   [R7], R5
        LDI  R5, 56
        LDI  R7, 29
        ST   [R7], R5
        LDI  R5, 15
        LDI  R7, 32
        ST   [R7], R5
        LDI  R5, 8
        LDI  R7, 33
        ST   [R7], R5
        LDI  R5, 255
        LDI  R7, 34
        ST   [R7], R5
        LDI  R5, 72
        LDI  R7, 35
        ST   [R7], R5
        LDI  R5, 253
        LDI  R7, 36
        ST   [R7], R5
        LDI  R5, 159
        LDI  R7, 37
        ST   [R7], R5
        LDI  R5, 29
        LDI  R7, 38
        ST   [R7], R5
        LDI  R5, 6
        LDI  R7, 39
        ST   [R7], R5
        LDI  R5, 245
        LDI  R7, 40
        ST   [R7], R5
        LDI  R5, 201
        LDI  R7, 41
        ST   [R7], R5
        LDI  R5, 237
        LDI  R7, 42
        ST   [R7], R5
        LDI  R5, 245
        LDI  R7, 43
        ST   [R7], R5
        LDI  R5, 129
        LDI  R7, 44
        ST   [R7], R5
        LDI  R5, 248
        LDI  R7, 45
        ST   [R7], R5
        LDI  R5, 96
        LDI  R7, 46
        ST   [R7], R5
        LDI  R5, 12
        LDI  R7, 47
        ST   [R7], R5
        LDI  R5, 0
        LDI  R7, 48
        ST   [R7], R5
        LDI  R5, 172
        LDI  R7, 49
        ST   [R7], R5
        LDI  R5, 5
        LDI  R7, 50
        ST   [R7], R5
        LDI  R5, 10
        LDI  R7, 51
        ST   [R7], R5
        LDI  R5, 240
        LDI  R7, 52
        ST   [R7], R5
        LDI  R0, 1
        OUT  0x02, R0
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 0
        LDI  R4, 4
b0_loop432: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos432
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos432: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next432
b0_add432: ADD  R2, R2, R5
        BCC  b0_nc432
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc432:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add432
b0_next432: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop432
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop433: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na433
        ADD  R2, R2, R5
        BCC  ms_na433
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na433:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc433
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc433:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop433
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc435
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc435:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc436
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc436:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc437
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc437:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc438
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc438:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc439
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc439:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc440
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc440:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc441
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc441:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc442
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc442:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok434
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok434
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos434
        LDI  R6, 0x80
        JMP  rq_done434
rq_pos434: LDI  R6, 0x7F
        JMP  rq_done434
rq_ok434:  OR   R6, R2, R2
rq_done434: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu434
        LDI  R6, 0
rq_relu434:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop432: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos432
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos432: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next432
b0_add432: ADD  R2, R2, R5
        BCC  b0_nc432
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc432:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add432
b0_next432: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop432
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop443: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na443
        ADD  R2, R2, R5
        BCC  ms_na443
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na443:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc443
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc443:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop443
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc445
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc445:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc446
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc446:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc447
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc447:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc448
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc448:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc449
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc449:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc450
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc450:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc451
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc451:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc452
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc452:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok444
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok444
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos444
        LDI  R6, 0x80
        JMP  rq_done444
rq_pos444: LDI  R6, 0x7F
        JMP  rq_done444
rq_ok444:  OR   R6, R2, R2
rq_done444: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu444
        LDI  R6, 0
rq_relu444:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop432: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos432
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos432: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next432
b0_add432: ADD  R2, R2, R5
        BCC  b0_nc432
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc432:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add432
b0_next432: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop432
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop453: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na453
        ADD  R2, R2, R5
        BCC  ms_na453
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na453:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc453
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc453:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop453
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc455
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc455:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc456
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc456:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc457
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc457:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc458
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc458:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc459
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc459:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc460
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc460:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc461
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc461:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc462
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc462:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok454
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok454
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos454
        LDI  R6, 0x80
        JMP  rq_done454
rq_pos454: LDI  R6, 0x7F
        JMP  rq_done454
rq_ok454:  OR   R6, R2, R2
rq_done454: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu454
        LDI  R6, 0
rq_relu454:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop432: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos432
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos432: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next432
b0_add432: ADD  R2, R2, R5
        BCC  b0_nc432
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc432:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add432
b0_next432: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop432
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop463: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na463
        ADD  R2, R2, R5
        BCC  ms_na463
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na463:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc463
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc463:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop463
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc465
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc465:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc466
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc466:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc467
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc467:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc468
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc468:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc469
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc469:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc470
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc470:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc471
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc471:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc472
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc472:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok464
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok464
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos464
        LDI  R6, 0x80
        JMP  rq_done464
rq_pos464: LDI  R6, 0x7F
        JMP  rq_done464
rq_ok464:  OR   R6, R2, R2
rq_done464: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu464
        LDI  R6, 0
rq_relu464:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop432: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos432
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos432: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next432
b0_add432: ADD  R2, R2, R5
        BCC  b0_nc432
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc432:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add432
b0_next432: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop432
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop473: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na473
        ADD  R2, R2, R5
        BCC  ms_na473
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na473:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc473
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc473:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop473
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc475
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc475:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc476
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc476:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc477
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc477:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc478
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc478:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc479
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc479:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc480
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc480:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc481
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc481:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc482
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc482:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok474
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok474
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos474
        LDI  R6, 0x80
        JMP  rq_done474
rq_pos474: LDI  R6, 0x7F
        JMP  rq_done474
rq_ok474:  OR   R6, R2, R2
rq_done474: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu474
        LDI  R6, 0
rq_relu474:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop432: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos432
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos432: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next432
b0_add432: ADD  R2, R2, R5
        BCC  b0_nc432
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc432:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add432
b0_next432: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop432
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop483: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na483
        ADD  R2, R2, R5
        BCC  ms_na483
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na483:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc483
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc483:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop483
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc485
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc485:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc486
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc486:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc487
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc487:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc488
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc488:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc489
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc489:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc490
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc490:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc491
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc491:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc492
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc492:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok484
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok484
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos484
        LDI  R6, 0x80
        JMP  rq_done484
rq_pos484: LDI  R6, 0x7F
        JMP  rq_done484
rq_ok484:  OR   R6, R2, R2
rq_done484: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu484
        LDI  R6, 0
rq_relu484:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop2432: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2432
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2432: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2432
b0_add2432: ADD R2, R2, R5
        BCC  b0_nc2432
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2432: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2432
b0_next2432: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2432
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop493: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na493
        ADD  R2, R2, R5
        BCC  ms_na493
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na493:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc493
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc493:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop493
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc495
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc495:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc496
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc496:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc497
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc497:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok494
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok494
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos494
        LDI  R6, 0x80
        JMP  rq_done494
rq_pos494: LDI  R6, 0x7F
        JMP  rq_done494
rq_ok494:  OR   R6, R2, R2
rq_done494: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu494
        LDI  R6, 0
rq_relu494:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop2432: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2432
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2432: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2432
b0_add2432: ADD R2, R2, R5
        BCC  b0_nc2432
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2432: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2432
b0_next2432: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2432
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop498: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na498
        ADD  R2, R2, R5
        BCC  ms_na498
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na498:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc498
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc498:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop498
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc500
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc500:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc501
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc501:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc502
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc502:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok499
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok499
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos499
        LDI  R6, 0x80
        JMP  rq_done499
rq_pos499: LDI  R6, 0x7F
        JMP  rq_done499
rq_ok499:  OR   R6, R2, R2
rq_done499: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu499
        LDI  R6, 0
rq_relu499:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop2432: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2432
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2432: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2432
b0_add2432: ADD R2, R2, R5
        BCC  b0_nc2432
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2432: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2432
b0_next2432: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2432
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop503: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na503
        ADD  R2, R2, R5
        BCC  ms_na503
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na503:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc503
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc503:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop503
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc505
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc505:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc506
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc506:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc507
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc507:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok504
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok504
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos504
        LDI  R6, 0x80
        JMP  rq_done504
rq_pos504: LDI  R6, 0x7F
        JMP  rq_done504
rq_ok504:  OR   R6, R2, R2
rq_done504: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu504
        LDI  R6, 0
rq_relu504:
        LDI  R7, 74
        ST   [R7], R6
        LDI  R0, 2
        OUT  0x02, R0
        LDI  R7, 72
        LD   R1, [R7]
        LDI  R7, 73
        LD   R2, [R7]
        LDI  R7, 74
        LD   R3, [R7]
        LDI  R0, 0
        CMP  R2, R1
        BCC  a1
        LDI  R0, 1
        OR   R1, R2, R2
a1:     CMP  R3, R1
        BCC  a2
        LDI  R0, 2
a2:     OUT  0x02, R0
        HLT
