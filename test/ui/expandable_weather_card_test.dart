import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/serializers.dart';
import 'package:weather_app/ui/expandable_weather_card.dart';
import 'package:weather_app/ui/weather_hourly_card.dart';

import '../api_response.dart';

Future<Uint8List> getMockImageBytes() async {
  // Load an image from assets or provide raw image bytes
  ByteData byteData = await rootBundle.load('assets/images/mock.png');
  return byteData.buffer.asUint8List();
}

void main() {
  final jsonMap = json.decode(sampleJson) as Map<String, dynamic>;
  final weatherModel =
      serializers.deserializeWith(WeatherResponse.serializer, jsonMap) ??
          WeatherResponse();

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
    //
    testWidgets('displays date and expand icon correctly',
        (WidgetTester tester) async {
      final date = DateTime.fromMillisecondsSinceEpoch(
              weatherModel.weatherInfo.first.dt * 1000,
              isUtc: true)
          .toLocal();

      final hourlyData = [
        weatherModel.weatherInfo.first
      ]; // Mock data for hourly forecast

      // Define a StatefulWidget wrapper for testing
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TestWrapper(date: date, hourlyData: hourlyData),
          ),
        ),
      );

      await tester.pump(const Duration(milliseconds: 300));

      // Assert: Verify if the widget displays correct information
      expect(find.text(DateFormat('EEEE, MMM d').format(date)), findsAny);
      expect(find.byIcon(Icons.expand_more), findsOneWidget);
    });

    testWidgets('expands to show hourly data when tapped',
        (WidgetTester tester) async {
      //
      final date = DateTime.fromMillisecondsSinceEpoch(
              weatherModel.weatherInfo.first.dt * 1000,
              isUtc: true)
          .toLocal();

      final hourlyData = [
        weatherModel.weatherInfo.first
      ]; // Mock data for hourly forecast


      // Build the widget in collapsed state
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(),
            body: ListView(
              children: [
                ExpandableWeatherCard(
                  date: date,
                  hourlyData: hourlyData,
                  isExpanded: false,
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      );

      // Verify that in collapsed state, the child widgets are not visible
      expect(find.byType(WeatherHourlyCard), findsNothing);
      expect(find.byType(ListTile), findsOneWidget);

      // Simulate tap to expand
      await tester.tap(find.byKey(const Key('expandable_card_gesture_detector')));
      await tester.pump();

      // Rebuild with expanded state
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExpandableWeatherCard(
              date: date,
              hourlyData: hourlyData,
              isExpanded: true,
              onTap: () {},
            ),
          ),
        ),
      );

      // Verify that in expanded state, the child widgets are visible
      expect(find.byType(WeatherHourlyCard), findsNWidgets(hourlyData.length));
      expect(find.byKey(const Key('expandable_card_list_tile')), findsOneWidget);

      // Optionally verify that the opacity is animated
      // This can be tricky since AnimatedOpacity animates over time. We can check for widget visibility but not exact opacity values.
      final opacityFinder = find.byType(AnimatedOpacity);
      final animatedOpacity = tester.widget<AnimatedOpacity>(opacityFinder);
      expect(
          animatedOpacity.opacity, equals(1.0)); // Ensure opacity is set to 1.0
    });
  });
}

// Wrapper widget to manage state for ExpandableWeatherCard
class TestWrapper extends StatefulWidget {
  final DateTime date;
  final List<WeatherDetail> hourlyData;

  const TestWrapper({required this.date, required this.hourlyData});

  @override
  _TestWrapperState createState() => _TestWrapperState();
}

class _TestWrapperState extends State<TestWrapper> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpandableWeatherCard(
      date: widget.date,
      hourlyData: widget.hourlyData,
      isExpanded: isExpanded,
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
    );
  }
}
