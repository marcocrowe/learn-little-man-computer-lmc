TOP			INP
			BRZ PROGEND
			BRP POSNUM
			BRA TOP

POSNUM		SUB LEGALAGE
			BRP ADDTOTAL
			BRA TOP

ADDTOTAL	LDA varSum
			ADD COUNTER
			STA varSum
			BRA TOP

PROGEND		LDA varSum
			OUT
			HLT

varSum DAT 0
COUNTER DAT 1
LEGALAGE DAT 17
