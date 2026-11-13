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
b0_loop2122: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2122
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2122: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2122
b0_add2122: ADD  R2, R2, R5
        BCC  b0_nc2122
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2122:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2122
b0_next2122: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2122
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2123: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2123
        ADD  R2, R2, R5
        BCC  ms_na2123
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2123:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2123
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2123:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2123
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2125
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2125:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2126
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2126:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2127
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2127:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2128
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2128:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2129
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2129:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2130
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2130:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2131
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2131:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2132
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2132:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2124
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2124
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2124
        LDI  R6, 0x80
        JMP  rq_done2124
rq_pos2124: LDI  R6, 0x7F
        JMP  rq_done2124
rq_ok2124:  OR   R6, R2, R2
rq_done2124: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2124
        LDI  R6, 0
rq_relu2124:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop2122: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2122
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2122: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2122
b0_add2122: ADD  R2, R2, R5
        BCC  b0_nc2122
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2122:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2122
b0_next2122: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2122
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2133: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2133
        ADD  R2, R2, R5
        BCC  ms_na2133
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2133:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2133
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2133:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2133
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2135
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2135:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2136
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2136:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2137
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2137:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2138
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2138:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2139
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2139:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2140
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2140:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2141
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2141:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2142
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2142:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2134
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2134
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2134
        LDI  R6, 0x80
        JMP  rq_done2134
rq_pos2134: LDI  R6, 0x7F
        JMP  rq_done2134
rq_ok2134:  OR   R6, R2, R2
rq_done2134: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2134
        LDI  R6, 0
rq_relu2134:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop2122: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2122
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2122: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2122
b0_add2122: ADD  R2, R2, R5
        BCC  b0_nc2122
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2122:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2122
b0_next2122: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2122
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2143: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2143
        ADD  R2, R2, R5
        BCC  ms_na2143
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2143:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2143
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2143:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2143
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2145
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2145:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2146
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2146:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2147
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2147:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2148
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2148:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2149
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2149:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2150
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2150:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2151
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2151:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2152
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2152:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2144
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2144
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2144
        LDI  R6, 0x80
        JMP  rq_done2144
rq_pos2144: LDI  R6, 0x7F
        JMP  rq_done2144
rq_ok2144:  OR   R6, R2, R2
rq_done2144: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2144
        LDI  R6, 0
rq_relu2144:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop2122: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2122
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2122: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2122
b0_add2122: ADD  R2, R2, R5
        BCC  b0_nc2122
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2122:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2122
b0_next2122: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2122
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2153: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2153
        ADD  R2, R2, R5
        BCC  ms_na2153
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2153:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2153
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2153:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2153
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2155
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2155:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2156
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2156:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2157
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2157:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2158
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2158:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2159
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2159:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2160
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2160:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2161
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2161:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2162
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2162:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2154
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2154
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2154
        LDI  R6, 0x80
        JMP  rq_done2154
rq_pos2154: LDI  R6, 0x7F
        JMP  rq_done2154
rq_ok2154:  OR   R6, R2, R2
rq_done2154: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2154
        LDI  R6, 0
rq_relu2154:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop2122: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2122
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2122: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2122
b0_add2122: ADD  R2, R2, R5
        BCC  b0_nc2122
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2122:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2122
b0_next2122: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2122
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2163: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2163
        ADD  R2, R2, R5
        BCC  ms_na2163
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2163:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2163
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2163:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2163
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2165
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2165:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2166
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2166:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2167
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2167:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2168
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2168:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2169
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2169:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2170
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2170:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2171
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2171:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2172
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2172:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2164
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2164
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2164
        LDI  R6, 0x80
        JMP  rq_done2164
rq_pos2164: LDI  R6, 0x7F
        JMP  rq_done2164
rq_ok2164:  OR   R6, R2, R2
rq_done2164: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2164
        LDI  R6, 0
rq_relu2164:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop2122: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2122
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2122: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2122
b0_add2122: ADD  R2, R2, R5
        BCC  b0_nc2122
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2122:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2122
b0_next2122: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2122
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2173: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2173
        ADD  R2, R2, R5
        BCC  ms_na2173
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2173:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2173
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2173:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2173
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2175
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2175:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2176
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2176:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2177
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2177:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2178
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2178:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2179
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2179:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2180
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2180:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2181
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2181:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2182
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2182:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2174
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2174
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2174
        LDI  R6, 0x80
        JMP  rq_done2174
rq_pos2174: LDI  R6, 0x7F
        JMP  rq_done2174
rq_ok2174:  OR   R6, R2, R2
rq_done2174: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2174
        LDI  R6, 0
rq_relu2174:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop22122: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22122
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22122: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22122
b0_add22122: ADD R2, R2, R5
        BCC  b0_nc22122
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22122: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22122
b0_next22122: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22122
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2183: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2183
        ADD  R2, R2, R5
        BCC  ms_na2183
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2183:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2183
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2183:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2183
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2185
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2185:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2186
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2186:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2187
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2187:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2184
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2184
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2184
        LDI  R6, 0x80
        JMP  rq_done2184
rq_pos2184: LDI  R6, 0x7F
        JMP  rq_done2184
rq_ok2184:  OR   R6, R2, R2
rq_done2184: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2184
        LDI  R6, 0
rq_relu2184:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop22122: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22122
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22122: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22122
b0_add22122: ADD R2, R2, R5
        BCC  b0_nc22122
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22122: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22122
b0_next22122: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22122
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2188: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2188
        ADD  R2, R2, R5
        BCC  ms_na2188
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2188:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2188
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2188:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2188
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2190
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2190:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2191
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2191:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2192
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2192:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2189
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2189
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2189
        LDI  R6, 0x80
        JMP  rq_done2189
rq_pos2189: LDI  R6, 0x7F
        JMP  rq_done2189
rq_ok2189:  OR   R6, R2, R2
rq_done2189: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2189
        LDI  R6, 0
rq_relu2189:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop22122: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22122
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22122: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22122
b0_add22122: ADD R2, R2, R5
        BCC  b0_nc22122
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22122: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22122
b0_next22122: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22122
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2193: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2193
        ADD  R2, R2, R5
        BCC  ms_na2193
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2193:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2193
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2193:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2193
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2195
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2195:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2196
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2196:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2197
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2197:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2194
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2194
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2194
        LDI  R6, 0x80
        JMP  rq_done2194
rq_pos2194: LDI  R6, 0x7F
        JMP  rq_done2194
rq_ok2194:  OR   R6, R2, R2
rq_done2194: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2194
        LDI  R6, 0
rq_relu2194:
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
