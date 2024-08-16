///
// The world Record for 100m sprint is 10 seconds: Write a program to override this 
// record if a new record is set (i.e. time less than 10 seconds).
// Enter 0 to end and output the current record.
///
lbUserInput			INP
					BRZ lbProgramEnd
					BRP lbTestLower
					BRA lbUserInput

lbTestLower			STA varAttempt
					SUB varCurrentRecord
					BRZ lbUserInput
					BRP lbUserInput

lbNewRecord			LDA varAttempt
					STA varCurrentRecord
					OUT
					BRA lbUserInput

lbProgramEnd		HLT

varCurrentRecord	DAT 10
varAttempt			DAT 0
