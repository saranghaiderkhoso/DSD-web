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
b0_loop1446: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1446
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1446: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1446
b0_add1446: ADD  R2, R2, R5
        BCC  b0_nc1446
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1446:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1446
b0_next1446: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1446
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1447: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1447
        ADD  R2, R2, R5
        BCC  ms_na1447
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1447:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1447
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1447:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1447
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1449
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1449:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1450
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1450:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1451
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1451:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1452
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1452:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1453
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1453:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1454
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1454:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1455
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1455:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1456
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1456:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1448
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1448
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1448
        LDI  R6, 0x80
        JMP  rq_done1448
rq_pos1448: LDI  R6, 0x7F
        JMP  rq_done1448
rq_ok1448:  OR   R6, R2, R2
rq_done1448: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1448
        LDI  R6, 0
rq_relu1448:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop1446: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1446
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1446: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1446
b0_add1446: ADD  R2, R2, R5
        BCC  b0_nc1446
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1446:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1446
b0_next1446: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1446
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1457: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1457
        ADD  R2, R2, R5
        BCC  ms_na1457
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1457:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1457
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1457:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1457
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1459
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1459:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1460
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1460:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1461
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1461:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1462
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1462:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1463
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1463:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1464
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1464:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1465
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1465:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1466
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1466:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1458
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1458
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1458
        LDI  R6, 0x80
        JMP  rq_done1458
rq_pos1458: LDI  R6, 0x7F
        JMP  rq_done1458
rq_ok1458:  OR   R6, R2, R2
rq_done1458: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1458
        LDI  R6, 0
rq_relu1458:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop1446: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1446
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1446: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1446
b0_add1446: ADD  R2, R2, R5
        BCC  b0_nc1446
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1446:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1446
b0_next1446: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1446
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1467: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1467
        ADD  R2, R2, R5
        BCC  ms_na1467
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1467:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1467
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1467:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1467
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1469
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1469:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1470
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1470:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1471
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1471:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1472
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1472:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1473
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1473:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1474
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1474:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1475
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1475:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1476
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1476:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1468
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1468
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1468
        LDI  R6, 0x80
        JMP  rq_done1468
rq_pos1468: LDI  R6, 0x7F
        JMP  rq_done1468
rq_ok1468:  OR   R6, R2, R2
rq_done1468: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1468
        LDI  R6, 0
rq_relu1468:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop1446: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1446
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1446: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1446
b0_add1446: ADD  R2, R2, R5
        BCC  b0_nc1446
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1446:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1446
b0_next1446: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1446
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1477: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1477
        ADD  R2, R2, R5
        BCC  ms_na1477
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1477:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1477
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1477:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1477
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1479
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1479:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1480
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1480:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1481
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1481:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1482
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1482:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1483
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1483:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1484
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1484:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1485
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1485:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1486
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1486:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1478
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1478
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1478
        LDI  R6, 0x80
        JMP  rq_done1478
rq_pos1478: LDI  R6, 0x7F
        JMP  rq_done1478
rq_ok1478:  OR   R6, R2, R2
rq_done1478: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1478
        LDI  R6, 0
rq_relu1478:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop1446: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1446
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1446: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1446
b0_add1446: ADD  R2, R2, R5
        BCC  b0_nc1446
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1446:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1446
b0_next1446: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1446
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1487: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1487
        ADD  R2, R2, R5
        BCC  ms_na1487
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1487:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1487
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1487:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1487
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1489
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1489:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1490
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1490:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1491
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1491:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1492
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1492:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1493
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1493:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1494
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1494:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1495
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1495:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1496
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1496:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1488
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1488
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1488
        LDI  R6, 0x80
        JMP  rq_done1488
rq_pos1488: LDI  R6, 0x7F
        JMP  rq_done1488
rq_ok1488:  OR   R6, R2, R2
rq_done1488: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1488
        LDI  R6, 0
rq_relu1488:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop1446: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos1446
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos1446: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next1446
b0_add1446: ADD  R2, R2, R5
        BCC  b0_nc1446
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc1446:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add1446
b0_next1446: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop1446
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1497: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1497
        ADD  R2, R2, R5
        BCC  ms_na1497
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1497:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1497
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1497:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1497
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1499
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1499:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1500
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1500:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1501
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1501:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1502
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1502:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1503
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1503:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1504
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1504:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1505
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1505:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1506
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1506:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1498
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1498
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1498
        LDI  R6, 0x80
        JMP  rq_done1498
rq_pos1498: LDI  R6, 0x7F
        JMP  rq_done1498
rq_ok1498:  OR   R6, R2, R2
rq_done1498: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1498
        LDI  R6, 0
rq_relu1498:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop21446: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21446
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21446: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21446
b0_add21446: ADD R2, R2, R5
        BCC  b0_nc21446
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21446: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21446
b0_next21446: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21446
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1507: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1507
        ADD  R2, R2, R5
        BCC  ms_na1507
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1507:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1507
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1507:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1507
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1509
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1509:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1510
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1510:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1511
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1511:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1508
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1508
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1508
        LDI  R6, 0x80
        JMP  rq_done1508
rq_pos1508: LDI  R6, 0x7F
        JMP  rq_done1508
rq_ok1508:  OR   R6, R2, R2
rq_done1508: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1508
        LDI  R6, 0
rq_relu1508:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop21446: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21446
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21446: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21446
b0_add21446: ADD R2, R2, R5
        BCC  b0_nc21446
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21446: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21446
b0_next21446: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21446
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1512: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1512
        ADD  R2, R2, R5
        BCC  ms_na1512
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1512:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1512
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1512:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1512
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1514
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1514:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1515
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1515:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1516
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1516:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1513
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1513
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1513
        LDI  R6, 0x80
        JMP  rq_done1513
rq_pos1513: LDI  R6, 0x7F
        JMP  rq_done1513
rq_ok1513:  OR   R6, R2, R2
rq_done1513: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1513
        LDI  R6, 0
rq_relu1513:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop21446: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos21446
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos21446: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next21446
b0_add21446: ADD R2, R2, R5
        BCC  b0_nc21446
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc21446: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add21446
b0_next21446: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop21446
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1517: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1517
        ADD  R2, R2, R5
        BCC  ms_na1517
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1517:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1517
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1517:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1517
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1519
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1519:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1520
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1520:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1521
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1521:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1518
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1518
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1518
        LDI  R6, 0x80
        JMP  rq_done1518
rq_pos1518: LDI  R6, 0x7F
        JMP  rq_done1518
rq_ok1518:  OR   R6, R2, R2
rq_done1518: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1518
        LDI  R6, 0
rq_relu1518:
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
