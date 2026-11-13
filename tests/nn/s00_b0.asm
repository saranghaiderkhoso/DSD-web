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
        LDI  R3, 65
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
b0_loop94: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos94
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos94: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next94
b0_add94: ADD  R2, R2, R5
        BCC  b0_nc94
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc94:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add94
b0_next94: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop94
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop95: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na95
        ADD  R2, R2, R5
        BCC  ms_na95
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na95:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc95
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc95:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop95
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc97
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc97:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc98
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc98:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc99
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc99:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc100
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc100:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc101
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc101:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc102
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc102:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc103
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc103:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc104
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc104:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok96
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok96
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos96
        LDI  R6, 0x80
        JMP  rq_done96
rq_pos96: LDI  R6, 0x7F
        JMP  rq_done96
rq_ok96:  OR   R6, R2, R2
rq_done96: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu96
        LDI  R6, 0
rq_relu96:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
b0_loop94: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos94
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos94: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next94
b0_add94: ADD  R2, R2, R5
        BCC  b0_nc94
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc94:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add94
b0_next94: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop94
        LDI  R5, 81
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop105: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na105
        ADD  R2, R2, R5
        BCC  ms_na105
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na105:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc105
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc105:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop105
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc107
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc107:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc108
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc108:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc109
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc109:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc110
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc110:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc111
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc111:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc112
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc112:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc113
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc113:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc114
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc114:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok106
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok106
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos106
        LDI  R6, 0x80
        JMP  rq_done106
rq_pos106: LDI  R6, 0x7F
        JMP  rq_done106
rq_ok106:  OR   R6, R2, R2
rq_done106: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu106
        LDI  R6, 0
rq_relu106:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
b0_loop94: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos94
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos94: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next94
b0_add94: ADD  R2, R2, R5
        BCC  b0_nc94
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc94:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add94
b0_next94: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop94
        LDI  R5, 0
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop115: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na115
        ADD  R2, R2, R5
        BCC  ms_na115
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na115:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc115
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc115:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop115
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc117
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc117:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc118
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc118:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc119
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc119:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc120
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc120:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc121
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc121:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc122
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc122:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc123
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc123:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc124
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc124:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok116
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok116
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos116
        LDI  R6, 0x80
        JMP  rq_done116
rq_pos116: LDI  R6, 0x7F
        JMP  rq_done116
rq_ok116:  OR   R6, R2, R2
rq_done116: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu116
        LDI  R6, 0
rq_relu116:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
b0_loop94: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos94
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos94: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next94
b0_add94: ADD  R2, R2, R5
        BCC  b0_nc94
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc94:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add94
b0_next94: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop94
        LDI  R5, 252
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop125: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na125
        ADD  R2, R2, R5
        BCC  ms_na125
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na125:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc125
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc125:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop125
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc127
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc127:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc128
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc128:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc129
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc129:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc130
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc130:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc131
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc131:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc132
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc132:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc133
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc133:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc134
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc134:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok126
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok126
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos126
        LDI  R6, 0x80
        JMP  rq_done126
rq_pos126: LDI  R6, 0x7F
        JMP  rq_done126
rq_ok126:  OR   R6, R2, R2
rq_done126: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu126
        LDI  R6, 0
rq_relu126:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
b0_loop94: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos94
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos94: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next94
b0_add94: ADD  R2, R2, R5
        BCC  b0_nc94
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc94:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add94
b0_next94: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop94
        LDI  R5, 232
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop135: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na135
        ADD  R2, R2, R5
        BCC  ms_na135
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na135:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc135
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc135:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop135
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc137
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc137:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc138
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc138:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc139
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc139:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc140
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc140:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc141
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc141:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc142
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc142:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc143
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc143:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc144
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc144:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok136
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok136
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos136
        LDI  R6, 0x80
        JMP  rq_done136
rq_pos136: LDI  R6, 0x7F
        JMP  rq_done136
rq_ok136:  OR   R6, R2, R2
rq_done136: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu136
        LDI  R6, 0
rq_relu136:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
b0_loop94: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos94
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos94: LDI  R0, 0
        CMP  R6, R0
        BEQ  b0_next94
b0_add94: ADD  R2, R2, R5
        BCC  b0_nc94
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc94:  LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add94
b0_next94: LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop94
        LDI  R5, 56
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop145: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na145
        ADD  R2, R2, R5
        BCC  ms_na145
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na145:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc145
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc145:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop145
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc147
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc147:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc148
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc148:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc149
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc149:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc150
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc150:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc151
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc151:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc152
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc152:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc153
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc153:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc154
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc154:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok146
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok146
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos146
        LDI  R6, 0x80
        JMP  rq_done146
rq_pos146: LDI  R6, 0x7F
        JMP  rq_done146
rq_ok146:  OR   R6, R2, R2
rq_done146: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu146
        LDI  R6, 0
rq_relu146:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 32
        LDI  R4, 6
b0_loop294: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos294
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos294: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next294
b0_add294: ADD R2, R2, R5
        BCC  b0_nc294
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc294: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add294
b0_next294: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop294
        LDI  R5, 5
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop155: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na155
        ADD  R2, R2, R5
        BCC  ms_na155
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na155:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc155
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc155:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop155
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc157
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc157:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc158
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc158:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc159
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc159:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok156
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok156
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos156
        LDI  R6, 0x80
        JMP  rq_done156
rq_pos156: LDI  R6, 0x7F
        JMP  rq_done156
rq_ok156:  OR   R6, R2, R2
rq_done156: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu156
        LDI  R6, 0
rq_relu156:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 38
        LDI  R4, 6
b0_loop294: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos294
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos294: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next294
b0_add294: ADD R2, R2, R5
        BCC  b0_nc294
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc294: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add294
b0_next294: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop294
        LDI  R5, 10
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop160: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na160
        ADD  R2, R2, R5
        BCC  ms_na160
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na160:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc160
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc160:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop160
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc162
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc162:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc163
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc163:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc164
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc164:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok161
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok161
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos161
        LDI  R6, 0x80
        JMP  rq_done161
rq_pos161: LDI  R6, 0x7F
        JMP  rq_done161
rq_ok161:  OR   R6, R2, R2
rq_done161: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu161
        LDI  R6, 0
rq_relu161:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 64
        LDI  R7, 44
        LDI  R4, 6
b0_loop294: LD  R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        CMP  R6, R0
        BPL  b0_pos294
        LDI  R0, 0xFF
        XOR  R6, R6, R0
        ADD  R6, R6, R0
b0_pos294: LDI R0, 0
        CMP  R6, R0
        BEQ  b0_next294
b0_add294: ADD R2, R2, R5
        BCC  b0_nc294
        LDI  R0, 1
        ADD  R3, R3, R0
b0_nc294: LDI  R0, 1
        SUB  R6, R6, R0
        BNE  b0_add294
b0_next294: LDI R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  b0_loop294
        LDI  R5, 240
        LDI  R6, 127
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop165: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na165
        ADD  R2, R2, R5
        BCC  ms_na165
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na165:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc165
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc165:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop165
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc167
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc167:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc168
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc168:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc169
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc169:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok166
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok166
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos166
        LDI  R6, 0x80
        JMP  rq_done166
rq_pos166: LDI  R6, 0x7F
        JMP  rq_done166
rq_ok166:  OR   R6, R2, R2
rq_done166: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu166
        LDI  R6, 0
rq_relu166:
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
