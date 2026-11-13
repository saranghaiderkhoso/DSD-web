        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 56
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 64
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 82
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
sw_loop2874: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2875: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2875
        ADD  R2, R2, R5
        BCC  ms_na2875
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2875:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2875
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2875:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2875
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2874
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2876: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2876
        ADD  R2, R2, R5
        BCC  ms_na2876
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2876:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2876
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2876:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2876
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2878
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2878:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2879
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2879:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2880
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2880:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2881
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2881:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2882
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2882:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2883
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2883:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2884
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2884:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2885
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2885:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2877
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2877
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2877
        LDI  R6, 0x80
        JMP  rq_done2877
rq_pos2877: LDI  R6, 0x7F
        JMP  rq_done2877
rq_ok2877:  OR   R6, R2, R2
rq_done2877: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2877
        LDI  R6, 0
rq_relu2877:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop2886: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2887: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2887
        ADD  R2, R2, R5
        BCC  ms_na2887
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2887:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2887
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2887:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2887
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2886
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2888: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2888
        ADD  R2, R2, R5
        BCC  ms_na2888
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2888:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2888
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2888:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2888
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2890
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2890:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2891
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2891:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2892
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2892:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2893
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2893:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2894
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2894:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2895
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2895:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2896
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2896:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2897
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2897:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2889
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2889
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2889
        LDI  R6, 0x80
        JMP  rq_done2889
rq_pos2889: LDI  R6, 0x7F
        JMP  rq_done2889
rq_ok2889:  OR   R6, R2, R2
rq_done2889: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2889
        LDI  R6, 0
rq_relu2889:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop2898: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2899: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2899
        ADD  R2, R2, R5
        BCC  ms_na2899
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2899:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2899
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2899:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2899
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2898
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2900: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2900
        ADD  R2, R2, R5
        BCC  ms_na2900
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2900:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2900
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2900:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2900
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2902
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2902:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2903
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2903:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2904
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2904:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2905
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2905:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2906
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2906:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2907
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2907:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2908
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2908:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2909
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2909:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2901
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2901
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2901
        LDI  R6, 0x80
        JMP  rq_done2901
rq_pos2901: LDI  R6, 0x7F
        JMP  rq_done2901
rq_ok2901:  OR   R6, R2, R2
rq_done2901: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2901
        LDI  R6, 0
rq_relu2901:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop2910: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2911: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2911
        ADD  R2, R2, R5
        BCC  ms_na2911
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2911:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2911
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2911:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2911
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2910
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2912: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2912
        ADD  R2, R2, R5
        BCC  ms_na2912
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2912:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2912
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2912:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2912
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2914
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2914:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2915
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2915:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2916
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2916:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2917
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2917:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2918
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2918:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2919
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2919:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2920
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2920:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2921
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2921:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2913
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2913
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2913
        LDI  R6, 0x80
        JMP  rq_done2913
rq_pos2913: LDI  R6, 0x7F
        JMP  rq_done2913
rq_ok2913:  OR   R6, R2, R2
rq_done2913: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2913
        LDI  R6, 0
rq_relu2913:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop2922: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2923: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2923
        ADD  R2, R2, R5
        BCC  ms_na2923
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2923:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2923
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2923:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2923
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2922
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2924: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2924
        ADD  R2, R2, R5
        BCC  ms_na2924
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2924:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2924
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2924:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2924
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2926
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2926:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2927
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2927:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2928
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2928:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2929
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2929:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2930
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2930:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2931
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2931:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2932
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2932:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2933
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2933:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2925
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2925
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2925
        LDI  R6, 0x80
        JMP  rq_done2925
rq_pos2925: LDI  R6, 0x7F
        JMP  rq_done2925
rq_ok2925:  OR   R6, R2, R2
rq_done2925: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2925
        LDI  R6, 0
rq_relu2925:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop2934: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2935: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2935
        ADD  R2, R2, R5
        BCC  ms_na2935
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2935:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2935
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2935:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2935
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2934
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2936: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2936
        ADD  R2, R2, R5
        BCC  ms_na2936
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2936:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2936
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2936:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2936
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2938
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2938:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2939
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2939:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2940
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2940:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2941
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2941:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2942
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2942:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2943
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2943:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2944
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2944:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2945
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2945:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2937
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2937
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2937
        LDI  R6, 0x80
        JMP  rq_done2937
rq_pos2937: LDI  R6, 0x7F
        JMP  rq_done2937
rq_ok2937:  OR   R6, R2, R2
rq_done2937: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2937
        LDI  R6, 0
rq_relu2937:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop2946: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2947: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2947
        ADD  R2, R2, R5
        BCC  ms_na2947
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2947:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2947
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2947:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2947
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2946
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2948: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2948
        ADD  R2, R2, R5
        BCC  ms_na2948
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2948:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2948
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2948:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2948
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2950
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2950:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2951
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2951:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2952
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2952:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2949
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2949
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2949
        LDI  R6, 0x80
        JMP  rq_done2949
rq_pos2949: LDI  R6, 0x7F
        JMP  rq_done2949
rq_ok2949:  OR   R6, R2, R2
rq_done2949: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2949
        LDI  R6, 0
rq_relu2949:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop2953: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2954: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2954
        ADD  R2, R2, R5
        BCC  ms_na2954
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2954:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2954
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2954:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2954
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2953
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2955: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2955
        ADD  R2, R2, R5
        BCC  ms_na2955
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2955:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2955
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2955:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2955
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2957
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2957:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2958
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2958:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2959
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2959:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2956
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2956
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2956
        LDI  R6, 0x80
        JMP  rq_done2956
rq_pos2956: LDI  R6, 0x7F
        JMP  rq_done2956
rq_ok2956:  OR   R6, R2, R2
rq_done2956: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2956
        LDI  R6, 0
rq_relu2956:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop2960: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2961: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2961
        ADD  R2, R2, R5
        BCC  ms_na2961
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2961:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2961
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2961:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2961
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop2960
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2962: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2962
        ADD  R2, R2, R5
        BCC  ms_na2962
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2962:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2962
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2962:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2962
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2964
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2964:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2965
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2965:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc2966
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc2966:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok2963
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok2963
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos2963
        LDI  R6, 0x80
        JMP  rq_done2963
rq_pos2963: LDI  R6, 0x7F
        JMP  rq_done2963
rq_ok2963:  OR   R6, R2, R2
rq_done2963: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu2963
        LDI  R6, 0
rq_relu2963:
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
