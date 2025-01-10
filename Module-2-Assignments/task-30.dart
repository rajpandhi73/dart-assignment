List<double> transformList(List<int> numbers, double Function(int) transformFunction)
{
  return numbers.map(transformFunction).toList();
}

double square(int number) => number * number.toDouble();
double cube(int number) => number * number * number.toDouble();
double half(int number) => number / 2;

void main()
{
  List<int> numbers = [2, 4, 6, 8, 10];

  List<double> squares = transformList(numbers, square);
  List<double> cubes = transformList(numbers, cube);
  List<double> halves = transformList(numbers, half);

  print("Original numbers: $numbers");
  print("Squares: $squares");
  print("Cubes: $cubes");
  print("Halves: $halves");
}
