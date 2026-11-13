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
        LDI  R3, 88
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 95
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
sw_loop3381: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3382: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3382
        ADD  R2, R2, R5
        BCC  ms_na3382
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3382:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3382
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3382:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3382
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3381
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3383: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3383
        ADD  R2, R2, R5
        BCC  ms_na3383
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3383:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3383
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3383:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3383
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3385
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3385:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3386
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3386:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3387
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3387:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3388
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3388:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3389
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3389:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3390
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3390:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3391
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3391:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3392
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3392:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3384
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3384
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3384
        LDI  R6, 0x80
        JMP  rq_done3384
rq_pos3384: LDI  R6, 0x7F
        JMP  rq_done3384
rq_ok3384:  OR   R6, R2, R2
rq_done3384: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3384
        LDI  R6, 0
rq_relu3384:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop3393: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3394: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3394
        ADD  R2, R2, R5
        BCC  ms_na3394
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3394:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3394
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3394:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3394
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3393
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3395: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3395
        ADD  R2, R2, R5
        BCC  ms_na3395
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3395:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3395
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3395:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3395
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3397
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3397:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3398
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3398:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3399
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3399:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3400
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3400:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3401
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3401:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3402
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3402:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3403
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3403:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3404
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3404:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3396
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3396
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3396
        LDI  R6, 0x80
        JMP  rq_done3396
rq_pos3396: LDI  R6, 0x7F
        JMP  rq_done3396
rq_ok3396:  OR   R6, R2, R2
rq_done3396: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3396
        LDI  R6, 0
rq_relu3396:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop3405: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3406: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3406
        ADD  R2, R2, R5
        BCC  ms_na3406
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3406:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3406
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3406:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3406
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3405
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3407: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3407
        ADD  R2, R2, R5
        BCC  ms_na3407
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3407:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3407
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3407:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3407
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3409
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3409:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3410
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3410:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3411
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3411:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3412
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3412:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3413
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3413:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3414
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3414:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3415
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3415:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3416
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3416:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3408
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3408
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3408
        LDI  R6, 0x80
        JMP  rq_done3408
rq_pos3408: LDI  R6, 0x7F
        JMP  rq_done3408
rq_ok3408:  OR   R6, R2, R2
rq_done3408: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3408
        LDI  R6, 0
rq_relu3408:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop3417: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3418: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3418
        ADD  R2, R2, R5
        BCC  ms_na3418
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3418:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3418
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3418:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3418
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3417
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3419: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3419
        ADD  R2, R2, R5
        BCC  ms_na3419
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3419:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3419
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3419:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3419
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3421
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3421:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3422
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3422:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3423
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3423:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3424
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3424:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3425
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3425:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3426
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3426:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3427
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3427:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3428
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3428:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3420
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3420
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3420
        LDI  R6, 0x80
        JMP  rq_done3420
rq_pos3420: LDI  R6, 0x7F
        JMP  rq_done3420
rq_ok3420:  OR   R6, R2, R2
rq_done3420: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3420
        LDI  R6, 0
rq_relu3420:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop3429: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3430: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3430
        ADD  R2, R2, R5
        BCC  ms_na3430
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3430:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3430
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3430:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3430
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3429
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3431: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3431
        ADD  R2, R2, R5
        BCC  ms_na3431
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3431:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3431
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3431:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3431
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3433
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3433:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3434
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3434:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3435
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3435:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3436
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3436:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3437
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3437:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3438
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3438:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3439
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3439:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3440
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3440:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3432
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3432
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3432
        LDI  R6, 0x80
        JMP  rq_done3432
rq_pos3432: LDI  R6, 0x7F
        JMP  rq_done3432
rq_ok3432:  OR   R6, R2, R2
rq_done3432: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3432
        LDI  R6, 0
rq_relu3432:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop3441: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3442: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3442
        ADD  R2, R2, R5
        BCC  ms_na3442
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3442:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3442
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3442:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3442
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3441
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3443: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3443
        ADD  R2, R2, R5
        BCC  ms_na3443
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3443:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3443
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3443:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3443
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3445
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3445:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3446
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3446:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3447
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3447:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3448
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3448:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3449
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3449:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3450
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3450:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3451
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3451:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3452
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3452:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3444
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3444
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3444
        LDI  R6, 0x80
        JMP  rq_done3444
rq_pos3444: LDI  R6, 0x7F
        JMP  rq_done3444
rq_ok3444:  OR   R6, R2, R2
rq_done3444: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3444
        LDI  R6, 0
rq_relu3444:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop3453: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3454: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3454
        ADD  R2, R2, R5
        BCC  ms_na3454
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3454:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3454
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3454:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3454
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3453
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3455: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3455
        ADD  R2, R2, R5
        BCC  ms_na3455
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3455:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3455
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3455:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3455
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3457
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3457:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3458
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3458:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3459
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3459:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3456
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3456
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3456
        LDI  R6, 0x80
        JMP  rq_done3456
rq_pos3456: LDI  R6, 0x7F
        JMP  rq_done3456
rq_ok3456:  OR   R6, R2, R2
rq_done3456: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3456
        LDI  R6, 0
rq_relu3456:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop3460: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3461: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3461
        ADD  R2, R2, R5
        BCC  ms_na3461
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3461:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3461
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3461:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3461
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3460
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3462: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3462
        ADD  R2, R2, R5
        BCC  ms_na3462
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3462:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3462
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3462:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3462
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3464
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3464:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3465
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3465:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3466
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3466:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3463
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3463
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3463
        LDI  R6, 0x80
        JMP  rq_done3463
rq_pos3463: LDI  R6, 0x7F
        JMP  rq_done3463
rq_ok3463:  OR   R6, R2, R2
rq_done3463: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3463
        LDI  R6, 0
rq_relu3463:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop3467: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3468: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3468
        ADD  R2, R2, R5
        BCC  ms_na3468
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3468:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3468
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3468:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3468
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3467
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3469: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3469
        ADD  R2, R2, R5
        BCC  ms_na3469
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3469:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3469
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3469:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3469
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3471
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3471:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3472
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3472:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3473
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3473:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3470
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3470
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3470
        LDI  R6, 0x80
        JMP  rq_done3470
rq_pos3470: LDI  R6, 0x7F
        JMP  rq_done3470
rq_ok3470:  OR   R6, R2, R2
rq_done3470: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3470
        LDI  R6, 0
rq_relu3470:
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
