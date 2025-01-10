//Write a program that takes a user's name and age as input and prints a welcome message
// that includes their name and how many years they have left until they turn 100.

import 'dart:io';

void main()
{
  print("Enter your Name: ");
      String? name= stdin.readLineSync();

  print("Enter your Age: ");
  var input= stdin.readLineSync();
  int? age= int.tryParse(input!);

  int yearsLeft = 100-age!;

  print("Welcome, $name");

  if(yearsLeft>0)
    {
      print("You have $yearsLeft years left until you turn 100.");
    }
  else
    {
      print("You turned 100... ${-yearsLeft} years ago!");
    }


}