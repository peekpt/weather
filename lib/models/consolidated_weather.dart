library consolidated_weather;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializers.dart';

part 'consolidated_weather.g.dart';

abstract class ConsolidatedWeather
    implements Built<ConsolidatedWeather, ConsolidatedWeatherBuilder> {
  // fields go here
  int get id;
  DateTime get applicableDate;
  String get weatherStateName;
  String get weatherStateAbbr;
  double get windSpeed;
  double get windDirection;
  String get windDirectionCompass;
  int get minTemp;
  int get maxTemp;
  int get theTemp;
  double get airPressure;
  double get humidity;
  double get visibility;
  int get predictability;

  ConsolidatedWeather._();

  factory ConsolidatedWeather([updates(ConsolidatedWeatherBuilder b)]) =
      _$ConsolidatedWeather;

  String toJson() {
    return json.encode(
        serializers.serializeWith(ConsolidatedWeather.serializer, this));
  }

  static ConsolidatedWeather fromJsonMap(Map<String, dynamic> jsonMap) =>
      serializers.deserializeWith(ConsolidatedWeather.serializer, jsonMap);

  static Serializer<ConsolidatedWeather> get serializer =>
      _$consolidatedWeatherSerializer;
}
