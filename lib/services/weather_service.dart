import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final String apiKey;

  WeatherService(this.apiKey);

  Future<Weather> getWeather(Position position) async {
    try {
      final response = await get(Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=${apiKey}"));

      if (response.statusCode == 200) {
        return Weather.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Failed to load weather");
      }
    } catch (e, stackTrace) {
      rethrow;
    }
  }

  Future<Position?> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }
}
