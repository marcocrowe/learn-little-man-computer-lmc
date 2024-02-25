				INP 
				STA varNum

				INP 
				STA Power

lb_Power 		LDA reset
				STA TOTAL


lb_Multiply 	LDA TOTAL
				ADD varNum
				STA varCount

				LDA MtyNum
				SUB IValue
				STA MtyNum

				BBZ lb_PowEND
				BRP lb_Multiply

PowEnd			LDA powerTOTAL
				ADD varCount
				STA powerTOTAL

				LDA POWER
				SUB IValue
				STA POWER

				BRP lb_Power

lb_PEND			LDA varCount
				OUT
				HLT

varNum			DAT 0
MtyNum			DAT 0
varCount		DAT 0
valOne			DAT 1
PowerTotal		DAT 0;
reset			DAT 0;
POWER			DAT 0
