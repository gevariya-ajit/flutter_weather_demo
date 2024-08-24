import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_app/bloc/weather_state.dart';

import '/models/weather_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  WeatherResponse,
  WeatherDetail,
  MainWeather,
  Weather,
  Clouds,
  Wind,
  Rain,
  Sys,
  City,
  Coord
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
