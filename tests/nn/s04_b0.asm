        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 88
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 53
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 97
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
b0_loop770: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos770
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos770: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next770
b0_add770: ADD  R2, R2, R5
        BCC  b0_nc770
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc770:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add770
b0_next770: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop770
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop771: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na771
        ADD  R2, R2, R5
        BCC  ms_na771
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na771:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc771
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc771:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop771
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc773
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc773:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc774
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc774:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc775
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc775:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc776
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc776:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc777
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc777:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc778
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc778:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc779
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc779:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc780
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc780:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok772
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok772
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos772
        LDI  R6, 0x80
        JMP  rq_done772
rq_pos772: LDI  R6, 0x7F
        JMP  rq_done772
rq_ok772:  OR   R6, R2, R2
rq_done772: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu772
        LDI  R6, 0
rq_relu772:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop770: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos770
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos770: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next770
b0_add770: ADD  R2, R2, R5
        BCC  b0_nc770
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc770:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add770
b0_next770: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop770
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop781: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na781
        ADD  R2, R2, R5
        BCC  ms_na781
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na781:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc781
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc781:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop781
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc783
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc783:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc784
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc784:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc785
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc785:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc786
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc786:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc787
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc787:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc788
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc788:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc789
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc789:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc790
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc790:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok782
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok782
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos782
        LDI  R6, 0x80
        JMP  rq_done782
rq_pos782: LDI  R6, 0x7F
        JMP  rq_done782
rq_ok782:  OR   R6, R2, R2
rq_done782: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu782
        LDI  R6, 0
rq_relu782:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop770: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos770
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos770: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next770
b0_add770: ADD  R2, R2, R5
        BCC  b0_nc770
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc770:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add770
b0_next770: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop770
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop791: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na791
        ADD  R2, R2, R5
        BCC  ms_na791
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na791:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc791
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc791:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop791
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc793
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc793:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc794
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc794:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc795
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc795:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc796
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc796:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc797
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc797:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc798
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc798:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc799
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc799:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc800
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc800:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok792
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok792
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos792
        LDI  R6, 0x80
        JMP  rq_done792
rq_pos792: LDI  R6, 0x7F
        JMP  rq_done792
rq_ok792:  OR   R6, R2, R2
rq_done792: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu792
        LDI  R6, 0
rq_relu792:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop770: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos770
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos770: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next770
b0_add770: ADD  R2, R2, R5
        BCC  b0_nc770
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc770:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add770
b0_next770: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop770
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop801: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na801
        ADD  R2, R2, R5
        BCC  ms_na801
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na801:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc801
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc801:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop801
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc803
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc803:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc804
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc804:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc805
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc805:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc806
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc806:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc807
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc807:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc808
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc808:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc809
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc809:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc810
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc810:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok802
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok802
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos802
        LDI  R6, 0x80
        JMP  rq_done802
rq_pos802: LDI  R6, 0x7F
        JMP  rq_done802
rq_ok802:  OR   R6, R2, R2
rq_done802: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu802
        LDI  R6, 0
rq_relu802:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop770: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos770
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos770: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next770
b0_add770: ADD  R2, R2, R5
        BCC  b0_nc770
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc770:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add770
b0_next770: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop770
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop811: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na811
        ADD  R2, R2, R5
        BCC  ms_na811
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na811:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc811
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc811:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop811
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc813
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc813:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc814
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc814:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc815
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc815:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc816
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc816:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc817
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc817:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc818
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc818:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc819
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc819:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc820
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc820:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok812
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok812
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos812
        LDI  R6, 0x80
        JMP  rq_done812
rq_pos812: LDI  R6, 0x7F
        JMP  rq_done812
rq_ok812:  OR   R6, R2, R2
rq_done812: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu812
        LDI  R6, 0
rq_relu812:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop770: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos770
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos770: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next770
b0_add770: ADD  R2, R2, R5
        BCC  b0_nc770
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc770:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add770
b0_next770: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop770
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop821: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na821
        ADD  R2, R2, R5
        BCC  ms_na821
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na821:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc821
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc821:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop821
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc823
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc823:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc824
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc824:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc825
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc825:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc826
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc826:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc827
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc827:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc828
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc828:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc829
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc829:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc830
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc830:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok822
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok822
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos822
        LDI  R6, 0x80
        JMP  rq_done822
rq_pos822: LDI  R6, 0x7F
        JMP  rq_done822
rq_ok822:  OR   R6, R2, R2
rq_done822: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu822
        LDI  R6, 0
rq_relu822:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop2770: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2770
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2770: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2770
b0_add2770: ADD R2, R2, R5
        BCC  b0_nc2770
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2770: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2770
b0_next2770: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2770
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop831: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na831
        ADD  R2, R2, R5
        BCC  ms_na831
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na831:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc831
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc831:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop831
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc833
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc833:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc834
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc834:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc835
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc835:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok832
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok832
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos832
        LDI  R6, 0x80
        JMP  rq_done832
rq_pos832: LDI  R6, 0x7F
        JMP  rq_done832
rq_ok832:  OR   R6, R2, R2
rq_done832: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu832
        LDI  R6, 0
rq_relu832:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop2770: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2770
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2770: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2770
b0_add2770: ADD R2, R2, R5
        BCC  b0_nc2770
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2770: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2770
b0_next2770: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2770
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop836: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na836
        ADD  R2, R2, R5
        BCC  ms_na836
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na836:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc836
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc836:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop836
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc838
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc838:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc839
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc839:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc840
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc840:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok837
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok837
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos837
        LDI  R6, 0x80
        JMP  rq_done837
rq_pos837: LDI  R6, 0x7F
        JMP  rq_done837
rq_ok837:  OR   R6, R2, R2
rq_done837: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu837
        LDI  R6, 0
rq_relu837:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop2770: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2770
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2770: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2770
b0_add2770: ADD R2, R2, R5
        BCC  b0_nc2770
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2770: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2770
b0_next2770: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2770
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop841: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na841
        ADD  R2, R2, R5
        BCC  ms_na841
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na841:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc841
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc841:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop841
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc843
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc843:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc844
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc844:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc845
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc845:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok842
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok842
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos842
        LDI  R6, 0x80
        JMP  rq_done842
rq_pos842: LDI  R6, 0x7F
        JMP  rq_done842
rq_ok842:  OR   R6, R2, R2
rq_done842: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu842
        LDI  R6, 0
rq_relu842:
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
