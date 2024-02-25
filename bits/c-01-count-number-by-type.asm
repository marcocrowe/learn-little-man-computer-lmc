lbUserInput		INP
				BRZ lbProgramEnd
				STA INPUT
				BRP addPos

				LDA negCount
				ADD valOne
				STA negCount

				LDA negTotal
				ADD INPUT
				STA negTotal

				BRA lbUserInput

addPos			LDA posCount
				ADD valOne
				STA posCount

				LDA posTotal
				ADD INPUT
				STA posTotal

				BRA lbUserInput

lbProgramEnd	LDA posTotal
				ADD negTotal
				OUT 
				HLT

posTotal		DAT 0
negTotal		DAT 0
posCount		DAT 0
negCount		DAT 0
INPUT			DAT 0
valOne			DAT 1
