        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 78
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 53
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 97
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 90
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
b0_loop1277: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1277
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1277: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1277
b0_add1277: ADD  R2, R2, R5
        BCC  b0_nc1277
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1277:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1277
b0_next1277: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1277
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1278: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1278
        ADD  R2, R2, R5
        BCC  ms_na1278
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1278:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1278
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1278:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1278
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1280
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1280:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1281
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1281:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1282
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1282:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1283
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1283:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1284
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1284:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1285
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1285:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1286
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1286:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1287
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1287:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1279
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1279
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1279
        LDI  R6, 0x80
        JMP  rq_done1279
rq_pos1279: LDI  R6, 0x7F
        JMP  rq_done1279
rq_ok1279:  OR   R6, R2, R2
rq_done1279: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1279
        LDI  R6, 0
rq_relu1279:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop1277: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1277
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1277: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1277
b0_add1277: ADD  R2, R2, R5
        BCC  b0_nc1277
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1277:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1277
b0_next1277: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1277
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1288: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1288
        ADD  R2, R2, R5
        BCC  ms_na1288
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1288:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1288
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1288:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1288
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1290
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1290:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1291
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1291:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1292
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1292:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1293
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1293:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1294
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1294:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1295
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1295:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1296
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1296:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1297
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1297:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1289
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1289
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1289
        LDI  R6, 0x80
        JMP  rq_done1289
rq_pos1289: LDI  R6, 0x7F
        JMP  rq_done1289
rq_ok1289:  OR   R6, R2, R2
rq_done1289: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1289
        LDI  R6, 0
rq_relu1289:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop1277: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1277
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1277: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1277
b0_add1277: ADD  R2, R2, R5
        BCC  b0_nc1277
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1277:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1277
b0_next1277: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1277
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1298: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1298
        ADD  R2, R2, R5
        BCC  ms_na1298
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1298:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1298
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1298:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1298
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1300
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1300:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1301
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1301:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1302
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1302:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1303
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1303:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1304
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1304:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1305
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1305:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1306
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1306:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1307
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1307:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1299
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1299
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1299
        LDI  R6, 0x80
        JMP  rq_done1299
rq_pos1299: LDI  R6, 0x7F
        JMP  rq_done1299
rq_ok1299:  OR   R6, R2, R2
rq_done1299: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1299
        LDI  R6, 0
rq_relu1299:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop1277: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1277
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1277: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1277
b0_add1277: ADD  R2, R2, R5
        BCC  b0_nc1277
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1277:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1277
b0_next1277: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1277
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1308: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1308
        ADD  R2, R2, R5
        BCC  ms_na1308
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1308:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1308
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1308:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1308
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1310
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1310:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1311
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1311:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1312
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1312:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1313
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1313:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1314
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1314:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1315
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1315:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1316
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1316:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1317
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1317:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1309
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1309
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1309
        LDI  R6, 0x80
        JMP  rq_done1309
rq_pos1309: LDI  R6, 0x7F
        JMP  rq_done1309
rq_ok1309:  OR   R6, R2, R2
rq_done1309: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1309
        LDI  R6, 0
rq_relu1309:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop1277: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1277
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1277: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1277
b0_add1277: ADD  R2, R2, R5
        BCC  b0_nc1277
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1277:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1277
b0_next1277: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1277
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1318: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1318
        ADD  R2, R2, R5
        BCC  ms_na1318
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1318:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1318
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1318:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1318
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1320
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1320:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1321
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1321:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1322
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1322:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1323
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1323:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1324
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1324:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1325
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1325:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1326
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1326:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1327
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1327:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1319
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1319
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1319
        LDI  R6, 0x80
        JMP  rq_done1319
rq_pos1319: LDI  R6, 0x7F
        JMP  rq_done1319
rq_ok1319:  OR   R6, R2, R2
rq_done1319: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1319
        LDI  R6, 0
rq_relu1319:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop1277: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1277
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1277: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1277
b0_add1277: ADD  R2, R2, R5
        BCC  b0_nc1277
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1277:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1277
b0_next1277: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1277
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1328: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1328
        ADD  R2, R2, R5
        BCC  ms_na1328
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1328:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1328
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1328:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1328
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1330
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1330:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1331
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1331:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1332
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1332:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1333
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1333:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1334
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1334:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1335
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1335:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1336
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1336:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1337
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1337:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1329
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1329
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1329
        LDI  R6, 0x80
        JMP  rq_done1329
rq_pos1329: LDI  R6, 0x7F
        JMP  rq_done1329
rq_ok1329:  OR   R6, R2, R2
rq_done1329: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1329
        LDI  R6, 0
rq_relu1329:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop21277: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21277
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21277: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21277
b0_add21277: ADD R2, R2, R5
        BCC  b0_nc21277
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21277: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21277
b0_next21277: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21277
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1338: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1338
        ADD  R2, R2, R5
        BCC  ms_na1338
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1338:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1338
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1338:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1338
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1340
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1340:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1341
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1341:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1342
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1342:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1339
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1339
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1339
        LDI  R6, 0x80
        JMP  rq_done1339
rq_pos1339: LDI  R6, 0x7F
        JMP  rq_done1339
rq_ok1339:  OR   R6, R2, R2
rq_done1339: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1339
        LDI  R6, 0
rq_relu1339:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop21277: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21277
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21277: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21277
b0_add21277: ADD R2, R2, R5
        BCC  b0_nc21277
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21277: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21277
b0_next21277: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21277
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1343: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1343
        ADD  R2, R2, R5
        BCC  ms_na1343
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1343:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1343
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1343:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1343
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1345
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1345:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1346
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1346:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1347
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1347:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1344
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1344
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1344
        LDI  R6, 0x80
        JMP  rq_done1344
rq_pos1344: LDI  R6, 0x7F
        JMP  rq_done1344
rq_ok1344:  OR   R6, R2, R2
rq_done1344: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1344
        LDI  R6, 0
rq_relu1344:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop21277: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21277
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21277: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21277
b0_add21277: ADD R2, R2, R5
        BCC  b0_nc21277
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21277: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21277
b0_next21277: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21277
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1348: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1348
        ADD  R2, R2, R5
        BCC  ms_na1348
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1348:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1348
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1348:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1348
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1350
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1350:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1351
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1351:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1352
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1352:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1349
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1349
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1349
        LDI  R6, 0x80
        JMP  rq_done1349
rq_pos1349: LDI  R6, 0x7F
        JMP  rq_done1349
rq_ok1349:  OR   R6, R2, R2
rq_done1349: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1349
        LDI  R6, 0
rq_relu1349:
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
