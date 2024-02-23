lbTop     INP             ; Input a number from the user
          BRZ lbProgEnd   ; If the input number is zero, branch to lbProgEnd to end the program
          STA varTemp     ; Store the input number in the memory location named varTemp
          LDA varSum    ; Load the current total stored in varTotal into the accumulator
          ADD varTemp     ; Add the value stored in varTemp to the accumulator
          STA varSum    ; Store the updated total back into varTotal
          BRA lbTop       ; Unconditionally branch back to the lbTop label to repeat the loop

lbProgEnd LDA varSum    ; Load the final total stored in varTotal into the accumulator
          OUT             ; Output the final sum
          HLT             ; Halt the program

varSum  DAT 0            ; Memory location to store the running total
varTemp   DAT 0            ; Memory location to store the current input number
