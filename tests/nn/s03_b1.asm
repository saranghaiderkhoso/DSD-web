        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 25
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 0
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 54
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 48
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
sw_loop508: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop509: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na509
        ADD  R2, R2, R5
        BCC  ms_na509
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na509:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc509
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc509:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop509
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop508
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop510: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na510
        ADD  R2, R2, R5
        BCC  ms_na510
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na510:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc510
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc510:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop510
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc512
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc512:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc513
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc513:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc514
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc514:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc515
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc515:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc516
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc516:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc517
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc517:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc518
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc518:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc519
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc519:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok511
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok511
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos511
        LDI  R6, 0x80
        JMP  rq_done511
rq_pos511: LDI  R6, 0x7F
        JMP  rq_done511
rq_ok511:  OR   R6, R2, R2
rq_done511: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu511
        LDI  R6, 0
rq_relu511:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop520: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop521: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na521
        ADD  R2, R2, R5
        BCC  ms_na521
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na521:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc521
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc521:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop521
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop520
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop522: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na522
        ADD  R2, R2, R5
        BCC  ms_na522
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na522:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc522
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc522:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop522
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc524
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc524:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc525
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc525:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc526
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc526:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc527
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc527:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc528
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc528:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc529
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc529:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc530
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc530:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc531
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc531:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok523
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok523
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos523
        LDI  R6, 0x80
        JMP  rq_done523
rq_pos523: LDI  R6, 0x7F
        JMP  rq_done523
rq_ok523:  OR   R6, R2, R2
rq_done523: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu523
        LDI  R6, 0
rq_relu523:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop532: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop533: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na533
        ADD  R2, R2, R5
        BCC  ms_na533
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na533:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc533
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc533:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop533
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop532
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop534: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na534
        ADD  R2, R2, R5
        BCC  ms_na534
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na534:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc534
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc534:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop534
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc536
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc536:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc537
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc537:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc538
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc538:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc539
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc539:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc540
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc540:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc541
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc541:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc542
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc542:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc543
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc543:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok535
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok535
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos535
        LDI  R6, 0x80
        JMP  rq_done535
rq_pos535: LDI  R6, 0x7F
        JMP  rq_done535
rq_ok535:  OR   R6, R2, R2
rq_done535: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu535
        LDI  R6, 0
rq_relu535:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop544: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop545: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na545
        ADD  R2, R2, R5
        BCC  ms_na545
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na545:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc545
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc545:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop545
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop544
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop546: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na546
        ADD  R2, R2, R5
        BCC  ms_na546
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na546:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc546
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc546:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop546
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc548
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc548:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc549
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc549:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc550
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc550:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc551
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc551:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc552
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc552:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc553
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc553:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc554
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc554:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc555
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc555:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok547
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok547
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos547
        LDI  R6, 0x80
        JMP  rq_done547
rq_pos547: LDI  R6, 0x7F
        JMP  rq_done547
rq_ok547:  OR   R6, R2, R2
rq_done547: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu547
        LDI  R6, 0
rq_relu547:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop556: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop557: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na557
        ADD  R2, R2, R5
        BCC  ms_na557
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na557:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc557
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc557:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop557
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop556
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop558: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na558
        ADD  R2, R2, R5
        BCC  ms_na558
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na558:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc558
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc558:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop558
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc560
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc560:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc561
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc561:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc562
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc562:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc563
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc563:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc564
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc564:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc565
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc565:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc566
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc566:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc567
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc567:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok559
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok559
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos559
        LDI  R6, 0x80
        JMP  rq_done559
rq_pos559: LDI  R6, 0x7F
        JMP  rq_done559
rq_ok559:  OR   R6, R2, R2
rq_done559: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu559
        LDI  R6, 0
rq_relu559:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop568: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop569: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na569
        ADD  R2, R2, R5
        BCC  ms_na569
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na569:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc569
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc569:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop569
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop568
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop570: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na570
        ADD  R2, R2, R5
        BCC  ms_na570
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na570:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc570
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc570:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop570
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc572
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc572:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc573
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc573:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc574
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc574:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc575
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc575:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc576
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc576:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc577
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc577:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc578
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc578:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc579
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc579:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok571
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok571
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos571
        LDI  R6, 0x80
        JMP  rq_done571
rq_pos571: LDI  R6, 0x7F
        JMP  rq_done571
rq_ok571:  OR   R6, R2, R2
rq_done571: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu571
        LDI  R6, 0
rq_relu571:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop580: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop581: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na581
        ADD  R2, R2, R5
        BCC  ms_na581
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na581:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc581
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc581:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop581
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop580
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop582: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na582
        ADD  R2, R2, R5
        BCC  ms_na582
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na582:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc582
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc582:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop582
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc584
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc584:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc585
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc585:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc586
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc586:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok583
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok583
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos583
        LDI  R6, 0x80
        JMP  rq_done583
rq_pos583: LDI  R6, 0x7F
        JMP  rq_done583
rq_ok583:  OR   R6, R2, R2
rq_done583: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu583
        LDI  R6, 0
rq_relu583:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop587: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop588: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na588
        ADD  R2, R2, R5
        BCC  ms_na588
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na588:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc588
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc588:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop588
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop587
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop589: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na589
        ADD  R2, R2, R5
        BCC  ms_na589
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na589:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc589
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc589:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop589
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc591
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc591:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc592
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc592:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc593
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc593:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok590
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok590
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos590
        LDI  R6, 0x80
        JMP  rq_done590
rq_pos590: LDI  R6, 0x7F
        JMP  rq_done590
rq_ok590:  OR   R6, R2, R2
rq_done590: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu590
        LDI  R6, 0
rq_relu590:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop594: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop595: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na595
        ADD  R2, R2, R5
        BCC  ms_na595
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na595:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc595
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc595:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop595
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop594
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop596: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na596
        ADD  R2, R2, R5
        BCC  ms_na596
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na596:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc596
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc596:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop596
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc598
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc598:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc599
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc599:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc600
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc600:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok597
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok597
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos597
        LDI  R6, 0x80
        JMP  rq_done597
rq_pos597: LDI  R6, 0x7F
        JMP  rq_done597
rq_ok597:  OR   R6, R2, R2
rq_done597: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu597
        LDI  R6, 0
rq_relu597:
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
