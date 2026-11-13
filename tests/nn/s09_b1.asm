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
        LDI  R2, 16
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 50
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
sw_loop1522: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1523: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1523
        ADD  R2, R2, R5
        BCC  ms_na1523
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1523:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1523
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1523:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1523
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1522
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1524: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1524
        ADD  R2, R2, R5
        BCC  ms_na1524
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1524:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1524
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1524:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1524
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1526
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1526:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1527
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1527:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1528
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1528:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1529
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1529:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1530
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1530:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1531
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1531:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1532
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1532:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1533
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1533:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1525
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1525
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1525
        LDI  R6, 0x80
        JMP  rq_done1525
rq_pos1525: LDI  R6, 0x7F
        JMP  rq_done1525
rq_ok1525:  OR   R6, R2, R2
rq_done1525: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1525
        LDI  R6, 0
rq_relu1525:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop1534: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1535: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1535
        ADD  R2, R2, R5
        BCC  ms_na1535
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1535:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1535
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1535:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1535
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1534
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1536: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1536
        ADD  R2, R2, R5
        BCC  ms_na1536
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1536:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1536
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1536:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1536
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1538
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1538:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1539
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1539:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1540
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1540:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1541
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1541:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1542
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1542:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1543
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1543:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1544
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1544:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1545
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1545:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1537
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1537
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1537
        LDI  R6, 0x80
        JMP  rq_done1537
rq_pos1537: LDI  R6, 0x7F
        JMP  rq_done1537
rq_ok1537:  OR   R6, R2, R2
rq_done1537: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1537
        LDI  R6, 0
rq_relu1537:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop1546: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1547: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1547
        ADD  R2, R2, R5
        BCC  ms_na1547
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1547:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1547
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1547:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1547
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1546
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1548: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1548
        ADD  R2, R2, R5
        BCC  ms_na1548
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1548:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1548
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1548:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1548
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1550
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1550:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1551
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1551:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1552
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1552:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1553
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1553:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1554
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1554:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1555
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1555:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1556
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1556:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1557
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1557:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1549
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1549
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1549
        LDI  R6, 0x80
        JMP  rq_done1549
rq_pos1549: LDI  R6, 0x7F
        JMP  rq_done1549
rq_ok1549:  OR   R6, R2, R2
rq_done1549: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1549
        LDI  R6, 0
rq_relu1549:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop1558: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1559: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1559
        ADD  R2, R2, R5
        BCC  ms_na1559
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1559:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1559
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1559:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1559
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1558
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1560: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1560
        ADD  R2, R2, R5
        BCC  ms_na1560
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1560:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1560
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1560:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1560
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1562
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1562:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1563
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1563:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1564
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1564:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1565
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1565:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1566
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1566:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1567
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1567:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1568
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1568:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1569
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1569:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1561
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1561
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1561
        LDI  R6, 0x80
        JMP  rq_done1561
rq_pos1561: LDI  R6, 0x7F
        JMP  rq_done1561
rq_ok1561:  OR   R6, R2, R2
rq_done1561: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1561
        LDI  R6, 0
rq_relu1561:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop1570: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1571: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1571
        ADD  R2, R2, R5
        BCC  ms_na1571
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1571:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1571
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1571:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1571
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1570
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1572: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1572
        ADD  R2, R2, R5
        BCC  ms_na1572
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1572:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1572
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1572:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1572
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1574
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1574:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1575
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1575:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1576
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1576:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1577
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1577:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1578
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1578:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1579
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1579:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1580
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1580:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1581
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1581:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1573
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1573
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1573
        LDI  R6, 0x80
        JMP  rq_done1573
rq_pos1573: LDI  R6, 0x7F
        JMP  rq_done1573
rq_ok1573:  OR   R6, R2, R2
rq_done1573: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1573
        LDI  R6, 0
rq_relu1573:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop1582: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1583: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1583
        ADD  R2, R2, R5
        BCC  ms_na1583
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1583:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1583
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1583:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1583
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1582
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1584: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1584
        ADD  R2, R2, R5
        BCC  ms_na1584
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1584:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1584
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1584:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1584
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1586
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1586:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1587
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1587:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1588
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1588:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1589
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1589:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1590
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1590:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1591
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1591:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1592
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1592:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1593
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1593:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1585
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1585
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1585
        LDI  R6, 0x80
        JMP  rq_done1585
rq_pos1585: LDI  R6, 0x7F
        JMP  rq_done1585
rq_ok1585:  OR   R6, R2, R2
rq_done1585: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1585
        LDI  R6, 0
rq_relu1585:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop1594: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1595: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1595
        ADD  R2, R2, R5
        BCC  ms_na1595
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1595:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1595
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1595:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1595
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1594
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1596: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1596
        ADD  R2, R2, R5
        BCC  ms_na1596
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1596:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1596
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1596:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1596
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1598
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1598:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1599
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1599:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1600
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1600:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1597
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1597
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1597
        LDI  R6, 0x80
        JMP  rq_done1597
rq_pos1597: LDI  R6, 0x7F
        JMP  rq_done1597
rq_ok1597:  OR   R6, R2, R2
rq_done1597: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1597
        LDI  R6, 0
rq_relu1597:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop1601: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1602: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1602
        ADD  R2, R2, R5
        BCC  ms_na1602
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1602:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1602
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1602:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1602
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1601
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1603: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1603
        ADD  R2, R2, R5
        BCC  ms_na1603
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1603:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1603
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1603:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1603
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1605
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1605:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1606
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1606:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1607
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1607:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1604
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1604
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1604
        LDI  R6, 0x80
        JMP  rq_done1604
rq_pos1604: LDI  R6, 0x7F
        JMP  rq_done1604
rq_ok1604:  OR   R6, R2, R2
rq_done1604: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1604
        LDI  R6, 0
rq_relu1604:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop1608: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1609: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1609
        ADD  R2, R2, R5
        BCC  ms_na1609
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1609:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1609
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1609:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1609
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1608
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1610: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1610
        ADD  R2, R2, R5
        BCC  ms_na1610
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1610:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1610
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1610:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1610
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1612
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1612:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1613
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1613:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1614
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1614:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1611
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1611
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1611
        LDI  R6, 0x80
        JMP  rq_done1611
rq_pos1611: LDI  R6, 0x7F
        JMP  rq_done1611
rq_ok1611:  OR   R6, R2, R2
rq_done1611: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1611
        LDI  R6, 0
rq_relu1611:
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
