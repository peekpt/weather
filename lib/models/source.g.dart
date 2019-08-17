// GENERATED CODE - DO NOT MODIFY BY HAND

part of source;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Source> _$sourceSerializer = new _$SourceSerializer();

class _$SourceSerializer implements StructuredSerializer<Source> {
  @override
  final Iterable<Type> types = const [Source, _$Source];
  @override
  final String wireName = 'Source';

  @override
  Iterable<Object> serialize(Serializers serializers, Source object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Source deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SourceBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Source extends Source {
  @override
  final String title;
  @override
  final String url;

  factory _$Source([void Function(SourceBuilder) updates]) =>
      (new SourceBuilder()..update(updates)).build();

  _$Source._({this.title, this.url}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Source', 'title');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Source', 'url');
    }
  }

  @override
  Source rebuild(void Function(SourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceBuilder toBuilder() => new SourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Source && title == other.title && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Source')
          ..add('title', title)
          ..add('url', url))
        .toString();
  }
}

class SourceBuilder implements Builder<Source, SourceBuilder> {
  _$Source _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  SourceBuilder();

  SourceBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Source other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Source;
  }

  @override
  void update(void Function(SourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Source build() {
    final _$result = _$v ?? new _$Source._(title: title, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
