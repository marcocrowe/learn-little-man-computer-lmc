lbInput            INP                  ; Input the age of the applicant
                   BRZ lbProgramEnd     ; If age is zero, end the program
                   BRP lbTestAge        ; Negative Number inputs are ignored
                   BRA lbInput          ; Because their is a Negative Number input return to taking a new input.

lbTestAge          SUB varAgeLimit      ; Subtract the legal age limit from the input age
                   BRP lbAddToAccepted  ; If the result is positive or zero, add to accepted applicants
                   BRA lbInput          ; Otherwise branch back to input the next age

lbAddToAccepted    LDA varAccepted      ; Load the current count of accepted applicants
                   ADD valOne           ; Add 1 to it
                   STA varAccepted      ; Store the updated count back
                   BRA lbInput          ; Branch back to input the next age

lbProgramEnd       LDA varAccepted       ; Load the current count of accepted applicants
                   OUT                   ; Output the count of accepted applicants
                   HLT                   ; Halt the program

varAccepted        DAT 0                ; Memory location to store the count of accepted applicants
varAgeLimit        DAT 17               ; Memory location to store the legal age limit for applying
valOne             DAT 1                ; Memory location storing the constant value 1
