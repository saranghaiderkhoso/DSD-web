        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 56
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 64
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 82
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 90
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
b0_loop2967: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2967
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2967: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2967
b0_add2967: ADD  R2, R2, R5
        BCC  b0_nc2967
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2967:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2967
b0_next2967: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2967
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2968: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2968
        ADD  R2, R2, R5
        BCC  ms_na2968
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2968:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2968
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2968:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2968
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2970
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2970:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2971
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2971:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2972
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2972:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2973
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2973:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2974
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2974:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2975
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2975:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2976
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2976:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2977
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2977:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2969
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2969
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2969
        LDI  R6, 0x80
        JMP  rq_done2969
rq_pos2969: LDI  R6, 0x7F
        JMP  rq_done2969
rq_ok2969:  OR   R6, R2, R2
rq_done2969: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2969
        LDI  R6, 0
rq_relu2969:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop2967: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2967
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2967: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2967
b0_add2967: ADD  R2, R2, R5
        BCC  b0_nc2967
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2967:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2967
b0_next2967: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2967
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2978: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2978
        ADD  R2, R2, R5
        BCC  ms_na2978
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2978:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2978
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2978:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2978
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2980
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2980:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2981
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2981:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2982
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2982:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2983
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2983:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2984
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2984:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2985
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2985:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2986
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2986:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2987
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2987:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2979
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2979
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2979
        LDI  R6, 0x80
        JMP  rq_done2979
rq_pos2979: LDI  R6, 0x7F
        JMP  rq_done2979
rq_ok2979:  OR   R6, R2, R2
rq_done2979: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2979
        LDI  R6, 0
rq_relu2979:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop2967: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2967
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2967: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2967
b0_add2967: ADD  R2, R2, R5
        BCC  b0_nc2967
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2967:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2967
b0_next2967: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2967
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2988: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2988
        ADD  R2, R2, R5
        BCC  ms_na2988
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2988:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2988
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2988:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2988
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2990
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2990:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2991
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2991:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2992
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2992:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2993
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2993:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2994
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2994:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2995
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2995:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2996
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2996:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2997
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2997:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2989
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2989
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2989
        LDI  R6, 0x80
        JMP  rq_done2989
rq_pos2989: LDI  R6, 0x7F
        JMP  rq_done2989
rq_ok2989:  OR   R6, R2, R2
rq_done2989: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2989
        LDI  R6, 0
rq_relu2989:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop2967: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2967
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2967: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2967
b0_add2967: ADD  R2, R2, R5
        BCC  b0_nc2967
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2967:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2967
b0_next2967: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2967
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2998: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2998
        ADD  R2, R2, R5
        BCC  ms_na2998
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2998:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2998
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2998:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2998
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3000
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3000:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3001
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3001:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3002
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3002:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3003
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3003:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3004
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3004:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3005
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3005:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3006
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3006:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3007
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3007:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2999
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2999
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2999
        LDI  R6, 0x80
        JMP  rq_done2999
rq_pos2999: LDI  R6, 0x7F
        JMP  rq_done2999
rq_ok2999:  OR   R6, R2, R2
rq_done2999: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2999
        LDI  R6, 0
rq_relu2999:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop2967: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2967
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2967: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2967
b0_add2967: ADD  R2, R2, R5
        BCC  b0_nc2967
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2967:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2967
b0_next2967: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2967
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3008: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3008
        ADD  R2, R2, R5
        BCC  ms_na3008
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3008:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3008
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3008:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3008
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3010
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3010:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3011
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3011:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3012
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3012:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3013
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3013:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3014
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3014:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3015
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3015:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3016
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3016:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3017
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3017:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3009
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3009
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3009
        LDI  R6, 0x80
        JMP  rq_done3009
rq_pos3009: LDI  R6, 0x7F
        JMP  rq_done3009
rq_ok3009:  OR   R6, R2, R2
rq_done3009: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3009
        LDI  R6, 0
rq_relu3009:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop2967: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2967
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2967: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2967
b0_add2967: ADD  R2, R2, R5
        BCC  b0_nc2967
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2967:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2967
b0_next2967: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2967
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3018: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3018
        ADD  R2, R2, R5
        BCC  ms_na3018
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3018:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3018
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3018:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3018
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3020
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3020:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3021
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3021:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3022
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3022:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3023
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3023:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3024
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3024:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3025
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3025:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3026
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3026:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3027
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3027:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3019
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3019
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3019
        LDI  R6, 0x80
        JMP  rq_done3019
rq_pos3019: LDI  R6, 0x7F
        JMP  rq_done3019
rq_ok3019:  OR   R6, R2, R2
rq_done3019: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3019
        LDI  R6, 0
rq_relu3019:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop22967: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22967
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22967: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22967
b0_add22967: ADD R2, R2, R5
        BCC  b0_nc22967
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22967: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22967
b0_next22967: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22967
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3028: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3028
        ADD  R2, R2, R5
        BCC  ms_na3028
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3028:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3028
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3028:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3028
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3030
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3030:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3031
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3031:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3032
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3032:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3029
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3029
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3029
        LDI  R6, 0x80
        JMP  rq_done3029
rq_pos3029: LDI  R6, 0x7F
        JMP  rq_done3029
rq_ok3029:  OR   R6, R2, R2
rq_done3029: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3029
        LDI  R6, 0
rq_relu3029:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop22967: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22967
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22967: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22967
b0_add22967: ADD R2, R2, R5
        BCC  b0_nc22967
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22967: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22967
b0_next22967: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22967
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3033: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3033
        ADD  R2, R2, R5
        BCC  ms_na3033
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3033:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3033
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3033:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3033
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3035
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3035:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3036
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3036:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3037
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3037:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3034
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3034
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3034
        LDI  R6, 0x80
        JMP  rq_done3034
rq_pos3034: LDI  R6, 0x7F
        JMP  rq_done3034
rq_ok3034:  OR   R6, R2, R2
rq_done3034: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3034
        LDI  R6, 0
rq_relu3034:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop22967: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22967
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22967: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22967
b0_add22967: ADD R2, R2, R5
        BCC  b0_nc22967
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22967: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22967
b0_next22967: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22967
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3038: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3038
        ADD  R2, R2, R5
        BCC  ms_na3038
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3038:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3038
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3038:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3038
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3040
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3040:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3041
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3041:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3042
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3042:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3039
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3039
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3039
        LDI  R6, 0x80
        JMP  rq_done3039
rq_pos3039: LDI  R6, 0x7F
        JMP  rq_done3039
rq_ok3039:  OR   R6, R2, R2
rq_done3039: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3039
        LDI  R6, 0
rq_relu3039:
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
