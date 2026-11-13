        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 85
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 69
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 101
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 106
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
sw_loop3550: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3551: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3551
        ADD  R2, R2, R5
        BCC  ms_na3551
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3551:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3551
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3551:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3551
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3550
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3552: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3552
        ADD  R2, R2, R5
        BCC  ms_na3552
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3552:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3552
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3552:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3552
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3554
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3554:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3555
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3555:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3556
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3556:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3557
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3557:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3558
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3558:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3559
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3559:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3560
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3560:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3561
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3561:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3553
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3553
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3553
        LDI  R6, 0x80
        JMP  rq_done3553
rq_pos3553: LDI  R6, 0x7F
        JMP  rq_done3553
rq_ok3553:  OR   R6, R2, R2
rq_done3553: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3553
        LDI  R6, 0
rq_relu3553:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop3562: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3563: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3563
        ADD  R2, R2, R5
        BCC  ms_na3563
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3563:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3563
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3563:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3563
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3562
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3564: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3564
        ADD  R2, R2, R5
        BCC  ms_na3564
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3564:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3564
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3564:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3564
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3566
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3566:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3567
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3567:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3568
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3568:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3569
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3569:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3570
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3570:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3571
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3571:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3572
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3572:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3573
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3573:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3565
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3565
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3565
        LDI  R6, 0x80
        JMP  rq_done3565
rq_pos3565: LDI  R6, 0x7F
        JMP  rq_done3565
rq_ok3565:  OR   R6, R2, R2
rq_done3565: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3565
        LDI  R6, 0
rq_relu3565:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop3574: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3575: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3575
        ADD  R2, R2, R5
        BCC  ms_na3575
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3575:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3575
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3575:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3575
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3574
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3576: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3576
        ADD  R2, R2, R5
        BCC  ms_na3576
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3576:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3576
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3576:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3576
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3578
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3578:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3579
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3579:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3580
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3580:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3581
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3581:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3582
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3582:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3583
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3583:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3584
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3584:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3585
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3585:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3577
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3577
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3577
        LDI  R6, 0x80
        JMP  rq_done3577
rq_pos3577: LDI  R6, 0x7F
        JMP  rq_done3577
rq_ok3577:  OR   R6, R2, R2
rq_done3577: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3577
        LDI  R6, 0
rq_relu3577:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop3586: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3587: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3587
        ADD  R2, R2, R5
        BCC  ms_na3587
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3587:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3587
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3587:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3587
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3586
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3588: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3588
        ADD  R2, R2, R5
        BCC  ms_na3588
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3588:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3588
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3588:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3588
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3590
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3590:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3591
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3591:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3592
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3592:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3593
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3593:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3594
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3594:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3595
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3595:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3596
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3596:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3597
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3597:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3589
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3589
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3589
        LDI  R6, 0x80
        JMP  rq_done3589
rq_pos3589: LDI  R6, 0x7F
        JMP  rq_done3589
rq_ok3589:  OR   R6, R2, R2
rq_done3589: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3589
        LDI  R6, 0
rq_relu3589:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop3598: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3599: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3599
        ADD  R2, R2, R5
        BCC  ms_na3599
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3599:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3599
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3599:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3599
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3598
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3600: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3600
        ADD  R2, R2, R5
        BCC  ms_na3600
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3600:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3600
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3600:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3600
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3602
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3602:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3603
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3603:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3604
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3604:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3605
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3605:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3606
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3606:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3607
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3607:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3608
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3608:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3609
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3609:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3601
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3601
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3601
        LDI  R6, 0x80
        JMP  rq_done3601
rq_pos3601: LDI  R6, 0x7F
        JMP  rq_done3601
rq_ok3601:  OR   R6, R2, R2
rq_done3601: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3601
        LDI  R6, 0
rq_relu3601:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop3610: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3611: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3611
        ADD  R2, R2, R5
        BCC  ms_na3611
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3611:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3611
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3611:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3611
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3610
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3612: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3612
        ADD  R2, R2, R5
        BCC  ms_na3612
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3612:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3612
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3612:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3612
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3614
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3614:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3615
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3615:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3616
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3616:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3617
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3617:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3618
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3618:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3619
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3619:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3620
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3620:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3621
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3621:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3613
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3613
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3613
        LDI  R6, 0x80
        JMP  rq_done3613
rq_pos3613: LDI  R6, 0x7F
        JMP  rq_done3613
rq_ok3613:  OR   R6, R2, R2
rq_done3613: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3613
        LDI  R6, 0
rq_relu3613:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop3622: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3623: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3623
        ADD  R2, R2, R5
        BCC  ms_na3623
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3623:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3623
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3623:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3623
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3622
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3624: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3624
        ADD  R2, R2, R5
        BCC  ms_na3624
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3624:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3624
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3624:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3624
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3626
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3626:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3627
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3627:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3628
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3628:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3625
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3625
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3625
        LDI  R6, 0x80
        JMP  rq_done3625
rq_pos3625: LDI  R6, 0x7F
        JMP  rq_done3625
rq_ok3625:  OR   R6, R2, R2
rq_done3625: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3625
        LDI  R6, 0
rq_relu3625:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop3629: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3630: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3630
        ADD  R2, R2, R5
        BCC  ms_na3630
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3630:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3630
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3630:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3630
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3629
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3631: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3631
        ADD  R2, R2, R5
        BCC  ms_na3631
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3631:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3631
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3631:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3631
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3633
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3633:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3634
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3634:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3635
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3635:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3632
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3632
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3632
        LDI  R6, 0x80
        JMP  rq_done3632
rq_pos3632: LDI  R6, 0x7F
        JMP  rq_done3632
rq_ok3632:  OR   R6, R2, R2
rq_done3632: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3632
        LDI  R6, 0
rq_relu3632:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop3636: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3637: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3637
        ADD  R2, R2, R5
        BCC  ms_na3637
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3637:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3637
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3637:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3637
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3636
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3638: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3638
        ADD  R2, R2, R5
        BCC  ms_na3638
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3638:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3638
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3638:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3638
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3640
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3640:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3641
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3641:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3642
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3642:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3639
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3639
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3639
        LDI  R6, 0x80
        JMP  rq_done3639
rq_pos3639: LDI  R6, 0x7F
        JMP  rq_done3639
rq_ok3639:  OR   R6, R2, R2
rq_done3639: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3639
        LDI  R6, 0
rq_relu3639:
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
