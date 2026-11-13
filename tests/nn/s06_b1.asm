        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 11
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 58
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 11
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 5
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
sw_loop1015: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1016: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1016
        ADD  R2, R2, R5
        BCC  ms_na1016
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1016:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1016
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1016:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1016
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1015
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1017: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1017
        ADD  R2, R2, R5
        BCC  ms_na1017
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1017:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1017
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1017:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1017
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1019
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1019:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1020
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1020:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1021
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1021:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1022
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1022:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1023
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1023:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1024
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1024:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1025
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1025:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1026
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1026:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1018
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1018
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1018
        LDI  R6, 0x80
        JMP  rq_done1018
rq_pos1018: LDI  R6, 0x7F
        JMP  rq_done1018
rq_ok1018:  OR   R6, R2, R2
rq_done1018: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1018
        LDI  R6, 0
rq_relu1018:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop1027: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1028: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1028
        ADD  R2, R2, R5
        BCC  ms_na1028
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1028:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1028
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1028:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1028
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1027
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1029: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1029
        ADD  R2, R2, R5
        BCC  ms_na1029
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1029:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1029
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1029:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1029
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1031
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1031:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1032
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1032:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1033
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1033:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1034
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1034:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1035
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1035:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1036
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1036:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1037
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1037:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1038
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1038:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1030
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1030
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1030
        LDI  R6, 0x80
        JMP  rq_done1030
rq_pos1030: LDI  R6, 0x7F
        JMP  rq_done1030
rq_ok1030:  OR   R6, R2, R2
rq_done1030: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1030
        LDI  R6, 0
rq_relu1030:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop1039: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1040: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1040
        ADD  R2, R2, R5
        BCC  ms_na1040
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1040:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1040
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1040:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1040
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1039
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1041: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1041
        ADD  R2, R2, R5
        BCC  ms_na1041
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1041:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1041
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1041:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1041
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1043
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1043:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1044
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1044:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1045
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1045:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1046
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1046:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1047
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1047:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1048
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1048:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1049
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1049:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1050
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1050:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1042
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1042
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1042
        LDI  R6, 0x80
        JMP  rq_done1042
rq_pos1042: LDI  R6, 0x7F
        JMP  rq_done1042
rq_ok1042:  OR   R6, R2, R2
rq_done1042: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1042
        LDI  R6, 0
rq_relu1042:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop1051: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1052: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1052
        ADD  R2, R2, R5
        BCC  ms_na1052
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1052:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1052
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1052:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1052
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1051
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1053: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1053
        ADD  R2, R2, R5
        BCC  ms_na1053
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1053:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1053
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1053:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1053
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1055
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1055:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1056
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1056:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1057
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1057:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1058
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1058:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1059
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1059:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1060
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1060:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1061
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1061:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1062
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1062:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1054
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1054
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1054
        LDI  R6, 0x80
        JMP  rq_done1054
rq_pos1054: LDI  R6, 0x7F
        JMP  rq_done1054
rq_ok1054:  OR   R6, R2, R2
rq_done1054: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1054
        LDI  R6, 0
rq_relu1054:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop1063: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1064: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1064
        ADD  R2, R2, R5
        BCC  ms_na1064
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1064:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1064
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1064:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1064
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1063
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1065: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1065
        ADD  R2, R2, R5
        BCC  ms_na1065
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1065:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1065
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1065:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1065
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1067
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1067:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1068
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1068:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1069
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1069:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1070
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1070:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1071
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1071:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1072
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1072:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1073
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1073:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1074
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1074:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1066
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1066
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1066
        LDI  R6, 0x80
        JMP  rq_done1066
rq_pos1066: LDI  R6, 0x7F
        JMP  rq_done1066
rq_ok1066:  OR   R6, R2, R2
rq_done1066: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1066
        LDI  R6, 0
rq_relu1066:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop1075: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1076: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1076
        ADD  R2, R2, R5
        BCC  ms_na1076
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1076:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1076
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1076:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1076
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1075
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1077: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1077
        ADD  R2, R2, R5
        BCC  ms_na1077
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1077:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1077
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1077:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1077
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1079
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1079:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1080
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1080:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1081
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1081:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1082
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1082:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1083
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1083:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1084
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1084:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1085
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1085:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1086
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1086:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1078
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1078
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1078
        LDI  R6, 0x80
        JMP  rq_done1078
rq_pos1078: LDI  R6, 0x7F
        JMP  rq_done1078
rq_ok1078:  OR   R6, R2, R2
rq_done1078: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1078
        LDI  R6, 0
rq_relu1078:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop1087: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1088: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1088
        ADD  R2, R2, R5
        BCC  ms_na1088
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1088:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1088
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1088:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1088
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1087
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1089: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1089
        ADD  R2, R2, R5
        BCC  ms_na1089
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1089:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1089
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1089:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1089
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1091
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1091:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1092
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1092:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1093
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1093:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1090
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1090
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1090
        LDI  R6, 0x80
        JMP  rq_done1090
rq_pos1090: LDI  R6, 0x7F
        JMP  rq_done1090
rq_ok1090:  OR   R6, R2, R2
rq_done1090: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1090
        LDI  R6, 0
rq_relu1090:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop1094: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1095: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1095
        ADD  R2, R2, R5
        BCC  ms_na1095
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1095:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1095
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1095:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1095
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1094
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1096: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1096
        ADD  R2, R2, R5
        BCC  ms_na1096
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1096:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1096
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1096:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1096
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1098
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1098:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1099
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1099:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1100
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1100:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1097
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1097
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1097
        LDI  R6, 0x80
        JMP  rq_done1097
rq_pos1097: LDI  R6, 0x7F
        JMP  rq_done1097
rq_ok1097:  OR   R6, R2, R2
rq_done1097: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1097
        LDI  R6, 0
rq_relu1097:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop1101: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1102: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1102
        ADD  R2, R2, R5
        BCC  ms_na1102
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1102:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1102
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1102:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1102
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1101
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1103: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1103
        ADD  R2, R2, R5
        BCC  ms_na1103
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1103:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1103
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1103:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1103
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1105
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1105:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1106
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1106:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1107
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1107:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1104
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1104
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1104
        LDI  R6, 0x80
        JMP  rq_done1104
rq_pos1104: LDI  R6, 0x7F
        JMP  rq_done1104
rq_ok1104:  OR   R6, R2, R2
rq_done1104: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1104
        LDI  R6, 0
rq_relu1104:
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
