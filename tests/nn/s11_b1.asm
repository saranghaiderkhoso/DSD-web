        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 14
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 64
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 6
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 5
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
sw_loop1860: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1861: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1861
        ADD  R2, R2, R5
        BCC  ms_na1861
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1861:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1861
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1861:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1861
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1860
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1862: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1862
        ADD  R2, R2, R5
        BCC  ms_na1862
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1862:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1862
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1862:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1862
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1864
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1864:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1865
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1865:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1866
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1866:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1867
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1867:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1868
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1868:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1869
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1869:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1870
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1870:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1871
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1871:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1863
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1863
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1863
        LDI  R6, 0x80
        JMP  rq_done1863
rq_pos1863: LDI  R6, 0x7F
        JMP  rq_done1863
rq_ok1863:  OR   R6, R2, R2
rq_done1863: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1863
        LDI  R6, 0
rq_relu1863:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop1872: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1873: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1873
        ADD  R2, R2, R5
        BCC  ms_na1873
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1873:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1873
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1873:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1873
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1872
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1874: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1874
        ADD  R2, R2, R5
        BCC  ms_na1874
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1874:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1874
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1874:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1874
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1876
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1876:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1877
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1877:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1878
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1878:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1879
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1879:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1880
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1880:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1881
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1881:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1882
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1882:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1883
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1883:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1875
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1875
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1875
        LDI  R6, 0x80
        JMP  rq_done1875
rq_pos1875: LDI  R6, 0x7F
        JMP  rq_done1875
rq_ok1875:  OR   R6, R2, R2
rq_done1875: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1875
        LDI  R6, 0
rq_relu1875:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop1884: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1885: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1885
        ADD  R2, R2, R5
        BCC  ms_na1885
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1885:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1885
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1885:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1885
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1884
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1886: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1886
        ADD  R2, R2, R5
        BCC  ms_na1886
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1886:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1886
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1886:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1886
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1888
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1888:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1889
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1889:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1890
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1890:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1891
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1891:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1892
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1892:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1893
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1893:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1894
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1894:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1895
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1895:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1887
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1887
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1887
        LDI  R6, 0x80
        JMP  rq_done1887
rq_pos1887: LDI  R6, 0x7F
        JMP  rq_done1887
rq_ok1887:  OR   R6, R2, R2
rq_done1887: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1887
        LDI  R6, 0
rq_relu1887:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop1896: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1897: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1897
        ADD  R2, R2, R5
        BCC  ms_na1897
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1897:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1897
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1897:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1897
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1896
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1898: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1898
        ADD  R2, R2, R5
        BCC  ms_na1898
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1898:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1898
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1898:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1898
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1900
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1900:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1901
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1901:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1902
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1902:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1903
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1903:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1904
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1904:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1905
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1905:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1906
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1906:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1907
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1907:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1899
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1899
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1899
        LDI  R6, 0x80
        JMP  rq_done1899
rq_pos1899: LDI  R6, 0x7F
        JMP  rq_done1899
rq_ok1899:  OR   R6, R2, R2
rq_done1899: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1899
        LDI  R6, 0
rq_relu1899:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop1908: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1909: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1909
        ADD  R2, R2, R5
        BCC  ms_na1909
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1909:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1909
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1909:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1909
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1908
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1910: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1910
        ADD  R2, R2, R5
        BCC  ms_na1910
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1910:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1910
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1910:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1910
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1912
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1912:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1913
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1913:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1914
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1914:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1915
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1915:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1916
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1916:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1917
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1917:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1918
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1918:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1919
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1919:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1911
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1911
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1911
        LDI  R6, 0x80
        JMP  rq_done1911
rq_pos1911: LDI  R6, 0x7F
        JMP  rq_done1911
rq_ok1911:  OR   R6, R2, R2
rq_done1911: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1911
        LDI  R6, 0
rq_relu1911:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop1920: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1921: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1921
        ADD  R2, R2, R5
        BCC  ms_na1921
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1921:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1921
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1921:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1921
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1920
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1922: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1922
        ADD  R2, R2, R5
        BCC  ms_na1922
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1922:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1922
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1922:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1922
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1924
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1924:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1925
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1925:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1926
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1926:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1927
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1927:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1928
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1928:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1929
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1929:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1930
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1930:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1931
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1931:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1923
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1923
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1923
        LDI  R6, 0x80
        JMP  rq_done1923
rq_pos1923: LDI  R6, 0x7F
        JMP  rq_done1923
rq_ok1923:  OR   R6, R2, R2
rq_done1923: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1923
        LDI  R6, 0
rq_relu1923:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop1932: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1933: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1933
        ADD  R2, R2, R5
        BCC  ms_na1933
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1933:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1933
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1933:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1933
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1932
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1934: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1934
        ADD  R2, R2, R5
        BCC  ms_na1934
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1934:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1934
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1934:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1934
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1936
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1936:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1937
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1937:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1938
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1938:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1935
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1935
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1935
        LDI  R6, 0x80
        JMP  rq_done1935
rq_pos1935: LDI  R6, 0x7F
        JMP  rq_done1935
rq_ok1935:  OR   R6, R2, R2
rq_done1935: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1935
        LDI  R6, 0
rq_relu1935:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop1939: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1940: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1940
        ADD  R2, R2, R5
        BCC  ms_na1940
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1940:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1940
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1940:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1940
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1939
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1941: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1941
        ADD  R2, R2, R5
        BCC  ms_na1941
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1941:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1941
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1941:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1941
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1943
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1943:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1944
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1944:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1945
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1945:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1942
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1942
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1942
        LDI  R6, 0x80
        JMP  rq_done1942
rq_pos1942: LDI  R6, 0x7F
        JMP  rq_done1942
rq_ok1942:  OR   R6, R2, R2
rq_done1942: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1942
        LDI  R6, 0
rq_relu1942:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop1946: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1947: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1947
        ADD  R2, R2, R5
        BCC  ms_na1947
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1947:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1947
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1947:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1947
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1946
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1948: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1948
        ADD  R2, R2, R5
        BCC  ms_na1948
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1948:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1948
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1948:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1948
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1950
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1950:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1951
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1951:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1952
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1952:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1949
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1949
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1949
        LDI  R6, 0x80
        JMP  rq_done1949
rq_pos1949: LDI  R6, 0x7F
        JMP  rq_done1949
rq_ok1949:  OR   R6, R2, R2
rq_done1949: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1949
        LDI  R6, 0
rq_relu1949:
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
