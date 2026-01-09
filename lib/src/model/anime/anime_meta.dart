// library anime_meta;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'anime_meta.g.dart';

abstract class AnimeMeta implements Built<AnimeMeta, AnimeMetaBuilder> {
  AnimeMeta._();

  factory AnimeMeta([void Function(AnimeMetaBuilder) updates]) = _$AnimeMeta;

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
    return serializers.toJson(AnimeMeta.serializer, this);
  }

  static AnimeMeta fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(AnimeMeta.serializer, jsonMap)!;
  }

  static Serializer<AnimeMeta> get serializer => _$animeMetaSerializer;
}
