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
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0x01
        OUT  0x52, R0
        LDI  R1, 80
        LDI  R2, 0
        LDI  R3, 4
        LDI  R4, 1
n_loop: LD   R5, [R1]
        OUT  0x50, R5
        LD   R5, [R2]
        OUT  0x51, R5
        ADD  R1, R1, R4
        ADD  R2, R2, R4
        SUB  R3, R3, R4
        BNE  n_loop
        LDI  R5, 127
        OUT  0x50, R5
        LDI  R5, 24
        OUT  0x51, R5
        IN   R6, 0x57
        LDI  R7, 0
        CMP  R6, R7
        BPL  n_pos
        LDI  R6, 0
n_pos:  LDI  R7, 0x80
        XOR  R6, R6, R7
        LDI  R7, 64
        ST   [R7], R6
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0x01
        OUT  0x52, R0
        LDI  R1, 80
        LDI  R2, 1
        LDI  R3, 4
        LDI  R4, 1
n_loop: LD   R5, [R1]
        OUT  0x50, R5
        LD   R5, [R2]
        OUT  0x51, R5
        ADD  R1, R1, R4
        ADD  R2, R2, R4
        SUB  R3, R3, R4
        BNE  n_loop
        LDI  R5, 127
        OUT  0x50, R5
        LDI  R5, 25
        OUT  0x51, R5
        IN   R6, 0x57
        LDI  R7, 0
        CMP  R6, R7
        BPL  n_pos
        LDI  R6, 0
n_pos:  LDI  R7, 0x80
        XOR  R6, R6, R7
        LDI  R7, 65
        ST   [R7], R6
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0x01
        OUT  0x52, R0
        LDI  R1, 80
        LDI  R2, 2
        LDI  R3, 4
        LDI  R4, 1
n_loop: LD   R5, [R1]
        OUT  0x50, R5
        LD   R5, [R2]
        OUT  0x51, R5
        ADD  R1, R1, R4
        ADD  R2, R2, R4
        SUB  R3, R3, R4
        BNE  n_loop
        LDI  R5, 127
        OUT  0x50, R5
        LDI  R5, 26
        OUT  0x51, R5
        IN   R6, 0x57
        LDI  R7, 0
        CMP  R6, R7
        BPL  n_pos
        LDI  R6, 0
n_pos:  LDI  R7, 0x80
        XOR  R6, R6, R7
        LDI  R7, 66
        ST   [R7], R6
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0x01
        OUT  0x52, R0
        LDI  R1, 80
        LDI  R2, 3
        LDI  R3, 4
        LDI  R4, 1
n_loop: LD   R5, [R1]
        OUT  0x50, R5
        LD   R5, [R2]
        OUT  0x51, R5
        ADD  R1, R1, R4
        ADD  R2, R2, R4
        SUB  R3, R3, R4
        BNE  n_loop
        LDI  R5, 127
        OUT  0x50, R5
        LDI  R5, 27
        OUT  0x51, R5
        IN   R6, 0x57
        LDI  R7, 0
        CMP  R6, R7
        BPL  n_pos
        LDI  R6, 0
n_pos:  LDI  R7, 0x80
        XOR  R6, R6, R7
        LDI  R7, 67
        ST   [R7], R6
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0x01
        OUT  0x52, R0
        LDI  R1, 80
        LDI  R2, 4
        LDI  R3, 4
        LDI  R4, 1
n_loop: LD   R5, [R1]
        OUT  0x50, R5
        LD   R5, [R2]
        OUT  0x51, R5
        ADD  R1, R1, R4
        ADD  R2, R2, R4
        SUB  R3, R3, R4
        BNE  n_loop
        LDI  R5, 127
        OUT  0x50, R5
        LDI  R5, 28
        OUT  0x51, R5
        IN   R6, 0x57
        LDI  R7, 0
        CMP  R6, R7
        BPL  n_pos
        LDI  R6, 0
n_pos:  LDI  R7, 0x80
        XOR  R6, R6, R7
        LDI  R7, 68
        ST   [R7], R6
        LDI  R0, 8
        OUT  0x56, R0
        LDI  R0, 0x01
        OUT  0x52, R0
        LDI  R1, 80
        LDI  R2, 5
        LDI  R3, 4
        LDI  R4, 1
n_loop: LD   R5, [R1]
        OUT  0x50, R5
        LD   R5, [R2]
        OUT  0x51, R5
        ADD  R1, R1, R4
        ADD  R2, R2, R4
        SUB  R3, R3, R4
        BNE  n_loop
        LDI  R5, 127
        OUT  0x50, R5
        LDI  R5, 29
        OUT  0x51, R5
        IN   R6, 0x57
        LDI  R7, 0
        CMP  R6, R7
        BPL  n_pos
        LDI  R6, 0
n_pos:  LDI  R7, 0x80
        XOR  R6, R6, R7
        LDI  R7, 69
        ST   [R7], R6
        LDI  R0, 3
        OUT  0x56, R0
        LDI  R0, 0x01
        OUT  0x52, R0
        LDI  R1, 80
        LDI  R2, 32
        LDI  R3, 4
        LDI  R4, 1
n_loop: LD   R5, [R1]
        OUT  0x50, R5
        LD   R5, [R2]
        OUT  0x51, R5
        ADD  R1, R1, R4
        ADD  R2, R2, R4
        SUB  R3, R3, R4
        BNE  n_loop
        LDI  R5, 127
        OUT  0x50, R5
        LDI  R5, 50
        OUT  0x51, R5
        IN   R6, 0x57
        LDI  R7, 0
        CMP  R6, R7
        BPL  n_pos
        LDI  R6, 0
n_pos:  LDI  R7, 0x80
        XOR  R6, R6, R7
        LDI  R7, 72
        ST   [R7], R6
        LDI  R0, 3
        OUT  0x56, R0
        LDI  R0, 0x01
        OUT  0x52, R0
        LDI  R1, 80
        LDI  R2, 38
        LDI  R3, 4
        LDI  R4, 1
n_loop: LD   R5, [R1]
        OUT  0x50, R5
        LD   R5, [R2]
        OUT  0x51, R5
        ADD  R1, R1, R4
        ADD  R2, R2, R4
        SUB  R3, R3, R4
        BNE  n_loop
        LDI  R5, 127
        OUT  0x50, R5
        LDI  R5, 51
        OUT  0x51, R5
        IN   R6, 0x57
        LDI  R7, 0
        CMP  R6, R7
        BPL  n_pos
        LDI  R6, 0
n_pos:  LDI  R7, 0x80
        XOR  R6, R6, R7
        LDI  R7, 73
        ST   [R7], R6
        LDI  R0, 3
        OUT  0x56, R0
        LDI  R0, 0x01
        OUT  0x52, R0
        LDI  R1, 80
        LDI  R2, 44
        LDI  R3, 4
        LDI  R4, 1
n_loop: LD   R5, [R1]
        OUT  0x50, R5
        LD   R5, [R2]
        OUT  0x51, R5
        ADD  R1, R1, R4
        ADD  R2, R2, R4
        SUB  R3, R3, R4
        BNE  n_loop
        LDI  R5, 127
        OUT  0x50, R5
        LDI  R5, 52
        OUT  0x51, R5
        IN   R6, 0x57
        LDI  R7, 0
        CMP  R6, R7
        BPL  n_pos
        LDI  R6, 0
n_pos:  LDI  R7, 0x80
        XOR  R6, R6, R7
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
