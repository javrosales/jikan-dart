// library user_review;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/entry_meta.dart';
import 'package:jikan_api/src/model/common/reactions.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/user/user_meta.dart';

part 'user_review.g.dart';

abstract class UserReview implements Built<UserReview, UserReviewBuilder> {
  UserReview._();

  factory UserReview([void Function(UserReviewBuilder) updates]) = _$UserReview;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'reactions')
  Reactions get reactions;

  @BuiltValueField(wireName: 'date')
  String get date;

  @BuiltValueField(wireName: 'review')
  String get review;

  @BuiltValueField(wireName: 'score')
  int get score;

  @BuiltValueField(wireName: 'tags')
  BuiltList<String> get tags;

  @BuiltValueField(wireName: 'is_spoiler')
  bool get isSpoiler;

  @BuiltValueField(wireName: 'is_preliminary')
  bool get isPreliminary;

  @BuiltValueField(wireName: 'episodes_watched')
  int? get episodesWatched;

  @BuiltValueField(wireName: 'chapters_read')
  int? get chaptersRead;

  @BuiltValueField(wireName: 'entry')
  EntryMeta get entry;

  @BuiltValueField(wireName: 'user')
  UserMeta get user;

  String toJson() {
    return serializers.toJson(UserReview.serializer, this);
  }

  static UserReview fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['entry']['image_url'] =
        jsonMap['entry']['images']['jpg']['large_image_url'];
    if (jsonMap['user']['images'] != null) {
      jsonMap['user']['image_url'] =
          jsonMap['user']['images']['jpg']['image_url'];
    }
    return serializers.deserializeWith(UserReview.serializer, jsonMap)!;
  }

  static Serializer<UserReview> get serializer => _$userReviewSerializer;
}
