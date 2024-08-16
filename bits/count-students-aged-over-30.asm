///
// Count the number of students in the class that are 30 and over
///
// const int ageLimit = 30;
// const int one = 1;
// int over30Count = 0;
// int studentAge;
// do {
//     cin >> studentAge;
//     if (studentAge >= ageLimit) {
//         over30Count = over30Count + one;
//     }
// } while (studentAge != 0);
// cout << over30Count;
lbInput         INP                // Take user input and store it in Accumulator
                BRZ lbProgramEnd   // If the input is 0, end the program
                BRP lbTestLower         // If the input is positive, test if it is over 30
                BRA lbInput        // The input is not positive, so branch back to lbInput

lbTestLower          SUB valAgeLimit    // Subtract the age limit from the input age
                BRP lbIncrement    // If the result is positive or zero, increment the count of students over 30
                BRA lbInput        // Otherwise, branch back to `lbInput` to input the next age

lbIncrement     LDA varCount       // Load the current count of students over 30
                ADD valOne         // Add 1 to it
                STA varCount       // Store the updated count back
                BRA lbInput        // Branch back to `lbInput` to input the next age

lbProgramEnd    LDA varCount       // Load the final count of students over 30 into the Accumulator
                OUT                // Output the result
                HLT                // Halt the program

valAgeLimit     DAT 30             // Memory location to store the age limit
valOne          DAT 1              // Memory location storing the constant value 1
varCount        DAT 0              // Memory location to store the count of students over 30
