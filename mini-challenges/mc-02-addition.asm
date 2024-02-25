				INP						; Input the first number to the accumlator
				STA varFirstNumber		; Store it in memory
				INP						; Input the second number to the accumlator
				ADD varFirstNumber		; Add the first number to the number (second number) in the accumlator
				OUT						; Output the value (the sum) in the accumlator
				HLT						; Halt the program

varFirstNumber	DAT 0					; Memory location to store the first number
