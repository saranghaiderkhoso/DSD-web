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
b0_loop1108: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1108
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1108: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1108
b0_add1108: ADD  R2, R2, R5
        BCC  b0_nc1108
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1108:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1108
b0_next1108: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1108
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1109: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1109
        ADD  R2, R2, R5
        BCC  ms_na1109
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1109:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1109
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1109:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1109
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1111
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1111:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1112
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1112:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1113
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1113:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1114
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1114:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1115
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1115:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1116
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1116:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1117
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1117:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1118
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1118:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1110
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1110
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1110
        LDI  R6, 0x80
        JMP  rq_done1110
rq_pos1110: LDI  R6, 0x7F
        JMP  rq_done1110
rq_ok1110:  OR   R6, R2, R2
rq_done1110: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1110
        LDI  R6, 0
rq_relu1110:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop1108: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1108
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1108: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1108
b0_add1108: ADD  R2, R2, R5
        BCC  b0_nc1108
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1108:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1108
b0_next1108: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1108
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1119: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1119
        ADD  R2, R2, R5
        BCC  ms_na1119
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1119:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1119
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1119:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1119
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1121
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1121:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1122
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1122:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1123
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1123:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1124
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1124:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1125
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1125:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1126
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1126:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1127
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1127:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1128
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1128:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1120
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1120
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1120
        LDI  R6, 0x80
        JMP  rq_done1120
rq_pos1120: LDI  R6, 0x7F
        JMP  rq_done1120
rq_ok1120:  OR   R6, R2, R2
rq_done1120: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1120
        LDI  R6, 0
rq_relu1120:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop1108: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1108
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1108: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1108
b0_add1108: ADD  R2, R2, R5
        BCC  b0_nc1108
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1108:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1108
b0_next1108: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1108
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1129: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1129
        ADD  R2, R2, R5
        BCC  ms_na1129
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1129:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1129
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1129:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1129
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1131
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1131:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1132
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1132:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1133
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1133:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1134
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1134:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1135
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1135:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1136
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1136:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1137
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1137:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1138
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1138:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1130
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1130
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1130
        LDI  R6, 0x80
        JMP  rq_done1130
rq_pos1130: LDI  R6, 0x7F
        JMP  rq_done1130
rq_ok1130:  OR   R6, R2, R2
rq_done1130: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1130
        LDI  R6, 0
rq_relu1130:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop1108: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1108
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1108: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1108
b0_add1108: ADD  R2, R2, R5
        BCC  b0_nc1108
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1108:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1108
b0_next1108: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1108
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1139: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1139
        ADD  R2, R2, R5
        BCC  ms_na1139
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1139:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1139
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1139:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1139
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1141
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1141:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1142
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1142:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1143
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1143:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1144
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1144:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1145
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1145:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1146
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1146:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1147
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1147:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1148
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1148:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1140
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1140
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1140
        LDI  R6, 0x80
        JMP  rq_done1140
rq_pos1140: LDI  R6, 0x7F
        JMP  rq_done1140
rq_ok1140:  OR   R6, R2, R2
rq_done1140: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1140
        LDI  R6, 0
rq_relu1140:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop1108: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1108
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1108: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1108
b0_add1108: ADD  R2, R2, R5
        BCC  b0_nc1108
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1108:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1108
b0_next1108: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1108
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1149: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1149
        ADD  R2, R2, R5
        BCC  ms_na1149
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1149:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1149
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1149:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1149
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1151
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1151:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1152
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1152:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1153
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1153:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1154
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1154:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1155
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1155:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1156
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1156:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1157
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1157:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1158
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1158:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1150
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1150
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1150
        LDI  R6, 0x80
        JMP  rq_done1150
rq_pos1150: LDI  R6, 0x7F
        JMP  rq_done1150
rq_ok1150:  OR   R6, R2, R2
rq_done1150: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1150
        LDI  R6, 0
rq_relu1150:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop1108: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1108
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1108: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1108
b0_add1108: ADD  R2, R2, R5
        BCC  b0_nc1108
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1108:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1108
b0_next1108: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1108
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1159: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1159
        ADD  R2, R2, R5
        BCC  ms_na1159
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1159:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1159
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1159:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1159
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1161
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1161:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1162
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1162:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1163
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1163:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1164
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1164:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1165
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1165:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1166
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1166:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1167
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1167:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1168
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1168:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1160
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1160
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1160
        LDI  R6, 0x80
        JMP  rq_done1160
rq_pos1160: LDI  R6, 0x7F
        JMP  rq_done1160
rq_ok1160:  OR   R6, R2, R2
rq_done1160: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1160
        LDI  R6, 0
rq_relu1160:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop21108: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21108
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21108: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21108
b0_add21108: ADD R2, R2, R5
        BCC  b0_nc21108
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21108: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21108
b0_next21108: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21108
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1169: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1169
        ADD  R2, R2, R5
        BCC  ms_na1169
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1169:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1169
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1169:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1169
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1171
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1171:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1172
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1172:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1173
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1173:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1170
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1170
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1170
        LDI  R6, 0x80
        JMP  rq_done1170
rq_pos1170: LDI  R6, 0x7F
        JMP  rq_done1170
rq_ok1170:  OR   R6, R2, R2
rq_done1170: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1170
        LDI  R6, 0
rq_relu1170:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop21108: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21108
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21108: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21108
b0_add21108: ADD R2, R2, R5
        BCC  b0_nc21108
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21108: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21108
b0_next21108: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21108
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1174: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1174
        ADD  R2, R2, R5
        BCC  ms_na1174
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1174:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1174
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1174:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1174
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1176
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1176:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1177
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1177:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1178
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1178:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1175
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1175
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1175
        LDI  R6, 0x80
        JMP  rq_done1175
rq_pos1175: LDI  R6, 0x7F
        JMP  rq_done1175
rq_ok1175:  OR   R6, R2, R2
rq_done1175: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1175
        LDI  R6, 0
rq_relu1175:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop21108: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21108
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21108: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21108
b0_add21108: ADD R2, R2, R5
        BCC  b0_nc21108
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21108: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21108
b0_next21108: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21108
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1179: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1179
        ADD  R2, R2, R5
        BCC  ms_na1179
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1179:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1179
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1179:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1179
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1181
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1181:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1182
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1182:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1183
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1183:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1180
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1180
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1180
        LDI  R6, 0x80
        JMP  rq_done1180
rq_pos1180: LDI  R6, 0x7F
        JMP  rq_done1180
rq_ok1180:  OR   R6, R2, R2
rq_done1180: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1180
        LDI  R6, 0
rq_relu1180:
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
