import 'package:weather_app/models/weather_model.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final String? expandedDate;
  final WeatherResponse weather;

  WeatherLoaded(this.weather, this.expandedDate);
}

class WeatherError extends WeatherState {
  final String message;

  WeatherError(this.message);
}
