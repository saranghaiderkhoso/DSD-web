; DSD-8 + int8 Neural Network Accelerator Demo
        LDI  R0, 0xA5
        OUT  0x5F, R0       ; Unlock NN Accelerator (Port 0x5F = 0xA5)
        LDI  R0, 0x03
        OUT  0x52, R0       ; Clear 24-bit accumulator & counters
        LDI  R1, 3
        OUT  0x50, R1       ; Latch activation A = 3
        LDI  R2, 4
        OUT  0x51, R2       ; Trigger MAC with weight W = 4 (acc += 3*4 = 12)
        IN   R3, 0x53       ; Read low accumulator byte (NN_ACC0 = 0x0C)
        OUT  0x02, R3       ; Output 0x0C to board LEDs
        HLT