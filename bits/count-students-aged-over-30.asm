///
// Count the number of students in the class that are 30 and over
///
lbInput         INP
                BRZ lbProgramEnd
                BRP lbTest
                BRA lbInput

lbTest          SUB valAgeLimit
                BRP lbIncrement
                BRA lbInput

lbIncrement     LDA varCount
                ADD valOne
                STA varCount
                BRA lbInput

lbProgramEnd    LDA varCount
                OUT
                HLT

valAgeLimit     DAT 30
valOne          DAT 1
varCount        DAT 0
