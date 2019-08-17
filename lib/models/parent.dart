library parent;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/location_type.dart';
import 'package:weather/models/serializers.dart';

part 'parent.g.dart';

abstract class Parent implements Built<Parent, ParentBuilder> {
  String get title;
  LocationType get locationType;
  String get lattLong;
  String get woeid;

  Parent._();

  factory Parent([updates(ParentBuilder b)]) = _$Parent;

  String toJson() {
    return json.encode(serializers.serializeWith(Parent.serializer, this));
  }

  static Parent fromJsonMap(Map<String, dynamic> jsonMap) =>
      serializers.deserializeWith(Parent.serializer, jsonMap);

  static Serializer<Parent> get serializer => _$parentSerializer;
}
