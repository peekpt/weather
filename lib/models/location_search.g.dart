// GENERATED CODE - DO NOT MODIFY BY HAND

part of location_search;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationSearch> _$locationSearchSerializer =
    new _$LocationSearchSerializer();

class _$LocationSearchSerializer
    implements StructuredSerializer<LocationSearch> {
  @override
  final Iterable<Type> types = const [LocationSearch, _$LocationSearch];
  @override
  final String wireName = 'LocationSearch';

  @override
  Iterable<Object> serialize(Serializers serializers, LocationSearch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'latt_long',
      serializers.serialize(object.lattLong,
          specifiedType: const FullType(String)),
      'woeid',
      serializers.serialize(object.woeid, specifiedType: const FullType(int)),
      'location_type',
      serializers.serialize(object.locationType,
          specifiedType: const FullType(LocationType)),
    ];
    if (object.distance != null) {
      result
        ..add('distance')
        ..add(serializers.serialize(object.distance,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  LocationSearch deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationSearchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latt_long':
          result.lattLong = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'woeid':
          result.woeid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'location_type':
          result.locationType = serializers.deserialize(value,
              specifiedType: const FullType(LocationType)) as LocationType;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSearch extends LocationSearch {
  @override
  final String title;
  @override
  final String lattLong;
  @override
  final int woeid;
  @override
  final int distance;
  @override
  final LocationType locationType;

  factory _$LocationSearch([void Function(LocationSearchBuilder) updates]) =>
      (new LocationSearchBuilder()..update(updates)).build();

  _$LocationSearch._(
      {this.title, this.lattLong, this.woeid, this.distance, this.locationType})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('LocationSearch', 'title');
    }
    if (lattLong == null) {
      throw new BuiltValueNullFieldError('LocationSearch', 'lattLong');
    }
    if (woeid == null) {
      throw new BuiltValueNullFieldError('LocationSearch', 'woeid');
    }
    if (locationType == null) {
      throw new BuiltValueNullFieldError('LocationSearch', 'locationType');
    }
  }

  @override
  LocationSearch rebuild(void Function(LocationSearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationSearchBuilder toBuilder() =>
      new LocationSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationSearch &&
        title == other.title &&
        lattLong == other.lattLong &&
        woeid == other.woeid &&
        distance == other.distance &&
        locationType == other.locationType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, title.hashCode), lattLong.hashCode), woeid.hashCode),
            distance.hashCode),
        locationType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationSearch')
          ..add('title', title)
          ..add('lattLong', lattLong)
          ..add('woeid', woeid)
          ..add('distance', distance)
          ..add('locationType', locationType))
        .toString();
  }
}

class LocationSearchBuilder
    implements Builder<LocationSearch, LocationSearchBuilder> {
  _$LocationSearch _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _lattLong;
  String get lattLong => _$this._lattLong;
  set lattLong(String lattLong) => _$this._lattLong = lattLong;

  int _woeid;
  int get woeid => _$this._woeid;
  set woeid(int woeid) => _$this._woeid = woeid;

  int _distance;
  int get distance => _$this._distance;
  set distance(int distance) => _$this._distance = distance;

  LocationType _locationType;
  LocationType get locationType => _$this._locationType;
  set locationType(LocationType locationType) =>
      _$this._locationType = locationType;

  LocationSearchBuilder();

  LocationSearchBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _lattLong = _$v.lattLong;
      _woeid = _$v.woeid;
      _distance = _$v.distance;
      _locationType = _$v.locationType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationSearch other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LocationSearch;
  }

  @override
  void update(void Function(LocationSearchBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationSearch build() {
    final _$result = _$v ??
        new _$LocationSearch._(
            title: title,
            lattLong: lattLong,
            woeid: woeid,
            distance: distance,
            locationType: locationType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
