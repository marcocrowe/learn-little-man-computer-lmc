        INP           ; Input the first number
        STA varSum    ; Store it in memory
        INP           ; Input the second number
        ADD varSum    ; Add the sum to the second number
        STA varSum    ; Store the updated sum in memory
        INP           ; Input the third number
        ADD varSum    ; Add it to the previous sum
        OUT           ; Output the final result in the accumalor
        HLT           ; Halt the program

varSum  DAT 0         ; Memory location to store the sum
