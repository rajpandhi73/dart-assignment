//Create a function that accepts a list of numbers and returns the largest and smallest
// numbers in the list.


import 'dart:io';

Map<String, int> findLargestAndSmallest(List<int> numbers)
{
  int largest = numbers[0];
  int smallest = numbers[0];

  for (int number in numbers)
  {
    if (number > largest)
    {
      largest = number;
    }
    if (number < smallest)
    {
      smallest = number;
    }
  }

  return {"largest": largest, "smallest": smallest};
}

void main()
{
  print("Enter a list of numbers separated by spaces:");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty)
  {
    print("Please enter a valid list of numbers.");
    return;
  }

  List<String> parts = input.split(' ');
  List<int> numbers = [];

  for (String part in parts)
  {
    int? num = int.tryParse(part);
    if (num != null)
    {
      numbers.add(num);
    }
    else
    {
      print("Invalid input: '$part' is not a valid number.");
      return;
    }
  }

  Map<String, int> result = findLargestAndSmallest(numbers);

  if (result.isNotEmpty)
  {
    print("Largest number: ${result['largest']}");
    print("Smallest number: ${result['smallest']}");
  }
}
