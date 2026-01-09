// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Article> _$articleSerializer = _$ArticleSerializer();

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable<Object?> serialize(Serializers serializers, Article object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'author_username',
      serializers.serialize(object.authorUsername,
          specifiedType: const FullType(String)),
      'author_url',
      serializers.serialize(object.authorUrl,
          specifiedType: const FullType(String)),
      'forum_url',
      serializers.serialize(object.forumUrl,
          specifiedType: const FullType(String)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(int)),
      'excerpt',
      serializers.serialize(object.excerpt,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Article deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'author_username':
          result.authorUsername = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'author_url':
          result.authorUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'forum_url':
          result.forumUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'excerpt':
          result.excerpt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Article extends Article {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String title;
  @override
  final String date;
  @override
  final String authorUsername;
  @override
  final String authorUrl;
  @override
  final String forumUrl;
  @override
  final String? imageUrl;
  @override
  final int comments;
  @override
  final String excerpt;

  factory _$Article([void Function(ArticleBuilder)? updates]) =>
      (ArticleBuilder()..update(updates))._build();

  _$Article._(
      {required this.malId,
      required this.url,
      required this.title,
      required this.date,
      required this.authorUsername,
      required this.authorUrl,
      required this.forumUrl,
      this.imageUrl,
      required this.comments,
      required this.excerpt})
      : super._();
  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        malId == other.malId &&
        url == other.url &&
        title == other.title &&
        date == other.date &&
        authorUsername == other.authorUsername &&
        authorUrl == other.authorUrl &&
        forumUrl == other.forumUrl &&
        imageUrl == other.imageUrl &&
        comments == other.comments &&
        excerpt == other.excerpt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, malId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, authorUsername.hashCode);
    _$hash = $jc(_$hash, authorUrl.hashCode);
    _$hash = $jc(_$hash, forumUrl.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, excerpt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Article')
          ..add('malId', malId)
          ..add('url', url)
          ..add('title', title)
          ..add('date', date)
          ..add('authorUsername', authorUsername)
          ..add('authorUrl', authorUrl)
          ..add('forumUrl', forumUrl)
          ..add('imageUrl', imageUrl)
          ..add('comments', comments)
          ..add('excerpt', excerpt))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _authorUsername;
  String? get authorUsername => _$this._authorUsername;
  set authorUsername(String? authorUsername) =>
      _$this._authorUsername = authorUsername;

  String? _authorUrl;
  String? get authorUrl => _$this._authorUrl;
  set authorUrl(String? authorUrl) => _$this._authorUrl = authorUrl;

  String? _forumUrl;
  String? get forumUrl => _$this._forumUrl;
  set forumUrl(String? forumUrl) => _$this._forumUrl = forumUrl;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  int? _comments;
  int? get comments => _$this._comments;
  set comments(int? comments) => _$this._comments = comments;

  String? _excerpt;
  String? get excerpt => _$this._excerpt;
  set excerpt(String? excerpt) => _$this._excerpt = excerpt;

  ArticleBuilder();

  ArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _title = $v.title;
      _date = $v.date;
      _authorUsername = $v.authorUsername;
      _authorUrl = $v.authorUrl;
      _forumUrl = $v.forumUrl;
      _imageUrl = $v.imageUrl;
      _comments = $v.comments;
      _excerpt = $v.excerpt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Article build() => _build();

  _$Article _build() {
    final _$result = _$v ??
        _$Article._(
          malId:
              BuiltValueNullFieldError.checkNotNull(malId, r'Article', 'malId'),
          url: BuiltValueNullFieldError.checkNotNull(url, r'Article', 'url'),
          title:
              BuiltValueNullFieldError.checkNotNull(title, r'Article', 'title'),
          date: BuiltValueNullFieldError.checkNotNull(date, r'Article', 'date'),
          authorUsername: BuiltValueNullFieldError.checkNotNull(
              authorUsername, r'Article', 'authorUsername'),
          authorUrl: BuiltValueNullFieldError.checkNotNull(
              authorUrl, r'Article', 'authorUrl'),
          forumUrl: BuiltValueNullFieldError.checkNotNull(
              forumUrl, r'Article', 'forumUrl'),
          imageUrl: imageUrl,
          comments: BuiltValueNullFieldError.checkNotNull(
              comments, r'Article', 'comments'),
          excerpt: BuiltValueNullFieldError.checkNotNull(
              excerpt, r'Article', 'excerpt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
