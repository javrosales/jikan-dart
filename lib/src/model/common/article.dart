// library article;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  Article._();

  factory Article([void Function(ArticleBuilder) updates]) = _$Article;

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

  @BuiltValueField(wireName: 'forum_url')
  String get forumUrl;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: 'comments')
  int get comments;

  @BuiltValueField(wireName: 'excerpt')
  String get excerpt;

  String toJson() {
    return serializers.toJson(Article.serializer, this);
  }

  static Article fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['image_url'] = jsonMap['images']['jpg']['image_url'];
    return serializers.deserializeWith(Article.serializer, jsonMap)!;
  }

  static Serializer<Article> get serializer => _$articleSerializer;
}
