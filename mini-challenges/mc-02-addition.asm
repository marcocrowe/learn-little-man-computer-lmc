        INP                   ; Input the first number to the accumlator
        STA varFirstNumber    ; Store it in memory
        INP                   ; Input the second number to the accumlator
        ADD varFirstNumber    ; Add the first number to the second number
        OUT                   ; Output the result
        HLT                   ; Halt the program

varFirstNumber    DAT         ; Memory location to store the first number
