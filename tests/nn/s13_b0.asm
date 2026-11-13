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
b0_loop2291: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2291
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2291: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2291
b0_add2291: ADD  R2, R2, R5
        BCC  b0_nc2291
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2291:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2291
b0_next2291: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2291
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2292: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2292
        ADD  R2, R2, R5
        BCC  ms_na2292
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2292:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2292
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2292:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2292
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2294
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2294:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2295
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2295:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2296
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2296:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2297
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2297:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2298
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2298:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2299
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2299:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2300
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2300:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2301
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2301:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2293
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2293
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2293
        LDI  R6, 0x80
        JMP  rq_done2293
rq_pos2293: LDI  R6, 0x7F
        JMP  rq_done2293
rq_ok2293:  OR   R6, R2, R2
rq_done2293: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2293
        LDI  R6, 0
rq_relu2293:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop2291: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2291
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2291: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2291
b0_add2291: ADD  R2, R2, R5
        BCC  b0_nc2291
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2291:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2291
b0_next2291: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2291
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2302: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2302
        ADD  R2, R2, R5
        BCC  ms_na2302
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2302:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2302
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2302:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2302
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2304
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2304:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2305
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2305:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2306
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2306:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2307
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2307:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2308
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2308:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2309
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2309:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2310
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2310:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2311
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2311:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2303
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2303
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2303
        LDI  R6, 0x80
        JMP  rq_done2303
rq_pos2303: LDI  R6, 0x7F
        JMP  rq_done2303
rq_ok2303:  OR   R6, R2, R2
rq_done2303: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2303
        LDI  R6, 0
rq_relu2303:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop2291: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2291
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2291: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2291
b0_add2291: ADD  R2, R2, R5
        BCC  b0_nc2291
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2291:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2291
b0_next2291: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2291
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2312: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2312
        ADD  R2, R2, R5
        BCC  ms_na2312
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2312:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2312
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2312:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2312
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2314
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2314:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2315
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2315:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2316
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2316:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2317
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2317:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2318
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2318:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2319
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2319:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2320
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2320:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2321
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2321:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2313
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2313
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2313
        LDI  R6, 0x80
        JMP  rq_done2313
rq_pos2313: LDI  R6, 0x7F
        JMP  rq_done2313
rq_ok2313:  OR   R6, R2, R2
rq_done2313: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2313
        LDI  R6, 0
rq_relu2313:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop2291: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2291
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2291: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2291
b0_add2291: ADD  R2, R2, R5
        BCC  b0_nc2291
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2291:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2291
b0_next2291: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2291
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2322: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2322
        ADD  R2, R2, R5
        BCC  ms_na2322
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2322:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2322
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2322:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2322
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2324
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2324:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2325
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2325:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2326
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2326:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2327
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2327:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2328
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2328:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2329
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2329:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2330
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2330:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2331
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2331:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2323
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2323
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2323
        LDI  R6, 0x80
        JMP  rq_done2323
rq_pos2323: LDI  R6, 0x7F
        JMP  rq_done2323
rq_ok2323:  OR   R6, R2, R2
rq_done2323: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2323
        LDI  R6, 0
rq_relu2323:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop2291: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2291
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2291: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2291
b0_add2291: ADD  R2, R2, R5
        BCC  b0_nc2291
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2291:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2291
b0_next2291: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2291
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2332: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2332
        ADD  R2, R2, R5
        BCC  ms_na2332
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2332:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2332
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2332:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2332
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2334
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2334:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2335
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2335:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2336
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2336:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2337
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2337:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2338
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2338:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2339
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2339:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2340
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2340:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2341
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2341:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2333
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2333
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2333
        LDI  R6, 0x80
        JMP  rq_done2333
rq_pos2333: LDI  R6, 0x7F
        JMP  rq_done2333
rq_ok2333:  OR   R6, R2, R2
rq_done2333: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2333
        LDI  R6, 0
rq_relu2333:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop2291: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2291
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2291: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2291
b0_add2291: ADD  R2, R2, R5
        BCC  b0_nc2291
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2291:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2291
b0_next2291: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2291
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2342: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2342
        ADD  R2, R2, R5
        BCC  ms_na2342
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2342:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2342
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2342:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2342
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2344
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2344:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2345
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2345:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2346
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2346:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2347
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2347:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2348
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2348:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2349
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2349:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2350
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2350:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2351
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2351:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2343
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2343
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2343
        LDI  R6, 0x80
        JMP  rq_done2343
rq_pos2343: LDI  R6, 0x7F
        JMP  rq_done2343
rq_ok2343:  OR   R6, R2, R2
rq_done2343: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2343
        LDI  R6, 0
rq_relu2343:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop22291: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22291
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22291: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22291
b0_add22291: ADD R2, R2, R5
        BCC  b0_nc22291
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22291: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22291
b0_next22291: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22291
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2352: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2352
        ADD  R2, R2, R5
        BCC  ms_na2352
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2352:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2352
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2352:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2352
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2354
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2354:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2355
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2355:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2356
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2356:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2353
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2353
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2353
        LDI  R6, 0x80
        JMP  rq_done2353
rq_pos2353: LDI  R6, 0x7F
        JMP  rq_done2353
rq_ok2353:  OR   R6, R2, R2
rq_done2353: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2353
        LDI  R6, 0
rq_relu2353:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop22291: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22291
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22291: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22291
b0_add22291: ADD R2, R2, R5
        BCC  b0_nc22291
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22291: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22291
b0_next22291: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22291
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2357: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2357
        ADD  R2, R2, R5
        BCC  ms_na2357
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2357:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2357
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2357:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2357
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2359
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2359:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2360
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2360:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2361
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2361:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2358
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2358
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2358
        LDI  R6, 0x80
        JMP  rq_done2358
rq_pos2358: LDI  R6, 0x7F
        JMP  rq_done2358
rq_ok2358:  OR   R6, R2, R2
rq_done2358: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2358
        LDI  R6, 0
rq_relu2358:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop22291: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22291
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22291: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22291
b0_add22291: ADD R2, R2, R5
        BCC  b0_nc22291
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22291: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22291
b0_next22291: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22291
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2362: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2362
        ADD  R2, R2, R5
        BCC  ms_na2362
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2362:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2362
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2362:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2362
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2364
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2364:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2365
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2365:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2366
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2366:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2363
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2363
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2363
        LDI  R6, 0x80
        JMP  rq_done2363
rq_pos2363: LDI  R6, 0x7F
        JMP  rq_done2363
rq_ok2363:  OR   R6, R2, R2
rq_done2363: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2363
        LDI  R6, 0
rq_relu2363:
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
