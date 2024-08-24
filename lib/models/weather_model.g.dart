// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherResponse> _$weatherResponseSerializer =
    new _$WeatherResponseSerializer();
Serializer<WeatherDetail> _$weatherDetailSerializer =
    new _$WeatherDetailSerializer();
Serializer<MainWeather> _$mainWeatherSerializer = new _$MainWeatherSerializer();
Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();
Serializer<Clouds> _$cloudsSerializer = new _$CloudsSerializer();
Serializer<Wind> _$windSerializer = new _$WindSerializer();
Serializer<Rain> _$rainSerializer = new _$RainSerializer();
Serializer<Sys> _$sysSerializer = new _$SysSerializer();
Serializer<City> _$citySerializer = new _$CitySerializer();
Serializer<Coord> _$coordSerializer = new _$CoordSerializer();

class _$WeatherResponseSerializer
    implements StructuredSerializer<WeatherResponse> {
  @override
  final Iterable<Type> types = const [WeatherResponse, _$WeatherResponse];
  @override
  final String wireName = 'WeatherResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cod',
      serializers.serialize(object.cod, specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message, specifiedType: const FullType(int)),
      'cnt',
      serializers.serialize(object.cnt, specifiedType: const FullType(int)),
      'list',
      serializers.serialize(object.weatherInfo,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WeatherDetail)])),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(City)),
    ];

    return result;
  }

  @override
  WeatherResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cod':
          result.cod = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'cnt':
          result.cnt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'list':
          result.weatherInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherDetail)]))!
              as BuiltList<Object?>);
          break;
        case 'city':
          result.city.replace(serializers.deserialize(value,
              specifiedType: const FullType(City))! as City);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherDetailSerializer implements StructuredSerializer<WeatherDetail> {
  @override
  final Iterable<Type> types = const [WeatherDetail, _$WeatherDetail];
  @override
  final String wireName = 'WeatherDetail';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dt',
      serializers.serialize(object.dt, specifiedType: const FullType(int)),
      'main',
      serializers.serialize(object.mainWeather,
          specifiedType: const FullType(MainWeather)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Weather)])),
      'clouds',
      serializers.serialize(object.clouds,
          specifiedType: const FullType(Clouds)),
      'wind',
      serializers.serialize(object.wind, specifiedType: const FullType(Wind)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(int)),
      'pop',
      serializers.serialize(object.pop, specifiedType: const FullType(double)),
      'rain',
      serializers.serialize(object.rain, specifiedType: const FullType(Rain)),
      'sys',
      serializers.serialize(object.sys, specifiedType: const FullType(Sys)),
      'dt_txt',
      serializers.serialize(object.dtTxt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  WeatherDetail deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.dt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'main':
          result.mainWeather.replace(serializers.deserialize(value,
              specifiedType: const FullType(MainWeather))! as MainWeather);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Weather)]))!
              as BuiltList<Object?>);
          break;
        case 'clouds':
          result.clouds.replace(serializers.deserialize(value,
              specifiedType: const FullType(Clouds))! as Clouds);
          break;
        case 'wind':
          result.wind.replace(serializers.deserialize(value,
              specifiedType: const FullType(Wind))! as Wind);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'pop':
          result.pop = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'rain':
          result.rain.replace(serializers.deserialize(value,
              specifiedType: const FullType(Rain))! as Rain);
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sys))! as Sys);
          break;
        case 'dt_txt':
          result.dtTxt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MainWeatherSerializer implements StructuredSerializer<MainWeather> {
  @override
  final Iterable<Type> types = const [MainWeather, _$MainWeather];
  @override
  final String wireName = 'MainWeather';

  @override
  Iterable<Object?> serialize(Serializers serializers, MainWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'feels_like',
      serializers.serialize(object.feelsLike,
          specifiedType: const FullType(double)),
      'temp_min',
      serializers.serialize(object.tempMin,
          specifiedType: const FullType(double)),
      'temp_max',
      serializers.serialize(object.tempMax,
          specifiedType: const FullType(double)),
      'pressure',
      serializers.serialize(object.pressure,
          specifiedType: const FullType(int)),
      'sea_level',
      serializers.serialize(object.seaLevel,
          specifiedType: const FullType(int)),
      'grnd_level',
      serializers.serialize(object.grndLevel,
          specifiedType: const FullType(int)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
      'temp_kf',
      serializers.serialize(object.tempKf,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  MainWeather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'temp_min':
          result.tempMin = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'temp_max':
          result.tempMax = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sea_level':
          result.seaLevel = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'grnd_level':
          result.grndLevel = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'temp_kf':
          result.tempKf = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'main':
          result.main = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CloudsSerializer implements StructuredSerializer<Clouds> {
  @override
  final Iterable<Type> types = const [Clouds, _$Clouds];
  @override
  final String wireName = 'Clouds';

  @override
  Iterable<Object?> serialize(Serializers serializers, Clouds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'all',
      serializers.serialize(object.all, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Clouds deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CloudsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'all':
          result.all = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WindSerializer implements StructuredSerializer<Wind> {
  @override
  final Iterable<Type> types = const [Wind, _$Wind];
  @override
  final String wireName = 'Wind';

  @override
  Iterable<Object?> serialize(Serializers serializers, Wind object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'speed',
      serializers.serialize(object.speed,
          specifiedType: const FullType(double)),
      'deg',
      serializers.serialize(object.deg, specifiedType: const FullType(int)),
      'gust',
      serializers.serialize(object.gust, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Wind deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WindBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'deg':
          result.deg = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'gust':
          result.gust = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$RainSerializer implements StructuredSerializer<Rain> {
  @override
  final Iterable<Type> types = const [Rain, _$Rain];
  @override
  final String wireName = 'Rain';

  @override
  Iterable<Object?> serialize(Serializers serializers, Rain object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.threeHours;
    if (value != null) {
      result
        ..add('threeHours')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Rain deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'threeHours':
          result.threeHours = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$SysSerializer implements StructuredSerializer<Sys> {
  @override
  final Iterable<Type> types = const [Sys, _$Sys];
  @override
  final String wireName = 'Sys';

  @override
  Iterable<Object?> serialize(Serializers serializers, Sys object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'pod',
      serializers.serialize(object.pod, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Sys deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SysBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pod':
          result.pod = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CitySerializer implements StructuredSerializer<City> {
  @override
  final Iterable<Type> types = const [City, _$City];
  @override
  final String wireName = 'City';

  @override
  Iterable<Object?> serialize(Serializers serializers, City object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'coord',
      serializers.serialize(object.coord, specifiedType: const FullType(Coord)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'population',
      serializers.serialize(object.population,
          specifiedType: const FullType(int)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(int)),
      'sunrise',
      serializers.serialize(object.sunrise, specifiedType: const FullType(int)),
      'sunset',
      serializers.serialize(object.sunset, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  City deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coord':
          result.coord.replace(serializers.deserialize(value,
              specifiedType: const FullType(Coord))! as Coord);
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'population':
          result.population = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sunrise':
          result.sunrise = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CoordSerializer implements StructuredSerializer<Coord> {
  @override
  final Iterable<Type> types = const [Coord, _$Coord];
  @override
  final String wireName = 'Coord';

  @override
  Iterable<Object?> serialize(Serializers serializers, Coord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Coord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherResponse extends WeatherResponse {
  @override
  final String cod;
  @override
  final int message;
  @override
  final int cnt;
  @override
  final BuiltList<WeatherDetail> weatherInfo;
  @override
  final City city;

  factory _$WeatherResponse([void Function(WeatherResponseBuilder)? updates]) =>
      (new WeatherResponseBuilder()..update(updates))._build();

  _$WeatherResponse._(
      {required this.cod,
      required this.message,
      required this.cnt,
      required this.weatherInfo,
      required this.city})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(cod, r'WeatherResponse', 'cod');
    BuiltValueNullFieldError.checkNotNull(
        message, r'WeatherResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(cnt, r'WeatherResponse', 'cnt');
    BuiltValueNullFieldError.checkNotNull(
        weatherInfo, r'WeatherResponse', 'weatherInfo');
    BuiltValueNullFieldError.checkNotNull(city, r'WeatherResponse', 'city');
  }

  @override
  WeatherResponse rebuild(void Function(WeatherResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherResponseBuilder toBuilder() =>
      new WeatherResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherResponse &&
        cod == other.cod &&
        message == other.message &&
        cnt == other.cnt &&
        weatherInfo == other.weatherInfo &&
        city == other.city;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cod.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, cnt.hashCode);
    _$hash = $jc(_$hash, weatherInfo.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherResponse')
          ..add('cod', cod)
          ..add('message', message)
          ..add('cnt', cnt)
          ..add('weatherInfo', weatherInfo)
          ..add('city', city))
        .toString();
  }
}

class WeatherResponseBuilder
    implements Builder<WeatherResponse, WeatherResponseBuilder> {
  _$WeatherResponse? _$v;

  String? _cod;
  String? get cod => _$this._cod;
  set cod(String? cod) => _$this._cod = cod;

  int? _message;
  int? get message => _$this._message;
  set message(int? message) => _$this._message = message;

  int? _cnt;
  int? get cnt => _$this._cnt;
  set cnt(int? cnt) => _$this._cnt = cnt;

  ListBuilder<WeatherDetail>? _weatherInfo;
  ListBuilder<WeatherDetail> get weatherInfo =>
      _$this._weatherInfo ??= new ListBuilder<WeatherDetail>();
  set weatherInfo(ListBuilder<WeatherDetail>? weatherInfo) =>
      _$this._weatherInfo = weatherInfo;

  CityBuilder? _city;
  CityBuilder get city => _$this._city ??= new CityBuilder();
  set city(CityBuilder? city) => _$this._city = city;

  WeatherResponseBuilder();

  WeatherResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cod = $v.cod;
      _message = $v.message;
      _cnt = $v.cnt;
      _weatherInfo = $v.weatherInfo.toBuilder();
      _city = $v.city.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherResponse;
  }

  @override
  void update(void Function(WeatherResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherResponse build() => _build();

  _$WeatherResponse _build() {
    _$WeatherResponse _$result;
    try {
      _$result = _$v ??
          new _$WeatherResponse._(
              cod: BuiltValueNullFieldError.checkNotNull(
                  cod, r'WeatherResponse', 'cod'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'WeatherResponse', 'message'),
              cnt: BuiltValueNullFieldError.checkNotNull(
                  cnt, r'WeatherResponse', 'cnt'),
              weatherInfo: weatherInfo.build(),
              city: city.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weatherInfo';
        weatherInfo.build();
        _$failedField = 'city';
        city.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WeatherDetail extends WeatherDetail {
  @override
  final int dt;
  @override
  final MainWeather mainWeather;
  @override
  final BuiltList<Weather> weather;
  @override
  final Clouds clouds;
  @override
  final Wind wind;
  @override
  final int visibility;
  @override
  final double pop;
  @override
  final Rain rain;
  @override
  final Sys sys;
  @override
  final String dtTxt;

  factory _$WeatherDetail([void Function(WeatherDetailBuilder)? updates]) =>
      (new WeatherDetailBuilder()..update(updates))._build();

  _$WeatherDetail._(
      {required this.dt,
      required this.mainWeather,
      required this.weather,
      required this.clouds,
      required this.wind,
      required this.visibility,
      required this.pop,
      required this.rain,
      required this.sys,
      required this.dtTxt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dt, r'WeatherDetail', 'dt');
    BuiltValueNullFieldError.checkNotNull(
        mainWeather, r'WeatherDetail', 'mainWeather');
    BuiltValueNullFieldError.checkNotNull(weather, r'WeatherDetail', 'weather');
    BuiltValueNullFieldError.checkNotNull(clouds, r'WeatherDetail', 'clouds');
    BuiltValueNullFieldError.checkNotNull(wind, r'WeatherDetail', 'wind');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'WeatherDetail', 'visibility');
    BuiltValueNullFieldError.checkNotNull(pop, r'WeatherDetail', 'pop');
    BuiltValueNullFieldError.checkNotNull(rain, r'WeatherDetail', 'rain');
    BuiltValueNullFieldError.checkNotNull(sys, r'WeatherDetail', 'sys');
    BuiltValueNullFieldError.checkNotNull(dtTxt, r'WeatherDetail', 'dtTxt');
  }

  @override
  WeatherDetail rebuild(void Function(WeatherDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherDetailBuilder toBuilder() => new WeatherDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherDetail &&
        dt == other.dt &&
        mainWeather == other.mainWeather &&
        weather == other.weather &&
        clouds == other.clouds &&
        wind == other.wind &&
        visibility == other.visibility &&
        pop == other.pop &&
        rain == other.rain &&
        sys == other.sys &&
        dtTxt == other.dtTxt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dt.hashCode);
    _$hash = $jc(_$hash, mainWeather.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jc(_$hash, clouds.hashCode);
    _$hash = $jc(_$hash, wind.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, pop.hashCode);
    _$hash = $jc(_$hash, rain.hashCode);
    _$hash = $jc(_$hash, sys.hashCode);
    _$hash = $jc(_$hash, dtTxt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherDetail')
          ..add('dt', dt)
          ..add('mainWeather', mainWeather)
          ..add('weather', weather)
          ..add('clouds', clouds)
          ..add('wind', wind)
          ..add('visibility', visibility)
          ..add('pop', pop)
          ..add('rain', rain)
          ..add('sys', sys)
          ..add('dtTxt', dtTxt))
        .toString();
  }
}

class WeatherDetailBuilder
    implements Builder<WeatherDetail, WeatherDetailBuilder> {
  _$WeatherDetail? _$v;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  MainWeatherBuilder? _mainWeather;
  MainWeatherBuilder get mainWeather =>
      _$this._mainWeather ??= new MainWeatherBuilder();
  set mainWeather(MainWeatherBuilder? mainWeather) =>
      _$this._mainWeather = mainWeather;

  ListBuilder<Weather>? _weather;
  ListBuilder<Weather> get weather =>
      _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather>? weather) => _$this._weather = weather;

  CloudsBuilder? _clouds;
  CloudsBuilder get clouds => _$this._clouds ??= new CloudsBuilder();
  set clouds(CloudsBuilder? clouds) => _$this._clouds = clouds;

  WindBuilder? _wind;
  WindBuilder get wind => _$this._wind ??= new WindBuilder();
  set wind(WindBuilder? wind) => _$this._wind = wind;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  double? _pop;
  double? get pop => _$this._pop;
  set pop(double? pop) => _$this._pop = pop;

  RainBuilder? _rain;
  RainBuilder get rain => _$this._rain ??= new RainBuilder();
  set rain(RainBuilder? rain) => _$this._rain = rain;

  SysBuilder? _sys;
  SysBuilder get sys => _$this._sys ??= new SysBuilder();
  set sys(SysBuilder? sys) => _$this._sys = sys;

  String? _dtTxt;
  String? get dtTxt => _$this._dtTxt;
  set dtTxt(String? dtTxt) => _$this._dtTxt = dtTxt;

  WeatherDetailBuilder();

  WeatherDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dt = $v.dt;
      _mainWeather = $v.mainWeather.toBuilder();
      _weather = $v.weather.toBuilder();
      _clouds = $v.clouds.toBuilder();
      _wind = $v.wind.toBuilder();
      _visibility = $v.visibility;
      _pop = $v.pop;
      _rain = $v.rain.toBuilder();
      _sys = $v.sys.toBuilder();
      _dtTxt = $v.dtTxt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherDetail;
  }

  @override
  void update(void Function(WeatherDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherDetail build() => _build();

  _$WeatherDetail _build() {
    _$WeatherDetail _$result;
    try {
      _$result = _$v ??
          new _$WeatherDetail._(
              dt: BuiltValueNullFieldError.checkNotNull(
                  dt, r'WeatherDetail', 'dt'),
              mainWeather: mainWeather.build(),
              weather: weather.build(),
              clouds: clouds.build(),
              wind: wind.build(),
              visibility: BuiltValueNullFieldError.checkNotNull(
                  visibility, r'WeatherDetail', 'visibility'),
              pop: BuiltValueNullFieldError.checkNotNull(
                  pop, r'WeatherDetail', 'pop'),
              rain: rain.build(),
              sys: sys.build(),
              dtTxt: BuiltValueNullFieldError.checkNotNull(
                  dtTxt, r'WeatherDetail', 'dtTxt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mainWeather';
        mainWeather.build();
        _$failedField = 'weather';
        weather.build();
        _$failedField = 'clouds';
        clouds.build();
        _$failedField = 'wind';
        wind.build();

        _$failedField = 'rain';
        rain.build();
        _$failedField = 'sys';
        sys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MainWeather extends MainWeather {
  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final double tempMin;
  @override
  final double tempMax;
  @override
  final int pressure;
  @override
  final int seaLevel;
  @override
  final int grndLevel;
  @override
  final int humidity;
  @override
  final double tempKf;

  factory _$MainWeather([void Function(MainWeatherBuilder)? updates]) =>
      (new MainWeatherBuilder()..update(updates))._build();

  _$MainWeather._(
      {required this.temp,
      required this.feelsLike,
      required this.tempMin,
      required this.tempMax,
      required this.pressure,
      required this.seaLevel,
      required this.grndLevel,
      required this.humidity,
      required this.tempKf})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(temp, r'MainWeather', 'temp');
    BuiltValueNullFieldError.checkNotNull(
        feelsLike, r'MainWeather', 'feelsLike');
    BuiltValueNullFieldError.checkNotNull(tempMin, r'MainWeather', 'tempMin');
    BuiltValueNullFieldError.checkNotNull(tempMax, r'MainWeather', 'tempMax');
    BuiltValueNullFieldError.checkNotNull(pressure, r'MainWeather', 'pressure');
    BuiltValueNullFieldError.checkNotNull(seaLevel, r'MainWeather', 'seaLevel');
    BuiltValueNullFieldError.checkNotNull(
        grndLevel, r'MainWeather', 'grndLevel');
    BuiltValueNullFieldError.checkNotNull(humidity, r'MainWeather', 'humidity');
    BuiltValueNullFieldError.checkNotNull(tempKf, r'MainWeather', 'tempKf');
  }

  @override
  MainWeather rebuild(void Function(MainWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainWeatherBuilder toBuilder() => new MainWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainWeather &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        tempMin == other.tempMin &&
        tempMax == other.tempMax &&
        pressure == other.pressure &&
        seaLevel == other.seaLevel &&
        grndLevel == other.grndLevel &&
        humidity == other.humidity &&
        tempKf == other.tempKf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, temp.hashCode);
    _$hash = $jc(_$hash, feelsLike.hashCode);
    _$hash = $jc(_$hash, tempMin.hashCode);
    _$hash = $jc(_$hash, tempMax.hashCode);
    _$hash = $jc(_$hash, pressure.hashCode);
    _$hash = $jc(_$hash, seaLevel.hashCode);
    _$hash = $jc(_$hash, grndLevel.hashCode);
    _$hash = $jc(_$hash, humidity.hashCode);
    _$hash = $jc(_$hash, tempKf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MainWeather')
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('tempMin', tempMin)
          ..add('tempMax', tempMax)
          ..add('pressure', pressure)
          ..add('seaLevel', seaLevel)
          ..add('grndLevel', grndLevel)
          ..add('humidity', humidity)
          ..add('tempKf', tempKf))
        .toString();
  }
}

class MainWeatherBuilder implements Builder<MainWeather, MainWeatherBuilder> {
  _$MainWeather? _$v;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feelsLike;
  double? get feelsLike => _$this._feelsLike;
  set feelsLike(double? feelsLike) => _$this._feelsLike = feelsLike;

  double? _tempMin;
  double? get tempMin => _$this._tempMin;
  set tempMin(double? tempMin) => _$this._tempMin = tempMin;

  double? _tempMax;
  double? get tempMax => _$this._tempMax;
  set tempMax(double? tempMax) => _$this._tempMax = tempMax;

  int? _pressure;
  int? get pressure => _$this._pressure;
  set pressure(int? pressure) => _$this._pressure = pressure;

  int? _seaLevel;
  int? get seaLevel => _$this._seaLevel;
  set seaLevel(int? seaLevel) => _$this._seaLevel = seaLevel;

  int? _grndLevel;
  int? get grndLevel => _$this._grndLevel;
  set grndLevel(int? grndLevel) => _$this._grndLevel = grndLevel;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  double? _tempKf;
  double? get tempKf => _$this._tempKf;
  set tempKf(double? tempKf) => _$this._tempKf = tempKf;

  MainWeatherBuilder();

  MainWeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temp = $v.temp;
      _feelsLike = $v.feelsLike;
      _tempMin = $v.tempMin;
      _tempMax = $v.tempMax;
      _pressure = $v.pressure;
      _seaLevel = $v.seaLevel;
      _grndLevel = $v.grndLevel;
      _humidity = $v.humidity;
      _tempKf = $v.tempKf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainWeather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainWeather;
  }

  @override
  void update(void Function(MainWeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainWeather build() => _build();

  _$MainWeather _build() {
    final _$result = _$v ??
        new _$MainWeather._(
            temp: BuiltValueNullFieldError.checkNotNull(
                temp, r'MainWeather', 'temp'),
            feelsLike: BuiltValueNullFieldError.checkNotNull(
                feelsLike, r'MainWeather', 'feelsLike'),
            tempMin: BuiltValueNullFieldError.checkNotNull(
                tempMin, r'MainWeather', 'tempMin'),
            tempMax: BuiltValueNullFieldError.checkNotNull(
                tempMax, r'MainWeather', 'tempMax'),
            pressure: BuiltValueNullFieldError.checkNotNull(
                pressure, r'MainWeather', 'pressure'),
            seaLevel: BuiltValueNullFieldError.checkNotNull(
                seaLevel, r'MainWeather', 'seaLevel'),
            grndLevel: BuiltValueNullFieldError.checkNotNull(
                grndLevel, r'MainWeather', 'grndLevel'),
            humidity: BuiltValueNullFieldError.checkNotNull(
                humidity, r'MainWeather', 'humidity'),
            tempKf: BuiltValueNullFieldError.checkNotNull(
                tempKf, r'MainWeather', 'tempKf'));
    replace(_$result);
    return _$result;
  }
}

class _$Weather extends Weather {
  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  factory _$Weather([void Function(WeatherBuilder)? updates]) =>
      (new WeatherBuilder()..update(updates))._build();

  _$Weather._(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Weather', 'id');
    BuiltValueNullFieldError.checkNotNull(main, r'Weather', 'main');
    BuiltValueNullFieldError.checkNotNull(
        description, r'Weather', 'description');
    BuiltValueNullFieldError.checkNotNull(icon, r'Weather', 'icon');
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Weather')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _main = $v.main;
      _description = $v.description;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Weather build() => _build();

  _$Weather _build() {
    final _$result = _$v ??
        new _$Weather._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Weather', 'id'),
            main:
                BuiltValueNullFieldError.checkNotNull(main, r'Weather', 'main'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Weather', 'description'),
            icon: BuiltValueNullFieldError.checkNotNull(
                icon, r'Weather', 'icon'));
    replace(_$result);
    return _$result;
  }
}

class _$Clouds extends Clouds {
  @override
  final int all;

  factory _$Clouds([void Function(CloudsBuilder)? updates]) =>
      (new CloudsBuilder()..update(updates))._build();

  _$Clouds._({required this.all}) : super._() {
    BuiltValueNullFieldError.checkNotNull(all, r'Clouds', 'all');
  }

  @override
  Clouds rebuild(void Function(CloudsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloudsBuilder toBuilder() => new CloudsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Clouds && all == other.all;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, all.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Clouds')..add('all', all)).toString();
  }
}

class CloudsBuilder implements Builder<Clouds, CloudsBuilder> {
  _$Clouds? _$v;

  int? _all;
  int? get all => _$this._all;
  set all(int? all) => _$this._all = all;

  CloudsBuilder();

  CloudsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _all = $v.all;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Clouds other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Clouds;
  }

  @override
  void update(void Function(CloudsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Clouds build() => _build();

  _$Clouds _build() {
    final _$result = _$v ??
        new _$Clouds._(
            all: BuiltValueNullFieldError.checkNotNull(all, r'Clouds', 'all'));
    replace(_$result);
    return _$result;
  }
}

class _$Wind extends Wind {
  @override
  final double speed;
  @override
  final int deg;
  @override
  final double gust;

  factory _$Wind([void Function(WindBuilder)? updates]) =>
      (new WindBuilder()..update(updates))._build();

  _$Wind._({required this.speed, required this.deg, required this.gust})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(speed, r'Wind', 'speed');
    BuiltValueNullFieldError.checkNotNull(deg, r'Wind', 'deg');
    BuiltValueNullFieldError.checkNotNull(gust, r'Wind', 'gust');
  }

  @override
  Wind rebuild(void Function(WindBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindBuilder toBuilder() => new WindBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Wind &&
        speed == other.speed &&
        deg == other.deg &&
        gust == other.gust;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, deg.hashCode);
    _$hash = $jc(_$hash, gust.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Wind')
          ..add('speed', speed)
          ..add('deg', deg)
          ..add('gust', gust))
        .toString();
  }
}

class WindBuilder implements Builder<Wind, WindBuilder> {
  _$Wind? _$v;

  double? _speed;
  double? get speed => _$this._speed;
  set speed(double? speed) => _$this._speed = speed;

  int? _deg;
  int? get deg => _$this._deg;
  set deg(int? deg) => _$this._deg = deg;

  double? _gust;
  double? get gust => _$this._gust;
  set gust(double? gust) => _$this._gust = gust;

  WindBuilder();

  WindBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speed = $v.speed;
      _deg = $v.deg;
      _gust = $v.gust;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Wind other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Wind;
  }

  @override
  void update(void Function(WindBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Wind build() => _build();

  _$Wind _build() {
    final _$result = _$v ??
        new _$Wind._(
            speed:
                BuiltValueNullFieldError.checkNotNull(speed, r'Wind', 'speed'),
            deg: BuiltValueNullFieldError.checkNotNull(deg, r'Wind', 'deg'),
            gust: BuiltValueNullFieldError.checkNotNull(gust, r'Wind', 'gust'));
    replace(_$result);
    return _$result;
  }
}

class _$Rain extends Rain {
  @override
  final double? threeHours;

  factory _$Rain([void Function(RainBuilder)? updates]) =>
      (new RainBuilder()..update(updates))._build();

  _$Rain._({this.threeHours}) : super._();

  @override
  Rain rebuild(void Function(RainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RainBuilder toBuilder() => new RainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rain && threeHours == other.threeHours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, threeHours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rain')..add('threeHours', threeHours))
        .toString();
  }
}

class RainBuilder implements Builder<Rain, RainBuilder> {
  _$Rain? _$v;

  double? _threeHours;
  double? get threeHours => _$this._threeHours;
  set threeHours(double? threeHours) => _$this._threeHours = threeHours;

  RainBuilder();

  RainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _threeHours = $v.threeHours;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rain other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Rain;
  }

  @override
  void update(void Function(RainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rain build() => _build();

  _$Rain _build() {
    final _$result = _$v ?? new _$Rain._(threeHours: threeHours);
    replace(_$result);
    return _$result;
  }
}

class _$Sys extends Sys {
  @override
  final String pod;

  factory _$Sys([void Function(SysBuilder)? updates]) =>
      (new SysBuilder()..update(updates))._build();

  _$Sys._({required this.pod}) : super._() {
    BuiltValueNullFieldError.checkNotNull(pod, r'Sys', 'pod');
  }

  @override
  Sys rebuild(void Function(SysBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SysBuilder toBuilder() => new SysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sys && pod == other.pod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Sys')..add('pod', pod)).toString();
  }
}

class SysBuilder implements Builder<Sys, SysBuilder> {
  _$Sys? _$v;

  String? _pod;
  String? get pod => _$this._pod;
  set pod(String? pod) => _$this._pod = pod;

  SysBuilder();

  SysBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pod = $v.pod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sys other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Sys;
  }

  @override
  void update(void Function(SysBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Sys build() => _build();

  _$Sys _build() {
    final _$result = _$v ??
        new _$Sys._(
            pod: BuiltValueNullFieldError.checkNotNull(pod, r'Sys', 'pod'));
    replace(_$result);
    return _$result;
  }
}

class _$City extends City {
  @override
  final int id;
  @override
  final String name;
  @override
  final Coord coord;
  @override
  final String country;
  @override
  final int population;
  @override
  final int timezone;
  @override
  final int sunrise;
  @override
  final int sunset;

  factory _$City([void Function(CityBuilder)? updates]) =>
      (new CityBuilder()..update(updates))._build();

  _$City._(
      {required this.id,
      required this.name,
      required this.coord,
      required this.country,
      required this.population,
      required this.timezone,
      required this.sunrise,
      required this.sunset})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'City', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'City', 'name');
    BuiltValueNullFieldError.checkNotNull(coord, r'City', 'coord');
    BuiltValueNullFieldError.checkNotNull(country, r'City', 'country');
    BuiltValueNullFieldError.checkNotNull(population, r'City', 'population');
    BuiltValueNullFieldError.checkNotNull(timezone, r'City', 'timezone');
    BuiltValueNullFieldError.checkNotNull(sunrise, r'City', 'sunrise');
    BuiltValueNullFieldError.checkNotNull(sunset, r'City', 'sunset');
  }

  @override
  City rebuild(void Function(CityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CityBuilder toBuilder() => new CityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is City &&
        id == other.id &&
        name == other.name &&
        coord == other.coord &&
        country == other.country &&
        population == other.population &&
        timezone == other.timezone &&
        sunrise == other.sunrise &&
        sunset == other.sunset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, coord.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, population.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, sunrise.hashCode);
    _$hash = $jc(_$hash, sunset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'City')
          ..add('id', id)
          ..add('name', name)
          ..add('coord', coord)
          ..add('country', country)
          ..add('population', population)
          ..add('timezone', timezone)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset))
        .toString();
  }
}

class CityBuilder implements Builder<City, CityBuilder> {
  _$City? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CoordBuilder? _coord;
  CoordBuilder get coord => _$this._coord ??= new CoordBuilder();
  set coord(CoordBuilder? coord) => _$this._coord = coord;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _population;
  int? get population => _$this._population;
  set population(int? population) => _$this._population = population;

  int? _timezone;
  int? get timezone => _$this._timezone;
  set timezone(int? timezone) => _$this._timezone = timezone;

  int? _sunrise;
  int? get sunrise => _$this._sunrise;
  set sunrise(int? sunrise) => _$this._sunrise = sunrise;

  int? _sunset;
  int? get sunset => _$this._sunset;
  set sunset(int? sunset) => _$this._sunset = sunset;

  CityBuilder();

  CityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _coord = $v.coord.toBuilder();
      _country = $v.country;
      _population = $v.population;
      _timezone = $v.timezone;
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(City other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$City;
  }

  @override
  void update(void Function(CityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  City build() => _build();

  _$City _build() {
    _$City _$result;
    try {
      _$result = _$v ??
          new _$City._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'City', 'id'),
              name:
                  BuiltValueNullFieldError.checkNotNull(name, r'City', 'name'),
              coord: coord.build(),
              country: BuiltValueNullFieldError.checkNotNull(
                  country, r'City', 'country'),
              population: BuiltValueNullFieldError.checkNotNull(
                  population, r'City', 'population'),
              timezone: BuiltValueNullFieldError.checkNotNull(
                  timezone, r'City', 'timezone'),
              sunrise: BuiltValueNullFieldError.checkNotNull(
                  sunrise, r'City', 'sunrise'),
              sunset: BuiltValueNullFieldError.checkNotNull(
                  sunset, r'City', 'sunset'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coord';
        coord.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'City', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Coord extends Coord {
  @override
  final double lat;
  @override
  final double lon;

  factory _$Coord([void Function(CoordBuilder)? updates]) =>
      (new CoordBuilder()..update(updates))._build();

  _$Coord._({required this.lat, required this.lon}) : super._() {
    BuiltValueNullFieldError.checkNotNull(lat, r'Coord', 'lat');
    BuiltValueNullFieldError.checkNotNull(lon, r'Coord', 'lon');
  }

  @override
  Coord rebuild(void Function(CoordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordBuilder toBuilder() => new CoordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coord && lat == other.lat && lon == other.lon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Coord')
          ..add('lat', lat)
          ..add('lon', lon))
        .toString();
  }
}

class CoordBuilder implements Builder<Coord, CoordBuilder> {
  _$Coord? _$v;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  CoordBuilder();

  CoordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lon = $v.lon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Coord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Coord;
  }

  @override
  void update(void Function(CoordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Coord build() => _build();

  _$Coord _build() {
    final _$result = _$v ??
        new _$Coord._(
            lat: BuiltValueNullFieldError.checkNotNull(lat, r'Coord', 'lat'),
            lon: BuiltValueNullFieldError.checkNotNull(lon, r'Coord', 'lon'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
