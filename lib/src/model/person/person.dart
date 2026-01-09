// library person;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/anime/anime_meta.dart';
import 'package:jikan_api/src/model/manga/manga_meta.dart';
import 'package:jikan_api/src/model/person/voice_actor.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  Person._();

  factory Person([void Function(PersonBuilder) updates]) = _$Person;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'website_url')
  String? get websiteUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'given_name')
  String? get givenName;

  @BuiltValueField(wireName: 'family_name')
  String? get familyName;

  @BuiltValueField(wireName: 'alternate_names')
  BuiltList<String> get alternateNames;

  @BuiltValueField(wireName: 'birthday')
  String? get birthday;

  @BuiltValueField(wireName: 'favorites')
  int get favorites;

  @BuiltValueField(wireName: 'about')
  String? get about;

  @BuiltValueField(wireName: 'anime')
  BuiltList<AnimeMeta>? get anime;

  @BuiltValueField(wireName: 'manga')
  BuiltList<MangaMeta>? get manga;

  @BuiltValueField(wireName: 'voices')
  BuiltList<VoiceActor>? get voices;

  String toJson() {
    return serializers.toJson(Person.serializer, this);
  }

  static Person fromJson(Map<String, dynamic> jsonMap) {
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
      voice['anime']['role'] = voice['role'];
      voice['anime']['image_url'] =
          voice['anime']['images']['jpg']['large_image_url'];
      voice['character']['role'] = voice['role'];
      voice['character']['image_url'] =
          voice['character']['images']['jpg']['image_url'];
    }
    return serializers.deserializeWith(Person.serializer, jsonMap)!;
  }

  static Serializer<Person> get serializer => _$personSerializer;
}
