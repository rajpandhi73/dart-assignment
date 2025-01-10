import 'dart:async';

void main()
{
  print("Loading... Please wait.");

  Future.delayed(Duration(seconds: 3), ()
  {
    print("Operation completed successfully!");
  });

  print("Processing...");
}
