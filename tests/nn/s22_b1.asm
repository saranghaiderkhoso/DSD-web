        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 102
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 53
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 103
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 79
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
sw_loop3719: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3720: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3720
        ADD  R2, R2, R5
        BCC  ms_na3720
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3720:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3720
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3720:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3720
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3719
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3721: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3721
        ADD  R2, R2, R5
        BCC  ms_na3721
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3721:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3721
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3721:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3721
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3723
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3723:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3724
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3724:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3725
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3725:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3726
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3726:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3727
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3727:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3728
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3728:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3729
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3729:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3730
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3730:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3722
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3722
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3722
        LDI  R6, 0x80
        JMP  rq_done3722
rq_pos3722: LDI  R6, 0x7F
        JMP  rq_done3722
rq_ok3722:  OR   R6, R2, R2
rq_done3722: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3722
        LDI  R6, 0
rq_relu3722:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop3731: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3732: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3732
        ADD  R2, R2, R5
        BCC  ms_na3732
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3732:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3732
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3732:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3732
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3731
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3733: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3733
        ADD  R2, R2, R5
        BCC  ms_na3733
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3733:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3733
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3733:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3733
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3735
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3735:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3736
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3736:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3737
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3737:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3738
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3738:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3739
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3739:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3740
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3740:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3741
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3741:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3742
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3742:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3734
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3734
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3734
        LDI  R6, 0x80
        JMP  rq_done3734
rq_pos3734: LDI  R6, 0x7F
        JMP  rq_done3734
rq_ok3734:  OR   R6, R2, R2
rq_done3734: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3734
        LDI  R6, 0
rq_relu3734:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop3743: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3744: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3744
        ADD  R2, R2, R5
        BCC  ms_na3744
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3744:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3744
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3744:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3744
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3743
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3745: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3745
        ADD  R2, R2, R5
        BCC  ms_na3745
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3745:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3745
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3745:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3745
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3747
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3747:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3748
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3748:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3749
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3749:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3750
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3750:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3751
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3751:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3752
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3752:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3753
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3753:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3754
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3754:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3746
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3746
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3746
        LDI  R6, 0x80
        JMP  rq_done3746
rq_pos3746: LDI  R6, 0x7F
        JMP  rq_done3746
rq_ok3746:  OR   R6, R2, R2
rq_done3746: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3746
        LDI  R6, 0
rq_relu3746:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop3755: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3756: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3756
        ADD  R2, R2, R5
        BCC  ms_na3756
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3756:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3756
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3756:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3756
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3755
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3757: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3757
        ADD  R2, R2, R5
        BCC  ms_na3757
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3757:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3757
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3757:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3757
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3759
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3759:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3760
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3760:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3761
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3761:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3762
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3762:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3763
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3763:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3764
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3764:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3765
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3765:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3766
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3766:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3758
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3758
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3758
        LDI  R6, 0x80
        JMP  rq_done3758
rq_pos3758: LDI  R6, 0x7F
        JMP  rq_done3758
rq_ok3758:  OR   R6, R2, R2
rq_done3758: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3758
        LDI  R6, 0
rq_relu3758:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop3767: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3768: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3768
        ADD  R2, R2, R5
        BCC  ms_na3768
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3768:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3768
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3768:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3768
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3767
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3769: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3769
        ADD  R2, R2, R5
        BCC  ms_na3769
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3769:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3769
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3769:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3769
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3771
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3771:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3772
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3772:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3773
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3773:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3774
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3774:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3775
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3775:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3776
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3776:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3777
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3777:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3778
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3778:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3770
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3770
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3770
        LDI  R6, 0x80
        JMP  rq_done3770
rq_pos3770: LDI  R6, 0x7F
        JMP  rq_done3770
rq_ok3770:  OR   R6, R2, R2
rq_done3770: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3770
        LDI  R6, 0
rq_relu3770:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop3779: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3780: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3780
        ADD  R2, R2, R5
        BCC  ms_na3780
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3780:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3780
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3780:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3780
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3779
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3781: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3781
        ADD  R2, R2, R5
        BCC  ms_na3781
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3781:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3781
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3781:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3781
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3783
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3783:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3784
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3784:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3785
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3785:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3786
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3786:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3787
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3787:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3788
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3788:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3789
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3789:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3790
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3790:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3782
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3782
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3782
        LDI  R6, 0x80
        JMP  rq_done3782
rq_pos3782: LDI  R6, 0x7F
        JMP  rq_done3782
rq_ok3782:  OR   R6, R2, R2
rq_done3782: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3782
        LDI  R6, 0
rq_relu3782:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop3791: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3792: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3792
        ADD  R2, R2, R5
        BCC  ms_na3792
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3792:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3792
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3792:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3792
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3791
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3793: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3793
        ADD  R2, R2, R5
        BCC  ms_na3793
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3793:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3793
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3793:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3793
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3795
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3795:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3796
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3796:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3797
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3797:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3794
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3794
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3794
        LDI  R6, 0x80
        JMP  rq_done3794
rq_pos3794: LDI  R6, 0x7F
        JMP  rq_done3794
rq_ok3794:  OR   R6, R2, R2
rq_done3794: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3794
        LDI  R6, 0
rq_relu3794:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop3798: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3799: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3799
        ADD  R2, R2, R5
        BCC  ms_na3799
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3799:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3799
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3799:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3799
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3798
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3800: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3800
        ADD  R2, R2, R5
        BCC  ms_na3800
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3800:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3800
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3800:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3800
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3802
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3802:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3803
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3803:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3804
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3804:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3801
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3801
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3801
        LDI  R6, 0x80
        JMP  rq_done3801
rq_pos3801: LDI  R6, 0x7F
        JMP  rq_done3801
rq_ok3801:  OR   R6, R2, R2
rq_done3801: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3801
        LDI  R6, 0
rq_relu3801:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop3805: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3806: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3806
        ADD  R2, R2, R5
        BCC  ms_na3806
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3806:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3806
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3806:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3806
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3805
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3807: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3807
        ADD  R2, R2, R5
        BCC  ms_na3807
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3807:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3807
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3807:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3807
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3809
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3809:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3810
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3810:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3811
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3811:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3808
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3808
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3808
        LDI  R6, 0x80
        JMP  rq_done3808
rq_pos3808: LDI  R6, 0x7F
        JMP  rq_done3808
rq_ok3808:  OR   R6, R2, R2
rq_done3808: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3808
        LDI  R6, 0
rq_relu3808:
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
