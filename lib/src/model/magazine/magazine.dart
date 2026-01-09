// library magazine;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'magazine.g.dart';

abstract class Magazine implements Built<Magazine, MagazineBuilder> {
  Magazine._();

  factory Magazine([void Function(MagazineBuilder) updates]) = _$Magazine;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'count')
  int get count;

  String toJson() {
    return serializers.toJson(Magazine.serializer, this);
  }

  static Magazine fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Magazine.serializer, jsonMap)!;
  }

  static Serializer<Magazine> get serializer => _$magazineSerializer;
}
