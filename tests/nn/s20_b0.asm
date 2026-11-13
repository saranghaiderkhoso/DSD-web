        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 53
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 37
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 88
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 95
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
b0_loop3474: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3474
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3474: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3474
b0_add3474: ADD  R2, R2, R5
        BCC  b0_nc3474
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3474:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3474
b0_next3474: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3474
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3475: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3475
        ADD  R2, R2, R5
        BCC  ms_na3475
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3475:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3475
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3475:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3475
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3477
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3477:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3478
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3478:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3479
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3479:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3480
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3480:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3481
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3481:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3482
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3482:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3483
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3483:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3484
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3484:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3476
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3476
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3476
        LDI  R6, 0x80
        JMP  rq_done3476
rq_pos3476: LDI  R6, 0x7F
        JMP  rq_done3476
rq_ok3476:  OR   R6, R2, R2
rq_done3476: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3476
        LDI  R6, 0
rq_relu3476:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop3474: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3474
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3474: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3474
b0_add3474: ADD  R2, R2, R5
        BCC  b0_nc3474
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3474:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3474
b0_next3474: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3474
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3485: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3485
        ADD  R2, R2, R5
        BCC  ms_na3485
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3485:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3485
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3485:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3485
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3487
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3487:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3488
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3488:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3489
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3489:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3490
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3490:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3491
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3491:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3492
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3492:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3493
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3493:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3494
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3494:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3486
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3486
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3486
        LDI  R6, 0x80
        JMP  rq_done3486
rq_pos3486: LDI  R6, 0x7F
        JMP  rq_done3486
rq_ok3486:  OR   R6, R2, R2
rq_done3486: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3486
        LDI  R6, 0
rq_relu3486:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop3474: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3474
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3474: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3474
b0_add3474: ADD  R2, R2, R5
        BCC  b0_nc3474
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3474:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3474
b0_next3474: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3474
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3495: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3495
        ADD  R2, R2, R5
        BCC  ms_na3495
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3495:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3495
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3495:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3495
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3497
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3497:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3498
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3498:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3499
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3499:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3500
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3500:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3501
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3501:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3502
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3502:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3503
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3503:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3504
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3504:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3496
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3496
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3496
        LDI  R6, 0x80
        JMP  rq_done3496
rq_pos3496: LDI  R6, 0x7F
        JMP  rq_done3496
rq_ok3496:  OR   R6, R2, R2
rq_done3496: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3496
        LDI  R6, 0
rq_relu3496:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop3474: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3474
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3474: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3474
b0_add3474: ADD  R2, R2, R5
        BCC  b0_nc3474
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3474:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3474
b0_next3474: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3474
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3505: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3505
        ADD  R2, R2, R5
        BCC  ms_na3505
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3505:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3505
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3505:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3505
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3507
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3507:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3508
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3508:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3509
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3509:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3510
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3510:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3511
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3511:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3512
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3512:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3513
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3513:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3514
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3514:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3506
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3506
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3506
        LDI  R6, 0x80
        JMP  rq_done3506
rq_pos3506: LDI  R6, 0x7F
        JMP  rq_done3506
rq_ok3506:  OR   R6, R2, R2
rq_done3506: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3506
        LDI  R6, 0
rq_relu3506:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop3474: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3474
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3474: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3474
b0_add3474: ADD  R2, R2, R5
        BCC  b0_nc3474
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3474:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3474
b0_next3474: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3474
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3515: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3515
        ADD  R2, R2, R5
        BCC  ms_na3515
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3515:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3515
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3515:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3515
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3517
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3517:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3518
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3518:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3519
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3519:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3520
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3520:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3521
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3521:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3522
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3522:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3523
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3523:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3524
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3524:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3516
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3516
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3516
        LDI  R6, 0x80
        JMP  rq_done3516
rq_pos3516: LDI  R6, 0x7F
        JMP  rq_done3516
rq_ok3516:  OR   R6, R2, R2
rq_done3516: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3516
        LDI  R6, 0
rq_relu3516:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop3474: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3474
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3474: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3474
b0_add3474: ADD  R2, R2, R5
        BCC  b0_nc3474
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3474:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3474
b0_next3474: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3474
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3525: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3525
        ADD  R2, R2, R5
        BCC  ms_na3525
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3525:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3525
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3525:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3525
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3527
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3527:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3528
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3528:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3529
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3529:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3530
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3530:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3531
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3531:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3532
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3532:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3533
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3533:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3534
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3534:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3526
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3526
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3526
        LDI  R6, 0x80
        JMP  rq_done3526
rq_pos3526: LDI  R6, 0x7F
        JMP  rq_done3526
rq_ok3526:  OR   R6, R2, R2
rq_done3526: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3526
        LDI  R6, 0
rq_relu3526:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop23474: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23474
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23474: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23474
b0_add23474: ADD R2, R2, R5
        BCC  b0_nc23474
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23474: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23474
b0_next23474: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23474
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3535: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3535
        ADD  R2, R2, R5
        BCC  ms_na3535
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3535:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3535
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3535:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3535
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3537
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3537:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3538
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3538:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3539
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3539:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3536
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3536
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3536
        LDI  R6, 0x80
        JMP  rq_done3536
rq_pos3536: LDI  R6, 0x7F
        JMP  rq_done3536
rq_ok3536:  OR   R6, R2, R2
rq_done3536: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3536
        LDI  R6, 0
rq_relu3536:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop23474: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23474
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23474: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23474
b0_add23474: ADD R2, R2, R5
        BCC  b0_nc23474
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23474: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23474
b0_next23474: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23474
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3540: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3540
        ADD  R2, R2, R5
        BCC  ms_na3540
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3540:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3540
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3540:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3540
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3542
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3542:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3543
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3543:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3544
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3544:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3541
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3541
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3541
        LDI  R6, 0x80
        JMP  rq_done3541
rq_pos3541: LDI  R6, 0x7F
        JMP  rq_done3541
rq_ok3541:  OR   R6, R2, R2
rq_done3541: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3541
        LDI  R6, 0
rq_relu3541:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop23474: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23474
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23474: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23474
b0_add23474: ADD R2, R2, R5
        BCC  b0_nc23474
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23474: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23474
b0_next23474: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23474
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3545: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3545
        ADD  R2, R2, R5
        BCC  ms_na3545
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3545:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3545
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3545:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3545
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3547
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3547:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3548
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3548:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3549
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3549:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3546
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3546
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3546
        LDI  R6, 0x80
        JMP  rq_done3546
rq_pos3546: LDI  R6, 0x7F
        JMP  rq_done3546
rq_ok3546:  OR   R6, R2, R2
rq_done3546: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3546
        LDI  R6, 0
rq_relu3546:
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
