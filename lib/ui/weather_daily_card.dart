import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/weather_ui_utils.dart';

class WeatherDailyCard extends StatelessWidget {
  final WeatherDetail weatherDetail;

  WeatherDailyCard({required this.weatherDetail});

  @override
  Widget build(BuildContext context) {
    return _weatherCard(weatherDetail);
  }

  Widget _weatherCard(WeatherDetail weather) {
    Color cardColor = WeatherUIUtils.getCardColor(weather) ?? Colors.white;
    Color textColor = WeatherUIUtils.getTextColor(cardColor);

    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            WeatherUIUtils.getWeatherIcon(weather),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _formatDate(weather.dtTxt),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Temp: ${weather.mainWeather.temp}°C",
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Weather: ${weather.weather[0].description}",
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(String dateTime) {
    final date = DateTime.parse(dateTime);
    return DateFormat('yyyy-MM-dd').format(date);
  }
}
