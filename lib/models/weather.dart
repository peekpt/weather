library weather;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializers.dart';
import 'package:weather/models/weather_state.dart';

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  /// Internal identifier for the forecast
  int get id;

  /// Date that the forecast or observation pertains to
  @BuiltValueField(wireName: 'applicable_date')
  DateTime get applicableDate;

  /// Text description of the weather state
  @BuiltValueField(wireName: 'weather_state_name')
  String get weatherStateName;

  @BuiltValueField(wireName: 'weather_state_abbr')
  WeatherState get weatherStateAbbr;

  @BuiltValueField(wireName: 'wind_speed')
  @nullable
  double get windSpeed;

  @BuiltValueField(wireName: 'wind_direction')
  @nullable
  double get windDirection;

  @BuiltValueField(wireName: 'wind_direction_compass')
  @nullable
  String get windDirectionCompass;

  @BuiltValueField(wireName: 'min_temp')
  @nullable
  double get minTemp;

  @BuiltValueField(wireName: 'max_temp')
  @nullable
  double get maxTemp;

  @BuiltValueField(wireName: 'the_temp')
  @nullable
  double get theTemp;

  @BuiltValueField(wireName: 'air_pressure')
  @nullable
  double get airPressure;

  @nullable
  int get humidity;

  @nullable
  double get visibility;

  @nullable
  int get predictability;

  DateTime get created;

  Weather._();

  factory Weather([updates(WeatherBuilder b)]) = _$Weather;

  String toJson() {
    return json.encode(serializers.serializeWith(Weather.serializer, this));
  }

  static Weather fromJsonMap(Map<String, dynamic> jsonMap) =>
      serializers.deserializeWith(Weather.serializer, jsonMap);

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
