import 'dart:io';

void main()
{
  print("Enter a list of words:");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty)
  {
    print("Please enter a valid list of words.");
    return;
  }

  List<String> words = input.split(' ');

  Set<String> uniqueWords = words.toSet();

  List<String> sortedWords = uniqueWords.toList()..sort();

  print("Unique words in alphabetical order:");
  for (String word in sortedWords)
  {
    print(word);
  }
}
