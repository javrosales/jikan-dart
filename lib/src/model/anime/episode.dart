// library episode;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'episode.g.dart';

abstract class Episode implements Built<Episode, EpisodeBuilder> {
  Episode._();

  factory Episode([void Function(EpisodeBuilder) updates]) = _$Episode;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String? get url;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'title_japanese')
  String? get titleJapanese;

  @BuiltValueField(wireName: 'title_romanji')
  String? get titleRomanji;

  @BuiltValueField(wireName: 'aired')
  String? get aired;

  @BuiltValueField(wireName: 'score')
  double? get score;

  @BuiltValueField(wireName: 'filler')
  bool? get filler;

  @BuiltValueField(wireName: 'recap')
  bool? get recap;

  @BuiltValueField(wireName: 'forum_url')
  String? get forumUrl;

  @BuiltValueField(wireName: 'premium')
  bool? get premium;

  String toJson() {
    return serializers.toJson(Episode.serializer, this);
  }

  static Episode fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Episode.serializer, jsonMap)!;
  }

  static Serializer<Episode> get serializer => _$episodeSerializer;
}
