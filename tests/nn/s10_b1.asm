        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 85
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 53
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 86
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 85
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
sw_loop1691: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1692: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1692
        ADD  R2, R2, R5
        BCC  ms_na1692
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1692:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1692
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1692:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1692
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1691
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1693: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1693
        ADD  R2, R2, R5
        BCC  ms_na1693
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1693:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1693
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1693:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1693
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1695
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1695:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1696
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1696:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1697
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1697:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1698
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1698:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1699
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1699:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1700
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1700:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1701
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1701:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1702
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1702:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1694
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1694
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1694
        LDI  R6, 0x80
        JMP  rq_done1694
rq_pos1694: LDI  R6, 0x7F
        JMP  rq_done1694
rq_ok1694:  OR   R6, R2, R2
rq_done1694: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1694
        LDI  R6, 0
rq_relu1694:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop1703: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1704: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1704
        ADD  R2, R2, R5
        BCC  ms_na1704
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1704:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1704
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1704:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1704
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1703
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1705: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1705
        ADD  R2, R2, R5
        BCC  ms_na1705
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1705:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1705
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1705:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1705
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1707
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1707:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1708
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1708:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1709
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1709:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1710
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1710:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1711
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1711:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1712
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1712:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1713
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1713:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1714
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1714:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1706
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1706
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1706
        LDI  R6, 0x80
        JMP  rq_done1706
rq_pos1706: LDI  R6, 0x7F
        JMP  rq_done1706
rq_ok1706:  OR   R6, R2, R2
rq_done1706: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1706
        LDI  R6, 0
rq_relu1706:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop1715: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1716: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1716
        ADD  R2, R2, R5
        BCC  ms_na1716
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1716:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1716
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1716:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1716
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1715
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1717: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1717
        ADD  R2, R2, R5
        BCC  ms_na1717
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1717:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1717
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1717:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1717
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1719
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1719:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1720
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1720:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1721
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1721:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1722
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1722:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1723
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1723:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1724
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1724:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1725
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1725:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1726
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1726:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1718
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1718
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1718
        LDI  R6, 0x80
        JMP  rq_done1718
rq_pos1718: LDI  R6, 0x7F
        JMP  rq_done1718
rq_ok1718:  OR   R6, R2, R2
rq_done1718: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1718
        LDI  R6, 0
rq_relu1718:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop1727: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1728: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1728
        ADD  R2, R2, R5
        BCC  ms_na1728
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1728:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1728
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1728:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1728
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1727
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1729: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1729
        ADD  R2, R2, R5
        BCC  ms_na1729
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1729:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1729
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1729:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1729
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1731
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1731:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1732
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1732:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1733
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1733:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1734
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1734:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1735
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1735:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1736
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1736:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1737
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1737:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1738
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1738:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1730
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1730
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1730
        LDI  R6, 0x80
        JMP  rq_done1730
rq_pos1730: LDI  R6, 0x7F
        JMP  rq_done1730
rq_ok1730:  OR   R6, R2, R2
rq_done1730: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1730
        LDI  R6, 0
rq_relu1730:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop1739: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1740: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1740
        ADD  R2, R2, R5
        BCC  ms_na1740
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1740:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1740
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1740:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1740
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1739
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1741: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1741
        ADD  R2, R2, R5
        BCC  ms_na1741
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1741:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1741
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1741:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1741
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1743
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1743:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1744
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1744:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1745
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1745:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1746
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1746:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1747
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1747:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1748
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1748:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1749
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1749:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1750
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1750:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1742
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1742
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1742
        LDI  R6, 0x80
        JMP  rq_done1742
rq_pos1742: LDI  R6, 0x7F
        JMP  rq_done1742
rq_ok1742:  OR   R6, R2, R2
rq_done1742: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1742
        LDI  R6, 0
rq_relu1742:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop1751: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1752: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1752
        ADD  R2, R2, R5
        BCC  ms_na1752
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1752:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1752
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1752:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1752
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1751
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1753: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1753
        ADD  R2, R2, R5
        BCC  ms_na1753
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1753:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1753
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1753:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1753
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1755
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1755:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1756
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1756:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1757
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1757:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1758
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1758:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1759
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1759:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1760
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1760:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1761
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1761:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1762
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1762:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1754
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1754
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1754
        LDI  R6, 0x80
        JMP  rq_done1754
rq_pos1754: LDI  R6, 0x7F
        JMP  rq_done1754
rq_ok1754:  OR   R6, R2, R2
rq_done1754: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1754
        LDI  R6, 0
rq_relu1754:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop1763: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1764: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1764
        ADD  R2, R2, R5
        BCC  ms_na1764
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1764:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1764
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1764:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1764
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1763
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1765: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1765
        ADD  R2, R2, R5
        BCC  ms_na1765
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1765:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1765
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1765:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1765
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1767
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1767:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1768
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1768:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1769
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1769:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1766
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1766
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1766
        LDI  R6, 0x80
        JMP  rq_done1766
rq_pos1766: LDI  R6, 0x7F
        JMP  rq_done1766
rq_ok1766:  OR   R6, R2, R2
rq_done1766: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1766
        LDI  R6, 0
rq_relu1766:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop1770: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1771: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1771
        ADD  R2, R2, R5
        BCC  ms_na1771
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1771:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1771
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1771:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1771
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1770
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1772: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1772
        ADD  R2, R2, R5
        BCC  ms_na1772
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1772:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1772
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1772:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1772
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1774
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1774:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1775
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1775:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1776
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1776:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1773
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1773
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1773
        LDI  R6, 0x80
        JMP  rq_done1773
rq_pos1773: LDI  R6, 0x7F
        JMP  rq_done1773
rq_ok1773:  OR   R6, R2, R2
rq_done1773: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1773
        LDI  R6, 0
rq_relu1773:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop1777: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1778: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1778
        ADD  R2, R2, R5
        BCC  ms_na1778
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1778:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1778
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1778:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1778
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1777
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1779: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1779
        ADD  R2, R2, R5
        BCC  ms_na1779
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1779:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1779
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1779:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1779
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1781
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1781:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1782
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1782:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1783
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1783:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1780
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1780
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1780
        LDI  R6, 0x80
        JMP  rq_done1780
rq_pos1780: LDI  R6, 0x7F
        JMP  rq_done1780
rq_ok1780:  OR   R6, R2, R2
rq_done1780: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1780
        LDI  R6, 0
rq_relu1780:
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
