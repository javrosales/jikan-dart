// library score;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'score.g.dart';

abstract class Score implements Built<Score, ScoreBuilder> {
  Score._();

  factory Score([void Function(ScoreBuilder) updates]) = _$Score;

  @BuiltValueField(wireName: 'score')
  int get score;

  @BuiltValueField(wireName: 'votes')
  int get votes;

  @BuiltValueField(wireName: 'percentage')
  double get percentage;

  String toJson() {
    return serializers.toJson(Score.serializer, this);
  }

  static Score fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Score.serializer, jsonMap)!;
  }

  static Serializer<Score> get serializer => _$scoreSerializer;
}
