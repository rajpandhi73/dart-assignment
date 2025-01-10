//Write a program that accepts a number and checks if it is a prime number or not.


import 'dart:io';

void main()
{
  print("Enter a number to check if it's a prime number:");
  String? input = stdin.readLineSync();
  int? number = int.tryParse(input!);

  if (isPrime(number!))
  {
    print("$number is a prime number.");
  }

  else
  {
    print("$number is not a prime number.");
  }
}

bool isPrime(int num)
{
  if (num <= 1) return false;
  for (int i = 2; i <= num ~/ 2; i++)
  {
    if (num % i == 0) return false;
  }
  return true;
}
