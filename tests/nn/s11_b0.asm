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
b0_loop1953: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1953
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1953: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1953
b0_add1953: ADD  R2, R2, R5
        BCC  b0_nc1953
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1953:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1953
b0_next1953: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1953
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1954: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1954
        ADD  R2, R2, R5
        BCC  ms_na1954
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1954:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1954
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1954:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1954
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1956
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1956:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1957
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1957:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1958
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1958:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1959
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1959:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1960
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1960:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1961
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1961:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1962
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1962:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1963
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1963:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1955
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1955
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1955
        LDI  R6, 0x80
        JMP  rq_done1955
rq_pos1955: LDI  R6, 0x7F
        JMP  rq_done1955
rq_ok1955:  OR   R6, R2, R2
rq_done1955: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1955
        LDI  R6, 0
rq_relu1955:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop1953: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1953
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1953: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1953
b0_add1953: ADD  R2, R2, R5
        BCC  b0_nc1953
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1953:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1953
b0_next1953: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1953
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1964: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1964
        ADD  R2, R2, R5
        BCC  ms_na1964
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1964:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1964
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1964:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1964
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1966
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1966:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1967
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1967:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1968
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1968:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1969
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1969:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1970
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1970:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1971
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1971:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1972
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1972:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1973
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1973:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1965
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1965
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1965
        LDI  R6, 0x80
        JMP  rq_done1965
rq_pos1965: LDI  R6, 0x7F
        JMP  rq_done1965
rq_ok1965:  OR   R6, R2, R2
rq_done1965: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1965
        LDI  R6, 0
rq_relu1965:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop1953: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1953
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1953: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1953
b0_add1953: ADD  R2, R2, R5
        BCC  b0_nc1953
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1953:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1953
b0_next1953: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1953
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1974: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1974
        ADD  R2, R2, R5
        BCC  ms_na1974
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1974:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1974
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1974:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1974
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1976
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1976:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1977
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1977:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1978
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1978:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1979
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1979:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1980
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1980:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1981
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1981:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1982
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1982:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1983
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1983:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1975
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1975
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1975
        LDI  R6, 0x80
        JMP  rq_done1975
rq_pos1975: LDI  R6, 0x7F
        JMP  rq_done1975
rq_ok1975:  OR   R6, R2, R2
rq_done1975: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1975
        LDI  R6, 0
rq_relu1975:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop1953: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1953
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1953: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1953
b0_add1953: ADD  R2, R2, R5
        BCC  b0_nc1953
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1953:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1953
b0_next1953: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1953
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1984: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1984
        ADD  R2, R2, R5
        BCC  ms_na1984
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1984:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1984
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1984:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1984
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1986
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1986:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1987
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1987:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1988
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1988:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1989
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1989:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1990
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1990:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1991
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1991:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1992
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1992:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1993
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1993:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1985
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1985
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1985
        LDI  R6, 0x80
        JMP  rq_done1985
rq_pos1985: LDI  R6, 0x7F
        JMP  rq_done1985
rq_ok1985:  OR   R6, R2, R2
rq_done1985: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1985
        LDI  R6, 0
rq_relu1985:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop1953: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1953
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1953: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1953
b0_add1953: ADD  R2, R2, R5
        BCC  b0_nc1953
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1953:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1953
b0_next1953: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1953
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1994: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1994
        ADD  R2, R2, R5
        BCC  ms_na1994
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1994:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1994
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1994:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1994
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1996
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1996:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1997
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1997:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1998
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1998:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1999
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1999:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2000
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2000:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2001
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2001:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2002
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2002:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2003
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2003:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1995
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1995
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1995
        LDI  R6, 0x80
        JMP  rq_done1995
rq_pos1995: LDI  R6, 0x7F
        JMP  rq_done1995
rq_ok1995:  OR   R6, R2, R2
rq_done1995: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1995
        LDI  R6, 0
rq_relu1995:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop1953: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1953
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1953: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1953
b0_add1953: ADD  R2, R2, R5
        BCC  b0_nc1953
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1953:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1953
b0_next1953: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1953
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2004: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2004
        ADD  R2, R2, R5
        BCC  ms_na2004
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2004:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2004
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2004:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2004
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2006
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2006:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2007
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2007:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2008
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2008:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2009
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2009:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2010
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2010:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2011
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2011:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2012
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2012:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2013
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2013:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2005
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2005
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2005
        LDI  R6, 0x80
        JMP  rq_done2005
rq_pos2005: LDI  R6, 0x7F
        JMP  rq_done2005
rq_ok2005:  OR   R6, R2, R2
rq_done2005: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2005
        LDI  R6, 0
rq_relu2005:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop21953: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21953
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21953: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21953
b0_add21953: ADD R2, R2, R5
        BCC  b0_nc21953
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21953: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21953
b0_next21953: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21953
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2014: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2014
        ADD  R2, R2, R5
        BCC  ms_na2014
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2014:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2014
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2014:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2014
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2016
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2016:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2017
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2017:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2018
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2018:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2015
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2015
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2015
        LDI  R6, 0x80
        JMP  rq_done2015
rq_pos2015: LDI  R6, 0x7F
        JMP  rq_done2015
rq_ok2015:  OR   R6, R2, R2
rq_done2015: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2015
        LDI  R6, 0
rq_relu2015:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop21953: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21953
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21953: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21953
b0_add21953: ADD R2, R2, R5
        BCC  b0_nc21953
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21953: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21953
b0_next21953: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21953
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2019: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2019
        ADD  R2, R2, R5
        BCC  ms_na2019
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2019:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2019
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2019:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2019
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2021
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2021:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2022
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2022:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2023
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2023:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2020
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2020
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2020
        LDI  R6, 0x80
        JMP  rq_done2020
rq_pos2020: LDI  R6, 0x7F
        JMP  rq_done2020
rq_ok2020:  OR   R6, R2, R2
rq_done2020: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2020
        LDI  R6, 0
rq_relu2020:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop21953: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21953
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21953: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21953
b0_add21953: ADD R2, R2, R5
        BCC  b0_nc21953
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21953: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21953
b0_next21953: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21953
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2024: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2024
        ADD  R2, R2, R5
        BCC  ms_na2024
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2024:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2024
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2024:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2024
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2026
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2026:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2027
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2027:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2028
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2028:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2025
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2025
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2025
        LDI  R6, 0x80
        JMP  rq_done2025
rq_pos2025: LDI  R6, 0x7F
        JMP  rq_done2025
rq_ok2025:  OR   R6, R2, R2
rq_done2025: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2025
        LDI  R6, 0
rq_relu2025:
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
