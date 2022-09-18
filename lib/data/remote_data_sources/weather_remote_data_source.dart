import 'package:dio/dio.dart';


class WeatherRemoteDataSoruce {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=922bd16c4acc47f7b07185408221709&q=$city&aqi=no');
    return response.data;
  
  }
}

