// This program takes user input and calculates the sum of descending
// numbers from the input down to 1, and then outputs the result.
lbRestVars      STA varSum         // Accumulator has 0, and Sum is reset to 0
                INP                // Take user input and store it in Accumulator

lbAddNumber     STA varNumber      // Store the input value in memory location varNumber
                ADD varSum         // Add the sum to the input value 
                STA varSum         // Store the updated sum back in varSum

lbDecrement     LDA varNumber      // Load the input value back into the Accumulator
                SUB valOne         // Subtract 1 from the input value
                BRP lbAddNumber    // If the result is positive, branch back to lbAddNumber

lbOutput        LDA varSum         // Load the final sum into the Accumulator
                OUT                // Output the result
                HLT                // Halt the program

varNumber       DAT 0              // Memory location to store the input value
varSum          DAT 0              // Memory location to store the sum
valOne          DAT 1              // Constant value 1
