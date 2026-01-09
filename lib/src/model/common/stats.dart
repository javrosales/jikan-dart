// library stats;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/score.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'stats.g.dart';

abstract class Stats implements Built<Stats, StatsBuilder> {
  Stats._();

  factory Stats([void Function(StatsBuilder) updates]) = _$Stats;

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

  @BuiltValueField(wireName: 'total')
  int get total;

  @BuiltValueField(wireName: 'scores')
  BuiltList<Score> get scores;

  String toJson() {
    return serializers.toJson(Stats.serializer, this);
  }

  static Stats fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Stats.serializer, jsonMap)!;
  }

  static Serializer<Stats> get serializer => _$statsSerializer;
}
