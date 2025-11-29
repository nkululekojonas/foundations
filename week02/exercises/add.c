#include <stdio.h>
#include <stdlib.h> // Required for the atoi() function

/*
 * Program: add.c
 * Description: Takes exactly two integer arguments from the command line, 
 * adds them together, and prints the result.
 * Usage: ./add 3 4
 * Output: The sum of 3 and 4 is 7
 */
int main(int argc, char *argv[]) {
    // Check if the correct number of arguments was provided.
    // argc should be 3: 
    // argv[0] is the program name (e.g., "./add")
    // argv[1] is the first number
    // argv[2] is the second number
    if (argc != 3) {
        printf("Error: This program requires exactly two command-line arguments (numbers).\n");
        printf("Usage: %s <number1> <number2>\n", argv[0]);
        return 1; // Return a non-zero value to indicate an error
    }

    // 1. Convert the string arguments to integers.
    // argv[1] and argv[2] are character arrays (strings).
    // atoi (ASCII to Integer) converts the string representation of a number 
    // into its integer equivalent.
    int num1 = atoi(argv[1]);
    int num2 = atoi(argv[2]);

    // 2. Perform the addition.
    int sum = num1 + num2;

    // 3. Print the result.
    printf("The sum of %d and %d is %d\n", num1, num2, sum);

    // Return 0 to indicate successful execution.
    return 0;
}
