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
b0_loop3812: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3812
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3812: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3812
b0_add3812: ADD  R2, R2, R5
        BCC  b0_nc3812
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3812:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3812
b0_next3812: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3812
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3813: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3813
        ADD  R2, R2, R5
        BCC  ms_na3813
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3813:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3813
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3813:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3813
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3815
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3815:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3816
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3816:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3817
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3817:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3818
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3818:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3819
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3819:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3820
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3820:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3821
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3821:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3822
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3822:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3814
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3814
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3814
        LDI  R6, 0x80
        JMP  rq_done3814
rq_pos3814: LDI  R6, 0x7F
        JMP  rq_done3814
rq_ok3814:  OR   R6, R2, R2
rq_done3814: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3814
        LDI  R6, 0
rq_relu3814:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop3812: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3812
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3812: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3812
b0_add3812: ADD  R2, R2, R5
        BCC  b0_nc3812
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3812:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3812
b0_next3812: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3812
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3823: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3823
        ADD  R2, R2, R5
        BCC  ms_na3823
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3823:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3823
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3823:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3823
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3825
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3825:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3826
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3826:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3827
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3827:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3828
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3828:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3829
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3829:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3830
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3830:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3831
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3831:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3832
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3832:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3824
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3824
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3824
        LDI  R6, 0x80
        JMP  rq_done3824
rq_pos3824: LDI  R6, 0x7F
        JMP  rq_done3824
rq_ok3824:  OR   R6, R2, R2
rq_done3824: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3824
        LDI  R6, 0
rq_relu3824:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop3812: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3812
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3812: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3812
b0_add3812: ADD  R2, R2, R5
        BCC  b0_nc3812
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3812:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3812
b0_next3812: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3812
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3833: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3833
        ADD  R2, R2, R5
        BCC  ms_na3833
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3833:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3833
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3833:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3833
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3835
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3835:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3836
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3836:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3837
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3837:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3838
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3838:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3839
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3839:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3840
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3840:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3841
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3841:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3842
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3842:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3834
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3834
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3834
        LDI  R6, 0x80
        JMP  rq_done3834
rq_pos3834: LDI  R6, 0x7F
        JMP  rq_done3834
rq_ok3834:  OR   R6, R2, R2
rq_done3834: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3834
        LDI  R6, 0
rq_relu3834:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop3812: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3812
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3812: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3812
b0_add3812: ADD  R2, R2, R5
        BCC  b0_nc3812
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3812:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3812
b0_next3812: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3812
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3843: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3843
        ADD  R2, R2, R5
        BCC  ms_na3843
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3843:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3843
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3843:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3843
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3845
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3845:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3846
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3846:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3847
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3847:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3848
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3848:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3849
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3849:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3850
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3850:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3851
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3851:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3852
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3852:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3844
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3844
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3844
        LDI  R6, 0x80
        JMP  rq_done3844
rq_pos3844: LDI  R6, 0x7F
        JMP  rq_done3844
rq_ok3844:  OR   R6, R2, R2
rq_done3844: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3844
        LDI  R6, 0
rq_relu3844:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop3812: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3812
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3812: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3812
b0_add3812: ADD  R2, R2, R5
        BCC  b0_nc3812
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3812:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3812
b0_next3812: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3812
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3853: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3853
        ADD  R2, R2, R5
        BCC  ms_na3853
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3853:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3853
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3853:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3853
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3855
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3855:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3856
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3856:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3857
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3857:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3858
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3858:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3859
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3859:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3860
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3860:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3861
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3861:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3862
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3862:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3854
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3854
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3854
        LDI  R6, 0x80
        JMP  rq_done3854
rq_pos3854: LDI  R6, 0x7F
        JMP  rq_done3854
rq_ok3854:  OR   R6, R2, R2
rq_done3854: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3854
        LDI  R6, 0
rq_relu3854:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop3812: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3812
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3812: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3812
b0_add3812: ADD  R2, R2, R5
        BCC  b0_nc3812
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3812:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3812
b0_next3812: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3812
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3863: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3863
        ADD  R2, R2, R5
        BCC  ms_na3863
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3863:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3863
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3863:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3863
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3865
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3865:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3866
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3866:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3867
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3867:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3868
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3868:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3869
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3869:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3870
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3870:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3871
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3871:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3872
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3872:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3864
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3864
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3864
        LDI  R6, 0x80
        JMP  rq_done3864
rq_pos3864: LDI  R6, 0x7F
        JMP  rq_done3864
rq_ok3864:  OR   R6, R2, R2
rq_done3864: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3864
        LDI  R6, 0
rq_relu3864:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop23812: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23812
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23812: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23812
b0_add23812: ADD R2, R2, R5
        BCC  b0_nc23812
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23812: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23812
b0_next23812: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23812
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3873: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3873
        ADD  R2, R2, R5
        BCC  ms_na3873
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3873:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3873
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3873:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3873
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3875
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3875:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3876
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3876:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3877
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3877:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3874
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3874
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3874
        LDI  R6, 0x80
        JMP  rq_done3874
rq_pos3874: LDI  R6, 0x7F
        JMP  rq_done3874
rq_ok3874:  OR   R6, R2, R2
rq_done3874: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3874
        LDI  R6, 0
rq_relu3874:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop23812: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23812
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23812: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23812
b0_add23812: ADD R2, R2, R5
        BCC  b0_nc23812
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23812: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23812
b0_next23812: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23812
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3878: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3878
        ADD  R2, R2, R5
        BCC  ms_na3878
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3878:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3878
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3878:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3878
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3880
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3880:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3881
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3881:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3882
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3882:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3879
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3879
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3879
        LDI  R6, 0x80
        JMP  rq_done3879
rq_pos3879: LDI  R6, 0x7F
        JMP  rq_done3879
rq_ok3879:  OR   R6, R2, R2
rq_done3879: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3879
        LDI  R6, 0
rq_relu3879:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop23812: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23812
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23812: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23812
b0_add23812: ADD R2, R2, R5
        BCC  b0_nc23812
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23812: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23812
b0_next23812: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23812
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3883: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3883
        ADD  R2, R2, R5
        BCC  ms_na3883
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3883:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3883
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3883:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3883
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3885
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3885:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3886
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3886:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3887
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3887:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3884
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3884
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3884
        LDI  R6, 0x80
        JMP  rq_done3884
rq_pos3884: LDI  R6, 0x7F
        JMP  rq_done3884
rq_ok3884:  OR   R6, R2, R2
rq_done3884: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3884
        LDI  R6, 0
rq_relu3884:
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
