# Digital System Design

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
