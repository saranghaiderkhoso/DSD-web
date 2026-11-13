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
b0_loop3643: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3643
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3643: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3643
b0_add3643: ADD  R2, R2, R5
        BCC  b0_nc3643
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3643:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3643
b0_next3643: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3643
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3644: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3644
        ADD  R2, R2, R5
        BCC  ms_na3644
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3644:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3644
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3644:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3644
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3646
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3646:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3647
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3647:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3648
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3648:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3649
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3649:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3650
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3650:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3651
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3651:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3652
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3652:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3653
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3653:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3645
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3645
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3645
        LDI  R6, 0x80
        JMP  rq_done3645
rq_pos3645: LDI  R6, 0x7F
        JMP  rq_done3645
rq_ok3645:  OR   R6, R2, R2
rq_done3645: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3645
        LDI  R6, 0
rq_relu3645:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop3643: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3643
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3643: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3643
b0_add3643: ADD  R2, R2, R5
        BCC  b0_nc3643
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3643:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3643
b0_next3643: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3643
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3654: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3654
        ADD  R2, R2, R5
        BCC  ms_na3654
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3654:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3654
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3654:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3654
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3656
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3656:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3657
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3657:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3658
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3658:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3659
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3659:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3660
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3660:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3661
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3661:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3662
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3662:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3663
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3663:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3655
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3655
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3655
        LDI  R6, 0x80
        JMP  rq_done3655
rq_pos3655: LDI  R6, 0x7F
        JMP  rq_done3655
rq_ok3655:  OR   R6, R2, R2
rq_done3655: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3655
        LDI  R6, 0
rq_relu3655:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop3643: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3643
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3643: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3643
b0_add3643: ADD  R2, R2, R5
        BCC  b0_nc3643
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3643:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3643
b0_next3643: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3643
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3664: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3664
        ADD  R2, R2, R5
        BCC  ms_na3664
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3664:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3664
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3664:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3664
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3666
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3666:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3667
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3667:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3668
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3668:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3669
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3669:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3670
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3670:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3671
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3671:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3672
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3672:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3673
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3673:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3665
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3665
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3665
        LDI  R6, 0x80
        JMP  rq_done3665
rq_pos3665: LDI  R6, 0x7F
        JMP  rq_done3665
rq_ok3665:  OR   R6, R2, R2
rq_done3665: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3665
        LDI  R6, 0
rq_relu3665:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop3643: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3643
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3643: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3643
b0_add3643: ADD  R2, R2, R5
        BCC  b0_nc3643
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3643:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3643
b0_next3643: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3643
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3674: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3674
        ADD  R2, R2, R5
        BCC  ms_na3674
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3674:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3674
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3674:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3674
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3676
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3676:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3677
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3677:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3678
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3678:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3679
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3679:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3680
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3680:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3681
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3681:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3682
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3682:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3683
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3683:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3675
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3675
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3675
        LDI  R6, 0x80
        JMP  rq_done3675
rq_pos3675: LDI  R6, 0x7F
        JMP  rq_done3675
rq_ok3675:  OR   R6, R2, R2
rq_done3675: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3675
        LDI  R6, 0
rq_relu3675:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop3643: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3643
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3643: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3643
b0_add3643: ADD  R2, R2, R5
        BCC  b0_nc3643
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3643:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3643
b0_next3643: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3643
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3684: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3684
        ADD  R2, R2, R5
        BCC  ms_na3684
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3684:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3684
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3684:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3684
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3686
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3686:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3687
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3687:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3688
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3688:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3689
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3689:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3690
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3690:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3691
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3691:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3692
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3692:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3693
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3693:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3685
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3685
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3685
        LDI  R6, 0x80
        JMP  rq_done3685
rq_pos3685: LDI  R6, 0x7F
        JMP  rq_done3685
rq_ok3685:  OR   R6, R2, R2
rq_done3685: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3685
        LDI  R6, 0
rq_relu3685:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop3643: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3643
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3643: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3643
b0_add3643: ADD  R2, R2, R5
        BCC  b0_nc3643
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3643:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3643
b0_next3643: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3643
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3694: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3694
        ADD  R2, R2, R5
        BCC  ms_na3694
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3694:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3694
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3694:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3694
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3696
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3696:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3697
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3697:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3698
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3698:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3699
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3699:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3700
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3700:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3701
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3701:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3702
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3702:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3703
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3703:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3695
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3695
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3695
        LDI  R6, 0x80
        JMP  rq_done3695
rq_pos3695: LDI  R6, 0x7F
        JMP  rq_done3695
rq_ok3695:  OR   R6, R2, R2
rq_done3695: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3695
        LDI  R6, 0
rq_relu3695:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop23643: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23643
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23643: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23643
b0_add23643: ADD R2, R2, R5
        BCC  b0_nc23643
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23643: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23643
b0_next23643: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23643
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3704: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3704
        ADD  R2, R2, R5
        BCC  ms_na3704
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3704:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3704
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3704:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3704
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3706
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3706:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3707
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3707:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3708
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3708:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3705
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3705
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3705
        LDI  R6, 0x80
        JMP  rq_done3705
rq_pos3705: LDI  R6, 0x7F
        JMP  rq_done3705
rq_ok3705:  OR   R6, R2, R2
rq_done3705: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3705
        LDI  R6, 0
rq_relu3705:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop23643: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23643
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23643: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23643
b0_add23643: ADD R2, R2, R5
        BCC  b0_nc23643
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23643: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23643
b0_next23643: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23643
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3709: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3709
        ADD  R2, R2, R5
        BCC  ms_na3709
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3709:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3709
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3709:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3709
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3711
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3711:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3712
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3712:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3713
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3713:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3710
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3710
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3710
        LDI  R6, 0x80
        JMP  rq_done3710
rq_pos3710: LDI  R6, 0x7F
        JMP  rq_done3710
rq_ok3710:  OR   R6, R2, R2
rq_done3710: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3710
        LDI  R6, 0
rq_relu3710:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop23643: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23643
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23643: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23643
b0_add23643: ADD R2, R2, R5
        BCC  b0_nc23643
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23643: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23643
b0_next23643: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23643
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3714: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3714
        ADD  R2, R2, R5
        BCC  ms_na3714
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3714:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3714
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3714:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3714
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3716
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3716:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3717
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3717:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3718
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3718:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3715
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3715
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3715
        LDI  R6, 0x80
        JMP  rq_done3715
rq_pos3715: LDI  R6, 0x7F
        JMP  rq_done3715
rq_ok3715:  OR   R6, R2, R2
rq_done3715: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3715
        LDI  R6, 0
rq_relu3715:
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
