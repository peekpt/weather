// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LocationType _$city = const LocationType._('city');
const LocationType _$regionStateProvince =
    const LocationType._('regionStateProvince');
const LocationType _$country = const LocationType._('country');
const LocationType _$continent = const LocationType._('continent');

LocationType _$valueOf(String name) {
  switch (name) {
    case 'city':
      return _$city;
    case 'regionStateProvince':
      return _$regionStateProvince;
    case 'country':
      return _$country;
    case 'continent':
      return _$continent;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<LocationType> _$values =
    new BuiltSet<LocationType>(const <LocationType>[
  _$city,
  _$regionStateProvince,
  _$country,
  _$continent,
]);

Serializer<LocationType> _$locationTypeSerializer =
    new _$LocationTypeSerializer();

class _$LocationTypeSerializer implements PrimitiveSerializer<LocationType> {
  static const Map<String, String> _toWire = const <String, String>{
    'city': 'City',
    'regionStateProvince': 'Region / State / Province',
    'country': 'Country',
    'continent': 'Continent',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'City': 'city',
    'Region / State / Province': 'regionStateProvince',
    'Country': 'country',
    'Continent': 'continent',
  };

  @override
  final Iterable<Type> types = const <Type>[LocationType];
  @override
  final String wireName = 'LocationType';

  @override
  Object serialize(Serializers serializers, LocationType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LocationType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LocationType.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
