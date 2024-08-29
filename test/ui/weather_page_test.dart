import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/bloc/weather_bloc.dart';
import 'package:weather_app/bloc/weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/serializers.dart';
import 'package:weather_app/ui/expandable_weather_card.dart';
import 'package:weather_app/ui/weather_page.dart';

import '../api_response.dart';
import '../helpers/hydrated_bloc.dart';

class MockWeatherBloc extends MockBloc<WeatherEvent, WeatherState>
    implements WeatherBloc {}

void main() {
  initHydratedStorage();

  group('WeatherPage', () {
    final jsonMap = json.decode(sampleJson) as Map<String, dynamic>;
    final weatherModel =
        serializers.deserializeWith(WeatherResponse.serializer, jsonMap) ??
            WeatherResponse();

    late WeatherBloc weatherBloc;

    setUp(() {
      weatherBloc = MockWeatherBloc();
    });

    testWidgets('Circular Progress Indicator', (tester) async {
      when(() => weatherBloc.state).thenReturn(WeatherInitial());
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<WeatherBloc>.value(
            value: weatherBloc,
            child: const WeatherView(),
          ),
        ),
      );
      expect(find.text('Welcome to Weather App.'), findsOneWidget);
    });

    testWidgets('Circular Progress Indicator', (tester) async {
      when(() => weatherBloc.state).thenReturn(WeatherLoading());
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<WeatherBloc>.value(
            value: weatherBloc,
            child: const WeatherView(),
          ),
        ),
      );
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('displays weather details when state is WeatherLoaded',
        (tester) async {
      when(() => weatherBloc.state)
          .thenReturn(WeatherLoaded(weatherModel, null));
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<WeatherBloc>.value(
            value: weatherBloc,
            child: const WeatherView(),
          ),
        ),
      );
      expect(find.byType(ExpandableWeatherCard), findsWidgets);
    });
  });
}
