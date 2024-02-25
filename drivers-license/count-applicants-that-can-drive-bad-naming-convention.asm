lbInput			INP
			BRZ lbProgramEnd
			BRP POSNUM
			BRA lbInput

POSNUM		SUB LEGALAGE
			BRP ADDTOTAL
			BRA lbInput

ADDTOTAL	LDA varSum
			ADD COUNTER
			STA varSum
			BRA lbInput

lbProgramEnd		LDA varSum
			OUT
			HLT

varSum DAT 0
COUNTER DAT 1
LEGALAGE DAT 17
