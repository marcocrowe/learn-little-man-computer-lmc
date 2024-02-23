			INP 
			STA Num
			INP 
			STA divNum

lbDiv BRZ lbEnd
		LDA NUM
		SUB divNum
		STA NUM
		BRP lbTOTDiv

		BRA lbEnd

lbTOTDiv LDA divTOT
		ADD IValue
		STA divTOT

		BRA lbDiv

lbEnd 	LDA divTOT
		OUT
		HLT

NUM		 DAT
divNum 	DAT
divTOT 	DAT 0
IVALUE 	DAT 1
