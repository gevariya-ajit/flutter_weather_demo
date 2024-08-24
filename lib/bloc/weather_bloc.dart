import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_app/api/api_client.dart';
import 'package:weather_app/bloc/weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/serializers.dart';

part 'weather_event.dart';

class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  //
  final ApiClient apiClient;
  final Connectivity connectivity;

  WeatherBloc(this.apiClient, this.connectivity) : super(WeatherInitial()) {
    on<FetchWeather>(_onFetchWeather);
    on<ToggleCardExpansion>(_onToggleCardExpansion);
  }

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    try {
      final weather = serializers.deserializeWith(
          WeatherResponse.serializer, json['weather']);
      return WeatherLoaded(weather!, null);
    } catch (_) {
      return WeatherInitial();
    }
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    if (state is WeatherLoaded) {
      return {
        'weather':
            serializers.serializeWith(WeatherResponse.serializer, state.weather)
      };
    }
    return null;
  }

  Future<void> _onToggleCardExpansion(
      ToggleCardExpansion event, Emitter<WeatherState> emit) async {
    final currentState = state as WeatherLoaded;
    final newExpandedDate =
        (currentState.expandedDate == event.date) ? null : event.date;
    emit(WeatherLoaded(currentState.weather, newExpandedDate));
  }

  // Event handler for FetchWeather
  Future<void> _onFetchWeather(
      FetchWeather event, Emitter<WeatherState> emit) async {
    final isConnected = await _checkConnectivity();

    if (isConnected) {
      emit(WeatherLoading());
    } else {
      if (state is WeatherLoaded) {
        emit(WeatherLoaded((state as WeatherLoaded).weather, null));
        return;
      }
    }

    try {
      final response =
          await apiClient.getWeatherData(event.latitude, event.longitude);
      final weatherResponse = serializers.deserializeWith(
          WeatherResponse.serializer, response.data);
      emit(WeatherLoaded(weatherResponse!, null));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError &&
          e.error is SocketException) {
        // Handle no internet connection
        emit(WeatherError(
            'No internet connection. Please check your network settings.'));
      } else {
        // Handle other Dio errors
        emit(WeatherError('Failed to fetch weather data: ${e.message}'));
      }
    } catch (error) {
      emit(WeatherError(error.toString()));
    }
  }

  Future<bool> _checkConnectivity() async {
    final result = await connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }
}
