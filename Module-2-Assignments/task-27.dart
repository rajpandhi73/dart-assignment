import 'dart:async';

Future<String> fetchDataPoint(String dataPoint, int delay) async
{
  await Future.delayed(Duration(seconds: delay));
  return "Data Point: $dataPoint";
}

Future<void> fetchAllData() async
{
  print("Fetching data points...");

  String user1 = await fetchDataPoint("User 1", 2);
  String user2 = await fetchDataPoint("User 2", 1);
  String user3 = await fetchDataPoint("User 3", 3);

  print("\nAll data points fetched:");
  print(user1);
  print(user2);
  print(user3);
}
void main()
{
  fetchAllData();
}
