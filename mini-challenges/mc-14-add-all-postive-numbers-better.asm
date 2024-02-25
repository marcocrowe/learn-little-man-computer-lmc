///
// This program takes a series of positive numbers from the 
// user until the user enters number and adds them together.
///
lbInput         INP                 ; Input a number from the user
                BRZ lbProgramEnd    ; If the input number is zero, branch to lbProgEnd to end the program
                ADD varSum          ; Add the value stored in varSum to the Accumulator
                STA varSum          ; Store the updated total back into varSum
                BRA lbInput         ; Unconditionally branch back to the lbInput label to repeat the loop

lbProgramEnd    LDA varSum          ; Load the final total stored in varSum into the accumulator
                OUT                 ; Output the final sum
                HLT                 ; Halt the program

varSum          DAT 0               ; Memory location to store the running total
