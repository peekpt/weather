import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weather/models/models.dart';
import 'bloc.dart';

class WeatherApiBloc extends Bloc<WeatherApiEvent, WeatherApiState> {
  final Dio dio;

  WeatherApiBloc(this.dio) {
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      return options;
    }, onResponse: (Response response) {
      if (response.statusCode != 200)
        throw Exception('Status code error: ${response.statusCode}');
      //return response;
    }, onError: (DioError e) {
      return e;
    }));
    dio.options
      ..baseUrl = 'https://www.metaweather.com/api/'
      ..responseType = ResponseType.json;
  }
  @override
  WeatherApiState get initialState => InitialWeatherApiState();

  @override
  Stream<WeatherApiState> mapEventToState(
    WeatherApiEvent event,
  ) async* {
    // BLoC Logic
    print(event.toString());
    if (event is LocationEvent) {
      try {
        yield BusyState();
        var state = await _fetchLocation(event.woeid);
        yield LocationState(state);
        print(state.toString());
      } catch (e) {
        yield ApiError(e);
      }
    } else if (event is LocationSearchEvent) {
      try {
        yield BusyState();
        var state = await _fetchLocationSearch(event.query);
        yield LocationSearchState(state);
      } catch (e) {}
    } else if (event is LocationCordinateSearchEvent) {
      try {
        yield BusyState();
        var state = await _fetchSearchLocationsByCoordinates(
            lattitude: event.lattitude, longitude: event.longitude);
        yield LocationCoordinateSearchState(state);
      } catch (e) {
        yield ApiError(e);
      }
    } else {
      ApiError(Exception('Unknown event'));
    }
  }

// MetaWeather Fetch Functions

  Future<List<LocationSearch>> _fetchLocationSearch(String query) async {
    assert(query != null);
    List<LocationSearch> list;
    Response response = await dio
        .get('/api/location/search', queryParameters: {'query': '$query'});
    List json = response.data;
    list = json
        .map((locationSearch) => LocationSearch.fromJson((locationSearch)))
        .toList();
    print(list.toString());
    return list;
  }

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

  Future<Location> _fetchLocation(int woeid) async {
    assert(woeid != null);
    Location consolidatedWeather;
    Response response = await dio.get('/location/$woeid/');
    print(response.request.uri);
    consolidatedWeather = Location.fromJsonMap(response.data);
    return consolidatedWeather;
  }
}
