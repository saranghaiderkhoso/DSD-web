        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 88
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 53
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 97
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 106
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
sw_loop677: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop678: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na678
        ADD  R2, R2, R5
        BCC  ms_na678
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na678:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc678
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc678:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop678
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop677
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop679: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na679
        ADD  R2, R2, R5
        BCC  ms_na679
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na679:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc679
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc679:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop679
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc681
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc681:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc682
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc682:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc683
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc683:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc684
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc684:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc685
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc685:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc686
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc686:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc687
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc687:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc688
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc688:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok680
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok680
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos680
        LDI  R6, 0x80
        JMP  rq_done680
rq_pos680: LDI  R6, 0x7F
        JMP  rq_done680
rq_ok680:  OR   R6, R2, R2
rq_done680: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu680
        LDI  R6, 0
rq_relu680:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop689: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop690: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na690
        ADD  R2, R2, R5
        BCC  ms_na690
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na690:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc690
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc690:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop690
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop689
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop691: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na691
        ADD  R2, R2, R5
        BCC  ms_na691
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na691:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc691
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc691:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop691
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc693
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc693:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc694
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc694:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc695
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc695:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc696
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc696:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc697
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc697:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc698
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc698:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc699
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc699:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc700
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc700:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok692
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok692
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos692
        LDI  R6, 0x80
        JMP  rq_done692
rq_pos692: LDI  R6, 0x7F
        JMP  rq_done692
rq_ok692:  OR   R6, R2, R2
rq_done692: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu692
        LDI  R6, 0
rq_relu692:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop701: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop702: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na702
        ADD  R2, R2, R5
        BCC  ms_na702
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na702:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc702
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc702:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop702
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop701
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop703: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na703
        ADD  R2, R2, R5
        BCC  ms_na703
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na703:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc703
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc703:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop703
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc705
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc705:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc706
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc706:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc707
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc707:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc708
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc708:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc709
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc709:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc710
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc710:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc711
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc711:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc712
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc712:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok704
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok704
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos704
        LDI  R6, 0x80
        JMP  rq_done704
rq_pos704: LDI  R6, 0x7F
        JMP  rq_done704
rq_ok704:  OR   R6, R2, R2
rq_done704: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu704
        LDI  R6, 0
rq_relu704:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop713: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop714: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na714
        ADD  R2, R2, R5
        BCC  ms_na714
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na714:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc714
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc714:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop714
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop713
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop715: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na715
        ADD  R2, R2, R5
        BCC  ms_na715
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na715:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc715
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc715:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop715
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc717
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc717:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc718
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc718:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc719
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc719:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc720
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc720:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc721
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc721:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc722
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc722:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc723
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc723:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc724
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc724:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok716
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok716
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos716
        LDI  R6, 0x80
        JMP  rq_done716
rq_pos716: LDI  R6, 0x7F
        JMP  rq_done716
rq_ok716:  OR   R6, R2, R2
rq_done716: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu716
        LDI  R6, 0
rq_relu716:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop725: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop726: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na726
        ADD  R2, R2, R5
        BCC  ms_na726
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na726:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc726
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc726:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop726
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop725
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop727: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na727
        ADD  R2, R2, R5
        BCC  ms_na727
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na727:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc727
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc727:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop727
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc729
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc729:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc730
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc730:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc731
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc731:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc732
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc732:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc733
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc733:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc734
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc734:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc735
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc735:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc736
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc736:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok728
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok728
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos728
        LDI  R6, 0x80
        JMP  rq_done728
rq_pos728: LDI  R6, 0x7F
        JMP  rq_done728
rq_ok728:  OR   R6, R2, R2
rq_done728: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu728
        LDI  R6, 0
rq_relu728:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop737: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop738: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na738
        ADD  R2, R2, R5
        BCC  ms_na738
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na738:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc738
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc738:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop738
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop737
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop739: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na739
        ADD  R2, R2, R5
        BCC  ms_na739
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na739:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc739
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc739:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop739
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc741
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc741:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc742
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc742:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc743
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc743:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc744
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc744:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc745
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc745:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc746
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc746:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc747
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc747:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc748
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc748:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok740
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok740
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos740
        LDI  R6, 0x80
        JMP  rq_done740
rq_pos740: LDI  R6, 0x7F
        JMP  rq_done740
rq_ok740:  OR   R6, R2, R2
rq_done740: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu740
        LDI  R6, 0
rq_relu740:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop749: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop750: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na750
        ADD  R2, R2, R5
        BCC  ms_na750
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na750:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc750
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc750:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop750
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop749
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop751: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na751
        ADD  R2, R2, R5
        BCC  ms_na751
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na751:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc751
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc751:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop751
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc753
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc753:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc754
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc754:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc755
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc755:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok752
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok752
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos752
        LDI  R6, 0x80
        JMP  rq_done752
rq_pos752: LDI  R6, 0x7F
        JMP  rq_done752
rq_ok752:  OR   R6, R2, R2
rq_done752: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu752
        LDI  R6, 0
rq_relu752:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop756: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop757: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na757
        ADD  R2, R2, R5
        BCC  ms_na757
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na757:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc757
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc757:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop757
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop756
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop758: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na758
        ADD  R2, R2, R5
        BCC  ms_na758
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na758:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc758
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc758:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop758
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc760
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc760:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc761
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc761:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc762
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc762:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok759
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok759
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos759
        LDI  R6, 0x80
        JMP  rq_done759
rq_pos759: LDI  R6, 0x7F
        JMP  rq_done759
rq_ok759:  OR   R6, R2, R2
rq_done759: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu759
        LDI  R6, 0
rq_relu759:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop763: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop764: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na764
        ADD  R2, R2, R5
        BCC  ms_na764
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na764:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc764
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc764:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop764
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop763
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop765: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na765
        ADD  R2, R2, R5
        BCC  ms_na765
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na765:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc765
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc765:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop765
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc767
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc767:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc768
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc768:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc769
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc769:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok766
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok766
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos766
        LDI  R6, 0x80
        JMP  rq_done766
rq_pos766: LDI  R6, 0x7F
        JMP  rq_done766
rq_ok766:  OR   R6, R2, R2
rq_done766: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu766
        LDI  R6, 0
rq_relu766:
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
