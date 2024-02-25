lbInput INP 
    BRZ lbProgramEnd
    SUB varAgeLimit
    BRP lbAddToAccepted
    BRA lbAddToRejected
    
lbAddToAccepted LDA varAccepted
    ADD varValueOne
    STA varAccepted
    BRA lbInput

lbAddToRejected LDA varRejected
    ADD varValueOne
    STA varRejected
    OUT 
    BRA lbInput

lbProgramEnd HLT

varAccepted DAT 0
varRejected DAT 0
varAgeLimit DAT 17
varValueOne DAT 1

