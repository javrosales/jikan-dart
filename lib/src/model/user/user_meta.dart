// library user_meta;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'user_meta.g.dart';

abstract class UserMeta implements Built<UserMeta, UserMetaBuilder> {
  UserMeta._();

  factory UserMeta([void Function(UserMetaBuilder) updates]) = _$UserMeta;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  String toJson() {
    return serializers.toJson(UserMeta.serializer, this);
  }

  static UserMeta fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(UserMeta.serializer, jsonMap)!;
  }

  static Serializer<UserMeta> get serializer => _$userMetaSerializer;
}
