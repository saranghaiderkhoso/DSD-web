        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 39
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 74
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 11
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 16
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
b0_loop2798: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2798
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2798: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2798
b0_add2798: ADD  R2, R2, R5
        BCC  b0_nc2798
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2798:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2798
b0_next2798: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2798
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2799: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2799
        ADD  R2, R2, R5
        BCC  ms_na2799
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2799:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2799
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2799:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2799
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2801
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2801:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2802
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2802:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2803
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2803:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2804
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2804:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2805
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2805:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2806
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2806:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2807
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2807:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2808
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2808:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2800
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2800
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2800
        LDI  R6, 0x80
        JMP  rq_done2800
rq_pos2800: LDI  R6, 0x7F
        JMP  rq_done2800
rq_ok2800:  OR   R6, R2, R2
rq_done2800: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2800
        LDI  R6, 0
rq_relu2800:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop2798: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2798
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2798: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2798
b0_add2798: ADD  R2, R2, R5
        BCC  b0_nc2798
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2798:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2798
b0_next2798: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2798
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2809: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2809
        ADD  R2, R2, R5
        BCC  ms_na2809
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2809:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2809
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2809:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2809
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2811
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2811:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2812
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2812:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2813
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2813:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2814
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2814:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2815
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2815:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2816
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2816:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2817
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2817:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2818
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2818:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2810
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2810
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2810
        LDI  R6, 0x80
        JMP  rq_done2810
rq_pos2810: LDI  R6, 0x7F
        JMP  rq_done2810
rq_ok2810:  OR   R6, R2, R2
rq_done2810: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2810
        LDI  R6, 0
rq_relu2810:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop2798: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2798
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2798: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2798
b0_add2798: ADD  R2, R2, R5
        BCC  b0_nc2798
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2798:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2798
b0_next2798: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2798
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2819: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2819
        ADD  R2, R2, R5
        BCC  ms_na2819
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2819:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2819
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2819:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2819
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2821
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2821:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2822
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2822:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2823
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2823:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2824
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2824:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2825
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2825:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2826
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2826:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2827
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2827:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2828
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2828:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2820
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2820
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2820
        LDI  R6, 0x80
        JMP  rq_done2820
rq_pos2820: LDI  R6, 0x7F
        JMP  rq_done2820
rq_ok2820:  OR   R6, R2, R2
rq_done2820: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2820
        LDI  R6, 0
rq_relu2820:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop2798: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2798
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2798: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2798
b0_add2798: ADD  R2, R2, R5
        BCC  b0_nc2798
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2798:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2798
b0_next2798: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2798
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2829: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2829
        ADD  R2, R2, R5
        BCC  ms_na2829
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2829:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2829
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2829:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2829
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2831
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2831:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2832
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2832:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2833
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2833:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2834
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2834:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2835
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2835:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2836
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2836:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2837
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2837:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2838
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2838:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2830
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2830
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2830
        LDI  R6, 0x80
        JMP  rq_done2830
rq_pos2830: LDI  R6, 0x7F
        JMP  rq_done2830
rq_ok2830:  OR   R6, R2, R2
rq_done2830: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2830
        LDI  R6, 0
rq_relu2830:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop2798: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2798
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2798: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2798
b0_add2798: ADD  R2, R2, R5
        BCC  b0_nc2798
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2798:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2798
b0_next2798: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2798
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2839: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2839
        ADD  R2, R2, R5
        BCC  ms_na2839
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2839:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2839
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2839:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2839
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2841
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2841:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2842
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2842:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2843
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2843:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2844
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2844:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2845
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2845:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2846
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2846:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2847
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2847:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2848
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2848:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2840
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2840
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2840
        LDI  R6, 0x80
        JMP  rq_done2840
rq_pos2840: LDI  R6, 0x7F
        JMP  rq_done2840
rq_ok2840:  OR   R6, R2, R2
rq_done2840: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2840
        LDI  R6, 0
rq_relu2840:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop2798: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2798
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2798: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2798
b0_add2798: ADD  R2, R2, R5
        BCC  b0_nc2798
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2798:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2798
b0_next2798: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2798
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2849: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2849
        ADD  R2, R2, R5
        BCC  ms_na2849
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2849:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2849
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2849:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2849
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2851
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2851:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2852
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2852:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2853
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2853:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2854
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2854:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2855
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2855:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2856
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2856:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2857
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2857:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2858
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2858:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2850
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2850
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2850
        LDI  R6, 0x80
        JMP  rq_done2850
rq_pos2850: LDI  R6, 0x7F
        JMP  rq_done2850
rq_ok2850:  OR   R6, R2, R2
rq_done2850: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2850
        LDI  R6, 0
rq_relu2850:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop22798: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22798
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22798: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22798
b0_add22798: ADD R2, R2, R5
        BCC  b0_nc22798
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22798: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22798
b0_next22798: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22798
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2859: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2859
        ADD  R2, R2, R5
        BCC  ms_na2859
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2859:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2859
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2859:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2859
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2861
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2861:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2862
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2862:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2863
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2863:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2860
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2860
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2860
        LDI  R6, 0x80
        JMP  rq_done2860
rq_pos2860: LDI  R6, 0x7F
        JMP  rq_done2860
rq_ok2860:  OR   R6, R2, R2
rq_done2860: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2860
        LDI  R6, 0
rq_relu2860:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop22798: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22798
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22798: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22798
b0_add22798: ADD R2, R2, R5
        BCC  b0_nc22798
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22798: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22798
b0_next22798: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22798
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2864: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2864
        ADD  R2, R2, R5
        BCC  ms_na2864
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2864:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2864
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2864:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2864
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2866
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2866:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2867
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2867:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2868
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2868:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2865
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2865
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2865
        LDI  R6, 0x80
        JMP  rq_done2865
rq_pos2865: LDI  R6, 0x7F
        JMP  rq_done2865
rq_ok2865:  OR   R6, R2, R2
rq_done2865: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2865
        LDI  R6, 0
rq_relu2865:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop22798: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22798
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22798: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22798
b0_add22798: ADD R2, R2, R5
        BCC  b0_nc22798
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22798: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22798
b0_next22798: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22798
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2869: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2869
        ADD  R2, R2, R5
        BCC  ms_na2869
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2869:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2869
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2869:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2869
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2871
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2871:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2872
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2872:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2873
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2873:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2870
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2870
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2870
        LDI  R6, 0x80
        JMP  rq_done2870
rq_pos2870: LDI  R6, 0x7F
        JMP  rq_done2870
rq_ok2870:  OR   R6, R2, R2
rq_done2870: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2870
        LDI  R6, 0
rq_relu2870:
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
