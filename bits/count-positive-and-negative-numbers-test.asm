lbSum		LDA INPCount
			SUB valOne
			STA INPCount
			BRZ lbProgramEnd

			INP 
			BRZ lbSum
			BRP ldAddPOS

ldAddNeg	ADD NEGATIVE
			STA NEGATIVE
			BRA lbSum

ldAddPOS	ADD POSITIVE
			STA POSITIVE
			BRA lbSum


lbProgramEnd	LDA varSum
			ADD POSITIVE
			ADD NEGATIVE
			STA varSum

			OUT varSum
			HLT

INPCount	DAT 11
valOne		DAT 1
POSITIVE	DAT 0
NEGATIVE	DAT 0
varSum		DAT 0
