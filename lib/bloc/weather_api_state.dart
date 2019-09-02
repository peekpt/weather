import 'package:meta/meta.dart';
import 'package:weather/models/location.dart';
import 'package:weather/models/location_search.dart';

@immutable
abstract class WeatherApiState {}

class InitialWeatherApiState extends WeatherApiState {}

class LocationState extends WeatherApiState {
  final Location location;

  LocationState(this.location);
}

class LocationSearchState extends WeatherApiState {
  final List<LocationSearch> locationSearch;

  LocationSearchState(this.locationSearch);
}

class LocationCoordinateSearchState extends WeatherApiState {
  final List<LocationSearch> locationSearch;

  LocationCoordinateSearchState(this.locationSearch);
}

class ApiError extends WeatherApiState {
  final Exception error;

  ApiError(this.error);
}

class BusyState extends WeatherApiState {}
