import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/models/models.dart';

class MetaWeather {
  final Dio dio;

  MetaWeather(this.dio) {
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
      return options;
    }, onResponse: (Response response) {
      if (response.statusCode != 200) {
        print('Status Code Error: ${response.statusCode}');
        print('Message: ${response.statusMessage}');
      }
      return response; // continue
    }, onError: (DioError e) {
      return e;
    }));
    dio.options
      ..baseUrl = 'https://www.metaweather.com/api/'
      ..responseType = ResponseType.json;
  }

  Future<List<LocationSearch>> searchLocationsByName(String query) async {
    assert(query != null);
    var list = List<LocationSearch>();
    try {
      Response response = await dio
          .get('/api/location/search', queryParameters: {'query': '$query'});

      List json = response.data;

      list = json
          .map((locationSearch) => LocationSearch.fromJson((locationSearch)))
          .toList();

      print(list.toString());
    } catch (e) {
      print('Error in location by name');
    }
    return list;
  }

  Future<List<LocationSearch>> searchLocationsByCoordinates(
      {@required String latt, @required String long}) async {
    assert(latt != null);
    assert(long != null);
    var list = List<LocationSearch>();
    try {
      Response response = await dio.get('/api/location/search',
          queryParameters: {'lattlong': '$latt,$long'});

      List json = response.data;

      list = json
          .map((locationSearch) => LocationSearch.fromJson((locationSearch)))
          .toList();

      print(list.toString());
    } catch (e) {
      print('Error in location by coordinates');
    }
    return list;
  }

  Future<Location> location(int woeid) async {
    assert(woeid != null);
    Location consolidatedWeather;
    try {
      Response response = await dio.get('/location/$woeid/');
      print(response.request.uri);

      consolidatedWeather = Location.fromJsonMap(response.data);
    } catch (e) {
      print(e);
      print('Error in Consolidated Weather');
    }
    return consolidatedWeather;
  }

  dispose() {
    dio.clear();
  }
}
