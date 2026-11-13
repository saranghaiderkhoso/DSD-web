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
b0_loop3305: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3305
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3305: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3305
b0_add3305: ADD  R2, R2, R5
        BCC  b0_nc3305
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3305:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3305
b0_next3305: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3305
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3306: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3306
        ADD  R2, R2, R5
        BCC  ms_na3306
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3306:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3306
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3306:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3306
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3308
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3308:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3309
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3309:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3310
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3310:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3311
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3311:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3312
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3312:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3313
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3313:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3314
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3314:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3315
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3315:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3307
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3307
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3307
        LDI  R6, 0x80
        JMP  rq_done3307
rq_pos3307: LDI  R6, 0x7F
        JMP  rq_done3307
rq_ok3307:  OR   R6, R2, R2
rq_done3307: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3307
        LDI  R6, 0
rq_relu3307:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop3305: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3305
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3305: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3305
b0_add3305: ADD  R2, R2, R5
        BCC  b0_nc3305
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3305:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3305
b0_next3305: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3305
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3316: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3316
        ADD  R2, R2, R5
        BCC  ms_na3316
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3316:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3316
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3316:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3316
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3318
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3318:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3319
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3319:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3320
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3320:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3321
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3321:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3322
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3322:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3323
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3323:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3324
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3324:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3325
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3325:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3317
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3317
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3317
        LDI  R6, 0x80
        JMP  rq_done3317
rq_pos3317: LDI  R6, 0x7F
        JMP  rq_done3317
rq_ok3317:  OR   R6, R2, R2
rq_done3317: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3317
        LDI  R6, 0
rq_relu3317:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop3305: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3305
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3305: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3305
b0_add3305: ADD  R2, R2, R5
        BCC  b0_nc3305
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3305:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3305
b0_next3305: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3305
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3326: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3326
        ADD  R2, R2, R5
        BCC  ms_na3326
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3326:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3326
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3326:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3326
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3328
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3328:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3329
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3329:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3330
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3330:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3331
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3331:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3332
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3332:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3333
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3333:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3334
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3334:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3335
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3335:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3327
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3327
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3327
        LDI  R6, 0x80
        JMP  rq_done3327
rq_pos3327: LDI  R6, 0x7F
        JMP  rq_done3327
rq_ok3327:  OR   R6, R2, R2
rq_done3327: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3327
        LDI  R6, 0
rq_relu3327:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop3305: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3305
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3305: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3305
b0_add3305: ADD  R2, R2, R5
        BCC  b0_nc3305
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3305:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3305
b0_next3305: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3305
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3336: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3336
        ADD  R2, R2, R5
        BCC  ms_na3336
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3336:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3336
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3336:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3336
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3338
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3338:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3339
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3339:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3340
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3340:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3341
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3341:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3342
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3342:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3343
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3343:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3344
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3344:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3345
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3345:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3337
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3337
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3337
        LDI  R6, 0x80
        JMP  rq_done3337
rq_pos3337: LDI  R6, 0x7F
        JMP  rq_done3337
rq_ok3337:  OR   R6, R2, R2
rq_done3337: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3337
        LDI  R6, 0
rq_relu3337:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop3305: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3305
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3305: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3305
b0_add3305: ADD  R2, R2, R5
        BCC  b0_nc3305
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3305:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3305
b0_next3305: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3305
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3346: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3346
        ADD  R2, R2, R5
        BCC  ms_na3346
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3346:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3346
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3346:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3346
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3348
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3348:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3349
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3349:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3350
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3350:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3351
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3351:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3352
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3352:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3353
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3353:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3354
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3354:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3355
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3355:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3347
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3347
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3347
        LDI  R6, 0x80
        JMP  rq_done3347
rq_pos3347: LDI  R6, 0x7F
        JMP  rq_done3347
rq_ok3347:  OR   R6, R2, R2
rq_done3347: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3347
        LDI  R6, 0
rq_relu3347:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop3305: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos3305
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos3305: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next3305
b0_add3305: ADD  R2, R2, R5
        BCC  b0_nc3305
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc3305:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add3305
b0_next3305: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop3305
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3356: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3356
        ADD  R2, R2, R5
        BCC  ms_na3356
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3356:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3356
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3356:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3356
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3358
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3358:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3359
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3359:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3360
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3360:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3361
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3361:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3362
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3362:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3363
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3363:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3364
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3364:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3365
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3365:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3357
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3357
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3357
        LDI  R6, 0x80
        JMP  rq_done3357
rq_pos3357: LDI  R6, 0x7F
        JMP  rq_done3357
rq_ok3357:  OR   R6, R2, R2
rq_done3357: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3357
        LDI  R6, 0
rq_relu3357:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop23305: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23305
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23305: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23305
b0_add23305: ADD R2, R2, R5
        BCC  b0_nc23305
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23305: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23305
b0_next23305: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23305
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3366: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3366
        ADD  R2, R2, R5
        BCC  ms_na3366
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3366:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3366
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3366:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3366
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3368
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3368:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3369
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3369:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3370
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3370:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3367
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3367
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3367
        LDI  R6, 0x80
        JMP  rq_done3367
rq_pos3367: LDI  R6, 0x7F
        JMP  rq_done3367
rq_ok3367:  OR   R6, R2, R2
rq_done3367: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3367
        LDI  R6, 0
rq_relu3367:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop23305: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23305
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23305: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23305
b0_add23305: ADD R2, R2, R5
        BCC  b0_nc23305
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23305: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23305
b0_next23305: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23305
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3371: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3371
        ADD  R2, R2, R5
        BCC  ms_na3371
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3371:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3371
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3371:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3371
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3373
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3373:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3374
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3374:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3375
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3375:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3372
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3372
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3372
        LDI  R6, 0x80
        JMP  rq_done3372
rq_pos3372: LDI  R6, 0x7F
        JMP  rq_done3372
rq_ok3372:  OR   R6, R2, R2
rq_done3372: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3372
        LDI  R6, 0
rq_relu3372:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop23305: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos23305
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos23305: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next23305
b0_add23305: ADD R2, R2, R5
        BCC  b0_nc23305
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc23305: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add23305
b0_next23305: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop23305
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3376: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3376
        ADD  R2, R2, R5
        BCC  ms_na3376
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3376:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3376
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3376:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3376
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3378
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3378:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3379
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3379:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3380
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3380:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3377
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3377
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3377
        LDI  R6, 0x80
        JMP  rq_done3377
rq_pos3377: LDI  R6, 0x7F
        JMP  rq_done3377
rq_ok3377:  OR   R6, R2, R2
rq_done3377: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3377
        LDI  R6, 0
rq_relu3377:
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
