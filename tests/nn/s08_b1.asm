        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 4
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 48
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 9
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
sw_loop1353: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1354: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1354
        ADD  R2, R2, R5
        BCC  ms_na1354
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1354:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1354
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1354:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1354
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1353
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1355: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1355
        ADD  R2, R2, R5
        BCC  ms_na1355
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1355:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1355
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1355:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1355
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1357
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1357:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1358
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1358:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1359
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1359:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1360
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1360:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1361
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1361:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1362
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1362:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1363
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1363:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1364
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1364:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1356
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1356
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1356
        LDI  R6, 0x80
        JMP  rq_done1356
rq_pos1356: LDI  R6, 0x7F
        JMP  rq_done1356
rq_ok1356:  OR   R6, R2, R2
rq_done1356: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1356
        LDI  R6, 0
rq_relu1356:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop1365: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1366: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1366
        ADD  R2, R2, R5
        BCC  ms_na1366
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1366:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1366
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1366:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1366
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1365
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1367: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1367
        ADD  R2, R2, R5
        BCC  ms_na1367
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1367:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1367
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1367:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1367
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1369
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1369:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1370
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1370:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1371
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1371:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1372
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1372:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1373
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1373:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1374
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1374:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1375
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1375:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1376
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1376:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1368
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1368
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1368
        LDI  R6, 0x80
        JMP  rq_done1368
rq_pos1368: LDI  R6, 0x7F
        JMP  rq_done1368
rq_ok1368:  OR   R6, R2, R2
rq_done1368: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1368
        LDI  R6, 0
rq_relu1368:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop1377: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1378: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1378
        ADD  R2, R2, R5
        BCC  ms_na1378
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1378:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1378
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1378:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1378
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1377
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1379: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1379
        ADD  R2, R2, R5
        BCC  ms_na1379
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1379:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1379
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1379:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1379
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1381
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1381:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1382
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1382:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1383
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1383:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1384
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1384:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1385
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1385:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1386
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1386:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1387
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1387:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1388
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1388:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1380
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1380
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1380
        LDI  R6, 0x80
        JMP  rq_done1380
rq_pos1380: LDI  R6, 0x7F
        JMP  rq_done1380
rq_ok1380:  OR   R6, R2, R2
rq_done1380: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1380
        LDI  R6, 0
rq_relu1380:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop1389: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1390: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1390
        ADD  R2, R2, R5
        BCC  ms_na1390
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1390:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1390
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1390:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1390
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1389
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1391: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1391
        ADD  R2, R2, R5
        BCC  ms_na1391
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1391:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1391
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1391:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1391
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1393
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1393:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1394
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1394:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1395
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1395:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1396
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1396:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1397
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1397:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1398
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1398:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1399
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1399:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1400
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1400:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1392
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1392
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1392
        LDI  R6, 0x80
        JMP  rq_done1392
rq_pos1392: LDI  R6, 0x7F
        JMP  rq_done1392
rq_ok1392:  OR   R6, R2, R2
rq_done1392: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1392
        LDI  R6, 0
rq_relu1392:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop1401: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1402: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1402
        ADD  R2, R2, R5
        BCC  ms_na1402
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1402:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1402
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1402:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1402
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1401
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1403: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1403
        ADD  R2, R2, R5
        BCC  ms_na1403
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1403:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1403
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1403:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1403
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1405
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1405:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1406
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1406:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1407
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1407:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1408
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1408:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1409
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1409:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1410
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1410:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1411
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1411:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1412
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1412:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1404
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1404
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1404
        LDI  R6, 0x80
        JMP  rq_done1404
rq_pos1404: LDI  R6, 0x7F
        JMP  rq_done1404
rq_ok1404:  OR   R6, R2, R2
rq_done1404: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1404
        LDI  R6, 0
rq_relu1404:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop1413: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1414: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1414
        ADD  R2, R2, R5
        BCC  ms_na1414
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1414:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1414
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1414:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1414
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1413
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1415: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1415
        ADD  R2, R2, R5
        BCC  ms_na1415
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1415:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1415
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1415:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1415
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1417
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1417:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1418
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1418:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1419
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1419:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1420
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1420:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1421
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1421:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1422
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1422:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1423
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1423:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1424
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1424:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1416
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1416
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1416
        LDI  R6, 0x80
        JMP  rq_done1416
rq_pos1416: LDI  R6, 0x7F
        JMP  rq_done1416
rq_ok1416:  OR   R6, R2, R2
rq_done1416: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1416
        LDI  R6, 0
rq_relu1416:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop1425: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1426: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1426
        ADD  R2, R2, R5
        BCC  ms_na1426
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1426:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1426
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1426:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1426
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1425
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1427: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1427
        ADD  R2, R2, R5
        BCC  ms_na1427
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1427:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1427
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1427:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1427
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1429
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1429:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1430
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1430:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1431
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1431:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1428
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1428
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1428
        LDI  R6, 0x80
        JMP  rq_done1428
rq_pos1428: LDI  R6, 0x7F
        JMP  rq_done1428
rq_ok1428:  OR   R6, R2, R2
rq_done1428: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1428
        LDI  R6, 0
rq_relu1428:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop1432: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1433: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1433
        ADD  R2, R2, R5
        BCC  ms_na1433
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1433:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1433
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1433:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1433
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1432
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1434: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1434
        ADD  R2, R2, R5
        BCC  ms_na1434
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1434:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1434
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1434:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1434
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1436
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1436:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1437
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1437:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1438
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1438:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1435
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1435
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1435
        LDI  R6, 0x80
        JMP  rq_done1435
rq_pos1435: LDI  R6, 0x7F
        JMP  rq_done1435
rq_ok1435:  OR   R6, R2, R2
rq_done1435: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1435
        LDI  R6, 0
rq_relu1435:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop1439: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1440: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1440
        ADD  R2, R2, R5
        BCC  ms_na1440
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1440:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1440
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1440:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1440
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1439
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1441: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1441
        ADD  R2, R2, R5
        BCC  ms_na1441
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1441:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1441
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1441:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1441
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1443
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1443:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1444
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1444:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1445
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1445:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1442
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1442
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1442
        LDI  R6, 0x80
        JMP  rq_done1442
rq_pos1442: LDI  R6, 0x7F
        JMP  rq_done1442
rq_ok1442:  OR   R6, R2, R2
rq_done1442: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1442
        LDI  R6, 0
rq_relu1442:
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
