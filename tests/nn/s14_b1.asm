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
        LDI  R3, 86
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
sw_loop2367: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2368: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2368
        ADD  R2, R2, R5
        BCC  ms_na2368
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2368:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2368
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2368:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2368
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2367
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2369: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2369
        ADD  R2, R2, R5
        BCC  ms_na2369
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2369:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2369
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2369:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2369
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2371
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2371:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2372
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2372:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2373
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2373:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2374
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2374:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2375
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2375:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2376
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2376:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2377
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2377:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2378
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2378:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2370
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2370
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2370
        LDI  R6, 0x80
        JMP  rq_done2370
rq_pos2370: LDI  R6, 0x7F
        JMP  rq_done2370
rq_ok2370:  OR   R6, R2, R2
rq_done2370: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2370
        LDI  R6, 0
rq_relu2370:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop2379: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2380: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2380
        ADD  R2, R2, R5
        BCC  ms_na2380
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2380:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2380
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2380:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2380
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2379
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2381: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2381
        ADD  R2, R2, R5
        BCC  ms_na2381
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2381:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2381
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2381:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2381
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2383
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2383:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2384
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2384:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2385
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2385:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2386
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2386:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2387
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2387:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2388
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2388:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2389
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2389:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2390
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2390:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2382
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2382
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2382
        LDI  R6, 0x80
        JMP  rq_done2382
rq_pos2382: LDI  R6, 0x7F
        JMP  rq_done2382
rq_ok2382:  OR   R6, R2, R2
rq_done2382: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2382
        LDI  R6, 0
rq_relu2382:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop2391: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2392: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2392
        ADD  R2, R2, R5
        BCC  ms_na2392
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2392:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2392
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2392:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2392
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2391
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2393: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2393
        ADD  R2, R2, R5
        BCC  ms_na2393
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2393:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2393
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2393:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2393
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2395
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2395:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2396
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2396:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2397
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2397:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2398
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2398:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2399
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2399:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2400
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2400:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2401
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2401:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2402
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2402:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2394
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2394
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2394
        LDI  R6, 0x80
        JMP  rq_done2394
rq_pos2394: LDI  R6, 0x7F
        JMP  rq_done2394
rq_ok2394:  OR   R6, R2, R2
rq_done2394: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2394
        LDI  R6, 0
rq_relu2394:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop2403: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2404: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2404
        ADD  R2, R2, R5
        BCC  ms_na2404
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2404:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2404
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2404:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2404
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2403
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2405: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2405
        ADD  R2, R2, R5
        BCC  ms_na2405
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2405:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2405
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2405:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2405
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2407
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2407:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2408
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2408:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2409
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2409:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2410
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2410:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2411
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2411:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2412
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2412:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2413
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2413:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2414
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2414:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2406
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2406
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2406
        LDI  R6, 0x80
        JMP  rq_done2406
rq_pos2406: LDI  R6, 0x7F
        JMP  rq_done2406
rq_ok2406:  OR   R6, R2, R2
rq_done2406: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2406
        LDI  R6, 0
rq_relu2406:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop2415: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2416: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2416
        ADD  R2, R2, R5
        BCC  ms_na2416
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2416:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2416
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2416:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2416
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2415
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2417: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2417
        ADD  R2, R2, R5
        BCC  ms_na2417
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2417:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2417
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2417:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2417
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2419
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2419:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2420
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2420:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2421
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2421:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2422
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2422:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2423
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2423:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2424
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2424:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2425
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2425:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2426
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2426:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2418
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2418
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2418
        LDI  R6, 0x80
        JMP  rq_done2418
rq_pos2418: LDI  R6, 0x7F
        JMP  rq_done2418
rq_ok2418:  OR   R6, R2, R2
rq_done2418: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2418
        LDI  R6, 0
rq_relu2418:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop2427: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2428: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2428
        ADD  R2, R2, R5
        BCC  ms_na2428
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2428:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2428
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2428:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2428
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2427
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2429: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2429
        ADD  R2, R2, R5
        BCC  ms_na2429
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2429:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2429
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2429:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2429
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2431
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2431:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2432
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2432:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2433
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2433:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2434
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2434:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2435
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2435:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2436
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2436:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2437
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2437:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2438
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2438:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2430
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2430
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2430
        LDI  R6, 0x80
        JMP  rq_done2430
rq_pos2430: LDI  R6, 0x7F
        JMP  rq_done2430
rq_ok2430:  OR   R6, R2, R2
rq_done2430: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2430
        LDI  R6, 0
rq_relu2430:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop2439: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2440: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2440
        ADD  R2, R2, R5
        BCC  ms_na2440
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2440:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2440
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2440:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2440
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2439
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2441: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2441
        ADD  R2, R2, R5
        BCC  ms_na2441
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2441:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2441
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2441:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2441
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2443
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2443:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2444
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2444:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2445
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2445:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2442
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2442
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2442
        LDI  R6, 0x80
        JMP  rq_done2442
rq_pos2442: LDI  R6, 0x7F
        JMP  rq_done2442
rq_ok2442:  OR   R6, R2, R2
rq_done2442: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2442
        LDI  R6, 0
rq_relu2442:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop2446: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2447: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2447
        ADD  R2, R2, R5
        BCC  ms_na2447
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2447:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2447
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2447:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2447
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2446
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2448: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2448
        ADD  R2, R2, R5
        BCC  ms_na2448
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2448:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2448
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2448:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2448
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2450
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2450:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2451
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2451:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2452
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2452:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2449
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2449
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2449
        LDI  R6, 0x80
        JMP  rq_done2449
rq_pos2449: LDI  R6, 0x7F
        JMP  rq_done2449
rq_ok2449:  OR   R6, R2, R2
rq_done2449: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2449
        LDI  R6, 0
rq_relu2449:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop2453: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2454: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2454
        ADD  R2, R2, R5
        BCC  ms_na2454
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2454:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2454
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2454:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2454
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2453
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2455: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2455
        ADD  R2, R2, R5
        BCC  ms_na2455
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2455:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2455
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2455:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2455
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2457
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2457:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2458
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2458:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2459
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2459:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2456
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2456
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2456
        LDI  R6, 0x80
        JMP  rq_done2456
rq_pos2456: LDI  R6, 0x7F
        JMP  rq_done2456
rq_ok2456:  OR   R6, R2, R2
rq_done2456: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2456
        LDI  R6, 0
rq_relu2456:
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
