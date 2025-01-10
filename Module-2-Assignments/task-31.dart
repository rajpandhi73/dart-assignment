Stream<int> generateStream(int count) async*
{
  for (int i = 1; i <= count; i++)
  {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}

void main() async
{
  print("Stream of integers:");

  int maxCount = 10;

  await for (int number in generateStream(maxCount))
  {
    print(number);
  }
  print("Stream completed.");
}
