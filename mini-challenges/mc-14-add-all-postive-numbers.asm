///
// This program takes a series of positive numbers from the 
// user until the user enters number and adds them together.
///
lbInput           INP                 ; Input a number from the user
                BRZ lbProgramEnd    ; If the input number is zero, branch to lbProgEnd to end the program
                STA varInput        ; Store the input number in the memory location named varInput
                LDA varSum          ; Load the current total stored in varTotal into the accumulator
                ADD varInput        ; Add the value stored in varInput to the accumulator
                STA varSum          ; Store the updated total back into varTotal
                BRA lbInput           ; Unconditionally branch back to the lbTop label to repeat the loop

lbProgramEnd    LDA varSum          ; Load the final total stored in varTotal into the accumulator
                OUT                 ; Output the final sum
                HLT                 ; Halt the program

varSum          DAT 0               ; Memory location to store the running total
varInput        DAT 0               ; Memory location to store the current input number
