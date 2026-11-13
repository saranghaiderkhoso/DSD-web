        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 53
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 37
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 62
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 58
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
sw_loop3212: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3213: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3213
        ADD  R2, R2, R5
        BCC  ms_na3213
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3213:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3213
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3213:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3213
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3212
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3214: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3214
        ADD  R2, R2, R5
        BCC  ms_na3214
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3214:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3214
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3214:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3214
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3216
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3216:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3217
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3217:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3218
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3218:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3219
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3219:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3220
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3220:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3221
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3221:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3222
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3222:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3223
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3223:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3215
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3215
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3215
        LDI  R6, 0x80
        JMP  rq_done3215
rq_pos3215: LDI  R6, 0x7F
        JMP  rq_done3215
rq_ok3215:  OR   R6, R2, R2
rq_done3215: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3215
        LDI  R6, 0
rq_relu3215:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop3224: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3225: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3225
        ADD  R2, R2, R5
        BCC  ms_na3225
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3225:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3225
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3225:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3225
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3224
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3226: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3226
        ADD  R2, R2, R5
        BCC  ms_na3226
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3226:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3226
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3226:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3226
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3228
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3228:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3229
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3229:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3230
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3230:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3231
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3231:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3232
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3232:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3233
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3233:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3234
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3234:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3235
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3235:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3227
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3227
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3227
        LDI  R6, 0x80
        JMP  rq_done3227
rq_pos3227: LDI  R6, 0x7F
        JMP  rq_done3227
rq_ok3227:  OR   R6, R2, R2
rq_done3227: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3227
        LDI  R6, 0
rq_relu3227:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop3236: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3237: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3237
        ADD  R2, R2, R5
        BCC  ms_na3237
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3237:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3237
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3237:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3237
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3236
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3238: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3238
        ADD  R2, R2, R5
        BCC  ms_na3238
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3238:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3238
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3238:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3238
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3240
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3240:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3241
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3241:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3242
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3242:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3243
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3243:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3244
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3244:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3245
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3245:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3246
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3246:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3247
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3247:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3239
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3239
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3239
        LDI  R6, 0x80
        JMP  rq_done3239
rq_pos3239: LDI  R6, 0x7F
        JMP  rq_done3239
rq_ok3239:  OR   R6, R2, R2
rq_done3239: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3239
        LDI  R6, 0
rq_relu3239:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop3248: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3249: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3249
        ADD  R2, R2, R5
        BCC  ms_na3249
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3249:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3249
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3249:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3249
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3248
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3250: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3250
        ADD  R2, R2, R5
        BCC  ms_na3250
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3250:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3250
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3250:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3250
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3252
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3252:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3253
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3253:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3254
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3254:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3255
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3255:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3256
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3256:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3257
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3257:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3258
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3258:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3259
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3259:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3251
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3251
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3251
        LDI  R6, 0x80
        JMP  rq_done3251
rq_pos3251: LDI  R6, 0x7F
        JMP  rq_done3251
rq_ok3251:  OR   R6, R2, R2
rq_done3251: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3251
        LDI  R6, 0
rq_relu3251:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop3260: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3261: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3261
        ADD  R2, R2, R5
        BCC  ms_na3261
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3261:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3261
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3261:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3261
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3260
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3262: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3262
        ADD  R2, R2, R5
        BCC  ms_na3262
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3262:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3262
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3262:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3262
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3264
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3264:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3265
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3265:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3266
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3266:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3267
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3267:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3268
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3268:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3269
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3269:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3270
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3270:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3271
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3271:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3263
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3263
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3263
        LDI  R6, 0x80
        JMP  rq_done3263
rq_pos3263: LDI  R6, 0x7F
        JMP  rq_done3263
rq_ok3263:  OR   R6, R2, R2
rq_done3263: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3263
        LDI  R6, 0
rq_relu3263:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop3272: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3273: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3273
        ADD  R2, R2, R5
        BCC  ms_na3273
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3273:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3273
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3273:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3273
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3272
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3274: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3274
        ADD  R2, R2, R5
        BCC  ms_na3274
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3274:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3274
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3274:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3274
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3276
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3276:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3277
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3277:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3278
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3278:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3279
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3279:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3280
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3280:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3281
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3281:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3282
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3282:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3283
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3283:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3275
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3275
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3275
        LDI  R6, 0x80
        JMP  rq_done3275
rq_pos3275: LDI  R6, 0x7F
        JMP  rq_done3275
rq_ok3275:  OR   R6, R2, R2
rq_done3275: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3275
        LDI  R6, 0
rq_relu3275:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop3284: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3285: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3285
        ADD  R2, R2, R5
        BCC  ms_na3285
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3285:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3285
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3285:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3285
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3284
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3286: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3286
        ADD  R2, R2, R5
        BCC  ms_na3286
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3286:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3286
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3286:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3286
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3288
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3288:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3289
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3289:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3290
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3290:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3287
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3287
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3287
        LDI  R6, 0x80
        JMP  rq_done3287
rq_pos3287: LDI  R6, 0x7F
        JMP  rq_done3287
rq_ok3287:  OR   R6, R2, R2
rq_done3287: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3287
        LDI  R6, 0
rq_relu3287:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop3291: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3292: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3292
        ADD  R2, R2, R5
        BCC  ms_na3292
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3292:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3292
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3292:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3292
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3291
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3293: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3293
        ADD  R2, R2, R5
        BCC  ms_na3293
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3293:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3293
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3293:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3293
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3295
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3295:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3296
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3296:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3297
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3297:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3294
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3294
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3294
        LDI  R6, 0x80
        JMP  rq_done3294
rq_pos3294: LDI  R6, 0x7F
        JMP  rq_done3294
rq_ok3294:  OR   R6, R2, R2
rq_done3294: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3294
        LDI  R6, 0
rq_relu3294:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop3298: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3299: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3299
        ADD  R2, R2, R5
        BCC  ms_na3299
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3299:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3299
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3299:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3299
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3298
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3300: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3300
        ADD  R2, R2, R5
        BCC  ms_na3300
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3300:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3300
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3300:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3300
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3302
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3302:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3303
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3303:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3304
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3304:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3301
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3301
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3301
        LDI  R6, 0x80
        JMP  rq_done3301
rq_pos3301: LDI  R6, 0x7F
        JMP  rq_done3301
rq_ok3301:  OR   R6, R2, R2
rq_done3301: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3301
        LDI  R6, 0
rq_relu3301:
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
