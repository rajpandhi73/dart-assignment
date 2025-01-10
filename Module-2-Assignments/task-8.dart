//Implement a basic calculator that performs addition, subtraction, multiplication, or division
// based on the user’s choice.


import 'dart:io';

void main()
{
  while (true)
  {
    print("\nSimple Calculator");
    print("Choose an operation:");
    print("1. Addition (+)");
    print("2. Subtraction (-)");
    print("3. Multiplication (*)");
    print("4. Division (/)");
    print("5. Modulo (%)");
    print("6. Exit");

    stdout.write("Enter your choice (1-6): ");
    var choice = stdin.readLineSync();

    if (choice == '6')
    {
      print("Exiting the Calc!!");
      break;
    }

    stdout.write("Enter first number: ");
    var num1 = int.tryParse(stdin.readLineSync()!);

    stdout.write("Enter second number: ");
    var num2 = int.tryParse(stdin.readLineSync()!);

    if (num1 == null || num2 == null)
    {
      print("Invalid input. Please enter valid integers.");
      continue;
    }

    switch (choice)
    {
      case '1':
        print("Result: " + (num1 + num2).toString());
        break;
      case '2':
        print("Result: " + (num1 - num2).toString());
        break;
      case '3':
        print("Result: " + (num1 * num2).toString());
        break;
      case '4':
        if (num2 == 0)
        {
          print("Error: Division by zero is not allowed.");
        }

        else
        {
          print("Result: " + (num1 / num2).toString());
        }
        break;
      case '5':
        if (num2 == 0)
        {
          print("Error: Modulo by zero is not allowed.");
        }

        else
        {
          print("Result: " + (num1 % num2).toString());
        }
        break;
      default:
        print("Invalid choice. Please select a valid operation.");
    }
  }
}
