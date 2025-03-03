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
      'consolidated_weather',
      serializers.serialize(object.consolidatedWeather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Weather)])),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'woeid',
      serializers.serialize(object.woeid, specifiedType: const FullType(int)),
      'latt_long',
      serializers.serialize(object.lattLong,
          specifiedType: const FullType(String)),
      'location_type',
      serializers.serialize(object.locationType,
          specifiedType: const FullType(LocationType)),
      'timezone_name',
      serializers.serialize(object.timezoneName,
          specifiedType: const FullType(String)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(String)),
      'sun_rise',
      serializers.serialize(object.sunRise,
          specifiedType: const FullType(DateTime)),
      'sun_set',
      serializers.serialize(object.sunSet,
          specifiedType: const FullType(DateTime)),
      'time',
      serializers.serialize(object.time,
          specifiedType: const FullType(DateTime)),
      'parent',
      serializers.serialize(object.parent,
          specifiedType: const FullType(Parent)),
      'sources',
      serializers.serialize(object.sources,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Source)])),
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
        case 'consolidated_weather':
          result.consolidatedWeather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Weather)]))
              as BuiltList<dynamic>);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'woeid':
          result.woeid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'latt_long':
          result.lattLong = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location_type':
          result.locationType = serializers.deserialize(value,
              specifiedType: const FullType(LocationType)) as LocationType;
          break;
        case 'timezone_name':
          result.timezoneName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sun_rise':
          result.sunRise = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sun_set':
          result.sunSet = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'parent':
          result.parent.replace(serializers.deserialize(value,
              specifiedType: const FullType(Parent)) as Parent);
          break;
        case 'sources':
          result.sources.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Source)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Location extends Location {
  @override
  final BuiltList<Weather> consolidatedWeather;
  @override
  final String title;
  @override
  final int woeid;
  @override
  final String lattLong;
  @override
  final LocationType locationType;
  @override
  final String timezoneName;
  @override
  final String timezone;
  @override
  final DateTime sunRise;
  @override
  final DateTime sunSet;
  @override
  final DateTime time;
  @override
  final Parent parent;
  @override
  final BuiltList<Source> sources;

  factory _$Location([void Function(LocationBuilder) updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._(
      {this.consolidatedWeather,
      this.title,
      this.woeid,
      this.lattLong,
      this.locationType,
      this.timezoneName,
      this.timezone,
      this.sunRise,
      this.sunSet,
      this.time,
      this.parent,
      this.sources})
      : super._() {
    if (consolidatedWeather == null) {
      throw new BuiltValueNullFieldError('Location', 'consolidatedWeather');
    }
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
    if (timezoneName == null) {
      throw new BuiltValueNullFieldError('Location', 'timezoneName');
    }
    if (timezone == null) {
      throw new BuiltValueNullFieldError('Location', 'timezone');
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
    if (parent == null) {
      throw new BuiltValueNullFieldError('Location', 'parent');
    }
    if (sources == null) {
      throw new BuiltValueNullFieldError('Location', 'sources');
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
        consolidatedWeather == other.consolidatedWeather &&
        title == other.title &&
        woeid == other.woeid &&
        lattLong == other.lattLong &&
        locationType == other.locationType &&
        timezoneName == other.timezoneName &&
        timezone == other.timezone &&
        sunRise == other.sunRise &&
        sunSet == other.sunSet &&
        time == other.time &&
        parent == other.parent &&
        sources == other.sources;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    0,
                                                    consolidatedWeather
                                                        .hashCode),
                                                title.hashCode),
                                            woeid.hashCode),
                                        lattLong.hashCode),
                                    locationType.hashCode),
                                timezoneName.hashCode),
                            timezone.hashCode),
                        sunRise.hashCode),
                    sunSet.hashCode),
                time.hashCode),
            parent.hashCode),
        sources.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('consolidatedWeather', consolidatedWeather)
          ..add('title', title)
          ..add('woeid', woeid)
          ..add('lattLong', lattLong)
          ..add('locationType', locationType)
          ..add('timezoneName', timezoneName)
          ..add('timezone', timezone)
          ..add('sunRise', sunRise)
          ..add('sunSet', sunSet)
          ..add('time', time)
          ..add('parent', parent)
          ..add('sources', sources))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location _$v;

  ListBuilder<Weather> _consolidatedWeather;
  ListBuilder<Weather> get consolidatedWeather =>
      _$this._consolidatedWeather ??= new ListBuilder<Weather>();
  set consolidatedWeather(ListBuilder<Weather> consolidatedWeather) =>
      _$this._consolidatedWeather = consolidatedWeather;

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

  String _timezoneName;
  String get timezoneName => _$this._timezoneName;
  set timezoneName(String timezoneName) => _$this._timezoneName = timezoneName;

  String _timezone;
  String get timezone => _$this._timezone;
  set timezone(String timezone) => _$this._timezone = timezone;

  DateTime _sunRise;
  DateTime get sunRise => _$this._sunRise;
  set sunRise(DateTime sunRise) => _$this._sunRise = sunRise;

  DateTime _sunSet;
  DateTime get sunSet => _$this._sunSet;
  set sunSet(DateTime sunSet) => _$this._sunSet = sunSet;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  ParentBuilder _parent;
  ParentBuilder get parent => _$this._parent ??= new ParentBuilder();
  set parent(ParentBuilder parent) => _$this._parent = parent;

  ListBuilder<Source> _sources;
  ListBuilder<Source> get sources =>
      _$this._sources ??= new ListBuilder<Source>();
  set sources(ListBuilder<Source> sources) => _$this._sources = sources;

  LocationBuilder();

  LocationBuilder get _$this {
    if (_$v != null) {
      _consolidatedWeather = _$v.consolidatedWeather?.toBuilder();
      _title = _$v.title;
      _woeid = _$v.woeid;
      _lattLong = _$v.lattLong;
      _locationType = _$v.locationType;
      _timezoneName = _$v.timezoneName;
      _timezone = _$v.timezone;
      _sunRise = _$v.sunRise;
      _sunSet = _$v.sunSet;
      _time = _$v.time;
      _parent = _$v.parent?.toBuilder();
      _sources = _$v.sources?.toBuilder();
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
    _$Location _$result;
    try {
      _$result = _$v ??
          new _$Location._(
              consolidatedWeather: consolidatedWeather.build(),
              title: title,
              woeid: woeid,
              lattLong: lattLong,
              locationType: locationType,
              timezoneName: timezoneName,
              timezone: timezone,
              sunRise: sunRise,
              sunSet: sunSet,
              time: time,
              parent: parent.build(),
              sources: sources.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'consolidatedWeather';
        consolidatedWeather.build();

        _$failedField = 'parent';
        parent.build();
        _$failedField = 'sources';
        sources.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Location', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
