lbInput INP
	BRZ lbProgramEnd
	BRP POSNUM
	BRA lbInput

POSNUM STA TEMP
	LDA TEMP
	STA COUNTER
	BRA SUM

SUM LDA TEMP
	ADD TOTAL
	STA TOTAL
	LDA COUNTER 
	SUB NUM
	STA COUNTER 
	LDA COUNTER
	BRZ lbProgramEnd
	BRA SUM

lbProgramEnd LDA TOTAL
	OUT 
	HLT

TEMP DAT
TOTAL DAT 0
COUNTER DAT
NUM DAT 1
