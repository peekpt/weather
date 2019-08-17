// GENERATED CODE - DO NOT MODIFY BY HAND

part of location_search_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationSearchResponse> _$locationSearchResponseSerializer =
    new _$LocationSearchResponseSerializer();

class _$LocationSearchResponseSerializer
    implements StructuredSerializer<LocationSearchResponse> {
  @override
  final Iterable<Type> types = const [
    LocationSearchResponse,
    _$LocationSearchResponse
  ];
  @override
  final String wireName = 'LocationSearchResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, LocationSearchResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'locationSearches',
      serializers.serialize(object.locationSearches,
          specifiedType: const FullType(
              BuiltList, const [const FullType(LocationSearch)])),
    ];

    return result;
  }

  @override
  LocationSearchResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationSearchResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'locationSearches':
          result.locationSearches.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LocationSearch)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSearchResponse extends LocationSearchResponse {
  @override
  final BuiltList<LocationSearch> locationSearches;

  factory _$LocationSearchResponse(
          [void Function(LocationSearchResponseBuilder) updates]) =>
      (new LocationSearchResponseBuilder()..update(updates)).build();

  _$LocationSearchResponse._({this.locationSearches}) : super._() {
    if (locationSearches == null) {
      throw new BuiltValueNullFieldError(
          'LocationSearchResponse', 'locationSearches');
    }
  }

  @override
  LocationSearchResponse rebuild(
          void Function(LocationSearchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationSearchResponseBuilder toBuilder() =>
      new LocationSearchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationSearchResponse &&
        locationSearches == other.locationSearches;
  }

  @override
  int get hashCode {
    return $jf($jc(0, locationSearches.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationSearchResponse')
          ..add('locationSearches', locationSearches))
        .toString();
  }
}

class LocationSearchResponseBuilder
    implements Builder<LocationSearchResponse, LocationSearchResponseBuilder> {
  _$LocationSearchResponse _$v;

  ListBuilder<LocationSearch> _locationSearches;
  ListBuilder<LocationSearch> get locationSearches =>
      _$this._locationSearches ??= new ListBuilder<LocationSearch>();
  set locationSearches(ListBuilder<LocationSearch> locationSearches) =>
      _$this._locationSearches = locationSearches;

  LocationSearchResponseBuilder();

  LocationSearchResponseBuilder get _$this {
    if (_$v != null) {
      _locationSearches = _$v.locationSearches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationSearchResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LocationSearchResponse;
  }

  @override
  void update(void Function(LocationSearchResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationSearchResponse build() {
    _$LocationSearchResponse _$result;
    try {
      _$result = _$v ??
          new _$LocationSearchResponse._(
              locationSearches: locationSearches.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'locationSearches';
        locationSearches.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LocationSearchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
