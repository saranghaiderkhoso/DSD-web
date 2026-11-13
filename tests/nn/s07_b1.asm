        LDI  R0, 0xA5
        OUT  0x5F, R0
        LDI  R0, 0x03
        OUT  0x52, R0
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0
        OUT  0x58, R0
        LDI  R1, 78
        LDI  R7, 80
        ST   [R7], R1
        LDI  R2, 53
        LDI  R7, 81
        ST   [R7], R2
        LDI  R3, 97
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
sw_loop1184: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1185: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1185
        ADD  R2, R2, R5
        BCC  ms_na1185
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1185:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1185
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1185:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1185
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1184
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1186: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1186
        ADD  R2, R2, R5
        BCC  ms_na1186
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1186:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1186
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1186:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1186
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1188
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1188:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1189
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1189:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1190
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1190:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1191
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1191:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1192
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1192:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1193
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1193:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1194
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1194:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1195
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1195:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1187
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1187
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1187
        LDI  R6, 0x80
        JMP  rq_done1187
rq_pos1187: LDI  R6, 0x7F
        JMP  rq_done1187
rq_ok1187:  OR   R6, R2, R2
rq_done1187: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1187
        LDI  R6, 0
rq_relu1187:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop1196: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1197: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1197
        ADD  R2, R2, R5
        BCC  ms_na1197
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1197:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1197
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1197:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1197
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1196
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1198: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1198
        ADD  R2, R2, R5
        BCC  ms_na1198
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1198:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1198
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1198:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1198
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1200
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1200:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1201
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1201:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1202
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1202:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1203
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1203:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1204
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1204:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1205
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1205:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1206
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1206:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1207
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1207:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1199
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1199
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1199
        LDI  R6, 0x80
        JMP  rq_done1199
rq_pos1199: LDI  R6, 0x7F
        JMP  rq_done1199
rq_ok1199:  OR   R6, R2, R2
rq_done1199: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1199
        LDI  R6, 0
rq_relu1199:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop1208: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1209: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1209
        ADD  R2, R2, R5
        BCC  ms_na1209
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1209:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1209
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1209:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1209
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1208
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1210: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1210
        ADD  R2, R2, R5
        BCC  ms_na1210
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1210:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1210
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1210:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1210
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1212
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1212:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1213
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1213:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1214
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1214:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1215
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1215:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1216
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1216:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1217
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1217:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1218
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1218:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1219
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1219:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1211
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1211
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1211
        LDI  R6, 0x80
        JMP  rq_done1211
rq_pos1211: LDI  R6, 0x7F
        JMP  rq_done1211
rq_ok1211:  OR   R6, R2, R2
rq_done1211: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1211
        LDI  R6, 0
rq_relu1211:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop1220: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1221: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1221
        ADD  R2, R2, R5
        BCC  ms_na1221
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1221:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1221
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1221:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1221
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1220
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1222: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1222
        ADD  R2, R2, R5
        BCC  ms_na1222
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1222:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1222
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1222:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1222
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1224
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1224:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1225
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1225:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1226
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1226:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1227
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1227:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1228
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1228:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1229
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1229:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1230
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1230:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1231
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1231:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1223
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1223
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1223
        LDI  R6, 0x80
        JMP  rq_done1223
rq_pos1223: LDI  R6, 0x7F
        JMP  rq_done1223
rq_ok1223:  OR   R6, R2, R2
rq_done1223: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1223
        LDI  R6, 0
rq_relu1223:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop1232: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1233: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1233
        ADD  R2, R2, R5
        BCC  ms_na1233
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1233:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1233
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1233:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1233
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1232
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1234: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1234
        ADD  R2, R2, R5
        BCC  ms_na1234
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1234:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1234
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1234:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1234
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1236
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1236:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1237
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1237:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1238
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1238:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1239
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1239:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1240
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1240:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1241
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1241:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1242
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1242:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1243
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1243:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1235
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1235
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1235
        LDI  R6, 0x80
        JMP  rq_done1235
rq_pos1235: LDI  R6, 0x7F
        JMP  rq_done1235
rq_ok1235:  OR   R6, R2, R2
rq_done1235: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1235
        LDI  R6, 0
rq_relu1235:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop1244: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1245: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1245
        ADD  R2, R2, R5
        BCC  ms_na1245
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1245:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1245
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1245:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1245
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1244
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1246: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1246
        ADD  R2, R2, R5
        BCC  ms_na1246
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1246:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1246
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1246:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1246
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1248
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1248:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1249
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1249:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1250
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1250:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1251
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1251:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1252
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1252:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1253
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1253:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1254
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1254:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1255
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1255:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1247
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1247
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1247
        LDI  R6, 0x80
        JMP  rq_done1247
rq_pos1247: LDI  R6, 0x7F
        JMP  rq_done1247
rq_ok1247:  OR   R6, R2, R2
rq_done1247: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1247
        LDI  R6, 0
rq_relu1247:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop1256: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1257: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1257
        ADD  R2, R2, R5
        BCC  ms_na1257
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1257:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1257
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1257:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1257
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1256
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1258: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1258
        ADD  R2, R2, R5
        BCC  ms_na1258
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1258:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1258
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1258:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1258
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1260
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1260:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1261
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1261:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1262
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1262:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1259
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1259
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1259
        LDI  R6, 0x80
        JMP  rq_done1259
rq_pos1259: LDI  R6, 0x7F
        JMP  rq_done1259
rq_ok1259:  OR   R6, R2, R2
rq_done1259: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1259
        LDI  R6, 0
rq_relu1259:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop1263: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1264: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1264
        ADD  R2, R2, R5
        BCC  ms_na1264
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1264:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1264
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1264:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1264
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1263
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1265: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1265
        ADD  R2, R2, R5
        BCC  ms_na1265
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1265:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1265
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1265:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1265
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1267
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1267:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1268
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1268:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1269
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1269:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1266
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1266
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1266
        LDI  R6, 0x80
        JMP  rq_done1266
rq_pos1266: LDI  R6, 0x7F
        JMP  rq_done1266
rq_ok1266:  OR   R6, R2, R2
rq_done1266: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1266
        LDI  R6, 0
rq_relu1266:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop1270: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1271: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1271
        ADD  R2, R2, R5
        BCC  ms_na1271
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1271:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1271
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1271:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1271
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1270
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop1272: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na1272
        ADD  R2, R2, R5
        BCC  ms_na1272
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na1272:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc1272
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc1272:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop1272
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1274
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1274:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1275
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1275:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc1276
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc1276:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok1273
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok1273
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos1273
        LDI  R6, 0x80
        JMP  rq_done1273
rq_pos1273: LDI  R6, 0x7F
        JMP  rq_done1273
rq_ok1273:  OR   R6, R2, R2
rq_done1273: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu1273
        LDI  R6, 0
rq_relu1273:
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
