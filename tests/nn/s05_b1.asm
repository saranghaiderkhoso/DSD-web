        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 60
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 11
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 86
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 74
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
sw_loop846: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop847: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na847
        ADD  R2, R2, R5
        BCC  ms_na847
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na847:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc847
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc847:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop847
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop846
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop848: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na848
        ADD  R2, R2, R5
        BCC  ms_na848
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na848:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc848
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc848:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop848
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc850
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc850:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc851
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc851:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc852
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc852:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc853
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc853:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc854
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc854:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc855
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc855:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc856
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc856:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc857
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc857:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok849
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok849
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos849
        LDI  R6, 0x80
        JMP  rq_done849
rq_pos849: LDI  R6, 0x7F
        JMP  rq_done849
rq_ok849:  OR   R6, R2, R2
rq_done849: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu849
        LDI  R6, 0
rq_relu849:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop858: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop859: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na859
        ADD  R2, R2, R5
        BCC  ms_na859
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na859:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc859
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc859:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop859
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop858
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop860: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na860
        ADD  R2, R2, R5
        BCC  ms_na860
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na860:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc860
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc860:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop860
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc862
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc862:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc863
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc863:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc864
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc864:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc865
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc865:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc866
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc866:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc867
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc867:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc868
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc868:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc869
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc869:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok861
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok861
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos861
        LDI  R6, 0x80
        JMP  rq_done861
rq_pos861: LDI  R6, 0x7F
        JMP  rq_done861
rq_ok861:  OR   R6, R2, R2
rq_done861: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu861
        LDI  R6, 0
rq_relu861:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop870: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop871: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na871
        ADD  R2, R2, R5
        BCC  ms_na871
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na871:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc871
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc871:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop871
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop870
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop872: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na872
        ADD  R2, R2, R5
        BCC  ms_na872
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na872:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc872
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc872:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop872
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc874
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc874:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc875
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc875:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc876
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc876:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc877
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc877:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc878
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc878:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc879
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc879:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc880
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc880:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc881
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc881:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok873
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok873
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos873
        LDI  R6, 0x80
        JMP  rq_done873
rq_pos873: LDI  R6, 0x7F
        JMP  rq_done873
rq_ok873:  OR   R6, R2, R2
rq_done873: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu873
        LDI  R6, 0
rq_relu873:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop882: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop883: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na883
        ADD  R2, R2, R5
        BCC  ms_na883
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na883:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc883
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc883:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop883
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop882
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop884: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na884
        ADD  R2, R2, R5
        BCC  ms_na884
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na884:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc884
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc884:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop884
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc886
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc886:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc887
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc887:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc888
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc888:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc889
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc889:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc890
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc890:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc891
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc891:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc892
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc892:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc893
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc893:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok885
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok885
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos885
        LDI  R6, 0x80
        JMP  rq_done885
rq_pos885: LDI  R6, 0x7F
        JMP  rq_done885
rq_ok885:  OR   R6, R2, R2
rq_done885: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu885
        LDI  R6, 0
rq_relu885:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop894: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop895: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na895
        ADD  R2, R2, R5
        BCC  ms_na895
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na895:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc895
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc895:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop895
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop894
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop896: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na896
        ADD  R2, R2, R5
        BCC  ms_na896
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na896:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc896
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc896:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop896
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc898
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc898:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc899
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc899:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc900
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc900:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc901
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc901:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc902
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc902:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc903
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc903:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc904
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc904:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc905
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc905:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok897
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok897
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos897
        LDI  R6, 0x80
        JMP  rq_done897
rq_pos897: LDI  R6, 0x7F
        JMP  rq_done897
rq_ok897:  OR   R6, R2, R2
rq_done897: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu897
        LDI  R6, 0
rq_relu897:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop906: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop907: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na907
        ADD  R2, R2, R5
        BCC  ms_na907
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na907:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc907
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc907:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop907
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop906
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop908: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na908
        ADD  R2, R2, R5
        BCC  ms_na908
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na908:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc908
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc908:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop908
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc910
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc910:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc911
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc911:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc912
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc912:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc913
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc913:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc914
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc914:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc915
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc915:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc916
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc916:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc917
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc917:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok909
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok909
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos909
        LDI  R6, 0x80
        JMP  rq_done909
rq_pos909: LDI  R6, 0x7F
        JMP  rq_done909
rq_ok909:  OR   R6, R2, R2
rq_done909: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu909
        LDI  R6, 0
rq_relu909:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop918: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop919: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na919
        ADD  R2, R2, R5
        BCC  ms_na919
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na919:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc919
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc919:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop919
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop918
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop920: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na920
        ADD  R2, R2, R5
        BCC  ms_na920
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na920:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc920
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc920:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop920
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc922
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc922:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc923
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc923:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc924
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc924:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok921
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok921
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos921
        LDI  R6, 0x80
        JMP  rq_done921
rq_pos921: LDI  R6, 0x7F
        JMP  rq_done921
rq_ok921:  OR   R6, R2, R2
rq_done921: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu921
        LDI  R6, 0
rq_relu921:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop925: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop926: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na926
        ADD  R2, R2, R5
        BCC  ms_na926
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na926:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc926
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc926:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop926
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop925
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop927: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na927
        ADD  R2, R2, R5
        BCC  ms_na927
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na927:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc927
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc927:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop927
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc929
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc929:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc930
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc930:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc931
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc931:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok928
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok928
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos928
        LDI  R6, 0x80
        JMP  rq_done928
rq_pos928: LDI  R6, 0x7F
        JMP  rq_done928
rq_ok928:  OR   R6, R2, R2
rq_done928: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu928
        LDI  R6, 0
rq_relu928:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop932: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop933: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na933
        ADD  R2, R2, R5
        BCC  ms_na933
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na933:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc933
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc933:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop933
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop932
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop934: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na934
        ADD  R2, R2, R5
        BCC  ms_na934
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na934:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc934
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc934:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop934
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc936
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc936:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc937
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc937:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc938
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc938:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok935
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok935
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos935
        LDI  R6, 0x80
        JMP  rq_done935
rq_pos935: LDI  R6, 0x7F
        JMP  rq_done935
rq_ok935:  OR   R6, R2, R2
rq_done935: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu935
        LDI  R6, 0
rq_relu935:
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
