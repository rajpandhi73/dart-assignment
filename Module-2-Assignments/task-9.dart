//Write a function to calculate the factorial of a number entered by the user


import 'dart:io';

int factorial(int n)
{
  if (n < 0)
  {
    print("Factorial is not defined for negative numbers.");
    return -1;
  }

  int result = 1;
  for (int i = 1; i <= n; i++)
  {
    result *= i;
  }
  return result;
}

void main()
{
  print("Enter a number to calculate its factorial:");
  String? input = stdin.readLineSync();
  int? number = int.tryParse(input ?? "");

  if (number == null || number < 0)
  {
    print("Please enter a valid non-negative integer.");
    return;
  }

  int result = factorial(number);
  if (result != -1)
  {
    print("The factorial of $number is $result.");
  }
}

