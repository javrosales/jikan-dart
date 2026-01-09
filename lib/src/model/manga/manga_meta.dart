// library manga_meta;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'manga_meta.g.dart';

abstract class MangaMeta implements Built<MangaMeta, MangaMetaBuilder> {
  MangaMeta._();

  factory MangaMeta([void Function(MangaMetaBuilder) updates]) = _$MangaMeta;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'role')
  String? get role;

  @BuiltValueField(wireName: 'position')
  String? get position;

  String toJson() {
    return serializers.toJson(MangaMeta.serializer, this);
  }

  static MangaMeta fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(MangaMeta.serializer, jsonMap)!;
  }

  static Serializer<MangaMeta> get serializer => _$mangaMetaSerializer;
}
