// library manga;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/meta.dart';
import 'package:jikan_api/src/model/common/relation.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'manga.g.dart';

abstract class Manga implements Built<Manga, MangaBuilder> {
  Manga._();

  factory Manga([void Function(MangaBuilder) updates]) = _$Manga;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'title_english')
  String? get titleEnglish;

  @BuiltValueField(wireName: 'title_japanese')
  String? get titleJapanese;

  @BuiltValueField(wireName: 'title_synonyms')
  BuiltList<String> get titleSynonyms;

  @BuiltValueField(wireName: 'type')
  String? get type;

  @BuiltValueField(wireName: 'chapters')
  int? get chapters;

  @BuiltValueField(wireName: 'volumes')
  int? get volumes;

  @BuiltValueField(wireName: 'status')
  String get status;

  @BuiltValueField(wireName: 'publishing')
  bool get publishing;

  @BuiltValueField(wireName: 'published')
  String? get published;

  @BuiltValueField(wireName: 'score')
  double? get score;

  @BuiltValueField(wireName: 'scored_by')
  int? get scoredBy;

  @BuiltValueField(wireName: 'rank')
  int? get rank;

  @BuiltValueField(wireName: 'popularity')
  int? get popularity;

  @BuiltValueField(wireName: 'members')
  int? get members;

  @BuiltValueField(wireName: 'favorites')
  int? get favorites;

  @BuiltValueField(wireName: 'synopsis')
  String? get synopsis;

  @BuiltValueField(wireName: 'background')
  String? get background;

  @BuiltValueField(wireName: 'authors')
  BuiltList<Meta> get authors;

  @BuiltValueField(wireName: 'serializations')
  BuiltList<Meta> get serializations;

  @BuiltValueField(wireName: 'genres')
  BuiltList<Meta> get genres;

  @BuiltValueField(wireName: 'explicit_genres')
  BuiltList<Meta> get explicitGenres;

  @BuiltValueField(wireName: 'themes')
  BuiltList<Meta> get themes;

  @BuiltValueField(wireName: 'demographics')
  BuiltList<Meta> get demographics;

  @BuiltValueField(wireName: 'relations')
  BuiltList<Relation>? get relations;

  String toJson() {
    return serializers.toJson(Manga.serializer, this);
  }

  static Manga fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['image_url'] = jsonMap['images']['jpg']['large_image_url'];
    jsonMap['published'] = jsonMap['published']['string'];
    jsonMap['title'] ??= jsonMap['titles'][0]['title'];
    return serializers.deserializeWith(Manga.serializer, jsonMap)!;
  }

  static Serializer<Manga> get serializer => _$mangaSerializer;
}
