import 'dart:io';

void main()
{
  List<int> integers = [];

  print("Enter integers one by one. Type 'done' when finished:");

  while (true)
  {
    try
    {
      String? input = stdin.readLineSync();

      if (input != null && input.toLowerCase() == 'done')
      {
        break;
      }
      int number = int.parse(input!);
      integers.add(number);
    }
    catch (e)
    {
      print("Invalid input! Please enter a valid integer.");
    }
  }

  print("\nYou entered the following integers:");
  print(integers);
}
