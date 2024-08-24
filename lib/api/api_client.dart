import 'package:dio/dio.dart';

class ApiClient {
  //
  final Dio dio;

  ApiClient() : dio = Dio() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Add the API key to each request
        options.queryParameters["appid"] = "8d99e80ffa9a88675585e24bf8014a78";
        return handler.next(options);
      },
    ));
  }

  Future<Response> getWeatherData(double lat, double lon) async {
    return await dio.get(
      'https://api.openweathermap.org/data/2.5/forecast',
      queryParameters: {
        'lat': lat,
        'lon': lon,
        'units': 'metric',
      },
    );
  }
}
