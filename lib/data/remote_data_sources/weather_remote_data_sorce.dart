import 'package:dio/dio.dart';

class WeatherRemoteDataSource{
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
      'http://api.weatherapi.com/v1/current.json?key=88799980d779418c836143346222111&q=$city&aqi=no');
    return response.data;
  }
}
