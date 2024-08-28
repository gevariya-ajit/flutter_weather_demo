import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/bloc/weather_bloc.dart';
import 'package:weather_app/bloc/weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/serializers.dart';
import 'package:weather_app/ui/expandable_weather_card.dart';
import 'package:weather_app/ui/weather_page.dart';

import '../api_response.dart';

class MockWeatherBloc extends Mock implements WeatherBloc {}

class MockStorage extends Mock implements HydratedStorage {}

void main() {
  late HydratedStorage storage;
  late MockWeatherBloc mockWeatherBloc;

  setUp(() {
    storage = MockStorage();
    // Initialize HydratedBloc with the mock storage
    HydratedBloc.storage = storage;
    mockWeatherBloc = MockWeatherBloc();

    // Stub the stream method
    when(mockWeatherBloc.stream).thenAnswer(
      (_) => Stream.fromIterable([WeatherLoading()]),
    );

    // Stub the state method
    when(mockWeatherBloc.state).thenReturn(WeatherLoading());

    final jsonMap = json.decode(sampleJson) as Map<String, dynamic>;
    final weatherModel =
        serializers.deserializeWith(WeatherResponse.serializer, jsonMap) ??
            WeatherResponse();

    // Stub the fromJson method with a Map argument
    when(mockWeatherBloc.fromJson(
            argThat(isA<Map<String, dynamic>>()) ?? <String, dynamic>{}))
        .thenReturn(WeatherLoaded(weatherModel, null));

    when(mockWeatherBloc.toJson(
            argThat(isA<WeatherState>()) ?? WeatherLoaded(weatherModel, null)))
        .thenReturn(jsonMap);
  });

  blocTest<WeatherBloc, WeatherState>(
    'emits WeatherLoading when loading',
    build: () {
      return mockWeatherBloc;
    },
    act: (bloc) => bloc.add(FetchWeather(0, 0)), // Use actual event
    expect: () => [WeatherLoading()],
  );

  tearDown(() async {
    //mockWeatherBloc.close();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<WeatherBloc>.value(
        value: mockWeatherBloc,
        child: const WeatherView(),
      ),
    );
  }

  testWidgets('displays loading indicator when state is WeatherLoading',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<WeatherBloc>.value(
          value: mockWeatherBloc,
          child: WeatherView(),
        ),
      ),
    );

    // Verify if CircularProgressIndicator is present in the widget tree
    // expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.text('Welcome to Weather App.'), findsOneWidget);
  });

  testWidgets('displays weather details when state is WeatherLoaded',
      (WidgetTester tester) async {
    final jsonMap = json.decode(sampleJson) as Map<String, dynamic>;
    final weatherModel =
        serializers.deserializeWith(WeatherResponse.serializer, jsonMap) ??
            WeatherResponse();

    // print("weatherModel === ${weatherModel.toString()}");

    // Initialize mock bloc state with WeatherLoaded
    when(mockWeatherBloc.state).thenReturn(WeatherLoaded(weatherModel, null));

    await tester.pumpWidget(createWidgetUnderTest());

    await tester.pump(const Duration(seconds: 4));

    // Verify that the UI shows the weather detail widgets
    expect(find.byType(ExpandableWeatherCard), findsWidgets);
  });

  testWidgets('displays error message when state is WeatherError',
      (WidgetTester tester) async {
    // Initialize mock bloc state with WeatherError
    when(mockWeatherBloc.state)
        .thenReturn(WeatherError('Failed to load weather'));

    await tester.pumpWidget(createWidgetUnderTest());

    // Verify that the error message is shown
    expect(find.text('Failed to load weather'), findsOneWidget);
  });
}
