library location_search_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializers.dart';
import 'location_search.dart';

part 'location_search_response.g.dart';

abstract class LocationSearchResponse
    implements Built<LocationSearchResponse, LocationSearchResponseBuilder> {
  BuiltList<LocationSearch> get locationSearches;
  LocationSearchResponse._();

  factory LocationSearchResponse([updates(LocationSearchResponseBuilder b)]) =
      _$LocationSearchResponse;

  String toJson() {
    return json.encode(
        serializers.serializeWith(LocationSearchResponse.serializer, this));
  }

  static LocationSearchResponse fromJson(json) {
    return serializers.deserializeWith(
        LocationSearchResponse.serializer, jsonDecode(json));
  }

  static Serializer<LocationSearchResponse> get serializer =>
      _$locationSearchResponseSerializer;
}
