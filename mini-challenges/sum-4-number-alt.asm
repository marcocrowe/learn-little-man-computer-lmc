lbLoop1 LDA LIMIT
	SUB valOne
	STA LIMIT

	INP
	ADD varSum
	STA varSum

	BRZ lbFinish
	BRP lbLoop1

lbFinish LDA varSum
	OUT
	HLT
varSum DAT 0
LIMIT DAT 4
valOne DAT 1
