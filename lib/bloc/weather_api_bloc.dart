import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather/models/models.dart';
import 'package:weather/models/weather_state.dart';
import 'package:weather_icons/weather_icons.dart';
import 'bloc.dart';

class WeatherApiBloc extends Bloc<WeatherApiEvent, WeatherApiState> {
  final Dio dio;

  static Map<WeatherState, IconData> get weatherIconfromState => {
        WeatherState.snow: WeatherIcons.day_snow,
        WeatherState.sleet: WeatherIcons.day_sleet,
        WeatherState.hail: WeatherIcons.day_hail,
        WeatherState.thunderstorm: WeatherIcons.day_thunderstorm,
        WeatherState.heavyRain: WeatherIcons.day_rain_wind,
        WeatherState.lightRain: WeatherIcons.day_rain,
        WeatherState.showers: WeatherIcons.day_showers,
        WeatherState.heavyCloud: WeatherIcons.day_cloudy_high,
        WeatherState.lightCloud: WeatherIcons.day_cloudy,
        WeatherState.clear: WeatherIcons.day_sunny,
      };

  WeatherApiBloc(this.dio) {
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      return options;
    }, onResponse: (Response response) {
      if (response.statusCode != 200)
        throw Exception('Status code error: ${response.statusCode}');
      //return response;
    }, onError: (DioError e) {
      print(e);

      return e;
    }));
    dio.options
      ..connectTimeout = 2000
      ..receiveTimeout = 2000
      ..baseUrl = 'https://www.metaweather.com/api/'
      ..responseType = ResponseType.json;
  }
  @override
  WeatherApiState get initialState => InitialWeatherApiState();

  @override
  Stream<WeatherApiState> transformEvents(Stream<WeatherApiEvent> events,
      Stream<WeatherApiState> Function(WeatherApiEvent event) next) {
    return super.transformEvents(
      // Debounces all Events except ApiErrorEvent
      Observable(events).debounce(
        (window) => (window is ApiErrorEvent)
            ? window
            : TimerStream(true, Duration(milliseconds: 500)),
      ),
      next,
    );
  }

  @override
  Stream<WeatherApiState> mapEventToState(
    WeatherApiEvent event,
  ) async* {
    // BLoC Logic
    print(event.toString());
    if (event is LocationEvent) {
      yield BusyState();
      try {
        var location = await _fetchLocation(event.woeid);
        yield LocationState(location);
        print(location.toString());
      } catch (e) {
        dispatch(ApiErrorEvent(e));
      }
    } else if (event is LocationSearchEvent) {
      try {
        yield BusyState();
        var state = await _fetchLocationSearch(event.query);
        yield LocationSearchState(state);
      } catch (e) {
        dispatch(ApiErrorEvent(e));
      }
    } else if (event is LocationCordinateSearchEvent) {
      try {
        yield BusyState();
        var state = await _fetchSearchLocationsByCoordinates(
            lattitude: event.lattitude, longitude: event.longitude);
        yield LocationCoordinateSearchState(state);
      } catch (e) {
        yield ApiError(e);
      }
    } else if (event is ApiErrorEvent) {
      yield ApiError(event.error);
    } else {
      ApiError(Exception('Unknown event'));
    }
  }

// MetaWeather fetch methods
  /// Returns a list of Locations by keyword
  Future<List<LocationSearch>> _fetchLocationSearch(String query) async {
    assert(query != null);
    List<LocationSearch> list;
    try {
      Response response = await dio
          .get('/api/location/search', queryParameters: {'query': '$query'});
      List json = response.data;
      list = json
          .map((locationSearch) => LocationSearch.fromJson((locationSearch)))
          .toList();
      print(list.toString());
    } catch (e) {
      throw e;
    }

    return list;
  }

  /// Returns a List of Locations by a given coordinate
  Future<List<LocationSearch>> _fetchSearchLocationsByCoordinates(
      {@required double lattitude, @required double longitude}) async {
    assert(lattitude != null);
    assert(longitude != null);
    List<LocationSearch> list;
    Response response = await dio.get('/api/location/search', queryParameters: {
      'lattlong': '${lattitude.toString()},${longitude.toString()}'
    });
    List json = response.data;
    list = json
        .map((locationSearch) => LocationSearch.fromJson((locationSearch)))
        .toList();
    print(list.toString());
    return list;
  }

  /// Fetch consolidated weather by an woeid
  Future<Location> _fetchLocation(int woeid) async {
    assert(woeid != null);
    Location consolidatedWeather;
    Response response = await dio.get('/location/$woeid/');
    print(response.request.uri);
    consolidatedWeather = Location.fromJsonMap(response.data);
    return consolidatedWeather;
  }
}
