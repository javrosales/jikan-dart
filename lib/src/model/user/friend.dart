// library friend;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/user/user_meta.dart';

part 'friend.g.dart';

abstract class Friend implements Built<Friend, FriendBuilder> {
  Friend._();

  factory Friend([void Function(FriendBuilder) updates]) = _$Friend;

  @BuiltValueField(wireName: 'user')
  UserMeta get user;

  @BuiltValueField(wireName: 'last_online')
  String get lastOnline;

  @BuiltValueField(wireName: 'friends_since')
  String? get friendsSince;

  String toJson() {
    return serializers.toJson(Friend.serializer, this);
  }

  static Friend fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['user']['image_url'] =
        jsonMap['user']['images']['jpg']['image_url'];
    return serializers.deserializeWith(Friend.serializer, jsonMap)!;
  }

  static Serializer<Friend> get serializer => _$friendSerializer;
}
