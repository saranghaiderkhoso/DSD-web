        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 35
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 90
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 11
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
sw_loop2029: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2030: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2030
        ADD  R2, R2, R5
        BCC  ms_na2030
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2030:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2030
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2030:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2030
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2029
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2031: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2031
        ADD  R2, R2, R5
        BCC  ms_na2031
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2031:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2031
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2031:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2031
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2033
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2033:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2034
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2034:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2035
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2035:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2036
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2036:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2037
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2037:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2038
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2038:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2039
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2039:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2040
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2040:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2032
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2032
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2032
        LDI  R6, 0x80
        JMP  rq_done2032
rq_pos2032: LDI  R6, 0x7F
        JMP  rq_done2032
rq_ok2032:  OR   R6, R2, R2
rq_done2032: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2032
        LDI  R6, 0
rq_relu2032:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop2041: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2042: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2042
        ADD  R2, R2, R5
        BCC  ms_na2042
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2042:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2042
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2042:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2042
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2041
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2043: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2043
        ADD  R2, R2, R5
        BCC  ms_na2043
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2043:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2043
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2043:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2043
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2045
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2045:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2046
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2046:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2047
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2047:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2048
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2048:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2049
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2049:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2050
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2050:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2051
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2051:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2052
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2052:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2044
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2044
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2044
        LDI  R6, 0x80
        JMP  rq_done2044
rq_pos2044: LDI  R6, 0x7F
        JMP  rq_done2044
rq_ok2044:  OR   R6, R2, R2
rq_done2044: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2044
        LDI  R6, 0
rq_relu2044:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop2053: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2054: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2054
        ADD  R2, R2, R5
        BCC  ms_na2054
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2054:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2054
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2054:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2054
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2053
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2055: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2055
        ADD  R2, R2, R5
        BCC  ms_na2055
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2055:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2055
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2055:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2055
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2057
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2057:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2058
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2058:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2059
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2059:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2060
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2060:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2061
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2061:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2062
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2062:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2063
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2063:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2064
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2064:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2056
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2056
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2056
        LDI  R6, 0x80
        JMP  rq_done2056
rq_pos2056: LDI  R6, 0x7F
        JMP  rq_done2056
rq_ok2056:  OR   R6, R2, R2
rq_done2056: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2056
        LDI  R6, 0
rq_relu2056:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop2065: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2066: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2066
        ADD  R2, R2, R5
        BCC  ms_na2066
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2066:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2066
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2066:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2066
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2065
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2067: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2067
        ADD  R2, R2, R5
        BCC  ms_na2067
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2067:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2067
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2067:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2067
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2069
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2069:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2070
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2070:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2071
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2071:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2072
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2072:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2073
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2073:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2074
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2074:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2075
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2075:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2076
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2076:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2068
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2068
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2068
        LDI  R6, 0x80
        JMP  rq_done2068
rq_pos2068: LDI  R6, 0x7F
        JMP  rq_done2068
rq_ok2068:  OR   R6, R2, R2
rq_done2068: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2068
        LDI  R6, 0
rq_relu2068:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop2077: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2078: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2078
        ADD  R2, R2, R5
        BCC  ms_na2078
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2078:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2078
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2078:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2078
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2077
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2079: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2079
        ADD  R2, R2, R5
        BCC  ms_na2079
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2079:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2079
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2079:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2079
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2081
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2081:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2082
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2082:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2083
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2083:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2084
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2084:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2085
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2085:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2086
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2086:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2087
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2087:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2088
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2088:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2080
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2080
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2080
        LDI  R6, 0x80
        JMP  rq_done2080
rq_pos2080: LDI  R6, 0x7F
        JMP  rq_done2080
rq_ok2080:  OR   R6, R2, R2
rq_done2080: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2080
        LDI  R6, 0
rq_relu2080:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop2089: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2090: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2090
        ADD  R2, R2, R5
        BCC  ms_na2090
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2090:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2090
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2090:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2090
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2089
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2091: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2091
        ADD  R2, R2, R5
        BCC  ms_na2091
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2091:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2091
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2091:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2091
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2093
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2093:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2094
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2094:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2095
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2095:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2096
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2096:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2097
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2097:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2098
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2098:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2099
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2099:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2100
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2100:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2092
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2092
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2092
        LDI  R6, 0x80
        JMP  rq_done2092
rq_pos2092: LDI  R6, 0x7F
        JMP  rq_done2092
rq_ok2092:  OR   R6, R2, R2
rq_done2092: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2092
        LDI  R6, 0
rq_relu2092:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop2101: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2102: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2102
        ADD  R2, R2, R5
        BCC  ms_na2102
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2102:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2102
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2102:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2102
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2101
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2103: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2103
        ADD  R2, R2, R5
        BCC  ms_na2103
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2103:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2103
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2103:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2103
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2105
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2105:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2106
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2106:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2107
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2107:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2104
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2104
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2104
        LDI  R6, 0x80
        JMP  rq_done2104
rq_pos2104: LDI  R6, 0x7F
        JMP  rq_done2104
rq_ok2104:  OR   R6, R2, R2
rq_done2104: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2104
        LDI  R6, 0
rq_relu2104:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop2108: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2109: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2109
        ADD  R2, R2, R5
        BCC  ms_na2109
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2109:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2109
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2109:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2109
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2108
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2110: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2110
        ADD  R2, R2, R5
        BCC  ms_na2110
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2110:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2110
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2110:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2110
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2112
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2112:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2113
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2113:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2114
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2114:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2111
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2111
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2111
        LDI  R6, 0x80
        JMP  rq_done2111
rq_pos2111: LDI  R6, 0x7F
        JMP  rq_done2111
rq_ok2111:  OR   R6, R2, R2
rq_done2111: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2111
        LDI  R6, 0
rq_relu2111:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop2115: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2116: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2116
        ADD  R2, R2, R5
        BCC  ms_na2116
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2116:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2116
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2116:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2116
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2115
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2117: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2117
        ADD  R2, R2, R5
        BCC  ms_na2117
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2117:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2117
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2117:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2117
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2119
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2119:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2120
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2120:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2121
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2121:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2118
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2118
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2118
        LDI  R6, 0x80
        JMP  rq_done2118
rq_pos2118: LDI  R6, 0x7F
        JMP  rq_done2118
rq_ok2118:  OR   R6, R2, R2
rq_done2118: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2118
        LDI  R6, 0
rq_relu2118:
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
