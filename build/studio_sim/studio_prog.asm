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
sw_loop1: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop2: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na2
        ADD  R2, R2, R5
        BCC  ms_na2
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na2:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc2
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc2:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop2
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop1
        LDI  R5, 127
        LDI  R6, 24
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop3: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na3
        ADD  R2, R2, R5
        BCC  ms_na3
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na3:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc3
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc3:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop3
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc5
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc5:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc6
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc6:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc7
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc7:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc8
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc8:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc9
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc9:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc10
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc10:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc11
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc11:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc12
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc12:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok4
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok4
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos4
        LDI  R6, 0x80
        JMP  rq_done4
rq_pos4: LDI  R6, 0x7F
        JMP  rq_done4
rq_ok4:  OR   R6, R2, R2
rq_done4: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu4
        LDI  R6, 0
rq_relu4:
        LDI  R7, 64
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 1
        LDI  R4, 4
sw_loop13: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop14: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na14
        ADD  R2, R2, R5
        BCC  ms_na14
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na14:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc14
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc14:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop14
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop13
        LDI  R5, 127
        LDI  R6, 25
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop15: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na15
        ADD  R2, R2, R5
        BCC  ms_na15
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na15:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc15
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc15:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop15
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc17
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc17:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc18
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc18:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc19
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc19:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc20
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc20:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc21
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc21:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc22
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc22:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc23
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc23:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc24
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc24:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok16
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok16
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos16
        LDI  R6, 0x80
        JMP  rq_done16
rq_pos16: LDI  R6, 0x7F
        JMP  rq_done16
rq_ok16:  OR   R6, R2, R2
rq_done16: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu16
        LDI  R6, 0
rq_relu16:
        LDI  R7, 65
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 2
        LDI  R4, 4
sw_loop25: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop26: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na26
        ADD  R2, R2, R5
        BCC  ms_na26
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na26:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc26
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc26:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop26
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop25
        LDI  R5, 127
        LDI  R6, 26
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop27: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na27
        ADD  R2, R2, R5
        BCC  ms_na27
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na27:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc27
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc27:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop27
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc29
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc29:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc30
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc30:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc31
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc31:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc32
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc32:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc33
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc33:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc34
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc34:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc35
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc35:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc36
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc36:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok28
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok28
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos28
        LDI  R6, 0x80
        JMP  rq_done28
rq_pos28: LDI  R6, 0x7F
        JMP  rq_done28
rq_ok28:  OR   R6, R2, R2
rq_done28: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu28
        LDI  R6, 0
rq_relu28:
        LDI  R7, 66
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 3
        LDI  R4, 4
sw_loop37: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop38: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na38
        ADD  R2, R2, R5
        BCC  ms_na38
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na38:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc38
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc38:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop38
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop37
        LDI  R5, 127
        LDI  R6, 27
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop39: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na39
        ADD  R2, R2, R5
        BCC  ms_na39
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na39:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc39
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc39:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop39
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc41
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc41:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc42
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc42:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc43
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc43:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc44
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc44:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc45
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc45:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc46
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc46:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc47
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc47:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc48
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc48:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok40
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok40
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos40
        LDI  R6, 0x80
        JMP  rq_done40
rq_pos40: LDI  R6, 0x7F
        JMP  rq_done40
rq_ok40:  OR   R6, R2, R2
rq_done40: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu40
        LDI  R6, 0
rq_relu40:
        LDI  R7, 67
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 4
        LDI  R4, 4
sw_loop49: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop50: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na50
        ADD  R2, R2, R5
        BCC  ms_na50
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na50:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc50
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc50:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop50
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop49
        LDI  R5, 127
        LDI  R6, 28
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop51: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na51
        ADD  R2, R2, R5
        BCC  ms_na51
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na51:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc51
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc51:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop51
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc53
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc53:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc54
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc54:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc55
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc55:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc56
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc56:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc57
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc57:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc58
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc58:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc59
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc59:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc60
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc60:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok52
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok52
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos52
        LDI  R6, 0x80
        JMP  rq_done52
rq_pos52: LDI  R6, 0x7F
        JMP  rq_done52
rq_ok52:  OR   R6, R2, R2
rq_done52: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu52
        LDI  R6, 0
rq_relu52:
        LDI  R7, 68
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 5
        LDI  R4, 4
sw_loop61: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop62: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na62
        ADD  R2, R2, R5
        BCC  ms_na62
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na62:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc62
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc62:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop62
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop61
        LDI  R5, 127
        LDI  R6, 29
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop63: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na63
        ADD  R2, R2, R5
        BCC  ms_na63
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na63:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc63
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc63:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop63
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc65
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc65:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc66
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc66:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc67
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc67:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc68
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc68:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc69
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc69:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc70
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc70:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc71
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc71:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc72
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc72:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok64
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok64
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos64
        LDI  R6, 0x80
        JMP  rq_done64
rq_pos64: LDI  R6, 0x7F
        JMP  rq_done64
rq_ok64:  OR   R6, R2, R2
rq_done64: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu64
        LDI  R6, 0
rq_relu64:
        LDI  R7, 69
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 32
        LDI  R4, 4
sw_loop73: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop74: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na74
        ADD  R2, R2, R5
        BCC  ms_na74
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na74:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc74
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc74:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop74
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop73
        LDI  R5, 127
        LDI  R6, 50
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop75: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na75
        ADD  R2, R2, R5
        BCC  ms_na75
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na75:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc75
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc75:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop75
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc77
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc77:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc78
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc78:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc79
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc79:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok76
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok76
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos76
        LDI  R6, 0x80
        JMP  rq_done76
rq_pos76: LDI  R6, 0x7F
        JMP  rq_done76
rq_ok76:  OR   R6, R2, R2
rq_done76: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu76
        LDI  R6, 0
rq_relu76:
        LDI  R7, 72
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 38
        LDI  R4, 4
sw_loop80: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop81: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na81
        ADD  R2, R2, R5
        BCC  ms_na81
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na81:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc81
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc81:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop81
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop80
        LDI  R5, 127
        LDI  R6, 51
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop82: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na82
        ADD  R2, R2, R5
        BCC  ms_na82
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na82:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc82
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc82:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop82
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc84
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc84:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc85
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc85:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc86
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc86:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok83
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok83
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos83
        LDI  R6, 0x80
        JMP  rq_done83
rq_pos83: LDI  R6, 0x7F
        JMP  rq_done83
rq_ok83:  OR   R6, R2, R2
rq_done83: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu83
        LDI  R6, 0
rq_relu83:
        LDI  R7, 73
        ST   [R7], R6
        LDI  R2, 0
        LDI  R3, 0
        LDI  R1, 80
        LDI  R7, 44
        LDI  R4, 4
sw_loop87: LD   R5, [R1]
        LD   R6, [R7]
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop88: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na88
        ADD  R2, R2, R5
        BCC  ms_na88
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na88:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc88
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc88:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop88
        LDI  R0, 1
        ADD  R1, R1, R0
        ADD  R7, R7, R0
        SUB  R4, R4, R0
        BNE  sw_loop87
        LDI  R5, 127
        LDI  R6, 52
        LDI  R0, 0
        LDI  R7, 0
        LDI  R1, 8
ms_loop89: LDI  R0, 0x80
        AND  R0, R6, R0
        SHR  R6, R6
        BCC  ms_na89
        ADD  R2, R2, R5
        BCC  ms_na89
        LDI  R0, 1
        ADD  R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R6, R0
ms_na89:  OR   R6, R6, R0
        SHL  R5, R5
        BCC  ms_nc89
        LDI  R0, 1
        ADD  R3, R3, R0
ms_nc89:  LDI  R0, 1
        SUB  R1, R1, R0
        BNE  ms_loop89
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc91
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc91:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc92
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc92:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R0, 0x80
        AND  R0, R3, R0
        SHR  R3, R3
        BCC  rq_nc93
        LDI  R7, 0x80
        OR   R2, R2, R7
rq_nc93:  SHR  R2, R2
        OR   R3, R3, R0
        LDI  R6, 0
        CMP  R3, R6
        BEQ  rq_ok90
        LDI  R7, 0xFF
        CMP  R3, R7
        BEQ  rq_ok90
        LDI  R7, 0x80
        AND  R7, R3, R7
        CMP  R7, R6
        BEQ  rq_pos90
        LDI  R6, 0x80
        JMP  rq_done90
rq_pos90: LDI  R6, 0x7F
        JMP  rq_done90
rq_ok90:  OR   R6, R2, R2
rq_done90: LDI R7, 0
        CMP  R6, R7
        BPL  rq_relu90
        LDI  R6, 0
rq_relu90:
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
