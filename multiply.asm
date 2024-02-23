			INP 
			STA Num

			INP 
			STA MtyNum

lb_Multipy LDA TOTAL
			ADD NUM
			STA TOTAL

			LDA MtyNum
			SUB IValue
			STA MtyNum

			BBZ lb_PEND
			BRP lb_Multipy

lb_PEND LDA TOTAL
		OUT
		HLT
NUM		DAT 0
MtyNum 	DAT 0
TOTAL DAT 0
IVALUE DAT 1
