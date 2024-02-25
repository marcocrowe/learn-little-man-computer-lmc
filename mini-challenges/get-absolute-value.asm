  
           INP                 ; 0. Input first number
           STO varNumber1      ; 1. Store number in varNumber1  
           INP                 ; 2. Input second number
           STO varNumber2          ; 3. Store it in memory 96  
           SUB varNumber1      ; 4. Subtract value in 95 from value in ALU (second number is there since input)  
           BRP lbOUTPUT        ; 5. If ALU value is 0 ore positive, jump to “OUTPUT”      
           LDA varNumber1      ; 6. Otherwise load value in 95  
           SUB varNumber2            ; 7. Subtract value in 96 from ALU  
lbOUTPUT   OUT                 ; 8. Output value – This works from both the Branch and second calculation
           HLT                 ; 9. Stop

varNumber1 DAT 0
varNumber2 DAT 0

