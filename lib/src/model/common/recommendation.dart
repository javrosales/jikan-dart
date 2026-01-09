// library recommendation;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/entry_meta.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'recommendation.g.dart';

abstract class Recommendation
    implements Built<Recommendation, RecommendationBuilder> {
  Recommendation._();

  factory Recommendation([void Function(RecommendationBuilder) updates]) =
      _$Recommendation;

  @BuiltValueField(wireName: 'entry')
  EntryMeta get entry;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'votes')
  int get votes;

  String toJson() {
    return serializers.toJson(Recommendation.serializer, this);
  }

  static Recommendation fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['entry']['image_url'] =
        jsonMap['entry']['images']['jpg']['large_image_url'];
    return serializers.deserializeWith(Recommendation.serializer, jsonMap)!;
  }

  static Serializer<Recommendation> get serializer =>
      _$recommendationSerializer;
}
