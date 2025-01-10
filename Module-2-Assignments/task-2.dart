//Create a program that converts temperature from Celsius to Fahrenheit and vice versa.
// Implement functions to handle both conversions and let the user choose the conversion
// type.


import 'dart:io';

double celsiusToFahrenheit(double celsius)
{
  return (celsius * 9 / 5) + 32;
}

double fahrenheitToCelsius(double fahrenheit)
{
  return (fahrenheit - 32) * 5 / 9;
}

void main()
{
  print("Choose a conversion type:");
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");

  String? choice = stdin.readLineSync();

  if (choice == "1")
  {
    print("Enter temperature in Celsius:");
    String? tempInput = stdin.readLineSync();
    double? celsius = double.tryParse(tempInput ?? "");

    if (celsius == null)
    {
      print("Invalid input. Please enter a valid number.");
      return;
    }

    double fahrenheit = celsiusToFahrenheit(celsius);
    print("$celsius°C is equal to ${fahrenheit.toString()}°F.");
  }

  else if (choice == "2")
  {
    print("Enter temperature in Fahrenheit:");
    String? tempInput = stdin.readLineSync();
    double? fahrenheit = double.tryParse(tempInput ?? "");

    if (fahrenheit == null)
    {
      print("Invalid input. Please enter a valid number.");
      return;
    }

    double celsius = fahrenheitToCelsius(fahrenheit);
    print("$fahrenheit°F is equal to ${celsius.toString()}°C.");
  }
  else
  {
    print("Invalid choice. Please enter 1 or 2.");
  }
}
