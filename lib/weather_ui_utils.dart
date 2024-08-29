import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherUIUtils {
  //
  static Color? getCardColor(WeatherDetail weather) {
    final description = weather.weather[0].main.toLowerCase();
    final temp = weather.mainWeather.temp;

    if (description.contains('rain')) {
      return Colors.blue[300]; // Light blue for rain
    } else if (description.contains('clear') || description.contains('sunny')) {
      return Colors.yellow[300]; // Light yellow for sunny
    } else if (description.contains('cloud')) {
      return Colors.grey[400]; // Light grey for cloudy
    } else if (temp > 30) {
      return Colors.red[300]; // Light red for hot temperatures
    } else if (temp < 10) {
      return Colors.blue[200]; // Light blue for cold temperatures
    } else {
      return Colors.white; // Default white for other conditions
    }
  }

  //
  static Widget getWeatherIcon(WeatherDetail weather) {

    return _getLocalWeatherIcon(weather);

    final iconCode = weather.weather[0].icon;
    final iconUrl = 'http://openweathermap.org/img/wn/$iconCode@2x.png';
    return Image.network(
      iconUrl,
      width: 50,
      height: 50,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stack) {
        return _getLocalWeatherIcon(weather);
      },
    );
  }

  // this is when offline
  static Widget _getLocalWeatherIcon(WeatherDetail weather) {
    final description = weather.weather[0].main.toLowerCase();

    if (description.contains('rain')) {
      return const Icon(
        Icons.beach_access, // Represents rain or water
        size: 50,
        color: Colors.white,
      );
    } else if (description.contains('clear') || description.contains('sunny')) {
      return const Icon(
        Icons.wb_sunny, // Represents sunny weather
        size: 50,
        color: Colors.white,
      );
    } else if (description.contains('cloud')) {
      return const Icon(
        Icons.cloud, // Represents cloudy weather
        size: 50,
        color: Colors.white,
      );
    } else {
      return const Icon(
        Icons.help_outline,
        size: 50,
        color: Colors.white,
      ); // Default icon for unknown weather
    }
  }

  static Color getTextColor(Color backgroundColor) {
    // Check if the background color is light or dark
    double luminance = backgroundColor.computeLuminance();
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
}
