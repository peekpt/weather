import 'package:meta/meta.dart';

@immutable
abstract class WeatherApiEvent {}

class LocationEvent extends WeatherApiEvent {
  final int woeid;

  LocationEvent(this.woeid);
}

class LocationSearchEvent extends WeatherApiEvent {
  final String query;

  LocationSearchEvent(this.query);
}

class LocationCordinateSearchEvent extends WeatherApiEvent {
  final double lattitude;
  final double longitude;

  LocationCordinateSearchEvent(
      {@required this.lattitude, @required this.longitude});
}
