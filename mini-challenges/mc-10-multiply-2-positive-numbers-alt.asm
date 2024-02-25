			INP 
			STA Num

			INP 
			STA MtyNum

lb_Multipy LDA varSum
			ADD NUM
			STA varSum

			LDA MtyNum
			SUB IValue
			STA MtyNum

			BBZ lb_PEND
			BRP lb_Multipy

lb_PEND LDA varSum
		OUT
		HLT
NUM		DAT 0
MtyNum 	DAT 0
varSum DAT 0
valOne DAT 1
