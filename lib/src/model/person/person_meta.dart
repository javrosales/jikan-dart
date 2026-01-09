// library person_meta;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'person_meta.g.dart';

abstract class PersonMeta implements Built<PersonMeta, PersonMetaBuilder> {
  PersonMeta._();

  factory PersonMeta([void Function(PersonMetaBuilder) updates]) = _$PersonMeta;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'language')
  String? get language;

  @BuiltValueField(wireName: 'positions')
  BuiltList<String>? get positions;

  String toJson() {
    return serializers.toJson(PersonMeta.serializer, this);
  }

  static PersonMeta fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['mal_id'] = jsonMap['person']['mal_id'];
    jsonMap['url'] = jsonMap['person']['url'];
    jsonMap['image_url'] = jsonMap['person']['images']['jpg']['image_url'];
    jsonMap['name'] = jsonMap['person']['name'];
    return serializers.deserializeWith(PersonMeta.serializer, jsonMap)!;
  }

  static Serializer<PersonMeta> get serializer => _$personMetaSerializer;
}
