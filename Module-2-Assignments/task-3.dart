//Write a program to take a number from the user and determine if it’s even or odd


import 'dart:io';

void main()
{
  print("Enter a Number: ");
  var input= stdin.readLineSync();
  var number= int.tryParse(input!);

  if(number! % 2 == 0)
  {
    print("The number is even.");
  }
  else
  {
    print("The number is odd.");
  }
}