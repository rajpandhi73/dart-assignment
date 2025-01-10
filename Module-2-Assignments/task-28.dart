import 'dart:async';

Future<void> fetchWeatherData() async
{
  print("Initializing weather fetching process...");

  await Future.delayed(Duration(seconds: 1));
  print("Connecting to the weather server...");

  await Future.delayed(Duration(seconds: 2));
  print("Fetching current weather data...");

  await Future.delayed(Duration(seconds: 2));
  print("Weather data loaded successfully!");
}
void main()
{
  fetchWeatherData();
}
