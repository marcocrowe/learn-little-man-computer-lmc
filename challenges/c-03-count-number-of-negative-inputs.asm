///
/// Count the number of negative number inputs until 0 is entered and then output the count
///
lbResetVars      STA varCount        // Accumulator has 0, and Count is reset to 0

lbInput         INP                 // Input a number
                BRZ lbProgramEnd    // If the input is zero, exit the program
                BRP lbInput         // Ignore input if positive and return to lbInput
lbIncrement     LDA varCount        // Load the current count
                ADD valOne          // Add 1 to it
                STA varCount        // Store the updated count

                BRA lbInput         // Repeat taking input

lbProgramEnd    LDA varCount        // Load the final count
                OUT                 // Output the result
                HLT                 // Halt the program

varCount        DAT 0               // Memory location to store the count
valOne          DAT 1               // Constant value for incrementing the count
