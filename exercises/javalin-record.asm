///
// Javelin: Write a program to input attempts on the World Javelin record (98m).
// If an attempt is greater than the current record,the attempt should be stored 
// as the new record. Enter 0 to end and output the current record.
///
lbUserInput			INP
					BRZ lbProgramEnd
					BRP lbTestLower
					BRA lbUserInput

lbTestLower			STA varAttempt
					SUB varCurrentRecord
					BRP lbNewRecord
					BRA lbUserInput

lbNewRecord			LDA varAttempt
					STA varCurrentRecord
					OUT
					BRA lbUserInput

lbProgramEnd		HLT

varCurrentRecord	DAT 98
varAttempt			DAT 0
