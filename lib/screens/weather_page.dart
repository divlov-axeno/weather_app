import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  WeatherService weatherService =
      WeatherService("32362671d6a8b19a55135589c4841bb4");

  Weather? weather;

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  void fetchWeather() async {
    final position = await weatherService.getCurrentLocation();
    final weather1=await weatherService.getWeather(position!);
    setState(() {
      weather=weather1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("The temperature of your location is"),
            const SizedBox(height: 10),
            Text("${weather?.main?.temp}"),
          ],
        ),
      ),
    );
  }
}
