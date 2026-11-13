        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 71
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 26
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 84
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
sw_loop339: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop340: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na340
        ADD  R2, R2, R5
        BCC  ms_na340
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na340:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc340
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc340:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop340
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop339
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop341: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na341
        ADD  R2, R2, R5
        BCC  ms_na341
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na341:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc341
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc341:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop341
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc343
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc343:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc344
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc344:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc345
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc345:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc346
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc346:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc347
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc347:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc348
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc348:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc349
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc349:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc350
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc350:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok342
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok342
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos342
        LDI  R6, 0x80
        JMP  rq_done342
rq_pos342: LDI  R6, 0x7F
        JMP  rq_done342
rq_ok342:  OR   R6, R2, R2
rq_done342: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu342
        LDI  R6, 0
rq_relu342:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop351: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop352: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na352
        ADD  R2, R2, R5
        BCC  ms_na352
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na352:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc352
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc352:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop352
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop351
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop353: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na353
        ADD  R2, R2, R5
        BCC  ms_na353
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na353:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc353
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc353:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop353
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc355
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc355:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc356
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc356:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc357
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc357:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc358
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc358:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc359
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc359:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc360
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc360:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc361
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc361:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc362
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc362:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok354
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok354
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos354
        LDI  R6, 0x80
        JMP  rq_done354
rq_pos354: LDI  R6, 0x7F
        JMP  rq_done354
rq_ok354:  OR   R6, R2, R2
rq_done354: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu354
        LDI  R6, 0
rq_relu354:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop363: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop364: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na364
        ADD  R2, R2, R5
        BCC  ms_na364
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na364:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc364
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc364:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop364
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop363
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop365: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na365
        ADD  R2, R2, R5
        BCC  ms_na365
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na365:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc365
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc365:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop365
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc367
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc367:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc368
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc368:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc369
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc369:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc370
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc370:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc371
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc371:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc372
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc372:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc373
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc373:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc374
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc374:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok366
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok366
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos366
        LDI  R6, 0x80
        JMP  rq_done366
rq_pos366: LDI  R6, 0x7F
        JMP  rq_done366
rq_ok366:  OR   R6, R2, R2
rq_done366: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu366
        LDI  R6, 0
rq_relu366:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop375: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop376: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na376
        ADD  R2, R2, R5
        BCC  ms_na376
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na376:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc376
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc376:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop376
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop375
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop377: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na377
        ADD  R2, R2, R5
        BCC  ms_na377
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na377:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc377
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc377:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop377
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc379
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc379:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc380
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc380:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc381
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc381:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc382
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc382:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc383
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc383:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc384
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc384:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc385
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc385:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc386
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc386:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok378
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok378
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos378
        LDI  R6, 0x80
        JMP  rq_done378
rq_pos378: LDI  R6, 0x7F
        JMP  rq_done378
rq_ok378:  OR   R6, R2, R2
rq_done378: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu378
        LDI  R6, 0
rq_relu378:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop387: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop388: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na388
        ADD  R2, R2, R5
        BCC  ms_na388
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na388:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc388
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc388:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop388
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop387
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop389: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na389
        ADD  R2, R2, R5
        BCC  ms_na389
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na389:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc389
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc389:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop389
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc391
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc391:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc392
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc392:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc393
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc393:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc394
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc394:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc395
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc395:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc396
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc396:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc397
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc397:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc398
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc398:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok390
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok390
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos390
        LDI  R6, 0x80
        JMP  rq_done390
rq_pos390: LDI  R6, 0x7F
        JMP  rq_done390
rq_ok390:  OR   R6, R2, R2
rq_done390: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu390
        LDI  R6, 0
rq_relu390:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop399: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop400: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na400
        ADD  R2, R2, R5
        BCC  ms_na400
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na400:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc400
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc400:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop400
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop399
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop401: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na401
        ADD  R2, R2, R5
        BCC  ms_na401
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na401:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc401
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc401:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop401
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc403
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc403:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc404
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc404:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc405
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc405:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc406
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc406:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc407
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc407:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc408
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc408:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc409
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc409:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc410
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc410:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok402
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok402
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos402
        LDI  R6, 0x80
        JMP  rq_done402
rq_pos402: LDI  R6, 0x7F
        JMP  rq_done402
rq_ok402:  OR   R6, R2, R2
rq_done402: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu402
        LDI  R6, 0
rq_relu402:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop411: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop412: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na412
        ADD  R2, R2, R5
        BCC  ms_na412
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na412:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc412
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc412:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop412
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop411
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop413: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na413
        ADD  R2, R2, R5
        BCC  ms_na413
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na413:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc413
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc413:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop413
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc415
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc415:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc416
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc416:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc417
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc417:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok414
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok414
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos414
        LDI  R6, 0x80
        JMP  rq_done414
rq_pos414: LDI  R6, 0x7F
        JMP  rq_done414
rq_ok414:  OR   R6, R2, R2
rq_done414: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu414
        LDI  R6, 0
rq_relu414:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop418: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop419: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na419
        ADD  R2, R2, R5
        BCC  ms_na419
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na419:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc419
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc419:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop419
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop418
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop420: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na420
        ADD  R2, R2, R5
        BCC  ms_na420
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na420:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc420
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc420:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop420
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc422
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc422:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc423
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc423:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc424
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc424:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok421
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok421
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos421
        LDI  R6, 0x80
        JMP  rq_done421
rq_pos421: LDI  R6, 0x7F
        JMP  rq_done421
rq_ok421:  OR   R6, R2, R2
rq_done421: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu421
        LDI  R6, 0
rq_relu421:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop425: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop426: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na426
        ADD  R2, R2, R5
        BCC  ms_na426
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na426:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc426
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc426:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop426
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop425
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop427: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na427
        ADD  R2, R2, R5
        BCC  ms_na427
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na427:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc427
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc427:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop427
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc429
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc429:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc430
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc430:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc431
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc431:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok428
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok428
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos428
        LDI  R6, 0x80
        JMP  rq_done428
rq_pos428: LDI  R6, 0x7F
        JMP  rq_done428
rq_ok428:  OR   R6, R2, R2
rq_done428: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu428
        LDI  R6, 0
rq_relu428:
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
