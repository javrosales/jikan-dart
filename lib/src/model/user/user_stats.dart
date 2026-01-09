// library user_stats;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'user_stats.g.dart';

abstract class UserStats implements Built<UserStats, UserStatsBuilder> {
  UserStats._();

  factory UserStats([void Function(UserStatsBuilder) updates]) = _$UserStats;

  @BuiltValueField(wireName: 'days_watched')
  double? get daysWatched;

  @BuiltValueField(wireName: 'days_read')
  double? get daysRead;

  @BuiltValueField(wireName: 'mean_score')
  double get meanScore;

  @BuiltValueField(wireName: 'watching')
  int? get watching;

  @BuiltValueField(wireName: 'reading')
  int? get reading;

  @BuiltValueField(wireName: 'completed')
  int get completed;

  @BuiltValueField(wireName: 'on_hold')
  int get onHold;

  @BuiltValueField(wireName: 'dropped')
  int get dropped;

  @BuiltValueField(wireName: 'plan_to_watch')
  int? get planToWatch;

  @BuiltValueField(wireName: 'plan_to_read')
  int? get planToRead;

  @BuiltValueField(wireName: 'total_entries')
  int get totalEntries;

  @BuiltValueField(wireName: 'rewatched')
  int? get rewatched;

  @BuiltValueField(wireName: 'reread')
  int? get reread;

  @BuiltValueField(wireName: 'episodes_watched')
  int? get episodesWatched;

  @BuiltValueField(wireName: 'chapters_read')
  int? get chaptersRead;

  @BuiltValueField(wireName: 'volumes_read')
  int? get volumesRead;

  String toJson() {
    return serializers.toJson(UserStats.serializer, this);
  }

  static UserStats fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(UserStats.serializer, jsonMap)!;
  }

  static Serializer<UserStats> get serializer => _$userStatsSerializer;
}
