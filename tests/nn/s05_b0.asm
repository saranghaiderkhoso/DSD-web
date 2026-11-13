        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 60
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 11
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 86
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
b0_loop939: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos939
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos939: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next939
b0_add939: ADD  R2, R2, R5
        BCC  b0_nc939
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc939:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add939
b0_next939: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop939
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop940: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na940
        ADD  R2, R2, R5
        BCC  ms_na940
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na940:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc940
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc940:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop940
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc942
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc942:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc943
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc943:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc944
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc944:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc945
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc945:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc946
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc946:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc947
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc947:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc948
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc948:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc949
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc949:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok941
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok941
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos941
        LDI  R6, 0x80
        JMP  rq_done941
rq_pos941: LDI  R6, 0x7F
        JMP  rq_done941
rq_ok941:  OR   R6, R2, R2
rq_done941: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu941
        LDI  R6, 0
rq_relu941:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop939: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos939
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos939: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next939
b0_add939: ADD  R2, R2, R5
        BCC  b0_nc939
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc939:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add939
b0_next939: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop939
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop950: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na950
        ADD  R2, R2, R5
        BCC  ms_na950
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na950:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc950
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc950:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop950
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc952
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc952:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc953
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc953:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc954
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc954:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc955
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc955:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc956
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc956:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc957
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc957:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc958
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc958:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc959
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc959:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok951
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok951
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos951
        LDI  R6, 0x80
        JMP  rq_done951
rq_pos951: LDI  R6, 0x7F
        JMP  rq_done951
rq_ok951:  OR   R6, R2, R2
rq_done951: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu951
        LDI  R6, 0
rq_relu951:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop939: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos939
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos939: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next939
b0_add939: ADD  R2, R2, R5
        BCC  b0_nc939
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc939:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add939
b0_next939: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop939
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop960: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na960
        ADD  R2, R2, R5
        BCC  ms_na960
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na960:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc960
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc960:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop960
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc962
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc962:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc963
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc963:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc964
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc964:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc965
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc965:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc966
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc966:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc967
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc967:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc968
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc968:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc969
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc969:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok961
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok961
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos961
        LDI  R6, 0x80
        JMP  rq_done961
rq_pos961: LDI  R6, 0x7F
        JMP  rq_done961
rq_ok961:  OR   R6, R2, R2
rq_done961: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu961
        LDI  R6, 0
rq_relu961:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop939: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos939
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos939: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next939
b0_add939: ADD  R2, R2, R5
        BCC  b0_nc939
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc939:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add939
b0_next939: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop939
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop970: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na970
        ADD  R2, R2, R5
        BCC  ms_na970
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na970:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc970
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc970:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop970
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc972
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc972:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc973
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc973:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc974
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc974:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc975
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc975:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc976
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc976:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc977
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc977:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc978
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc978:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc979
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc979:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok971
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok971
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos971
        LDI  R6, 0x80
        JMP  rq_done971
rq_pos971: LDI  R6, 0x7F
        JMP  rq_done971
rq_ok971:  OR   R6, R2, R2
rq_done971: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu971
        LDI  R6, 0
rq_relu971:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop939: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos939
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos939: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next939
b0_add939: ADD  R2, R2, R5
        BCC  b0_nc939
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc939:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add939
b0_next939: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop939
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop980: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na980
        ADD  R2, R2, R5
        BCC  ms_na980
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na980:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc980
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc980:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop980
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc982
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc982:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc983
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc983:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc984
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc984:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc985
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc985:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc986
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc986:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc987
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc987:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc988
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc988:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc989
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc989:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok981
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok981
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos981
        LDI  R6, 0x80
        JMP  rq_done981
rq_pos981: LDI  R6, 0x7F
        JMP  rq_done981
rq_ok981:  OR   R6, R2, R2
rq_done981: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu981
        LDI  R6, 0
rq_relu981:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop939: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos939
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos939: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next939
b0_add939: ADD  R2, R2, R5
        BCC  b0_nc939
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc939:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add939
b0_next939: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop939
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop990: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na990
        ADD  R2, R2, R5
        BCC  ms_na990
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na990:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc990
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc990:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop990
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc992
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc992:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc993
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc993:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc994
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc994:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc995
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc995:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc996
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc996:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc997
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc997:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc998
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc998:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc999
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc999:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok991
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok991
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos991
        LDI  R6, 0x80
        JMP  rq_done991
rq_pos991: LDI  R6, 0x7F
        JMP  rq_done991
rq_ok991:  OR   R6, R2, R2
rq_done991: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu991
        LDI  R6, 0
rq_relu991:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop2939: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2939
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2939: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2939
b0_add2939: ADD R2, R2, R5
        BCC  b0_nc2939
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2939: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2939
b0_next2939: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2939
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1000: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1000
        ADD  R2, R2, R5
        BCC  ms_na1000
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1000:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1000
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1000:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1000
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1002
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1002:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1003
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1003:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1004
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1004:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1001
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1001
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1001
        LDI  R6, 0x80
        JMP  rq_done1001
rq_pos1001: LDI  R6, 0x7F
        JMP  rq_done1001
rq_ok1001:  OR   R6, R2, R2
rq_done1001: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1001
        LDI  R6, 0
rq_relu1001:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop2939: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2939
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2939: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2939
b0_add2939: ADD R2, R2, R5
        BCC  b0_nc2939
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2939: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2939
b0_next2939: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2939
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1005: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1005
        ADD  R2, R2, R5
        BCC  ms_na1005
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1005:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1005
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1005:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1005
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1007
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1007:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1008
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1008:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1009
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1009:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1006
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1006
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1006
        LDI  R6, 0x80
        JMP  rq_done1006
rq_pos1006: LDI  R6, 0x7F
        JMP  rq_done1006
rq_ok1006:  OR   R6, R2, R2
rq_done1006: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1006
        LDI  R6, 0
rq_relu1006:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop2939: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2939
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2939: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2939
b0_add2939: ADD R2, R2, R5
        BCC  b0_nc2939
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2939: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2939
b0_next2939: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2939
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1010: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1010
        ADD  R2, R2, R5
        BCC  ms_na1010
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1010:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1010
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1010:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1010
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1012
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1012:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1013
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1013:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1014
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1014:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1011
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1011
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1011
        LDI  R6, 0x80
        JMP  rq_done1011
rq_pos1011: LDI  R6, 0x7F
        JMP  rq_done1011
rq_ok1011:  OR   R6, R2, R2
rq_done1011: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1011
        LDI  R6, 0
rq_relu1011:
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
