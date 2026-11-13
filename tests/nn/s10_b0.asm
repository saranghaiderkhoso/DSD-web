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
b0_loop1784: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1784
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1784: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1784
b0_add1784: ADD  R2, R2, R5
        BCC  b0_nc1784
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1784:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1784
b0_next1784: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1784
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1785: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1785
        ADD  R2, R2, R5
        BCC  ms_na1785
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1785:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1785
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1785:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1785
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1787
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1787:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1788
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1788:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1789
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1789:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1790
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1790:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1791
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1791:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1792
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1792:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1793
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1793:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1794
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1794:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1786
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1786
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1786
        LDI  R6, 0x80
        JMP  rq_done1786
rq_pos1786: LDI  R6, 0x7F
        JMP  rq_done1786
rq_ok1786:  OR   R6, R2, R2
rq_done1786: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1786
        LDI  R6, 0
rq_relu1786:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop1784: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1784
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1784: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1784
b0_add1784: ADD  R2, R2, R5
        BCC  b0_nc1784
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1784:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1784
b0_next1784: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1784
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1795: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1795
        ADD  R2, R2, R5
        BCC  ms_na1795
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1795:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1795
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1795:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1795
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1797
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1797:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1798
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1798:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1799
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1799:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1800
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1800:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1801
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1801:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1802
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1802:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1803
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1803:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1804
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1804:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1796
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1796
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1796
        LDI  R6, 0x80
        JMP  rq_done1796
rq_pos1796: LDI  R6, 0x7F
        JMP  rq_done1796
rq_ok1796:  OR   R6, R2, R2
rq_done1796: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1796
        LDI  R6, 0
rq_relu1796:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop1784: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1784
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1784: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1784
b0_add1784: ADD  R2, R2, R5
        BCC  b0_nc1784
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1784:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1784
b0_next1784: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1784
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1805: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1805
        ADD  R2, R2, R5
        BCC  ms_na1805
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1805:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1805
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1805:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1805
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1807
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1807:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1808
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1808:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1809
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1809:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1810
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1810:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1811
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1811:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1812
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1812:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1813
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1813:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1814
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1814:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1806
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1806
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1806
        LDI  R6, 0x80
        JMP  rq_done1806
rq_pos1806: LDI  R6, 0x7F
        JMP  rq_done1806
rq_ok1806:  OR   R6, R2, R2
rq_done1806: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1806
        LDI  R6, 0
rq_relu1806:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop1784: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1784
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1784: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1784
b0_add1784: ADD  R2, R2, R5
        BCC  b0_nc1784
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1784:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1784
b0_next1784: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1784
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1815: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1815
        ADD  R2, R2, R5
        BCC  ms_na1815
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1815:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1815
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1815:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1815
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1817
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1817:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1818
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1818:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1819
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1819:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1820
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1820:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1821
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1821:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1822
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1822:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1823
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1823:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1824
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1824:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1816
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1816
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1816
        LDI  R6, 0x80
        JMP  rq_done1816
rq_pos1816: LDI  R6, 0x7F
        JMP  rq_done1816
rq_ok1816:  OR   R6, R2, R2
rq_done1816: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1816
        LDI  R6, 0
rq_relu1816:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop1784: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1784
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1784: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1784
b0_add1784: ADD  R2, R2, R5
        BCC  b0_nc1784
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1784:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1784
b0_next1784: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1784
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1825: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1825
        ADD  R2, R2, R5
        BCC  ms_na1825
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1825:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1825
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1825:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1825
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1827
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1827:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1828
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1828:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1829
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1829:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1830
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1830:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1831
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1831:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1832
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1832:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1833
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1833:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1834
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1834:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1826
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1826
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1826
        LDI  R6, 0x80
        JMP  rq_done1826
rq_pos1826: LDI  R6, 0x7F
        JMP  rq_done1826
rq_ok1826:  OR   R6, R2, R2
rq_done1826: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1826
        LDI  R6, 0
rq_relu1826:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop1784: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1784
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1784: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1784
b0_add1784: ADD  R2, R2, R5
        BCC  b0_nc1784
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1784:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1784
b0_next1784: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1784
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1835: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1835
        ADD  R2, R2, R5
        BCC  ms_na1835
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1835:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1835
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1835:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1835
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1837
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1837:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1838
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1838:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1839
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1839:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1840
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1840:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1841
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1841:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1842
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1842:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1843
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1843:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1844
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1844:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1836
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1836
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1836
        LDI  R6, 0x80
        JMP  rq_done1836
rq_pos1836: LDI  R6, 0x7F
        JMP  rq_done1836
rq_ok1836:  OR   R6, R2, R2
rq_done1836: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1836
        LDI  R6, 0
rq_relu1836:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop21784: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21784
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21784: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21784
b0_add21784: ADD R2, R2, R5
        BCC  b0_nc21784
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21784: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21784
b0_next21784: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21784
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1845: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1845
        ADD  R2, R2, R5
        BCC  ms_na1845
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1845:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1845
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1845:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1845
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1847
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1847:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1848
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1848:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1849
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1849:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1846
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1846
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1846
        LDI  R6, 0x80
        JMP  rq_done1846
rq_pos1846: LDI  R6, 0x7F
        JMP  rq_done1846
rq_ok1846:  OR   R6, R2, R2
rq_done1846: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1846
        LDI  R6, 0
rq_relu1846:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop21784: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21784
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21784: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21784
b0_add21784: ADD R2, R2, R5
        BCC  b0_nc21784
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21784: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21784
b0_next21784: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21784
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1850: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1850
        ADD  R2, R2, R5
        BCC  ms_na1850
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1850:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1850
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1850:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1850
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1852
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1852:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1853
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1853:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1854
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1854:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1851
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1851
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1851
        LDI  R6, 0x80
        JMP  rq_done1851
rq_pos1851: LDI  R6, 0x7F
        JMP  rq_done1851
rq_ok1851:  OR   R6, R2, R2
rq_done1851: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1851
        LDI  R6, 0
rq_relu1851:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop21784: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21784
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21784: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21784
b0_add21784: ADD R2, R2, R5
        BCC  b0_nc21784
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21784: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21784
b0_next21784: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21784
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1855: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1855
        ADD  R2, R2, R5
        BCC  ms_na1855
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1855:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1855
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1855:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1855
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1857
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1857:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1858
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1858:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1859
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1859:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1856
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1856
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1856
        LDI  R6, 0x80
        JMP  rq_done1856
rq_pos1856: LDI  R6, 0x7F
        JMP  rq_done1856
rq_ok1856:  OR   R6, R2, R2
rq_done1856: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1856
        LDI  R6, 0
rq_relu1856:
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
