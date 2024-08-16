lbInput		INP
			BRZ lbProgEnd
			BRP posNum
			BRA lbInput

posNum		SUB legalAGE
			BRP addTOTAL
			BRA lbInput

addTOTAL	LDA varCount
			ADD valOne
			STA varCount
			BRA lbInput

lbProgEnd	LDA varCount
			OUT
			HLT

varCount	DAT 0
valOne		DAT 1
legalAGE	DAT 17
