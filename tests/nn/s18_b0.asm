        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 74
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 42
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 99
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 111
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
b0_loop3136: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3136
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3136: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3136
b0_add3136: ADD  R2, R2, R5
        BCC  b0_nc3136
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3136:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3136
b0_next3136: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3136
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3137: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3137
        ADD  R2, R2, R5
        BCC  ms_na3137
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3137:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3137
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3137:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3137
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3139
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3139:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3140
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3140:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3141
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3141:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3142
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3142:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3143
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3143:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3144
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3144:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3145
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3145:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3146
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3146:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3138
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3138
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3138
        LDI  R6, 0x80
        JMP  rq_done3138
rq_pos3138: LDI  R6, 0x7F
        JMP  rq_done3138
rq_ok3138:  OR   R6, R2, R2
rq_done3138: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3138
        LDI  R6, 0
rq_relu3138:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop3136: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3136
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3136: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3136
b0_add3136: ADD  R2, R2, R5
        BCC  b0_nc3136
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3136:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3136
b0_next3136: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3136
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3147: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3147
        ADD  R2, R2, R5
        BCC  ms_na3147
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3147:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3147
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3147:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3147
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3149
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3149:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3150
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3150:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3151
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3151:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3152
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3152:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3153
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3153:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3154
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3154:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3155
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3155:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3156
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3156:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3148
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3148
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3148
        LDI  R6, 0x80
        JMP  rq_done3148
rq_pos3148: LDI  R6, 0x7F
        JMP  rq_done3148
rq_ok3148:  OR   R6, R2, R2
rq_done3148: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3148
        LDI  R6, 0
rq_relu3148:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop3136: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3136
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3136: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3136
b0_add3136: ADD  R2, R2, R5
        BCC  b0_nc3136
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3136:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3136
b0_next3136: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3136
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3157: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3157
        ADD  R2, R2, R5
        BCC  ms_na3157
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3157:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3157
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3157:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3157
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3159
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3159:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3160
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3160:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3161
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3161:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3162
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3162:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3163
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3163:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3164
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3164:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3165
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3165:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3166
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3166:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3158
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3158
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3158
        LDI  R6, 0x80
        JMP  rq_done3158
rq_pos3158: LDI  R6, 0x7F
        JMP  rq_done3158
rq_ok3158:  OR   R6, R2, R2
rq_done3158: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3158
        LDI  R6, 0
rq_relu3158:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop3136: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3136
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3136: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3136
b0_add3136: ADD  R2, R2, R5
        BCC  b0_nc3136
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3136:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3136
b0_next3136: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3136
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3167: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3167
        ADD  R2, R2, R5
        BCC  ms_na3167
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3167:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3167
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3167:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3167
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3169
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3169:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3170
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3170:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3171
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3171:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3172
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3172:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3173
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3173:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3174
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3174:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3175
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3175:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3176
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3176:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3168
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3168
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3168
        LDI  R6, 0x80
        JMP  rq_done3168
rq_pos3168: LDI  R6, 0x7F
        JMP  rq_done3168
rq_ok3168:  OR   R6, R2, R2
rq_done3168: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3168
        LDI  R6, 0
rq_relu3168:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop3136: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3136
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3136: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3136
b0_add3136: ADD  R2, R2, R5
        BCC  b0_nc3136
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3136:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3136
b0_next3136: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3136
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3177: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3177
        ADD  R2, R2, R5
        BCC  ms_na3177
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3177:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3177
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3177:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3177
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3179
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3179:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3180
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3180:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3181
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3181:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3182
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3182:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3183
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3183:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3184
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3184:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3185
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3185:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3186
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3186:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3178
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3178
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3178
        LDI  R6, 0x80
        JMP  rq_done3178
rq_pos3178: LDI  R6, 0x7F
        JMP  rq_done3178
rq_ok3178:  OR   R6, R2, R2
rq_done3178: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3178
        LDI  R6, 0
rq_relu3178:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop3136: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3136
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3136: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3136
b0_add3136: ADD  R2, R2, R5
        BCC  b0_nc3136
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3136:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3136
b0_next3136: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3136
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3187: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3187
        ADD  R2, R2, R5
        BCC  ms_na3187
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3187:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3187
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3187:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3187
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3189
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3189:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3190
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3190:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3191
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3191:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3192
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3192:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3193
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3193:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3194
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3194:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3195
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3195:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3196
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3196:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3188
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3188
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3188
        LDI  R6, 0x80
        JMP  rq_done3188
rq_pos3188: LDI  R6, 0x7F
        JMP  rq_done3188
rq_ok3188:  OR   R6, R2, R2
rq_done3188: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3188
        LDI  R6, 0
rq_relu3188:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop23136: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23136
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23136: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23136
b0_add23136: ADD R2, R2, R5
        BCC  b0_nc23136
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23136: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23136
b0_next23136: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23136
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3197: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3197
        ADD  R2, R2, R5
        BCC  ms_na3197
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3197:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3197
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3197:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3197
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3199
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3199:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3200
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3200:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3201
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3201:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3198
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3198
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3198
        LDI  R6, 0x80
        JMP  rq_done3198
rq_pos3198: LDI  R6, 0x7F
        JMP  rq_done3198
rq_ok3198:  OR   R6, R2, R2
rq_done3198: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3198
        LDI  R6, 0
rq_relu3198:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop23136: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23136
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23136: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23136
b0_add23136: ADD R2, R2, R5
        BCC  b0_nc23136
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23136: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23136
b0_next23136: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23136
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3202: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3202
        ADD  R2, R2, R5
        BCC  ms_na3202
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3202:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3202
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3202:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3202
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3204
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3204:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3205
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3205:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3206
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3206:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3203
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3203
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3203
        LDI  R6, 0x80
        JMP  rq_done3203
rq_pos3203: LDI  R6, 0x7F
        JMP  rq_done3203
rq_ok3203:  OR   R6, R2, R2
rq_done3203: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3203
        LDI  R6, 0
rq_relu3203:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop23136: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23136
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23136: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23136
b0_add23136: ADD R2, R2, R5
        BCC  b0_nc23136
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23136: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23136
b0_next23136: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23136
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3207: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3207
        ADD  R2, R2, R5
        BCC  ms_na3207
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3207:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3207
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3207:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3207
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3209
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3209:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3210
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3210:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3211
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3211:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3208
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3208
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3208
        LDI  R6, 0x80
        JMP  rq_done3208
rq_pos3208: LDI  R6, 0x7F
        JMP  rq_done3208
rq_ok3208:  OR   R6, R2, R2
rq_done3208: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3208
        LDI  R6, 0
rq_relu3208:
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
