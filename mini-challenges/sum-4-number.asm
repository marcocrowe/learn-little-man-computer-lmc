lbInput INP

	ADD varSum
	STA varSum

	LDA LIMIT
	SUB valOne
	STA LIMIT

	BRZ lbProgramEnd
	BRP lbInput

lbProgramEnd LDA varSum
	OUT
	HLT
varSum DAT 0
LIMIT DAT 4
valOne DAT 1
