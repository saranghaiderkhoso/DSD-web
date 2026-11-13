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
b0_loop2460: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2460
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2460: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2460
b0_add2460: ADD  R2, R2, R5
        BCC  b0_nc2460
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2460:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2460
b0_next2460: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2460
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2461: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2461
        ADD  R2, R2, R5
        BCC  ms_na2461
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2461:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2461
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2461:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2461
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2463
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2463:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2464
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2464:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2465
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2465:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2466
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2466:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2467
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2467:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2468
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2468:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2469
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2469:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2470
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2470:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2462
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2462
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2462
        LDI  R6, 0x80
        JMP  rq_done2462
rq_pos2462: LDI  R6, 0x7F
        JMP  rq_done2462
rq_ok2462:  OR   R6, R2, R2
rq_done2462: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2462
        LDI  R6, 0
rq_relu2462:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop2460: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2460
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2460: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2460
b0_add2460: ADD  R2, R2, R5
        BCC  b0_nc2460
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2460:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2460
b0_next2460: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2460
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2471: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2471
        ADD  R2, R2, R5
        BCC  ms_na2471
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2471:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2471
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2471:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2471
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2473
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2473:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2474
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2474:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2475
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2475:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2476
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2476:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2477
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2477:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2478
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2478:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2479
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2479:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2480
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2480:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2472
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2472
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2472
        LDI  R6, 0x80
        JMP  rq_done2472
rq_pos2472: LDI  R6, 0x7F
        JMP  rq_done2472
rq_ok2472:  OR   R6, R2, R2
rq_done2472: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2472
        LDI  R6, 0
rq_relu2472:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop2460: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2460
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2460: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2460
b0_add2460: ADD  R2, R2, R5
        BCC  b0_nc2460
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2460:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2460
b0_next2460: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2460
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2481: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2481
        ADD  R2, R2, R5
        BCC  ms_na2481
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2481:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2481
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2481:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2481
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2483
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2483:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2484
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2484:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2485
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2485:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2486
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2486:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2487
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2487:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2488
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2488:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2489
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2489:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2490
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2490:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2482
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2482
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2482
        LDI  R6, 0x80
        JMP  rq_done2482
rq_pos2482: LDI  R6, 0x7F
        JMP  rq_done2482
rq_ok2482:  OR   R6, R2, R2
rq_done2482: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2482
        LDI  R6, 0
rq_relu2482:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop2460: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2460
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2460: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2460
b0_add2460: ADD  R2, R2, R5
        BCC  b0_nc2460
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2460:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2460
b0_next2460: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2460
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2491: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2491
        ADD  R2, R2, R5
        BCC  ms_na2491
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2491:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2491
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2491:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2491
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2493
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2493:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2494
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2494:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2495
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2495:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2496
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2496:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2497
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2497:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2498
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2498:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2499
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2499:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2500
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2500:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2492
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2492
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2492
        LDI  R6, 0x80
        JMP  rq_done2492
rq_pos2492: LDI  R6, 0x7F
        JMP  rq_done2492
rq_ok2492:  OR   R6, R2, R2
rq_done2492: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2492
        LDI  R6, 0
rq_relu2492:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop2460: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2460
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2460: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2460
b0_add2460: ADD  R2, R2, R5
        BCC  b0_nc2460
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2460:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2460
b0_next2460: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2460
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2501: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2501
        ADD  R2, R2, R5
        BCC  ms_na2501
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2501:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2501
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2501:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2501
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2503
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2503:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2504
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2504:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2505
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2505:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2506
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2506:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2507
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2507:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2508
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2508:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2509
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2509:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2510
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2510:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2502
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2502
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2502
        LDI  R6, 0x80
        JMP  rq_done2502
rq_pos2502: LDI  R6, 0x7F
        JMP  rq_done2502
rq_ok2502:  OR   R6, R2, R2
rq_done2502: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2502
        LDI  R6, 0
rq_relu2502:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop2460: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2460
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2460: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2460
b0_add2460: ADD  R2, R2, R5
        BCC  b0_nc2460
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2460:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2460
b0_next2460: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2460
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2511: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2511
        ADD  R2, R2, R5
        BCC  ms_na2511
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2511:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2511
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2511:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2511
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2513
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2513:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2514
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2514:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2515
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2515:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2516
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2516:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2517
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2517:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2518
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2518:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2519
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2519:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2520
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2520:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2512
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2512
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2512
        LDI  R6, 0x80
        JMP  rq_done2512
rq_pos2512: LDI  R6, 0x7F
        JMP  rq_done2512
rq_ok2512:  OR   R6, R2, R2
rq_done2512: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2512
        LDI  R6, 0
rq_relu2512:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop22460: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22460
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22460: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22460
b0_add22460: ADD R2, R2, R5
        BCC  b0_nc22460
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22460: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22460
b0_next22460: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22460
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2521: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2521
        ADD  R2, R2, R5
        BCC  ms_na2521
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2521:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2521
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2521:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2521
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2523
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2523:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2524
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2524:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2525
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2525:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2522
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2522
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2522
        LDI  R6, 0x80
        JMP  rq_done2522
rq_pos2522: LDI  R6, 0x7F
        JMP  rq_done2522
rq_ok2522:  OR   R6, R2, R2
rq_done2522: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2522
        LDI  R6, 0
rq_relu2522:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop22460: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22460
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22460: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22460
b0_add22460: ADD R2, R2, R5
        BCC  b0_nc22460
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22460: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22460
b0_next22460: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22460
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2526: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2526
        ADD  R2, R2, R5
        BCC  ms_na2526
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2526:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2526
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2526:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2526
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2528
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2528:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2529
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2529:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2530
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2530:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2527
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2527
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2527
        LDI  R6, 0x80
        JMP  rq_done2527
rq_pos2527: LDI  R6, 0x7F
        JMP  rq_done2527
rq_ok2527:  OR   R6, R2, R2
rq_done2527: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2527
        LDI  R6, 0
rq_relu2527:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop22460: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22460
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22460: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22460
b0_add22460: ADD R2, R2, R5
        BCC  b0_nc22460
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22460: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22460
b0_next22460: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22460
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2531: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2531
        ADD  R2, R2, R5
        BCC  ms_na2531
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2531:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2531
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2531:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2531
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2533
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2533:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2534
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2534:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2535
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2535:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2532
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2532
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2532
        LDI  R6, 0x80
        JMP  rq_done2532
rq_pos2532: LDI  R6, 0x7F
        JMP  rq_done2532
rq_ok2532:  OR   R6, R2, R2
rq_done2532: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2532
        LDI  R6, 0
rq_relu2532:
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
