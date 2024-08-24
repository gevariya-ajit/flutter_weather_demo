import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/weather_ui_utils.dart';

class WeatherHourlyCard extends StatelessWidget {
  //
  final WeatherDetail weather;

  WeatherHourlyCard({required this.weather});

  @override
  Widget build(BuildContext context) {
    final dateTime =
        DateTime.fromMillisecondsSinceEpoch(weather.dt * 1000, isUtc: true)
            .toLocal();
    final formattedTime = DateFormat.Hm().format(dateTime);

    final backgroundColor =
        WeatherUIUtils.getCardColor(weather) ?? Colors.white;
    final textColor = WeatherUIUtils.getTextColor(backgroundColor);

    return Card(
      color: backgroundColor,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        leading: WeatherUIUtils.getWeatherIcon(weather),
        title: Text(
          formattedTime,
          style: TextStyle(color: textColor),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Temperature: ${weather.mainWeather.temp.toStringAsFixed(1)}°C',
              style: TextStyle(color: textColor),
            ),
            Text(
              'Description: ${weather.weather.first.description}',
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
