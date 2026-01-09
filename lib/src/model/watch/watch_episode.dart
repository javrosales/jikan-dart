// library watch_episode;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/anime/episode.dart';
import 'package:jikan_api/src/model/common/entry_meta.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'watch_episode.g.dart';

abstract class WatchEpisode
    implements Built<WatchEpisode, WatchEpisodeBuilder> {
  WatchEpisode._();

  factory WatchEpisode([void Function(WatchEpisodeBuilder) updates]) =
      _$WatchEpisode;

  @BuiltValueField(wireName: 'entry')
  EntryMeta get entry;

  @BuiltValueField(wireName: 'episodes')
  BuiltList<Episode> get episodes;

  @BuiltValueField(wireName: 'region_locked')
  bool get regionLocked;

  String toJson() {
    return serializers.toJson(WatchEpisode.serializer, this);
  }

  static WatchEpisode fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['entry']['image_url'] =
        jsonMap['entry']['images']['jpg']['large_image_url'];
    return serializers.deserializeWith(WatchEpisode.serializer, jsonMap)!;
  }

  static Serializer<WatchEpisode> get serializer => _$watchEpisodeSerializer;
}
