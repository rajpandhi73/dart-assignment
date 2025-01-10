//Create a program that calculates the area and circumference of a circle. Use constants to
// store the value of pi.

import 'dart:io';

void main()
{
  print("Enter the Radius fo the circle: ");

  var input= stdin.readLineSync();
  var radius= double.tryParse(input!);

  double area= 3.14 * radius! * radius;

  print("The area of the circle is " + area.toString());
}