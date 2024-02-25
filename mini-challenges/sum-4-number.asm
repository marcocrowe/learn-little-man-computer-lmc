lbLoop1 INP

	ADD varSum
	STA varSum

	LDA LIMIT
	SUB valOne
	STA LIMIT

	BRZ lbFinish
	BRP lbLoop1

lbFinish LDA varSum
	OUT
	HLT
varSum DAT 0
LIMIT DAT 4
valOne DAT 1
