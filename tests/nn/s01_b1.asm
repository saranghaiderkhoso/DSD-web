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
sw_loop170: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop171: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na171
        ADD  R2, R2, R5
        BCC  ms_na171
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na171:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc171
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc171:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop171
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop170
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop172: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na172
        ADD  R2, R2, R5
        BCC  ms_na172
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na172:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc172
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc172:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop172
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc174
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc174:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc175
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc175:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc176
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc176:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc177
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc177:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc178
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc178:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc179
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc179:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc180
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc180:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc181
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc181:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok173
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok173
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos173
        LDI  R6, 0x80
        JMP  rq_done173
rq_pos173: LDI  R6, 0x7F
        JMP  rq_done173
rq_ok173:  OR   R6, R2, R2
rq_done173: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu173
        LDI  R6, 0
rq_relu173:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop182: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop183: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na183
        ADD  R2, R2, R5
        BCC  ms_na183
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na183:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc183
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc183:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop183
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop182
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop184: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na184
        ADD  R2, R2, R5
        BCC  ms_na184
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na184:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc184
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc184:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop184
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc186
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc186:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc187
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc187:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc188
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc188:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc189
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc189:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc190
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc190:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc191
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc191:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc192
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc192:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc193
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc193:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok185
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok185
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos185
        LDI  R6, 0x80
        JMP  rq_done185
rq_pos185: LDI  R6, 0x7F
        JMP  rq_done185
rq_ok185:  OR   R6, R2, R2
rq_done185: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu185
        LDI  R6, 0
rq_relu185:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop194: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop195: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na195
        ADD  R2, R2, R5
        BCC  ms_na195
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na195:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc195
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc195:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop195
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop194
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop196: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na196
        ADD  R2, R2, R5
        BCC  ms_na196
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na196:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc196
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc196:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop196
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc198
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc198:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc199
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc199:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc200
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc200:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc201
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc201:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc202
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc202:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc203
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc203:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc204
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc204:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc205
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc205:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok197
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok197
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos197
        LDI  R6, 0x80
        JMP  rq_done197
rq_pos197: LDI  R6, 0x7F
        JMP  rq_done197
rq_ok197:  OR   R6, R2, R2
rq_done197: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu197
        LDI  R6, 0
rq_relu197:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop206: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop207: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na207
        ADD  R2, R2, R5
        BCC  ms_na207
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na207:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc207
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc207:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop207
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop206
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop208: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na208
        ADD  R2, R2, R5
        BCC  ms_na208
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na208:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc208
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc208:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop208
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc210
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc210:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc211
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc211:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc212
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc212:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc213
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc213:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc214
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc214:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc215
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc215:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc216
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc216:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc217
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc217:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok209
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok209
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos209
        LDI  R6, 0x80
        JMP  rq_done209
rq_pos209: LDI  R6, 0x7F
        JMP  rq_done209
rq_ok209:  OR   R6, R2, R2
rq_done209: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu209
        LDI  R6, 0
rq_relu209:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop218: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop219: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na219
        ADD  R2, R2, R5
        BCC  ms_na219
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na219:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc219
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc219:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop219
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop218
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop220: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na220
        ADD  R2, R2, R5
        BCC  ms_na220
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na220:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc220
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc220:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop220
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc222
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc222:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc223
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc223:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc224
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc224:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc225
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc225:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc226
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc226:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc227
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc227:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc228
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc228:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc229
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc229:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok221
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok221
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos221
        LDI  R6, 0x80
        JMP  rq_done221
rq_pos221: LDI  R6, 0x7F
        JMP  rq_done221
rq_ok221:  OR   R6, R2, R2
rq_done221: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu221
        LDI  R6, 0
rq_relu221:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop230: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop231: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na231
        ADD  R2, R2, R5
        BCC  ms_na231
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na231:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc231
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc231:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop231
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop230
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop232: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na232
        ADD  R2, R2, R5
        BCC  ms_na232
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na232:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc232
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc232:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop232
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc234
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc234:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc235
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc235:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc236
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc236:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc237
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc237:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc238
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc238:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc239
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc239:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc240
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc240:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc241
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc241:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok233
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok233
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos233
        LDI  R6, 0x80
        JMP  rq_done233
rq_pos233: LDI  R6, 0x7F
        JMP  rq_done233
rq_ok233:  OR   R6, R2, R2
rq_done233: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu233
        LDI  R6, 0
rq_relu233:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop242: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop243: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na243
        ADD  R2, R2, R5
        BCC  ms_na243
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na243:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc243
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc243:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop243
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop242
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop244: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na244
        ADD  R2, R2, R5
        BCC  ms_na244
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na244:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc244
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc244:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop244
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc246
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc246:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc247
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc247:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc248
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc248:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok245
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok245
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos245
        LDI  R6, 0x80
        JMP  rq_done245
rq_pos245: LDI  R6, 0x7F
        JMP  rq_done245
rq_ok245:  OR   R6, R2, R2
rq_done245: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu245
        LDI  R6, 0
rq_relu245:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop249: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop250: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na250
        ADD  R2, R2, R5
        BCC  ms_na250
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na250:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc250
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc250:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop250
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop249
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop251: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na251
        ADD  R2, R2, R5
        BCC  ms_na251
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na251:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc251
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc251:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop251
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc253
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc253:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc254
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc254:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc255
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc255:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok252
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok252
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos252
        LDI  R6, 0x80
        JMP  rq_done252
rq_pos252: LDI  R6, 0x7F
        JMP  rq_done252
rq_ok252:  OR   R6, R2, R2
rq_done252: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu252
        LDI  R6, 0
rq_relu252:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop256: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop257: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na257
        ADD  R2, R2, R5
        BCC  ms_na257
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na257:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc257
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc257:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop257
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop256
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop258: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na258
        ADD  R2, R2, R5
        BCC  ms_na258
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na258:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc258
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc258:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop258
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc260
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc260:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc261
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc261:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc262
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc262:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok259
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok259
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos259
        LDI  R6, 0x80
        JMP  rq_done259
rq_pos259: LDI  R6, 0x7F
        JMP  rq_done259
rq_ok259:  OR   R6, R2, R2
rq_done259: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu259
        LDI  R6, 0
rq_relu259:
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
