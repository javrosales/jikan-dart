// library character;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/anime/anime_meta.dart';
import 'package:jikan_api/src/model/manga/manga_meta.dart';
import 'package:jikan_api/src/model/person/person_meta.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'character.g.dart';

abstract class Character implements Built<Character, CharacterBuilder> {
  Character._();

  factory Character([void Function(CharacterBuilder) updates]) = _$Character;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'name_kanji')
  String? get nameKanji;

  @BuiltValueField(wireName: 'nicknames')
  BuiltList<String> get nicknames;

  @BuiltValueField(wireName: 'favorites')
  int get favorites;

  @BuiltValueField(wireName: 'about')
  String? get about;

  @BuiltValueField(wireName: 'anime')
  BuiltList<AnimeMeta>? get anime;

  @BuiltValueField(wireName: 'manga')
  BuiltList<MangaMeta>? get manga;

  @BuiltValueField(wireName: 'voices')
  BuiltList<PersonMeta>? get voices;

  String toJson() {
    return serializers.toJson(Character.serializer, this);
  }

  static Character fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['image_url'] = jsonMap['images']['jpg']['image_url'];
    for (var anime in (jsonMap['anime'] ?? [])) {
      anime['mal_id'] = anime['anime']['mal_id'];
      anime['url'] = anime['anime']['url'];
      anime['image_url'] = anime['anime']['images']['jpg']['large_image_url'];
      anime['title'] = anime['anime']['title'];
    }
    for (var manga in (jsonMap['manga'] ?? [])) {
      manga['mal_id'] = manga['manga']['mal_id'];
      manga['url'] = manga['manga']['url'];
      manga['image_url'] = manga['manga']['images']['jpg']['large_image_url'];
      manga['title'] = manga['manga']['title'];
    }
    for (var voice in (jsonMap['voices'] ?? [])) {
      voice['mal_id'] = voice['person']['mal_id'];
      voice['url'] = voice['person']['url'];
      voice['image_url'] = voice['person']['images']['jpg']['image_url'];
      voice['name'] = voice['person']['name'];
    }
    return serializers.deserializeWith(Character.serializer, jsonMap)!;
  }

  static Serializer<Character> get serializer => _$characterSerializer;
}
