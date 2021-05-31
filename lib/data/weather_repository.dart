import 'dart:math';

import 'model/weather.dart';

abstract class WeatherRespository {
  /// Throws [NetworkException]
  Future<Weather> fetchWeather(String cityNama);
}

class FakeWeatherRepository implements WeatherRespository {
  @override
  Future<Weather> fetchWeather(String cityName) {
    return Future.delayed(Duration(seconds: 1), () {
      final random = Random();
      if (random.nextBool()) {
        throw NetworkException();
      }
      return Weather(
        cityName: cityName,
        temperatureCelsius: 20 + random.nextInt(15) + random.nextDouble(),
      );
    });
  }
}

class NetworkException implements Exception {}
