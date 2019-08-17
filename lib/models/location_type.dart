import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'location_type.g.dart';

class LocationType extends EnumClass {
  @BuiltValueField(wireName: 'City')
  static const LocationType city = _$city;
  @BuiltValueField(wireName: 'Region / State / Province')
  static const LocationType regionStateProvince = _$regionStateProvince;
  @BuiltValueField(wireName: 'Country')
  static const LocationType country = _$country;
  @BuiltValueField(wireName: 'Continent')
  static const LocationType continent = _$continent;

  const LocationType._(String name) : super(name);

  static BuiltSet<LocationType> get values => _$values;
  static LocationType valueOf(String name) => _$valueOf(name);
  static Serializer<LocationType> get serializer => _$locationTypeSerializer;
}
