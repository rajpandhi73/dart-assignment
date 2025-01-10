import 'dart:io';

void main()
{
  try
  {
    print("Enter the numerator:");
    String? numeratorInput = stdin.readLineSync();
    double numerator = double.parse(numeratorInput!);

    print("Enter the denominator:");
    String? denominatorInput = stdin.readLineSync();
    double denominator = double.parse(denominatorInput!);

    double result = numerator / denominator;
    print("Result: $numerator / $denominator = ${result.toString}");
  }
  catch (e)
  {
    if (e is FormatException)
    {
      print("Invalid input! Please enter valid numbers.");
    }
    else if (e is IntegerDivisionByZeroException || e is UnsupportedError)
    {
      print("Error: Division by zero is not allowed.");
    }
    else
    {
      print("An unexpected error occurred: $e");
    }
  }
}
