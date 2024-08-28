import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/ui/expandable_weather_card.dart';
import 'package:weather_app/ui/weather_hourly_card.dart';

Future<Uint8List> getMockImageBytes() async {
  // Load an image from assets or provide raw image bytes
  ByteData byteData = await rootBundle.load('assets/images/mock.png');
  return byteData.buffer.asUint8List();
}

void main() {
  setUpAll(() {
    // Override Image HTTP fetch
    TestWidgetsFlutterBinding.ensureInitialized()
        .defaultBinaryMessenger
        .setMockMessageHandler(
      'flutter/assets',
      (message) async {
        final ByteData data = await rootBundle.load('assets/images/mock.png');
        return data.buffer.asUint8List().buffer.asByteData();
      },
    );
  });

  group('ExpandableWeatherCard', () {
    testWidgets('displays date and expand icon correctly',
        (WidgetTester tester) async {
      // Arrange: Create a mock WeatherDetail object
      final weatherDetail = WeatherDetail((b) => b
        ..dt = 1693516800 // Example UNIX timestamp
        ..mainWeather.replace(MainWeather((b) => b
          ..temp = 23.5
          ..feelsLike = 22.0
          ..tempMin = 20.0
          ..tempMax = 25.0
          ..pressure = 1012
          ..seaLevel = 1012
          ..grndLevel = 1008
          ..humidity = 78
          ..tempKf = 1.5))
        ..weather.replace(BuiltList<Weather>([
          Weather((b) => b
            ..id = 800
            ..main = 'Clear'
            ..description = 'clear sky'
            ..icon = '01d')
        ]))
        ..clouds.replace(Clouds((b) => b..all = 0))
        ..wind.replace(Wind((b) => b
          ..speed = 5.5
          ..deg = 180
          ..gust = 8.0))
        ..visibility = 10000
        ..pop = 0.0
        ..rain = null
        ..sys.replace(Sys((b) => b..pod = 'd'))
        ..dtTxt = '2024-08-28 12:00:00');

      final date = DateTime.fromMillisecondsSinceEpoch(weatherDetail.dt * 1000,
              isUtc: true)
          .toLocal();
      final hourlyData = [
        weatherDetail,
        weatherDetail
      ]; // Mock data for hourly forecast

      // Act: Build ExpandableWeatherCard widget
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ExpandableWeatherCard(
            date: date,
            hourlyData: hourlyData,
            isExpanded: false,
            onTap: () {},
          ),
        ),
      ));

      await tester.pumpAndSettle();

      // Assert: Verify if the widget displays correct information
      expect(find.text('Wednesday, Aug 28'), findsAny);
      expect(find.byIcon(Icons.expand_more), findsOneWidget);
    });

    testWidgets('expands to show hourly data when tapped',
        (WidgetTester tester) async {
      // Arrange: Create a mock WeatherDetail object
      final weatherDetail = WeatherDetail((b) => b
        ..dt = 1693516800
        ..mainWeather.replace(MainWeather((b) => b
          ..temp = 23.5
          ..feelsLike = 22.0
          ..tempMin = 20.0
          ..tempMax = 25.0
          ..pressure = 1012
          ..seaLevel = 1012
          ..grndLevel = 1008
          ..humidity = 78
          ..tempKf = 1.5))
        ..weather.replace(BuiltList<Weather>([
          Weather((b) => b
            ..id = 800
            ..main = 'Clear'
            ..description = 'clear sky'
            ..icon = '01d')
        ]))
        ..clouds.replace(Clouds((b) => b..all = 0))
        ..wind.replace(Wind((b) => b
          ..speed = 5.5
          ..deg = 180
          ..gust = 8.0))
        ..visibility = 10000
        ..pop = 0.0
        ..rain = null
        ..sys.replace(Sys((b) => b..pod = 'd'))
        ..dtTxt = '2024-08-28 12:00:00');

      final date = DateTime.fromMillisecondsSinceEpoch(weatherDetail.dt * 1000,
              isUtc: true)
          .toLocal();
      final hourlyData = [
        weatherDetail,
        weatherDetail
      ]; // Mock data for hourly forecast

      bool isExpanded = false;

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ExpandableWeatherCard(
            date: date,
            hourlyData: hourlyData,
            isExpanded: isExpanded,
            onTap: () {
              isExpanded = !isExpanded;
            },
          ),
        ),
      ));

      // Act: Simulate tap to expand
      await tester.tap(find.byType(ExpandableWeatherCard));
      await tester.pumpAndSettle();

      // Assert: Verify if the widget expands and displays hourly data
      expect(find.byIcon(Icons.expand_less), findsOneWidget);
      expect(find.byType(WeatherHourlyCard), findsNWidgets(hourlyData.length));
    });
  });
}
