        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 74
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 42
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 99
        LDI  R7, 82
        ST   [R7], R3
        LDI  R4, 111
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
sw_loop3043: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3044: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3044
        ADD  R2, R2, R5
        BCC  ms_na3044
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3044:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3044
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3044:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3044
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3043
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3045: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3045
        ADD  R2, R2, R5
        BCC  ms_na3045
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3045:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3045
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3045:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3045
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3047
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3047:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3048
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3048:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3049
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3049:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3050
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3050:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3051
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3051:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3052
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3052:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3053
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3053:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3054
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3054:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3046
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3046
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3046
        LDI  R6, 0x80
        JMP  rq_done3046
rq_pos3046: LDI  R6, 0x7F
        JMP  rq_done3046
rq_ok3046:  OR   R6, R2, R2
rq_done3046: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3046
        LDI  R6, 0
rq_relu3046:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop3055: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3056: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3056
        ADD  R2, R2, R5
        BCC  ms_na3056
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3056:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3056
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3056:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3056
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3055
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3057: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3057
        ADD  R2, R2, R5
        BCC  ms_na3057
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3057:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3057
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3057:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3057
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3059
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3059:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3060
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3060:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3061
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3061:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3062
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3062:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3063
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3063:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3064
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3064:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3065
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3065:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3066
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3066:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3058
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3058
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3058
        LDI  R6, 0x80
        JMP  rq_done3058
rq_pos3058: LDI  R6, 0x7F
        JMP  rq_done3058
rq_ok3058:  OR   R6, R2, R2
rq_done3058: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3058
        LDI  R6, 0
rq_relu3058:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop3067: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3068: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3068
        ADD  R2, R2, R5
        BCC  ms_na3068
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3068:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3068
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3068:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3068
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3067
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3069: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3069
        ADD  R2, R2, R5
        BCC  ms_na3069
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3069:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3069
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3069:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3069
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3071
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3071:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3072
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3072:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3073
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3073:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3074
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3074:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3075
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3075:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3076
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3076:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3077
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3077:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3078
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3078:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3070
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3070
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3070
        LDI  R6, 0x80
        JMP  rq_done3070
rq_pos3070: LDI  R6, 0x7F
        JMP  rq_done3070
rq_ok3070:  OR   R6, R2, R2
rq_done3070: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3070
        LDI  R6, 0
rq_relu3070:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop3079: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3080: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3080
        ADD  R2, R2, R5
        BCC  ms_na3080
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3080:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3080
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3080:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3080
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3079
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3081: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3081
        ADD  R2, R2, R5
        BCC  ms_na3081
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3081:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3081
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3081:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3081
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3083
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3083:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3084
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3084:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3085
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3085:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3086
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3086:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3087
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3087:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3088
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3088:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3089
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3089:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3090
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3090:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3082
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3082
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3082
        LDI  R6, 0x80
        JMP  rq_done3082
rq_pos3082: LDI  R6, 0x7F
        JMP  rq_done3082
rq_ok3082:  OR   R6, R2, R2
rq_done3082: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3082
        LDI  R6, 0
rq_relu3082:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop3091: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3092: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3092
        ADD  R2, R2, R5
        BCC  ms_na3092
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3092:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3092
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3092:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3092
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3091
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3093: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3093
        ADD  R2, R2, R5
        BCC  ms_na3093
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3093:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3093
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3093:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3093
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3095
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3095:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3096
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3096:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3097
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3097:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3098
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3098:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3099
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3099:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3100
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3100:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3101
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3101:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3102
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3102:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3094
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3094
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3094
        LDI  R6, 0x80
        JMP  rq_done3094
rq_pos3094: LDI  R6, 0x7F
        JMP  rq_done3094
rq_ok3094:  OR   R6, R2, R2
rq_done3094: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3094
        LDI  R6, 0
rq_relu3094:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop3103: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3104: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3104
        ADD  R2, R2, R5
        BCC  ms_na3104
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3104:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3104
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3104:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3104
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3103
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3105: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3105
        ADD  R2, R2, R5
        BCC  ms_na3105
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3105:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3105
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3105:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3105
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3107
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3107:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3108
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3108:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3109
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3109:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3110
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3110:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3111
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3111:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3112
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3112:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3113
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3113:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3114
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3114:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3106
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3106
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3106
        LDI  R6, 0x80
        JMP  rq_done3106
rq_pos3106: LDI  R6, 0x7F
        JMP  rq_done3106
rq_ok3106:  OR   R6, R2, R2
rq_done3106: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3106
        LDI  R6, 0
rq_relu3106:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop3115: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3116: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3116
        ADD  R2, R2, R5
        BCC  ms_na3116
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3116:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3116
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3116:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3116
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3115
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3117: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3117
        ADD  R2, R2, R5
        BCC  ms_na3117
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3117:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3117
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3117:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3117
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3119
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3119:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3120
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3120:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3121
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3121:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3118
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3118
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3118
        LDI  R6, 0x80
        JMP  rq_done3118
rq_pos3118: LDI  R6, 0x7F
        JMP  rq_done3118
rq_ok3118:  OR   R6, R2, R2
rq_done3118: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3118
        LDI  R6, 0
rq_relu3118:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop3122: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3123: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3123
        ADD  R2, R2, R5
        BCC  ms_na3123
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3123:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3123
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3123:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3123
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3122
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3124: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3124
        ADD  R2, R2, R5
        BCC  ms_na3124
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3124:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3124
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3124:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3124
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3126
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3126:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3127
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3127:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3128
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3128:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3125
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3125
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3125
        LDI  R6, 0x80
        JMP  rq_done3125
rq_pos3125: LDI  R6, 0x7F
        JMP  rq_done3125
rq_ok3125:  OR   R6, R2, R2
rq_done3125: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3125
        LDI  R6, 0
rq_relu3125:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop3129: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3130: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3130
        ADD  R2, R2, R5
        BCC  ms_na3130
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3130:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3130
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3130:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3130
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop3129
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3131: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3131
        ADD  R2, R2, R5
        BCC  ms_na3131
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3131:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3131
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3131:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3131
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3133
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3133:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3134
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3134:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc3135
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc3135:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok3132
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok3132
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos3132
        LDI  R6, 0x80
        JMP  rq_done3132
rq_pos3132: LDI  R6, 0x7F
        JMP  rq_done3132
rq_ok3132:  OR   R6, R2, R2
rq_done3132: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu3132
        LDI  R6, 0
rq_relu3132:
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
