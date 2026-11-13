        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 28
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 79
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
b0_loop263: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos263
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos263: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next263
b0_add263: ADD  R2, R2, R5
        BCC  b0_nc263
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc263:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add263
b0_next263: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop263
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop264: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na264
        ADD  R2, R2, R5
        BCC  ms_na264
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na264:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc264
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc264:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop264
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc266
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc266:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc267
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc267:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc268
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc268:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc269
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc269:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc270
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc270:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc271
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc271:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc272
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc272:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc273
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc273:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok265
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok265
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos265
        LDI  R6, 0x80
        JMP  rq_done265
rq_pos265: LDI  R6, 0x7F
        JMP  rq_done265
rq_ok265:  OR   R6, R2, R2
rq_done265: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu265
        LDI  R6, 0
rq_relu265:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop263: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos263
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos263: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next263
b0_add263: ADD  R2, R2, R5
        BCC  b0_nc263
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc263:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add263
b0_next263: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop263
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop274: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na274
        ADD  R2, R2, R5
        BCC  ms_na274
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na274:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc274
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc274:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop274
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc276
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc276:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc277
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc277:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc278
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc278:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc279
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc279:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc280
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc280:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc281
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc281:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc282
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc282:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc283
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc283:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok275
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok275
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos275
        LDI  R6, 0x80
        JMP  rq_done275
rq_pos275: LDI  R6, 0x7F
        JMP  rq_done275
rq_ok275:  OR   R6, R2, R2
rq_done275: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu275
        LDI  R6, 0
rq_relu275:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop263: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos263
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos263: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next263
b0_add263: ADD  R2, R2, R5
        BCC  b0_nc263
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc263:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add263
b0_next263: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop263
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop284: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na284
        ADD  R2, R2, R5
        BCC  ms_na284
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na284:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc284
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc284:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop284
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc286
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc286:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc287
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc287:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc288
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc288:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc289
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc289:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc290
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc290:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc291
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc291:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc292
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc292:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc293
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc293:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok285
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok285
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos285
        LDI  R6, 0x80
        JMP  rq_done285
rq_pos285: LDI  R6, 0x7F
        JMP  rq_done285
rq_ok285:  OR   R6, R2, R2
rq_done285: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu285
        LDI  R6, 0
rq_relu285:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop263: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos263
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos263: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next263
b0_add263: ADD  R2, R2, R5
        BCC  b0_nc263
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc263:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add263
b0_next263: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop263
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop294: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na294
        ADD  R2, R2, R5
        BCC  ms_na294
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na294:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc294
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc294:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop294
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc296
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc296:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc297
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc297:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc298
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc298:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc299
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc299:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc300
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc300:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc301
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc301:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc302
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc302:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc303
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc303:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok295
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok295
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos295
        LDI  R6, 0x80
        JMP  rq_done295
rq_pos295: LDI  R6, 0x7F
        JMP  rq_done295
rq_ok295:  OR   R6, R2, R2
rq_done295: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu295
        LDI  R6, 0
rq_relu295:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop263: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos263
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos263: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next263
b0_add263: ADD  R2, R2, R5
        BCC  b0_nc263
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc263:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add263
b0_next263: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop263
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop304: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na304
        ADD  R2, R2, R5
        BCC  ms_na304
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na304:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc304
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc304:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop304
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc306
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc306:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc307
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc307:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc308
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc308:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc309
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc309:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc310
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc310:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc311
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc311:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc312
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc312:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc313
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc313:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok305
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok305
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos305
        LDI  R6, 0x80
        JMP  rq_done305
rq_pos305: LDI  R6, 0x7F
        JMP  rq_done305
rq_ok305:  OR   R6, R2, R2
rq_done305: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu305
        LDI  R6, 0
rq_relu305:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop263: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos263
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos263: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next263
b0_add263: ADD  R2, R2, R5
        BCC  b0_nc263
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc263:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add263
b0_next263: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop263
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop314: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na314
        ADD  R2, R2, R5
        BCC  ms_na314
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na314:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc314
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc314:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop314
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc316
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc316:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc317
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc317:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc318
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc318:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc319
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc319:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc320
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc320:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc321
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc321:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc322
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc322:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc323
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc323:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok315
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok315
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos315
        LDI  R6, 0x80
        JMP  rq_done315
rq_pos315: LDI  R6, 0x7F
        JMP  rq_done315
rq_ok315:  OR   R6, R2, R2
rq_done315: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu315
        LDI  R6, 0
rq_relu315:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop2263: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2263
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2263: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2263
b0_add2263: ADD R2, R2, R5
        BCC  b0_nc2263
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2263: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2263
b0_next2263: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2263
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop324: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na324
        ADD  R2, R2, R5
        BCC  ms_na324
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na324:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc324
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc324:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop324
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc326
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc326:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc327
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc327:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc328
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc328:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok325
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok325
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos325
        LDI  R6, 0x80
        JMP  rq_done325
rq_pos325: LDI  R6, 0x7F
        JMP  rq_done325
rq_ok325:  OR   R6, R2, R2
rq_done325: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu325
        LDI  R6, 0
rq_relu325:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop2263: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2263
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2263: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2263
b0_add2263: ADD R2, R2, R5
        BCC  b0_nc2263
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2263: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2263
b0_next2263: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2263
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop329: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na329
        ADD  R2, R2, R5
        BCC  ms_na329
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na329:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc329
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc329:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop329
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc331
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc331:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc332
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc332:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc333
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc333:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok330
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok330
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos330
        LDI  R6, 0x80
        JMP  rq_done330
rq_pos330: LDI  R6, 0x7F
        JMP  rq_done330
rq_ok330:  OR   R6, R2, R2
rq_done330: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu330
        LDI  R6, 0
rq_relu330:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop2263: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2263
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2263: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2263
b0_add2263: ADD R2, R2, R5
        BCC  b0_nc2263
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2263: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2263
b0_next2263: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2263
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop334: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na334
        ADD  R2, R2, R5
        BCC  ms_na334
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na334:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc334
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc334:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop334
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc336
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc336:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc337
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc337:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc338
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc338:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok335
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok335
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos335
        LDI  R6, 0x80
        JMP  rq_done335
rq_pos335: LDI  R6, 0x7F
        JMP  rq_done335
rq_ok335:  OR   R6, R2, R2
rq_done335: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu335
        LDI  R6, 0
rq_relu335:
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
