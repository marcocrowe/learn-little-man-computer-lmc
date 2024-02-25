                INP
                STA varMultiplicand
                INP
                STA varMultiplier
lbMultiplyLoop LDA varProduct
               ADD varMultiplicand
               STA varProduct 
               LDA varMultiplier
               SUB #1 
               STA varMultiplier 
               BRP lbMultiplyLoop
               LDA varProduct
               OUT 
               HLT

varProduct dat 0
varMultiplicand dat 0
varMultiplier dat 0
