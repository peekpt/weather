library location;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/parent.dart';
import 'package:weather/models/serializers.dart';
import 'package:weather/models/source.dart';
import 'package:weather/models/weather.dart';

import 'location_type.dart';

part 'location.g.dart';

abstract class Location implements Built<Location, LocationBuilder> {
  @BuiltValueField(wireName: 'consolidated_weather')
  BuiltList<Weather> get consolidatedWeather;
  String get title;
  int get woeid;
  @BuiltValueField(wireName: 'latt_long')
  String get lattLong;
  @BuiltValueField(wireName: 'location_type')
  LocationType get locationType;
  @BuiltValueField(wireName: 'timezone_name')
  String get timezoneName;
  String get timezone;
  @BuiltValueField(wireName: 'sun_rise')
  DateTime get sunRise;
  @BuiltValueField(wireName: 'sun_set')
  DateTime get sunSet;
  DateTime get time;
  Parent get parent;
  BuiltList<Source> get sources;

  Location._();

  factory Location([updates(LocationBuilder b)]) = _$Location;

  String toJson() {
    return json.encode(serializers.serializeWith(Location.serializer, this));
  }

  static Location fromJsonMap(Map<String, dynamic> jsonMap) =>
      serializers.deserializeWith(Location.serializer, jsonMap);

  static Serializer<Location> get serializer => _$locationSerializer;
}
