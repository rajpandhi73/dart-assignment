import 'dart:convert';

Future<void> fetchData() async 
{
  const String apiUrl = "https://jsonplaceholder.typicode.com/posts/1";

  print("Fetching data from the API...");

  try 
  {
    var http;
    final response = await http.get(Uri.parse(apiUrl));
    
    if (response.statusCode == 200) 
    {
      Map<String, dynamic> data = json.decode(response.body);
      print("\nData fetched successfully:");
      print("Title: ${data['title']}");
      print("Body: ${data['body']}");
    } else 
    {
      print("Error: Failed to fetch data. Status code: ${response.statusCode}");
    }
  } catch (error) 
  {
    print("Error: Unable to fetch data. Details: $error");
  }
}

void main() 
{
  fetchData();
}
