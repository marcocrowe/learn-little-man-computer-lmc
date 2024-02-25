///
// Count the number of students in the class that are over 30
///

lbLoop1	INP

			BRZ lbFinish
			SUB LIMIT
			BRP lbCOUNT
			BRA lbLoop1

lbCOUNT	LDA varSum
			ADD valOne
			STA varSum
			BRP lbLoop1

lbFinish	LDA varSum
			OUT
			HLT

varSum		DAT 0
LIMIT		DAT 30
