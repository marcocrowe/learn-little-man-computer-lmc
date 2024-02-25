// Write a program takes a series numbers and count the number of positive
// and negative numbers. The program ends when the user enters zero.
lbUserInput		INP
				BRZ lbProgramEnd
				BRP addPos

				LDA negCount
				ADD valOne
				STA negCount

				BRA lbUserInput


addPos			LDA posCount
				ADD valOne
				STA posCount

				BRA lbUserInput

lbProgramEnd	HLT

posCount		DAT 0
negCount		DAT 0
valOne			DAT 1
