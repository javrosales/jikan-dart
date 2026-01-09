// library character_meta;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/person/person_meta.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'character_meta.g.dart';

abstract class CharacterMeta
    implements Built<CharacterMeta, CharacterMetaBuilder> {
  CharacterMeta._();

  factory CharacterMeta([void Function(CharacterMetaBuilder) updates]) =
      _$CharacterMeta;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'role')
  String get role;

  @BuiltValueField(wireName: 'favorites')
  int? get favorites;

  @BuiltValueField(wireName: 'voice_actors')
  BuiltList<PersonMeta>? get voiceActors;

  String toJson() {
    return serializers.toJson(CharacterMeta.serializer, this);
  }

  static CharacterMeta fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['mal_id'] = jsonMap['character']['mal_id'];
    jsonMap['url'] = jsonMap['character']['url'];
    jsonMap['image_url'] = jsonMap['character']['images']['jpg']['image_url'];
    jsonMap['name'] = jsonMap['character']['name'];
    for (var voice in (jsonMap['voice_actors'] ?? [])) {
      voice['mal_id'] = voice['person']['mal_id'];
      voice['url'] = voice['person']['url'];
      voice['image_url'] = voice['person']['images']['jpg']['image_url'];
      voice['name'] = voice['person']['name'];
    }
    return serializers.deserializeWith(CharacterMeta.serializer, jsonMap)!;
  }

  static Serializer<CharacterMeta> get serializer => _$characterMetaSerializer;
}
