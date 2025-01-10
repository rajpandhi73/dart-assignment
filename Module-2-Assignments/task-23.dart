import 'dart:io';

void main()
{
  while (true)
  {
    print("\nSimple Calculator");
    print("Choose an operation:");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Exit");

    String? choiceInput = stdin.readLineSync();

    if (choiceInput == '5')
    {
      print("Exiting calculator. Goodbye!");
      break;
    }

    int? choice = int.tryParse(choiceInput ?? "");
    if (choice == null || choice < 1 || choice > 4)
    {
      print("Invalid choice! Please select a valid operation (1-5).");
      continue;
    }

    double num1 = getValidNumber("Enter the first number:");
    double num2 = getValidNumber("Enter the second number:");

    double result;

    switch (choice)
        {
      case 1:
        result = num1 + num2;
        print("Result: $num1 + $num2 = $result");
        break;
      case 2:
        result = num1 - num2;
        print("Result: $num1 - $num2 = $result");
        break;
      case 3:
        result = num1 * num2;
        print("Result: $num1 * $num2 = $result");
        break;
      case 4:
        if (num2 == 0)
        {
          print("Error: Division by zero is not allowed.");
        }
        else
        {
          result = num1 / num2;
          print("Result: $num1 / $num2 = ${result.toStringAsFixed(2)}");
        }
        break;
      default:
        print("Invalid operation. Please try again.");
    }
  }
}

double getValidNumber(String prompt)
{
  while (true)
  {
    print(prompt);
    String? input = stdin.readLineSync();
    double? number = double.tryParse(input ?? "");
    if (number == null)
    {
      print("Invalid input! Please enter a valid number.");
    }
    else
    {
      return number;
    }
  }
}
