                INP 
                STO varNumber1
                INP 
                STO varNumber2
                SUB varNumber1
                BRP lbPrintTwo
        
lbToPositive      LDA varNumber1
                BRA lbExit

lbPrintTwo      LDA varNumber2
      
lbExit          OUT 
                HLT

varNumber1      DAT 0
varNumber2      DAT 0
