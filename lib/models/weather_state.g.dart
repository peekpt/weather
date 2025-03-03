// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WeatherState _$snow = const WeatherState._('snow');
const WeatherState _$sleet = const WeatherState._('sleet');
const WeatherState _$hail = const WeatherState._('hail');
const WeatherState _$thunderstorm = const WeatherState._('thunderstorm');
const WeatherState _$heavyRain = const WeatherState._('heavyRain');
const WeatherState _$lightRain = const WeatherState._('lightRain');
const WeatherState _$showers = const WeatherState._('showers');
const WeatherState _$heavyCloud = const WeatherState._('heavyCloud');
const WeatherState _$lightCloud = const WeatherState._('lightCloud');
const WeatherState _$clear = const WeatherState._('clear');

WeatherState _$valueOf(String name) {
  switch (name) {
    case 'snow':
      return _$snow;
    case 'sleet':
      return _$sleet;
    case 'hail':
      return _$hail;
    case 'thunderstorm':
      return _$thunderstorm;
    case 'heavyRain':
      return _$heavyRain;
    case 'lightRain':
      return _$lightRain;
    case 'showers':
      return _$showers;
    case 'heavyCloud':
      return _$heavyCloud;
    case 'lightCloud':
      return _$lightCloud;
    case 'clear':
      return _$clear;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<WeatherState> _$values =
    new BuiltSet<WeatherState>(const <WeatherState>[
  _$snow,
  _$sleet,
  _$hail,
  _$thunderstorm,
  _$heavyRain,
  _$lightRain,
  _$showers,
  _$heavyCloud,
  _$lightCloud,
  _$clear,
]);

Serializer<WeatherState> _$weatherStateSerializer =
    new _$WeatherStateSerializer();

class _$WeatherStateSerializer implements PrimitiveSerializer<WeatherState> {
  static const Map<String, String> _toWire = const <String, String>{
    'snow': 'sn',
    'sleet': 'sl',
    'hail': 'h',
    'thunderstorm': 't',
    'heavyRain': 'hr',
    'lightRain': 'lr',
    'showers': 's',
    'heavyCloud': 'hc',
    'lightCloud': 'lc',
    'clear': 'c',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'sn': 'snow',
    'sl': 'sleet',
    'h': 'hail',
    't': 'thunderstorm',
    'hr': 'heavyRain',
    'lr': 'lightRain',
    's': 'showers',
    'hc': 'heavyCloud',
    'lc': 'lightCloud',
    'c': 'clear',
  };

  @override
  final Iterable<Type> types = const <Type>[WeatherState];
  @override
  final String wireName = 'WeatherState';

  @override
  Object serialize(Serializers serializers, WeatherState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WeatherState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WeatherState.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
