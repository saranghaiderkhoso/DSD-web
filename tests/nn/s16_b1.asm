        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 39
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 74
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 11
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 16
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
sw_loop2705: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2706: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2706
        ADD  R2, R2, R5
        BCC  ms_na2706
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2706:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2706
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2706:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2706
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2705
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2707: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2707
        ADD  R2, R2, R5
        BCC  ms_na2707
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2707:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2707
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2707:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2707
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2709
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2709:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2710
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2710:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2711
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2711:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2712
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2712:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2713
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2713:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2714
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2714:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2715
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2715:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2716
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2716:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2708
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2708
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2708
        LDI  R6, 0x80
        JMP  rq_done2708
rq_pos2708: LDI  R6, 0x7F
        JMP  rq_done2708
rq_ok2708:  OR   R6, R2, R2
rq_done2708: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2708
        LDI  R6, 0
rq_relu2708:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop2717: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2718: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2718
        ADD  R2, R2, R5
        BCC  ms_na2718
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2718:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2718
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2718:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2718
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2717
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2719: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2719
        ADD  R2, R2, R5
        BCC  ms_na2719
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2719:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2719
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2719:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2719
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2721
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2721:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2722
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2722:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2723
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2723:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2724
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2724:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2725
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2725:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2726
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2726:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2727
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2727:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2728
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2728:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2720
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2720
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2720
        LDI  R6, 0x80
        JMP  rq_done2720
rq_pos2720: LDI  R6, 0x7F
        JMP  rq_done2720
rq_ok2720:  OR   R6, R2, R2
rq_done2720: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2720
        LDI  R6, 0
rq_relu2720:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop2729: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2730: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2730
        ADD  R2, R2, R5
        BCC  ms_na2730
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2730:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2730
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2730:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2730
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2729
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2731: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2731
        ADD  R2, R2, R5
        BCC  ms_na2731
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2731:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2731
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2731:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2731
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2733
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2733:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2734
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2734:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2735
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2735:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2736
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2736:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2737
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2737:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2738
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2738:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2739
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2739:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2740
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2740:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2732
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2732
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2732
        LDI  R6, 0x80
        JMP  rq_done2732
rq_pos2732: LDI  R6, 0x7F
        JMP  rq_done2732
rq_ok2732:  OR   R6, R2, R2
rq_done2732: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2732
        LDI  R6, 0
rq_relu2732:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop2741: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2742: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2742
        ADD  R2, R2, R5
        BCC  ms_na2742
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2742:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2742
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2742:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2742
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2741
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2743: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2743
        ADD  R2, R2, R5
        BCC  ms_na2743
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2743:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2743
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2743:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2743
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2745
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2745:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2746
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2746:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2747
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2747:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2748
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2748:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2749
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2749:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2750
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2750:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2751
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2751:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2752
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2752:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2744
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2744
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2744
        LDI  R6, 0x80
        JMP  rq_done2744
rq_pos2744: LDI  R6, 0x7F
        JMP  rq_done2744
rq_ok2744:  OR   R6, R2, R2
rq_done2744: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2744
        LDI  R6, 0
rq_relu2744:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop2753: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2754: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2754
        ADD  R2, R2, R5
        BCC  ms_na2754
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2754:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2754
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2754:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2754
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2753
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2755: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2755
        ADD  R2, R2, R5
        BCC  ms_na2755
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2755:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2755
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2755:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2755
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2757
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2757:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2758
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2758:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2759
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2759:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2760
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2760:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2761
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2761:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2762
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2762:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2763
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2763:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2764
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2764:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2756
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2756
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2756
        LDI  R6, 0x80
        JMP  rq_done2756
rq_pos2756: LDI  R6, 0x7F
        JMP  rq_done2756
rq_ok2756:  OR   R6, R2, R2
rq_done2756: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2756
        LDI  R6, 0
rq_relu2756:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop2765: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2766: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2766
        ADD  R2, R2, R5
        BCC  ms_na2766
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2766:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2766
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2766:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2766
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2765
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2767: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2767
        ADD  R2, R2, R5
        BCC  ms_na2767
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2767:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2767
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2767:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2767
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2769
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2769:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2770
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2770:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2771
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2771:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2772
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2772:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2773
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2773:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2774
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2774:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2775
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2775:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2776
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2776:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2768
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2768
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2768
        LDI  R6, 0x80
        JMP  rq_done2768
rq_pos2768: LDI  R6, 0x7F
        JMP  rq_done2768
rq_ok2768:  OR   R6, R2, R2
rq_done2768: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2768
        LDI  R6, 0
rq_relu2768:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop2777: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2778: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2778
        ADD  R2, R2, R5
        BCC  ms_na2778
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2778:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2778
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2778:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2778
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2777
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2779: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2779
        ADD  R2, R2, R5
        BCC  ms_na2779
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2779:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2779
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2779:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2779
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2781
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2781:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2782
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2782:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2783
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2783:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2780
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2780
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2780
        LDI  R6, 0x80
        JMP  rq_done2780
rq_pos2780: LDI  R6, 0x7F
        JMP  rq_done2780
rq_ok2780:  OR   R6, R2, R2
rq_done2780: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2780
        LDI  R6, 0
rq_relu2780:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop2784: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2785: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2785
        ADD  R2, R2, R5
        BCC  ms_na2785
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2785:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2785
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2785:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2785
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2784
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2786: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2786
        ADD  R2, R2, R5
        BCC  ms_na2786
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2786:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2786
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2786:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2786
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2788
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2788:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2789
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2789:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2790
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2790:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2787
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2787
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2787
        LDI  R6, 0x80
        JMP  rq_done2787
rq_pos2787: LDI  R6, 0x7F
        JMP  rq_done2787
rq_ok2787:  OR   R6, R2, R2
rq_done2787: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2787
        LDI  R6, 0
rq_relu2787:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop2791: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2792: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2792
        ADD  R2, R2, R5
        BCC  ms_na2792
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2792:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2792
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2792:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2792
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2791
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2793: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2793
        ADD  R2, R2, R5
        BCC  ms_na2793
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2793:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2793
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2793:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2793
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2795
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2795:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2796
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2796:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2797
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2797:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2794
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2794
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2794
        LDI  R6, 0x80
        JMP  rq_done2794
rq_pos2794: LDI  R6, 0x7F
        JMP  rq_done2794
rq_ok2794:  OR   R6, R2, R2
rq_done2794: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2794
        LDI  R6, 0
rq_relu2794:
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
