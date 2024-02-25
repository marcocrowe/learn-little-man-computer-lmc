///
// Count the number of students in the class that are over 30
///
lbLoop1		INP
			BRZ lbFinish
			SUB LIMIT
			BRP lbCOUNT
			BRA lbLoop1

lbCOUNT		LDA varCount
			ADD valOne
			STA varCount
			BRP lbLoop1

lbFinish	LDA varCount
			OUT
			HLT

varCount	DAT 0
LIMIT		DAT 30
