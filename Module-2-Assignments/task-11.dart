//Write a recursive function to generate the Fibonacci series up to a specified number.


import 'dart:io';

int fibonacci(int n)
{
  if (n <= 1)
  {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main()
{
  print("Enter the number of terms for the Fibonacci series:");
  String? input = stdin.readLineSync();
  int? terms = int.tryParse(input ?? "");

  if (terms == null || terms < 1)
  {
    print("Please enter a valid positive integer greater than 0.");
    return;
  }

  print("Fibonacci series up to $terms terms:");
  for (int i = 0; i < terms; i++)
  {
    print(fibonacci(i));
  }
}
