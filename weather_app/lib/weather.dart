import 'location.dart';
import 'package:dio/dio.dart';

class Weather{

  double? temperature;
  Location location = Location();

  Future<void> getCurrentLocation() async {
    await location.getCurrentLocation();
  }


  Future<void> getCurrentWeather() async {
    await getCurrentLocation();
    final dio = Dio();
    String key = 'f378981b40c1e99e7e5fecbbf6b4c2ef';
    String request = 'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$key&units=metric';
    final response = await dio.get(request);
    temperature = response.data["main"]["temp"];
  }




}