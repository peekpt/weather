library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather/models/weather_state.dart';
import 'models.dart';

part 'serializers.g.dart';

@SerializersFor([
  Location,
  LocationSearch,
  Parent,
  Source,
  Weather,
  Source,
  LocationType,
  WeatherState,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(Iso8601DateTimeSerializer()))
    .build();
