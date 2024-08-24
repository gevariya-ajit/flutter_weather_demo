import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/ui/weather_hourly_card.dart';

class ExpandableWeatherCard extends StatelessWidget {
  final DateTime date;
  final List<WeatherDetail> hourlyData;
  final bool isExpanded;
  final VoidCallback onTap;

  ExpandableWeatherCard({
    required this.date,
    required this.hourlyData,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      elevation: 4,
      color: Colors.white,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            ListTile(
              title: Text(
                DateFormat('EEEE, MMM d').format(date),
                // Display the date
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              contentPadding: const EdgeInsets.only(left: 16, right: 0),
              // Set right padding to 0
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  isExpanded ? Icons.expand_less : Icons.expand_more,
                ),
              ),
            ),
            AnimatedCrossFade(
              firstChild: Container(), // Empty container when collapsed
              secondChild: Column(
                children: hourlyData.map((weatherDetail) {
                  return WeatherHourlyCard(weather: weatherDetail);
                }).toList(),
              ),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(
                  milliseconds: 300), // Duration of the animation
            ),
          ],
        ),
      ),
    );
  }
}
