import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/api/api_client.dart';
import 'package:weather_app/bloc/weather_bloc.dart';
import 'package:weather_app/bloc/weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/ui/expandable_weather_card.dart';
import 'package:weather_app/ui/weather_daily_card.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Forecast"),
      ),
      body: BlocProvider(
        create: (context) => WeatherBloc(ApiClient(), Connectivity()),
        child: const WeatherView(),
      ),
    );
  }
}

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  //
  @override
  Widget build(BuildContext context) {
    // Fetch the weather when the widget is built
    Future.microtask(() => _handleLocationPermission(context));

    return BlocListener<WeatherBloc, WeatherState>(
      listener: (context, state) {
        if (state is WeatherError) {
          // Show a Snackbar when an error occurs
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      child: RefreshIndicator(
        onRefresh: () => _fetchLocationAndWeather(context),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is WeatherLoaded) {
              // ============================ Detailed Day View ====================== //
              return _detailView(state, context);

              // ============================ One Weather in Day View ====================== //
              // return _singleView(state);
            }
            return const Center(child: Text('Welcome to Weather App.'));
          },
        ),
      ),
    );
  }

  ListView _singleView(WeatherLoaded state) {
    final weatherList =
        _getUniqueDayWeather(state.weather.weatherInfo.toList());
    return ListView.builder(
      itemCount: weatherList.length,
      itemBuilder: (context, index) {
        final weather = weatherList[index];
        return WeatherDailyCard(weatherDetail: weather);
      },
    );
  }

  ListView _detailView(WeatherLoaded state, BuildContext context) {
    //
    final groupedData =
        groupWeatherDetailByDate(state.weather.weatherInfo.toList());

    return ListView(
      children: groupedData.entries.map((entry) {
        final date = entry.key;
        final hourlyData = entry.value;

        return ExpandableWeatherCard(
          date: DateTime.parse(date),
          hourlyData: hourlyData,
          isExpanded: state.expandedDate == date,
          onTap: () {
            BlocProvider.of<WeatherBloc>(context)
                .add(ToggleCardExpansion(date));
          },
        );
      }).toList(),
    );
  }

  Future<void> _handleLocationPermission(BuildContext context) async {
    LocationPermission permission;

    // Check if location services are enabled.
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Location services are disabled.'),
        ),
      );
    }

    // Check if permission is already granted
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // Request permission if denied
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Show dialog or snack bar if permission is denied again
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Location permissions are denied'),
          ),
        );
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are permanently denied, show a dialog or a message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.'),
        ),
      );
      return;
    }
    // When permission is granted, fetch the location and weather
    _fetchLocationAndWeather(context);
  }

  // Fetch Location and update weather
  Future<void> _fetchLocationAndWeather(BuildContext context) async {
    Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.high, // Set the desired accuracy.
    ));
    _fetchWeather(context, position);
  }

  void _fetchWeather(BuildContext context, Position position) async {
    BlocProvider.of<WeatherBloc>(context).add(FetchWeather(
      position.latitude,
      position.longitude,
    ));
  }
}

// get next 5 days from WeatherResponse
List<WeatherDetail> _getUniqueDayWeather(List<WeatherDetail> weatherList) {
  final Map<String, WeatherDetail> uniqueDays = {};

  for (final weather in weatherList) {
    final date =
        DateTime.fromMillisecondsSinceEpoch(weather.dt * 1000, isUtc: true);
    final key = '${date.year}-${date.month}-${date.day}';

    if (!uniqueDays.containsKey(key)) {
      print("key $key weather dt ${weather.dtTxt}");
      uniqueDays[key] = weather;
    }
    if (uniqueDays.length >= 5) break; // Only keep first 5 unique days
  }
  return uniqueDays.values.toList();
}

//  Group the WeatherDetail by date for detail weather forecast
Map<String, List<WeatherDetail>> groupWeatherDetailByDate(
    List<WeatherDetail> allData) {
  // Use a map to store lists of weather data, keyed by date string
  final Map<String, List<WeatherDetail>> groupedData = {};

  for (var data in allData) {
    final date =
        DateTime.fromMillisecondsSinceEpoch(data.dt * 1000, isUtc: true)
            .toLocal();
    final dateKey = DateFormat('yyyy-MM-dd').format(date);

    if (!groupedData.containsKey(dateKey)) {
      groupedData[dateKey] = [];
    }
    groupedData[dateKey]!.add(data);
  }

  return groupedData;
}
