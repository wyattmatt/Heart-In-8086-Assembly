start:
    loop_4_star:
        MOV byte DS[SI], 0x2A
        INC SI
        CMP SI, 0x0004
        JNE loop_4_star
    loop_5_space:
        MOV byte DS[SI], 0x20
        INC SI
        CMP SI, 0x0009
        JNE loop_5_space
    loop_6_star_2:
        MOV byte DS[SI], 0x2A
        INC SI
        CMP SI, 0x000F
        JNE loop_6_star_2
    loop_3_space:
        MOV byte DS[SI], 0x20
        INC SI
        CMP SI, 0x0012
        JNE loop_3_space
    loop_8_star:
        MOV byte DS[SI], 0x2A
        INC SI
        CMP SI, 0x001A
        JNE loop_8_star
        MOV byte DS[SI], 0x20
        INC SI
    loop_11_star:
        MOV byte DS[SI], 0x2A
        INC SI
        CMP SI, 0x002C
        JNE loop_11_star
    star_bug:
        MOV byte ds[SI], 0x00
        INC SI
        MOV byte DS[SI], 0x2A
        INC SI
        MOV byte DS[SI], 0x2A
        INC SI
    print:
        MOV AH, 0x13
        MOV CX, 13
        MOV DL, 2
        INT 0x10
        MOV BP, 9
        MOV CX, 15
        MOV DL, 1
        INT 0x10
        MOV BP, 18
        MOV CX, 17
        MOV DL, 0
        INT 0x10
        MOV BP, 27
        MOV CX, 17
        MOV DL, 0
        INT 0x10
    loop_dec_star:
        SUB CX, 2
        ADD DL, 1
        INT 0x10
        CMP DL, 6
        JNE loop_dec_star
    fix_bug:
        MOV BP, 43
        MOV CX, 4
        MOV DL, 7
        INT 0x10
        MOV BP, 46
        MOV CX, 1
        MOV DL, 8
        INT 0x10