import 'dart:io';

List<int> sortAscending(List<int> numbers)
{
  for (int i = 0; i < numbers.length - 1; i++)
  {
    for (int j = 0; j < numbers.length - i - 1; j++)
    {
      if (numbers[j] > numbers[j + 1])
      {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
  return numbers;
}

List<int> sortDescending(List<int> numbers)
{
  for (int i = 0; i < numbers.length - 1; i++)
  {
    for (int j = 0; j < numbers.length - i - 1; j++)
    {
      if (numbers[j] < numbers[j + 1])
      {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
  return numbers;
}

void main()
{
  print("Enter a list of integers:");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty)
  {
    print("Please enter a valid list of integers.");
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
      print("Invalid input: '$part' is not a valid integer.");
      return;
    }
  }

  List<int> ascending = sortAscending(List.from(numbers));
  List<int> descending = sortDescending(List.from(numbers));

  print("Sorted in ascending order: $ascending");
  print("Sorted in descending order: $descending");
}
