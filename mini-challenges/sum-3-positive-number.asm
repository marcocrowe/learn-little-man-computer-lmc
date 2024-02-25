///
// ADDING 3 varNumber
///
lbInput         INP
                BRZ lbInput
                BRP lbPosNum
                BRA lbInput

lbPosNum        ADD varSum
                STA varSum
                LDA LIMIT
                SUB valOne
                STA LIMIT
                BRZ lbProgramEnd
                BRA lbInput

lbProgramEnd    LDA varSum
                OUT
                HLT

valOne          DAT 1
varSum          DAT 0
LIMIT           DAT 3
