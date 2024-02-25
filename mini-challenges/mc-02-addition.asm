				INP						; Input the first number to the accumulator
				STA varFirstNumber		; Store it in memory
				INP						; Input the second number to the accumulator
				ADD varFirstNumber		; Add the first number to the number (second number) in the accumulator
				OUT						; Output the value (the sum) in the accumulator
				HLT						; Halt the program

varFirstNumber	DAT 0					; Memory location to store the first number
