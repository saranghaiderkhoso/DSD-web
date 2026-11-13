        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 120
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 53
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 110
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 116
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
b0_loop2629: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2629
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2629: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2629
b0_add2629: ADD  R2, R2, R5
        BCC  b0_nc2629
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2629:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2629
b0_next2629: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2629
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2630: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2630
        ADD  R2, R2, R5
        BCC  ms_na2630
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2630:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2630
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2630:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2630
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2632
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2632:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2633
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2633:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2634
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2634:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2635
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2635:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2636
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2636:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2637
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2637:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2638
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2638:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2639
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2639:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2631
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2631
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2631
        LDI  R6, 0x80
        JMP  rq_done2631
rq_pos2631: LDI  R6, 0x7F
        JMP  rq_done2631
rq_ok2631:  OR   R6, R2, R2
rq_done2631: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2631
        LDI  R6, 0
rq_relu2631:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop2629: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2629
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2629: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2629
b0_add2629: ADD  R2, R2, R5
        BCC  b0_nc2629
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2629:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2629
b0_next2629: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2629
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2640: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2640
        ADD  R2, R2, R5
        BCC  ms_na2640
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2640:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2640
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2640:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2640
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2642
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2642:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2643
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2643:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2644
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2644:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2645
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2645:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2646
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2646:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2647
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2647:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2648
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2648:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2649
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2649:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2641
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2641
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2641
        LDI  R6, 0x80
        JMP  rq_done2641
rq_pos2641: LDI  R6, 0x7F
        JMP  rq_done2641
rq_ok2641:  OR   R6, R2, R2
rq_done2641: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2641
        LDI  R6, 0
rq_relu2641:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop2629: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2629
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2629: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2629
b0_add2629: ADD  R2, R2, R5
        BCC  b0_nc2629
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2629:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2629
b0_next2629: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2629
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2650: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2650
        ADD  R2, R2, R5
        BCC  ms_na2650
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2650:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2650
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2650:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2650
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2652
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2652:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2653
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2653:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2654
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2654:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2655
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2655:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2656
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2656:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2657
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2657:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2658
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2658:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2659
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2659:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2651
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2651
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2651
        LDI  R6, 0x80
        JMP  rq_done2651
rq_pos2651: LDI  R6, 0x7F
        JMP  rq_done2651
rq_ok2651:  OR   R6, R2, R2
rq_done2651: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2651
        LDI  R6, 0
rq_relu2651:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop2629: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2629
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2629: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2629
b0_add2629: ADD  R2, R2, R5
        BCC  b0_nc2629
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2629:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2629
b0_next2629: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2629
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2660: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2660
        ADD  R2, R2, R5
        BCC  ms_na2660
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2660:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2660
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2660:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2660
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2662
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2662:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2663
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2663:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2664
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2664:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2665
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2665:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2666
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2666:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2667
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2667:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2668
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2668:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2669
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2669:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2661
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2661
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2661
        LDI  R6, 0x80
        JMP  rq_done2661
rq_pos2661: LDI  R6, 0x7F
        JMP  rq_done2661
rq_ok2661:  OR   R6, R2, R2
rq_done2661: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2661
        LDI  R6, 0
rq_relu2661:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop2629: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2629
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2629: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2629
b0_add2629: ADD  R2, R2, R5
        BCC  b0_nc2629
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2629:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2629
b0_next2629: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2629
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2670: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2670
        ADD  R2, R2, R5
        BCC  ms_na2670
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2670:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2670
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2670:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2670
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2672
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2672:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2673
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2673:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2674
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2674:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2675
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2675:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2676
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2676:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2677
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2677:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2678
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2678:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2679
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2679:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2671
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2671
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2671
        LDI  R6, 0x80
        JMP  rq_done2671
rq_pos2671: LDI  R6, 0x7F
        JMP  rq_done2671
rq_ok2671:  OR   R6, R2, R2
rq_done2671: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2671
        LDI  R6, 0
rq_relu2671:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop2629: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos2629
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos2629: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next2629
b0_add2629: ADD  R2, R2, R5
        BCC  b0_nc2629
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc2629:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add2629
b0_next2629: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop2629
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2680: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2680
        ADD  R2, R2, R5
        BCC  ms_na2680
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2680:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2680
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2680:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2680
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2682
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2682:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2683
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2683:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2684
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2684:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2685
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2685:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2686
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2686:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2687
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2687:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2688
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2688:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2689
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2689:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2681
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2681
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2681
        LDI  R6, 0x80
        JMP  rq_done2681
rq_pos2681: LDI  R6, 0x7F
        JMP  rq_done2681
rq_ok2681:  OR   R6, R2, R2
rq_done2681: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2681
        LDI  R6, 0
rq_relu2681:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop22629: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22629
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22629: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22629
b0_add22629: ADD R2, R2, R5
        BCC  b0_nc22629
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22629: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22629
b0_next22629: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22629
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2690: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2690
        ADD  R2, R2, R5
        BCC  ms_na2690
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2690:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2690
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2690:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2690
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2692
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2692:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2693
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2693:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2694
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2694:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2691
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2691
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2691
        LDI  R6, 0x80
        JMP  rq_done2691
rq_pos2691: LDI  R6, 0x7F
        JMP  rq_done2691
rq_ok2691:  OR   R6, R2, R2
rq_done2691: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2691
        LDI  R6, 0
rq_relu2691:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop22629: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22629
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22629: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22629
b0_add22629: ADD R2, R2, R5
        BCC  b0_nc22629
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22629: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22629
b0_next22629: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22629
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2695: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2695
        ADD  R2, R2, R5
        BCC  ms_na2695
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2695:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2695
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2695:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2695
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2697
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2697:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2698
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2698:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2699
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2699:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2696
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2696
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2696
        LDI  R6, 0x80
        JMP  rq_done2696
rq_pos2696: LDI  R6, 0x7F
        JMP  rq_done2696
rq_ok2696:  OR   R6, R2, R2
rq_done2696: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2696
        LDI  R6, 0
rq_relu2696:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop22629: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos22629
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos22629: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next22629
b0_add22629: ADD R2, R2, R5
        BCC  b0_nc22629
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc22629: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add22629
b0_next22629: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop22629
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2700: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2700
        ADD  R2, R2, R5
        BCC  ms_na2700
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2700:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2700
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2700:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2700
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2702
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2702:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2703
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2703:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2704
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2704:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2701
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2701
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2701
        LDI  R6, 0x80
        JMP  rq_done2701
rq_pos2701: LDI  R6, 0x7F
        JMP  rq_done2701
rq_ok2701:  OR   R6, R2, R2
rq_done2701: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2701
        LDI  R6, 0
rq_relu2701:
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
