// library user_update;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/user/user_meta.dart';

part 'user_update.g.dart';

abstract class UserUpdate implements Built<UserUpdate, UserUpdateBuilder> {
  UserUpdate._();

  factory UserUpdate([void Function(UserUpdateBuilder) updates]) = _$UserUpdate;

  @BuiltValueField(wireName: 'user')
  UserMeta get user;

  @BuiltValueField(wireName: 'score')
  int? get score;

  @BuiltValueField(wireName: 'status')
  String get status;

  @BuiltValueField(wireName: 'episodes_seen')
  int? get episodesSeen;

  @BuiltValueField(wireName: 'episodes_total')
  int? get episodesTotal;

  @BuiltValueField(wireName: 'volumes_read')
  int? get volumesRead;

  @BuiltValueField(wireName: 'volumes_total')
  int? get volumesTotal;

  @BuiltValueField(wireName: 'chapters_read')
  int? get chaptersRead;

  @BuiltValueField(wireName: 'chapters_total')
  int? get chaptersTotal;

  @BuiltValueField(wireName: 'date')
  String get date;

  String toJson() {
    return serializers.toJson(UserUpdate.serializer, this);
  }

  static UserUpdate fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['user']['image_url'] =
        jsonMap['user']['images']['jpg']['image_url'];
    return serializers.deserializeWith(UserUpdate.serializer, jsonMap)!;
  }

  static Serializer<UserUpdate> get serializer => _$userUpdateSerializer;
}
