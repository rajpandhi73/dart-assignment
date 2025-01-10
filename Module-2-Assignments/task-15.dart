import 'dart:io';

void main()
{
  print("Enter a string:");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty)
  {
    print("Please enter a valid string.");
    return;
  }

  Map<String, int> charFrequency = {};

  for (int i = 0; i < input.length; i++)
  {
    String char = input[i];
    if (charFrequency.containsKey(char))
    {
      charFrequency[char] = charFrequency[char]! + 1;
    } else {
      charFrequency[char] = 1;
    }
  }

  print("Character frequencies:");
  charFrequency.forEach((key, value)
  {
    print("'$key': $value");
  });
}
