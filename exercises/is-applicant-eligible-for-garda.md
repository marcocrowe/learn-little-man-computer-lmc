
# LMC Assembly Language - Is Applicant Eligible for Garda?

## Problem

Assembly assignment: 27/02/2024

The age range for applying for the Garda is between 18 and 35. Write a program in assembly language to do the following:

- Input a candidate's age
- If the age is within range, add one to an "varAccepted"
memory location.
- The program ends when zero is entered.

- Output the total number of accepted candidates to the output
box.
Click here for [solution](is-applicant-eligible-for-garda.asm)

hint: Consider the following C++ code:

```cpp
const int valOne = 1;
const int valLowerLimit = 18;
const int valUpperLimit = 35;
int varAccepted = 0;
int varAge = 0;
while (varAge != 0) {
    cin >> varAge;
    if (varAge >= valLowerLimit)
    {
        if(varAge <= valUpperLimit)
            varAccepted += valOne;
    }
}
```

## Solution

```lmc
lbInput             INP              // Takes Input for applicant's age and stores it in the Accumulator
                    BRZ lbExit       // Branch to `lbExit if input = 0
                    BRP lbTestLower  // Branch to `lbTestLower` if input > 0
                    BRA lbInput      // Branch to `lbInput` if input < 0 i.e. you can't have a negative age

lbTestLower         STA varAge       // Store contents of Accumulator (applicant's age) in `varAge`
                    SUB valLower     // Subtract the lower age limit from the applicant's age
                    BRP lbTestUpper  // Branch to `lbTestUpper` if the result is positive or zero
                    BRA lbInput      // Branch to `lbInput` if the result is negative, i.e. the applicant is too young

lbTestUpper         LDA varAge       // Load the applicant's age into the Accumulator
                    SUB valUpper     // Subtract the upper age limit from the applicant's age
                    BRZ lbAddGuard   // Branch to `lbAddGuard` if the result is zero, i.e. the applicant is 35.
                    BRP lbInput      // Branch to `lbInput` if the result is positive, i.e. the applicant is too old e.g. 36 (36-35=1, a positive number)

                                     // Will Fall through to `lbInput` if the result is negative, i.e. the applicant is within the age range, e.g. 34 (34-35=-1, a negative number)
lbAddGuard          LDA varAccepted  // Load the number of accepted garda (`varAccepted`) into the Accumulator
                    ADD valOne       // Add 1 (`valOne`) to the number of accepted garda
                    STA varAccepted  // Store the updated number of accepted garda to `varAccepted`
                    BRA lbInput      // Branch to `lbInput` to input the next applicant's age
lbExit              LDA varAccepted  // Load the number of accepted garda (`varAccepted`) into the Accumulator
                    OUT              // Output the Accumulator value
                    HLT              // Halt the program

valLower            DAT 18           // Lower age limit
valOne              DAT 1            // Constant value 1
valUpper            DAT 35           // Upper age limit
varAccepted         DAT 0            // Number of accepted garda
varAge              DAT 0            // Input for applicant's age
```

---

Copyright &copy; 2024 [Mark Crowe](https://github.com/marcocrowe "Mark Crowe"). All Rights Reserved.
