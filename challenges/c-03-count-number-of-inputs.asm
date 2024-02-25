///
/// Count the number of inputs until 0 is entered and then output the count
///
lbRestVars      STA varSum          // Accumulator has 0, and Sum is reset to 0

lbInput         INP                 // Input a number
                BRZ lbProgramEnd    // If the input is zero, exit the program

lbIncrement     LDA varSum          // Load the current count
                ADD valOne          // Add 1 to it
                STA varSum          // Store the updated count

                BRA lbInput         // Repeat taking input

lbProgramEnd    LDA varSum          // Load the final count
                OUT                 // Output the result
                HLT                 // Halt the program

varSum          DAT 0               // Memory location to store the count
valOne          DAT 1               // Constant value for incrementing the count

