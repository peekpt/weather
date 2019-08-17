library location;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializers.dart';

import 'location_type.dart';

part 'location.g.dart';

abstract class Location implements Built<Location, LocationBuilder> {
  String get title;
  int get woeid;
  String get lattLong;
  LocationType get locationType;
  String get timeZoneName;
  DateTime get sunRise;
  DateTime get sunSet;
  DateTime get time;

  Location._();

  factory Location([updates(LocationBuilder b)]) = _$Location;

  String toJson() {
    return json.encode(serializers.serializeWith(Location.serializer, this));
  }

  static Location fromJsonMap(Map<String, dynamic> jsonMap) =>
      serializers.deserializeWith(Location.serializer, jsonMap);

  static Serializer<Location> get serializer => _$locationSerializer;
}
