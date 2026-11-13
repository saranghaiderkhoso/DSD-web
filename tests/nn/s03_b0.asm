        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 25
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 0
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 54
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 48
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
b0_loop601: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos601
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos601: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next601
b0_add601: ADD  R2, R2, R5
        BCC  b0_nc601
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc601:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add601
b0_next601: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop601
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop602: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na602
        ADD  R2, R2, R5
        BCC  ms_na602
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na602:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc602
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc602:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop602
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc604
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc604:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc605
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc605:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc606
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc606:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc607
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc607:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc608
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc608:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc609
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc609:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc610
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc610:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc611
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc611:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok603
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok603
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos603
        LDI  R6, 0x80
        JMP  rq_done603
rq_pos603: LDI  R6, 0x7F
        JMP  rq_done603
rq_ok603:  OR   R6, R2, R2
rq_done603: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu603
        LDI  R6, 0
rq_relu603:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop601: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos601
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos601: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next601
b0_add601: ADD  R2, R2, R5
        BCC  b0_nc601
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc601:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add601
b0_next601: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop601
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop612: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na612
        ADD  R2, R2, R5
        BCC  ms_na612
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na612:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc612
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc612:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop612
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc614
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc614:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc615
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc615:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc616
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc616:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc617
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc617:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc618
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc618:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc619
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc619:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc620
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc620:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc621
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc621:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok613
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok613
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos613
        LDI  R6, 0x80
        JMP  rq_done613
rq_pos613: LDI  R6, 0x7F
        JMP  rq_done613
rq_ok613:  OR   R6, R2, R2
rq_done613: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu613
        LDI  R6, 0
rq_relu613:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop601: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos601
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos601: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next601
b0_add601: ADD  R2, R2, R5
        BCC  b0_nc601
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc601:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add601
b0_next601: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop601
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop622: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na622
        ADD  R2, R2, R5
        BCC  ms_na622
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na622:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc622
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc622:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop622
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc624
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc624:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc625
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc625:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc626
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc626:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc627
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc627:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc628
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc628:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc629
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc629:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc630
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc630:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc631
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc631:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok623
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok623
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos623
        LDI  R6, 0x80
        JMP  rq_done623
rq_pos623: LDI  R6, 0x7F
        JMP  rq_done623
rq_ok623:  OR   R6, R2, R2
rq_done623: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu623
        LDI  R6, 0
rq_relu623:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop601: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos601
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos601: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next601
b0_add601: ADD  R2, R2, R5
        BCC  b0_nc601
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc601:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add601
b0_next601: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop601
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop632: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na632
        ADD  R2, R2, R5
        BCC  ms_na632
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na632:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc632
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc632:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop632
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc634
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc634:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc635
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc635:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc636
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc636:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc637
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc637:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc638
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc638:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc639
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc639:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc640
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc640:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc641
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc641:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok633
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok633
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos633
        LDI  R6, 0x80
        JMP  rq_done633
rq_pos633: LDI  R6, 0x7F
        JMP  rq_done633
rq_ok633:  OR   R6, R2, R2
rq_done633: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu633
        LDI  R6, 0
rq_relu633:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop601: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos601
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos601: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next601
b0_add601: ADD  R2, R2, R5
        BCC  b0_nc601
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc601:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add601
b0_next601: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop601
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop642: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na642
        ADD  R2, R2, R5
        BCC  ms_na642
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na642:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc642
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc642:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop642
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc644
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc644:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc645
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc645:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc646
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc646:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc647
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc647:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc648
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc648:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc649
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc649:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc650
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc650:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc651
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc651:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok643
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok643
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos643
        LDI  R6, 0x80
        JMP  rq_done643
rq_pos643: LDI  R6, 0x7F
        JMP  rq_done643
rq_ok643:  OR   R6, R2, R2
rq_done643: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu643
        LDI  R6, 0
rq_relu643:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop601: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos601
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos601: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next601
b0_add601: ADD  R2, R2, R5
        BCC  b0_nc601
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc601:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add601
b0_next601: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop601
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop652: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na652
        ADD  R2, R2, R5
        BCC  ms_na652
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na652:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc652
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc652:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop652
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc654
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc654:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc655
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc655:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc656
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc656:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc657
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc657:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc658
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc658:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc659
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc659:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc660
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc660:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc661
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc661:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok653
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok653
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos653
        LDI  R6, 0x80
        JMP  rq_done653
rq_pos653: LDI  R6, 0x7F
        JMP  rq_done653
rq_ok653:  OR   R6, R2, R2
rq_done653: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu653
        LDI  R6, 0
rq_relu653:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop2601: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2601
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2601: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2601
b0_add2601: ADD R2, R2, R5
        BCC  b0_nc2601
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2601: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2601
b0_next2601: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2601
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop662: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na662
        ADD  R2, R2, R5
        BCC  ms_na662
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na662:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc662
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc662:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop662
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc664
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc664:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc665
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc665:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc666
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc666:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok663
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok663
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos663
        LDI  R6, 0x80
        JMP  rq_done663
rq_pos663: LDI  R6, 0x7F
        JMP  rq_done663
rq_ok663:  OR   R6, R2, R2
rq_done663: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu663
        LDI  R6, 0
rq_relu663:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop2601: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2601
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2601: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2601
b0_add2601: ADD R2, R2, R5
        BCC  b0_nc2601
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2601: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2601
b0_next2601: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2601
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop667: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na667
        ADD  R2, R2, R5
        BCC  ms_na667
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na667:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc667
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc667:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop667
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc669
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc669:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc670
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc670:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc671
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc671:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok668
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok668
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos668
        LDI  R6, 0x80
        JMP  rq_done668
rq_pos668: LDI  R6, 0x7F
        JMP  rq_done668
rq_ok668:  OR   R6, R2, R2
rq_done668: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu668
        LDI  R6, 0
rq_relu668:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop2601: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2601
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2601: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next2601
b0_add2601: ADD R2, R2, R5
        BCC  b0_nc2601
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2601: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2601
b0_next2601: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2601
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop672: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na672
        ADD  R2, R2, R5
        BCC  ms_na672
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na672:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc672
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc672:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop672
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc674
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc674:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc675
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc675:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc676
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc676:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok673
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok673
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos673
        LDI  R6, 0x80
        JMP  rq_done673
rq_pos673: LDI  R6, 0x7F
        JMP  rq_done673
rq_ok673:  OR   R6, R2, R2
rq_done673: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu673
        LDI  R6, 0
rq_relu673:
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
