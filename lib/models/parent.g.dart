// GENERATED CODE - DO NOT MODIFY BY HAND

part of parent;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Parent> _$parentSerializer = new _$ParentSerializer();

class _$ParentSerializer implements StructuredSerializer<Parent> {
  @override
  final Iterable<Type> types = const [Parent, _$Parent];
  @override
  final String wireName = 'Parent';

  @override
  Iterable<Object> serialize(Serializers serializers, Parent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'location_type',
      serializers.serialize(object.locationType,
          specifiedType: const FullType(LocationType)),
      'latt_long',
      serializers.serialize(object.lattLong,
          specifiedType: const FullType(String)),
      'woeid',
      serializers.serialize(object.woeid, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Parent deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParentBuilder();

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
        case 'location_type':
          result.locationType = serializers.deserialize(value,
              specifiedType: const FullType(LocationType)) as LocationType;
          break;
        case 'latt_long':
          result.lattLong = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'woeid':
          result.woeid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Parent extends Parent {
  @override
  final String title;
  @override
  final LocationType locationType;
  @override
  final String lattLong;
  @override
  final int woeid;

  factory _$Parent([void Function(ParentBuilder) updates]) =>
      (new ParentBuilder()..update(updates)).build();

  _$Parent._({this.title, this.locationType, this.lattLong, this.woeid})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Parent', 'title');
    }
    if (locationType == null) {
      throw new BuiltValueNullFieldError('Parent', 'locationType');
    }
    if (lattLong == null) {
      throw new BuiltValueNullFieldError('Parent', 'lattLong');
    }
    if (woeid == null) {
      throw new BuiltValueNullFieldError('Parent', 'woeid');
    }
  }

  @override
  Parent rebuild(void Function(ParentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParentBuilder toBuilder() => new ParentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Parent &&
        title == other.title &&
        locationType == other.locationType &&
        lattLong == other.lattLong &&
        woeid == other.woeid;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), locationType.hashCode),
            lattLong.hashCode),
        woeid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Parent')
          ..add('title', title)
          ..add('locationType', locationType)
          ..add('lattLong', lattLong)
          ..add('woeid', woeid))
        .toString();
  }
}

class ParentBuilder implements Builder<Parent, ParentBuilder> {
  _$Parent _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  LocationType _locationType;
  LocationType get locationType => _$this._locationType;
  set locationType(LocationType locationType) =>
      _$this._locationType = locationType;

  String _lattLong;
  String get lattLong => _$this._lattLong;
  set lattLong(String lattLong) => _$this._lattLong = lattLong;

  int _woeid;
  int get woeid => _$this._woeid;
  set woeid(int woeid) => _$this._woeid = woeid;

  ParentBuilder();

  ParentBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _locationType = _$v.locationType;
      _lattLong = _$v.lattLong;
      _woeid = _$v.woeid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Parent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Parent;
  }

  @override
  void update(void Function(ParentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Parent build() {
    final _$result = _$v ??
        new _$Parent._(
            title: title,
            locationType: locationType,
            lattLong: lattLong,
            woeid: woeid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
