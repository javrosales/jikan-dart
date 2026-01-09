// library forum;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'forum.g.dart';

abstract class Forum implements Built<Forum, ForumBuilder> {
  static Serializer<Forum> get serializer => _$forumSerializer;

  Forum._();

  factory Forum([void Function(ForumBuilder) updates]) = _$Forum;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'date')
  String get date;

  @BuiltValueField(wireName: 'author_username')
  String get authorUsername;

  @BuiltValueField(wireName: 'author_url')
  String get authorUrl;

  @BuiltValueField(wireName: 'comments')
  int get comments;

  String toJson() {
    return serializers.toJson(Forum.serializer, this);
  }

  static Forum fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Forum.serializer, jsonMap)!;
  }
}
