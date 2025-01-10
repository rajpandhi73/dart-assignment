void main()
{
  List<int> list1 = [3, 5, 7, 9];
  List<int> list2 = [1, 3, 5, 11];
  List<int> list3 = [2, 4, 6, 8, 9];

  List<int> combinedList = [...list1, ...list2, ...list3];

  List<int> uniqueList = combinedList.toSet().toList();

  uniqueList.sort();

  print("Combined, unique, and sorted list: $uniqueList");
}
