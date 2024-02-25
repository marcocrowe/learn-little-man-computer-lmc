                INP 
                STO varNumber1
                INP 
                STO varNumber2
                SUB varNumber1
                BRP lbToPositive
        
                LDA varNumber2
                BRA lbExit

lbToPositive    LDA varNumber1
      
lbExit          OUT 
                HLT

varNumber1      DAT 0
varNumber2      DAT 0
