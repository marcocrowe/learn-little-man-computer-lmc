
# Little Man Computer

## LMC Instruction Set

Note that in the following table 'xx' refers to a memory address (aka mailbox) in the RAM. The LMC has 100 different mailboxes in the RAM ranging from 00 to 99.

| Mnemonic | Name               | Description                                                                                                                | Op Code |
|----------|--------------------|----------------------------------------------------------------------------------------------------------------------------|---------|
| INP      | INPUT              | Retrieve user input and stores it in the accumulator.                                                                      | 901     |
| OUT      | OUTPUT             | Output the value stored in the accumulator.                                                                                | 902     |
| LDA      | LOAD               | Load the Accumulator with the contents of the memory address given.                                                        | 5xx     |
| STA      | STORE              | Store the value in the Accumulator in the memory address given.                                                            | 3xx     |
| ADD      | ADD                | Add the contents of the memory address to the Accumulator                                                                  | 1xx     |
| SUB      | SUBTRACT           | Subtract the contents of the memory address from the Accumulator                                                           | 2xx     |
| BRP      | BRANCH IF POSITIVE | Branch/Jump to the address given if the Accumulator is zero or positive.                                                   | 8xx     |
| BRZ      | BRANCH IF ZERO     | Branch/Jump to the address given if the Accumulator is zero.                                                               | 7xx     |
| BRA      | BRANCH ALWAYS      | Branch/Jump to the address given.                                                                                          | 6xx     |
| HLT      | HALT               | Stop the code                                                                                                              | 000     |
| DAT      | DATA LOCATION      | Used to associate a label to a free memory address. An optional value can also be used to be stored at the memory address. |         |

Little Man Computer (LMC) Simulators

- [QcO's LMC Simulator](https://qco-dev.github.io/lmc/ "QcO's LMC Simulator") : Source code at [GitHub](https://github.com/QcO-dev/lmc "Source code at GitHub")
- [LMC Simulator Applet](http://peterhigginson.co.uk/lmc/)
- [Tiny-Dude](https://tinydude.tomwwright.com/) : Source code at [GitHub](https://github.com/tomwwright/tiny-dude "Source code at GitHub")
- [LMC Simulator Applet (offline)](http://www.yorku.ca/sychen/research/LMC/LittleMan.html)

## Programming Naming Conventions

To make your code more readable, you can use the following naming conventions:

- For instructions use All Caps
- For labels ,variables and constants use camelCase
- Prefix labels with lb e.g. `lbLoop INP`
- Prefix variables with var e.g. `varSum DAT 0`
- Prefix constants with val e.g. `valOne DAT 0`

## Mini Challenges / Examples

1. Write a program that loads and outputs the value 10.
2. Write a program that adds two inputs together and outputs the result.
3. Write a program that adds three inputs together and outputs the result.
4. Write a program that takes two inputs and subtracts the second from the first.
5. A program that outputs the larger of two input values.
6. A program that outputs the larger of three input values.
7. A program that takes three inputs and Outputs them in ascending order.
8. A program that takes two inputs and subtracts the second from the first. If the result is negative, the program should subtract the first input from the second.
9. A program that counts down from any input value.
10. A program that outputs the product of two input values.
11. A program that outputs the quotient of two input values.
12. A program that outputs the remainder of two input values.

## [Challenges](challenges/ "challenges")

1. Write a program to ...
2. Write a program to count the sum of descending numbers from an input down to 1. e.g.

   ```math
   f(n) = n + (n - 1) + (n - 2) + ... + 3 + 2 + 1\\
   f(5) = 5 + 4 + 3 + 2 + 1
   ```

   [solution](challenges/c-02-function-sum-descending-numbers-of-n-to-1.asm "solution")

3. Write a program to count the number of inputs. [solution](challenges/c-03-count-number-of-inputs.asm "solution")
