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
b0_loop1615: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1615
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1615: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1615
b0_add1615: ADD  R2, R2, R5
        BCC  b0_nc1615
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1615:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1615
b0_next1615: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1615
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1616: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1616
        ADD  R2, R2, R5
        BCC  ms_na1616
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1616:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1616
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1616:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1616
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1618
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1618:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1619
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1619:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1620
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1620:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1621
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1621:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1622
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1622:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1623
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1623:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1624
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1624:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1625
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1625:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1617
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1617
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1617
        LDI  R6, 0x80
        JMP  rq_done1617
rq_pos1617: LDI  R6, 0x7F
        JMP  rq_done1617
rq_ok1617:  OR   R6, R2, R2
rq_done1617: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1617
        LDI  R6, 0
rq_relu1617:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop1615: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1615
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1615: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1615
b0_add1615: ADD  R2, R2, R5
        BCC  b0_nc1615
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1615:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1615
b0_next1615: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1615
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1626: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1626
        ADD  R2, R2, R5
        BCC  ms_na1626
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1626:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1626
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1626:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1626
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1628
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1628:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1629
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1629:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1630
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1630:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1631
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1631:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1632
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1632:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1633
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1633:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1634
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1634:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1635
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1635:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1627
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1627
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1627
        LDI  R6, 0x80
        JMP  rq_done1627
rq_pos1627: LDI  R6, 0x7F
        JMP  rq_done1627
rq_ok1627:  OR   R6, R2, R2
rq_done1627: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1627
        LDI  R6, 0
rq_relu1627:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop1615: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1615
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1615: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1615
b0_add1615: ADD  R2, R2, R5
        BCC  b0_nc1615
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1615:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1615
b0_next1615: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1615
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1636: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1636
        ADD  R2, R2, R5
        BCC  ms_na1636
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1636:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1636
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1636:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1636
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1638
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1638:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1639
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1639:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1640
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1640:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1641
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1641:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1642
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1642:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1643
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1643:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1644
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1644:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1645
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1645:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1637
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1637
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1637
        LDI  R6, 0x80
        JMP  rq_done1637
rq_pos1637: LDI  R6, 0x7F
        JMP  rq_done1637
rq_ok1637:  OR   R6, R2, R2
rq_done1637: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1637
        LDI  R6, 0
rq_relu1637:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop1615: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1615
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1615: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1615
b0_add1615: ADD  R2, R2, R5
        BCC  b0_nc1615
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1615:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1615
b0_next1615: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1615
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1646: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1646
        ADD  R2, R2, R5
        BCC  ms_na1646
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1646:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1646
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1646:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1646
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1648
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1648:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1649
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1649:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1650
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1650:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1651
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1651:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1652
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1652:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1653
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1653:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1654
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1654:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1655
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1655:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1647
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1647
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1647
        LDI  R6, 0x80
        JMP  rq_done1647
rq_pos1647: LDI  R6, 0x7F
        JMP  rq_done1647
rq_ok1647:  OR   R6, R2, R2
rq_done1647: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1647
        LDI  R6, 0
rq_relu1647:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop1615: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1615
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1615: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1615
b0_add1615: ADD  R2, R2, R5
        BCC  b0_nc1615
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1615:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1615
b0_next1615: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1615
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1656: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1656
        ADD  R2, R2, R5
        BCC  ms_na1656
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1656:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1656
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1656:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1656
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1658
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1658:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1659
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1659:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1660
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1660:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1661
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1661:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1662
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1662:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1663
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1663:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1664
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1664:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1665
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1665:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1657
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1657
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1657
        LDI  R6, 0x80
        JMP  rq_done1657
rq_pos1657: LDI  R6, 0x7F
        JMP  rq_done1657
rq_ok1657:  OR   R6, R2, R2
rq_done1657: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1657
        LDI  R6, 0
rq_relu1657:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop1615: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1615
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1615: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1615
b0_add1615: ADD  R2, R2, R5
        BCC  b0_nc1615
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1615:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1615
b0_next1615: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1615
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1666: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1666
        ADD  R2, R2, R5
        BCC  ms_na1666
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1666:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1666
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1666:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1666
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1668
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1668:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1669
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1669:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1670
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1670:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1671
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1671:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1672
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1672:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1673
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1673:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1674
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1674:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1675
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1675:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1667
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1667
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1667
        LDI  R6, 0x80
        JMP  rq_done1667
rq_pos1667: LDI  R6, 0x7F
        JMP  rq_done1667
rq_ok1667:  OR   R6, R2, R2
rq_done1667: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1667
        LDI  R6, 0
rq_relu1667:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop21615: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21615
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21615: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21615
b0_add21615: ADD R2, R2, R5
        BCC  b0_nc21615
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21615: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21615
b0_next21615: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21615
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1676: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1676
        ADD  R2, R2, R5
        BCC  ms_na1676
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1676:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1676
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1676:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1676
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1678
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1678:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1679
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1679:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1680
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1680:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1677
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1677
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1677
        LDI  R6, 0x80
        JMP  rq_done1677
rq_pos1677: LDI  R6, 0x7F
        JMP  rq_done1677
rq_ok1677:  OR   R6, R2, R2
rq_done1677: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1677
        LDI  R6, 0
rq_relu1677:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop21615: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21615
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21615: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21615
b0_add21615: ADD R2, R2, R5
        BCC  b0_nc21615
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21615: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21615
b0_next21615: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21615
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1681: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1681
        ADD  R2, R2, R5
        BCC  ms_na1681
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1681:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1681
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1681:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1681
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1683
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1683:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1684
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1684:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1685
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1685:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1682
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1682
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1682
        LDI  R6, 0x80
        JMP  rq_done1682
rq_pos1682: LDI  R6, 0x7F
        JMP  rq_done1682
rq_ok1682:  OR   R6, R2, R2
rq_done1682: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1682
        LDI  R6, 0
rq_relu1682:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop21615: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21615
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21615: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21615
b0_add21615: ADD R2, R2, R5
        BCC  b0_nc21615
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21615: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21615
b0_next21615: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21615
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1686: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1686
        ADD  R2, R2, R5
        BCC  ms_na1686
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1686:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1686
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1686:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1686
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1688
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1688:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1689
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1689:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1690
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1690:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1687
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1687
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1687
        LDI  R6, 0x80
        JMP  rq_done1687
rq_pos1687: LDI  R6, 0x7F
        JMP  rq_done1687
rq_ok1687:  OR   R6, R2, R2
rq_done1687: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1687
        LDI  R6, 0
rq_relu1687:
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
