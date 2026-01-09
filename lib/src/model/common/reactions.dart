// library reactions;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'reactions.g.dart';

abstract class Reactions implements Built<Reactions, ReactionsBuilder> {
  Reactions._();

  factory Reactions([void Function(ReactionsBuilder) updates]) = _$Reactions;

  @BuiltValueField(wireName: 'overall')
  int get overall;

  @BuiltValueField(wireName: 'nice')
  int get nice;

  @BuiltValueField(wireName: 'love_it')
  int get loveIt;

  @BuiltValueField(wireName: 'funny')
  int get funny;

  @BuiltValueField(wireName: 'confusing')
  int get confusing;

  @BuiltValueField(wireName: 'informative')
  int get informative;

  @BuiltValueField(wireName: 'well_written')
  int get wellWritten;

  @BuiltValueField(wireName: 'creative')
  int get creative;

  String toJson() {
    return serializers.toJson(Reactions.serializer, this);
  }

  static Reactions fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Reactions.serializer, jsonMap)!;
  }

  static Serializer<Reactions> get serializer => _$reactionsSerializer;
}
