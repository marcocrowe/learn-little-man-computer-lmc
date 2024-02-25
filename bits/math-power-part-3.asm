lbSquare        lbInput INP
                BRZ lbProgramEnd
                BRP lbPosNum
                BRA lbInput

lbPosNum        STA TEMP
                LDA TEMP
                STA COUNTER
                BRA lbSum

lbSum           LDA TEMP
                ADD varSum
                STA varSum

                LDA COUNTER
                SUB valOne
                STA COUNTER

                LDA COUNTER
                BRZ lbProgramEnd
                BRA lbSum

lbProgramEnd    LDA varSum
                OUT 
                HLT

TEMP            DAT 0
varSum          DAT 0
COUNTER         DAT 0
valOne          DAT 1
