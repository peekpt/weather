library location_search;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializers.dart';

import 'location_type.dart';

part 'location_search.g.dart';

abstract class LocationSearch
    implements Built<LocationSearch, LocationSearchBuilder> {
  /// Name of the location
  String get title;
  @BuiltValueField(wireName: "latt_long")
  String get lattLong;

  /// Where On Earth ID
  int get woeid;

  /// Only returned on a lattlong search
  @nullable
  int get distance;
  @BuiltValueField(wireName: "location_type")
  LocationType get locationType;

  LocationSearch._();

  factory LocationSearch([updates(LocationSearchBuilder b)]) = _$LocationSearch;

  String toJson() {
    return json
        .encode(serializers.serializeWith(LocationSearch.serializer, this));
  }

  static LocationSearch fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(LocationSearch.serializer, json);

  static Serializer<LocationSearch> get serializer =>
      _$locationSearchSerializer;
}
