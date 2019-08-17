// GENERATED CODE - DO NOT MODIFY BY HAND

part of location;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'woeid',
      serializers.serialize(object.woeid, specifiedType: const FullType(int)),
      'lattLong',
      serializers.serialize(object.lattLong,
          specifiedType: const FullType(String)),
      'locationType',
      serializers.serialize(object.locationType,
          specifiedType: const FullType(LocationType)),
      'timeZoneName',
      serializers.serialize(object.timeZoneName,
          specifiedType: const FullType(String)),
      'sunRise',
      serializers.serialize(object.sunRise,
          specifiedType: const FullType(DateTime)),
      'sunSet',
      serializers.serialize(object.sunSet,
          specifiedType: const FullType(DateTime)),
      'time',
      serializers.serialize(object.time,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

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
        case 'woeid':
          result.woeid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lattLong':
          result.lattLong = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locationType':
          result.locationType = serializers.deserialize(value,
              specifiedType: const FullType(LocationType)) as LocationType;
          break;
        case 'timeZoneName':
          result.timeZoneName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sunRise':
          result.sunRise = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sunSet':
          result.sunSet = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Location extends Location {
  @override
  final String title;
  @override
  final int woeid;
  @override
  final String lattLong;
  @override
  final LocationType locationType;
  @override
  final String timeZoneName;
  @override
  final DateTime sunRise;
  @override
  final DateTime sunSet;
  @override
  final DateTime time;

  factory _$Location([void Function(LocationBuilder) updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._(
      {this.title,
      this.woeid,
      this.lattLong,
      this.locationType,
      this.timeZoneName,
      this.sunRise,
      this.sunSet,
      this.time})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Location', 'title');
    }
    if (woeid == null) {
      throw new BuiltValueNullFieldError('Location', 'woeid');
    }
    if (lattLong == null) {
      throw new BuiltValueNullFieldError('Location', 'lattLong');
    }
    if (locationType == null) {
      throw new BuiltValueNullFieldError('Location', 'locationType');
    }
    if (timeZoneName == null) {
      throw new BuiltValueNullFieldError('Location', 'timeZoneName');
    }
    if (sunRise == null) {
      throw new BuiltValueNullFieldError('Location', 'sunRise');
    }
    if (sunSet == null) {
      throw new BuiltValueNullFieldError('Location', 'sunSet');
    }
    if (time == null) {
      throw new BuiltValueNullFieldError('Location', 'time');
    }
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        title == other.title &&
        woeid == other.woeid &&
        lattLong == other.lattLong &&
        locationType == other.locationType &&
        timeZoneName == other.timeZoneName &&
        sunRise == other.sunRise &&
        sunSet == other.sunSet &&
        time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, title.hashCode), woeid.hashCode),
                            lattLong.hashCode),
                        locationType.hashCode),
                    timeZoneName.hashCode),
                sunRise.hashCode),
            sunSet.hashCode),
        time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('title', title)
          ..add('woeid', woeid)
          ..add('lattLong', lattLong)
          ..add('locationType', locationType)
          ..add('timeZoneName', timeZoneName)
          ..add('sunRise', sunRise)
          ..add('sunSet', sunSet)
          ..add('time', time))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _woeid;
  int get woeid => _$this._woeid;
  set woeid(int woeid) => _$this._woeid = woeid;

  String _lattLong;
  String get lattLong => _$this._lattLong;
  set lattLong(String lattLong) => _$this._lattLong = lattLong;

  LocationType _locationType;
  LocationType get locationType => _$this._locationType;
  set locationType(LocationType locationType) =>
      _$this._locationType = locationType;

  String _timeZoneName;
  String get timeZoneName => _$this._timeZoneName;
  set timeZoneName(String timeZoneName) => _$this._timeZoneName = timeZoneName;

  DateTime _sunRise;
  DateTime get sunRise => _$this._sunRise;
  set sunRise(DateTime sunRise) => _$this._sunRise = sunRise;

  DateTime _sunSet;
  DateTime get sunSet => _$this._sunSet;
  set sunSet(DateTime sunSet) => _$this._sunSet = sunSet;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  LocationBuilder();

  LocationBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _woeid = _$v.woeid;
      _lattLong = _$v.lattLong;
      _locationType = _$v.locationType;
      _timeZoneName = _$v.timeZoneName;
      _sunRise = _$v.sunRise;
      _sunSet = _$v.sunSet;
      _time = _$v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            title: title,
            woeid: woeid,
            lattLong: lattLong,
            locationType: locationType,
            timeZoneName: timeZoneName,
            sunRise: sunRise,
            sunSet: sunSet,
            time: time);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
