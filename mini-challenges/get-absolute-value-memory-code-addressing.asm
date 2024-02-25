  
          INP          ; 0. Input first number
          STO 95       ; 1. Store number in memory 95  
          INP          ; 2. Input second number
          STO 96       ; 3. Store it in memory 96  
          SUB 95       ; 4. Subtract value in 95 from value in ALU (second number is there since input)  
          BRP lbOUTPUT ; 5. If ALU value is 0 ore positive, jump to “OUTPUT”      
          LDA 95       ; 6. Otherwise load value in 95  
          SUB 96       ; 7. Subtract value in 96 from ALU  
lbOUTPUT  OUT          ; 8. Output value – This works from both the Branch and second calculation
          HLT          ; 9. Stop


