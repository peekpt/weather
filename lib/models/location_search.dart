library location_search;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializers.dart';

import 'location_type.dart';

part 'location_search.g.dart';

abstract class LocationSearch
    implements Built<LocationSearch, LocationSearchBuilder> {
  String get title;
  String get lattLong;
  int get woeid;
  @nullable
  int get distance;
  LocationType get locationType;

  LocationSearch._();

  factory LocationSearch([updates(LocationSearchBuilder b)]) = _$LocationSearch;

  String toJson() {
    return json
        .encode(serializers.serializeWith(LocationSearch.serializer, this));
  }

  static LocationSearch fromJson(String jsonString) => serializers
      .deserializeWith(LocationSearch.serializer, jsonDecode(jsonString));

  static Serializer<LocationSearch> get serializer =>
      _$locationSearchSerializer;
}
