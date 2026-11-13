        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 120
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 53
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 110
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 116
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
sw_loop2536: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2537: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2537
        ADD  R2, R2, R5
        BCC  ms_na2537
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2537:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2537
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2537:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2537
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2536
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2538: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2538
        ADD  R2, R2, R5
        BCC  ms_na2538
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2538:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2538
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2538:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2538
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2540
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2540:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2541
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2541:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2542
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2542:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2543
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2543:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2544
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2544:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2545
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2545:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2546
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2546:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2547
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2547:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2539
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2539
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2539
        LDI  R6, 0x80
        JMP  rq_done2539
rq_pos2539: LDI  R6, 0x7F
        JMP  rq_done2539
rq_ok2539:  OR   R6, R2, R2
rq_done2539: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2539
        LDI  R6, 0
rq_relu2539:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop2548: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2549: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2549
        ADD  R2, R2, R5
        BCC  ms_na2549
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2549:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2549
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2549:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2549
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2548
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2550: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2550
        ADD  R2, R2, R5
        BCC  ms_na2550
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2550:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2550
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2550:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2550
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2552
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2552:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2553
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2553:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2554
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2554:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2555
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2555:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2556
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2556:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2557
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2557:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2558
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2558:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2559
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2559:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2551
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2551
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2551
        LDI  R6, 0x80
        JMP  rq_done2551
rq_pos2551: LDI  R6, 0x7F
        JMP  rq_done2551
rq_ok2551:  OR   R6, R2, R2
rq_done2551: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2551
        LDI  R6, 0
rq_relu2551:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop2560: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2561: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2561
        ADD  R2, R2, R5
        BCC  ms_na2561
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2561:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2561
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2561:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2561
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2560
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2562: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2562
        ADD  R2, R2, R5
        BCC  ms_na2562
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2562:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2562
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2562:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2562
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2564
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2564:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2565
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2565:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2566
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2566:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2567
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2567:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2568
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2568:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2569
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2569:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2570
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2570:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2571
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2571:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2563
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2563
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2563
        LDI  R6, 0x80
        JMP  rq_done2563
rq_pos2563: LDI  R6, 0x7F
        JMP  rq_done2563
rq_ok2563:  OR   R6, R2, R2
rq_done2563: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2563
        LDI  R6, 0
rq_relu2563:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop2572: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2573: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2573
        ADD  R2, R2, R5
        BCC  ms_na2573
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2573:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2573
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2573:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2573
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2572
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2574: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2574
        ADD  R2, R2, R5
        BCC  ms_na2574
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2574:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2574
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2574:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2574
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2576
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2576:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2577
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2577:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2578
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2578:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2579
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2579:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2580
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2580:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2581
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2581:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2582
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2582:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2583
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2583:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2575
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2575
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2575
        LDI  R6, 0x80
        JMP  rq_done2575
rq_pos2575: LDI  R6, 0x7F
        JMP  rq_done2575
rq_ok2575:  OR   R6, R2, R2
rq_done2575: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2575
        LDI  R6, 0
rq_relu2575:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop2584: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2585: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2585
        ADD  R2, R2, R5
        BCC  ms_na2585
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2585:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2585
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2585:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2585
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2584
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2586: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2586
        ADD  R2, R2, R5
        BCC  ms_na2586
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2586:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2586
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2586:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2586
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2588
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2588:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2589
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2589:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2590
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2590:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2591
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2591:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2592
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2592:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2593
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2593:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2594
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2594:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2595
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2595:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2587
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2587
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2587
        LDI  R6, 0x80
        JMP  rq_done2587
rq_pos2587: LDI  R6, 0x7F
        JMP  rq_done2587
rq_ok2587:  OR   R6, R2, R2
rq_done2587: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2587
        LDI  R6, 0
rq_relu2587:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop2596: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2597: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2597
        ADD  R2, R2, R5
        BCC  ms_na2597
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2597:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2597
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2597:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2597
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2596
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2598: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2598
        ADD  R2, R2, R5
        BCC  ms_na2598
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2598:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2598
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2598:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2598
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2600
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2600:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2601
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2601:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2602
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2602:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2603
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2603:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2604
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2604:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2605
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2605:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2606
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2606:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2607
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2607:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2599
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2599
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2599
        LDI  R6, 0x80
        JMP  rq_done2599
rq_pos2599: LDI  R6, 0x7F
        JMP  rq_done2599
rq_ok2599:  OR   R6, R2, R2
rq_done2599: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2599
        LDI  R6, 0
rq_relu2599:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop2608: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2609: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2609
        ADD  R2, R2, R5
        BCC  ms_na2609
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2609:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2609
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2609:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2609
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2608
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2610: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2610
        ADD  R2, R2, R5
        BCC  ms_na2610
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2610:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2610
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2610:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2610
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2612
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2612:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2613
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2613:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2614
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2614:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2611
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2611
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2611
        LDI  R6, 0x80
        JMP  rq_done2611
rq_pos2611: LDI  R6, 0x7F
        JMP  rq_done2611
rq_ok2611:  OR   R6, R2, R2
rq_done2611: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2611
        LDI  R6, 0
rq_relu2611:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop2615: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2616: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2616
        ADD  R2, R2, R5
        BCC  ms_na2616
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2616:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2616
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2616:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2616
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2615
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2617: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2617
        ADD  R2, R2, R5
        BCC  ms_na2617
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2617:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2617
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2617:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2617
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2619
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2619:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2620
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2620:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2621
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2621:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2618
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2618
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2618
        LDI  R6, 0x80
        JMP  rq_done2618
rq_pos2618: LDI  R6, 0x7F
        JMP  rq_done2618
rq_ok2618:  OR   R6, R2, R2
rq_done2618: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2618
        LDI  R6, 0
rq_relu2618:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop2622: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2623: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2623
        ADD  R2, R2, R5
        BCC  ms_na2623
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2623:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2623
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2623:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2623
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2622
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2624: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2624
        ADD  R2, R2, R5
        BCC  ms_na2624
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2624:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2624
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2624:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2624
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2626
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2626:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2627
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2627:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2628
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2628:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2625
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2625
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2625
        LDI  R6, 0x80
        JMP  rq_done2625
rq_pos2625: LDI  R6, 0x7F
        JMP  rq_done2625
rq_ok2625:  OR   R6, R2, R2
rq_done2625: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2625
        LDI  R6, 0
rq_relu2625:
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
