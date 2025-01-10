import 'dart:io';
import 'dart:math';

void main()
{
  int randomNumber = Random().nextInt(100) + 1;

  String Function(int, int) getHint = (guess, actual)
  {
    if (guess > actual) return "Too high!";
    if (guess < actual) return "Too low!";
    return "Correct!";
  };

  print("Welcome to the Number Guessing Game!");
  print("I have picked a number between 1 and 100. Can you guess it?");

  int attempts = 0;
  bool guessedCorrectly = false;
  while (!guessedCorrectly)
  {
    stdout.write("Enter your guess: ");
    String? input = stdin.readLineSync();
    int? guess = int.tryParse(input ?? "");

    if (guess == null || guess < 1 || guess > 100)
    {
      print("Please enter a valid number between 1 and 100.");
      continue;
    }
    attempts++;
    String hint = getHint(guess, randomNumber);
    print(hint);

    if (hint == "Correct!")
    {
      guessedCorrectly = true;
    }
  }
  print("Congratulations! You guessed the number in $attempts attempts.");
}
