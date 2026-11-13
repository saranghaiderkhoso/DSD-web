        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 63
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 32
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 99
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 69
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
sw_loop2198: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2199: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2199
        ADD  R2, R2, R5
        BCC  ms_na2199
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2199:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2199
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2199:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2199
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2198
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2200: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2200
        ADD  R2, R2, R5
        BCC  ms_na2200
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2200:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2200
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2200:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2200
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2202
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2202:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2203
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2203:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2204
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2204:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2205
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2205:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2206
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2206:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2207
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2207:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2208
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2208:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2209
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2209:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2201
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2201
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2201
        LDI  R6, 0x80
        JMP  rq_done2201
rq_pos2201: LDI  R6, 0x7F
        JMP  rq_done2201
rq_ok2201:  OR   R6, R2, R2
rq_done2201: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2201
        LDI  R6, 0
rq_relu2201:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop2210: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2211: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2211
        ADD  R2, R2, R5
        BCC  ms_na2211
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2211:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2211
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2211:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2211
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2210
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2212: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2212
        ADD  R2, R2, R5
        BCC  ms_na2212
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2212:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2212
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2212:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2212
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2214
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2214:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2215
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2215:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2216
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2216:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2217
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2217:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2218
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2218:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2219
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2219:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2220
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2220:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2221
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2221:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2213
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2213
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2213
        LDI  R6, 0x80
        JMP  rq_done2213
rq_pos2213: LDI  R6, 0x7F
        JMP  rq_done2213
rq_ok2213:  OR   R6, R2, R2
rq_done2213: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2213
        LDI  R6, 0
rq_relu2213:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop2222: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2223: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2223
        ADD  R2, R2, R5
        BCC  ms_na2223
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2223:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2223
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2223:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2223
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2222
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2224: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2224
        ADD  R2, R2, R5
        BCC  ms_na2224
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2224:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2224
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2224:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2224
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2226
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2226:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2227
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2227:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2228
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2228:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2229
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2229:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2230
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2230:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2231
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2231:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2232
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2232:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2233
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2233:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2225
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2225
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2225
        LDI  R6, 0x80
        JMP  rq_done2225
rq_pos2225: LDI  R6, 0x7F
        JMP  rq_done2225
rq_ok2225:  OR   R6, R2, R2
rq_done2225: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2225
        LDI  R6, 0
rq_relu2225:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop2234: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2235: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2235
        ADD  R2, R2, R5
        BCC  ms_na2235
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2235:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2235
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2235:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2235
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2234
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2236: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2236
        ADD  R2, R2, R5
        BCC  ms_na2236
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2236:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2236
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2236:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2236
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2238
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2238:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2239
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2239:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2240
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2240:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2241
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2241:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2242
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2242:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2243
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2243:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2244
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2244:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2245
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2245:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2237
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2237
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2237
        LDI  R6, 0x80
        JMP  rq_done2237
rq_pos2237: LDI  R6, 0x7F
        JMP  rq_done2237
rq_ok2237:  OR   R6, R2, R2
rq_done2237: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2237
        LDI  R6, 0
rq_relu2237:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop2246: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2247: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2247
        ADD  R2, R2, R5
        BCC  ms_na2247
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2247:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2247
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2247:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2247
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2246
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2248: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2248
        ADD  R2, R2, R5
        BCC  ms_na2248
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2248:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2248
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2248:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2248
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2250
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2250:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2251
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2251:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2252
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2252:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2253
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2253:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2254
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2254:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2255
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2255:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2256
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2256:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2257
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2257:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2249
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2249
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2249
        LDI  R6, 0x80
        JMP  rq_done2249
rq_pos2249: LDI  R6, 0x7F
        JMP  rq_done2249
rq_ok2249:  OR   R6, R2, R2
rq_done2249: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2249
        LDI  R6, 0
rq_relu2249:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop2258: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2259: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2259
        ADD  R2, R2, R5
        BCC  ms_na2259
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2259:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2259
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2259:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2259
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2258
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2260: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2260
        ADD  R2, R2, R5
        BCC  ms_na2260
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2260:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2260
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2260:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2260
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2262
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2262:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2263
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2263:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2264
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2264:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2265
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2265:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2266
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2266:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2267
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2267:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2268
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2268:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2269
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2269:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2261
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2261
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2261
        LDI  R6, 0x80
        JMP  rq_done2261
rq_pos2261: LDI  R6, 0x7F
        JMP  rq_done2261
rq_ok2261:  OR   R6, R2, R2
rq_done2261: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2261
        LDI  R6, 0
rq_relu2261:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop2270: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2271: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2271
        ADD  R2, R2, R5
        BCC  ms_na2271
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2271:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2271
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2271:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2271
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2270
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2272: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2272
        ADD  R2, R2, R5
        BCC  ms_na2272
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2272:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2272
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2272:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2272
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2274
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2274:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2275
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2275:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2276
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2276:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2273
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2273
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2273
        LDI  R6, 0x80
        JMP  rq_done2273
rq_pos2273: LDI  R6, 0x7F
        JMP  rq_done2273
rq_ok2273:  OR   R6, R2, R2
rq_done2273: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2273
        LDI  R6, 0
rq_relu2273:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop2277: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2278: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2278
        ADD  R2, R2, R5
        BCC  ms_na2278
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2278:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2278
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2278:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2278
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2277
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2279: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2279
        ADD  R2, R2, R5
        BCC  ms_na2279
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2279:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2279
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2279:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2279
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2281
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2281:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2282
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2282:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2283
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2283:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2280
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2280
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2280
        LDI  R6, 0x80
        JMP  rq_done2280
rq_pos2280: LDI  R6, 0x7F
        JMP  rq_done2280
rq_ok2280:  OR   R6, R2, R2
rq_done2280: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2280
        LDI  R6, 0
rq_relu2280:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop2284: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2285: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2285
        ADD  R2, R2, R5
        BCC  ms_na2285
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2285:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2285
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2285:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2285
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2284
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2286: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2286
        ADD  R2, R2, R5
        BCC  ms_na2286
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2286:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2286
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2286:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2286
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2288
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2288:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2289
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2289:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2290
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2290:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2287
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2287
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2287
        LDI  R6, 0x80
        JMP  rq_done2287
rq_pos2287: LDI  R6, 0x7F
        JMP  rq_done2287
rq_ok2287:  OR   R6, R2, R2
rq_done2287: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2287
        LDI  R6, 0
rq_relu2287:
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
