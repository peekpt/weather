library source;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializers.dart';

part 'source.g.dart';

abstract class Source implements Built<Source, SourceBuilder> {
  String get title;
  String get slug;
  String get url;
  @BuiltValueField(wireName: 'crawl_rate')
  int get crawlRate;

  Source._();

  factory Source([updates(SourceBuilder b)]) = _$Source;

  String toJson() {
    return json.encode(serializers.serializeWith(Source.serializer, this));
  }

  static Source fromJsonMap(Map<String, dynamic> jsonMap) =>
      serializers.deserializeWith(Source.serializer, jsonMap);

  static Serializer<Source> get serializer => _$sourceSerializer;
}
