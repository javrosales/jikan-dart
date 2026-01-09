// library user_recommendation;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/entry_meta.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/user/user_meta.dart';

part 'user_recommendation.g.dart';

abstract class UserRecommendation
    implements Built<UserRecommendation, UserRecommendationBuilder> {
  UserRecommendation._();

  factory UserRecommendation(
          [void Function(UserRecommendationBuilder) updates]) =
      _$UserRecommendation;

  @BuiltValueField(wireName: 'mal_id')
  String get malId;

  @BuiltValueField(wireName: 'entry')
  BuiltList<EntryMeta> get entry;

  @BuiltValueField(wireName: 'content')
  String get content;

  @BuiltValueField(wireName: 'date')
  String get date;

  @BuiltValueField(wireName: 'user')
  UserMeta get user;

  String toJson() {
    return serializers.toJson(UserRecommendation.serializer, this);
  }

  static UserRecommendation fromJson(Map<String, dynamic> jsonMap) {
    for (var entry in jsonMap['entry']) {
      entry['image_url'] = entry['images']['jpg']['large_image_url'];
    }
    return serializers.deserializeWith(UserRecommendation.serializer, jsonMap)!;
  }

  static Serializer<UserRecommendation> get serializer =>
      _$userRecommendationSerializer;
}
