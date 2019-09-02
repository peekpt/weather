import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_state.g.dart';

class WeatherState extends EnumClass {
  @BuiltValueEnumConst(wireName: 'sn')
  static const WeatherState snow = _$snow;

  @BuiltValueEnumConst(wireName: 'sl')
  static const WeatherState sleet = _$sleet;

  @BuiltValueEnumConst(wireName: 'h')
  static const WeatherState hail = _$hail;

  @BuiltValueEnumConst(wireName: 't')
  static const WeatherState thunderstorm = _$thunderstorm;

  @BuiltValueEnumConst(wireName: 'hr')
  static const WeatherState heavyRain = _$heavyRain;

  @BuiltValueEnumConst(wireName: 'lr')
  static const WeatherState lightRain = _$lightRain;

  @BuiltValueEnumConst(wireName: 's')
  static const WeatherState showers = _$showers;

  @BuiltValueEnumConst(wireName: 'hc')
  static const WeatherState heavyCloud = _$heavyCloud;

  @BuiltValueEnumConst(wireName: 'lc')
  static const WeatherState lightCloud = _$lightCloud;

  @BuiltValueEnumConst(wireName: 'c')
  static const WeatherState clear = _$clear;

  const WeatherState._(String name) : super(name);

  static BuiltSet<WeatherState> get values => _$values;
  static WeatherState valueOf(String name) => _$valueOf(name);
  static Serializer<WeatherState> get serializer => _$weatherStateSerializer;
}
