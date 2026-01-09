// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Forum> _$forumSerializer = _$ForumSerializer();

class _$ForumSerializer implements StructuredSerializer<Forum> {
  @override
  final Iterable<Type> types = const [Forum, _$Forum];
  @override
  final String wireName = 'Forum';

  @override
  Iterable<Object?> serialize(Serializers serializers, Forum object,
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
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Forum deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ForumBuilder();

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
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Forum extends Forum {
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
  final int comments;

  factory _$Forum([void Function(ForumBuilder)? updates]) =>
      (ForumBuilder()..update(updates))._build();

  _$Forum._(
      {required this.malId,
      required this.url,
      required this.title,
      required this.date,
      required this.authorUsername,
      required this.authorUrl,
      required this.comments})
      : super._();
  @override
  Forum rebuild(void Function(ForumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForumBuilder toBuilder() => ForumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Forum &&
        malId == other.malId &&
        url == other.url &&
        title == other.title &&
        date == other.date &&
        authorUsername == other.authorUsername &&
        authorUrl == other.authorUrl &&
        comments == other.comments;
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
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Forum')
          ..add('malId', malId)
          ..add('url', url)
          ..add('title', title)
          ..add('date', date)
          ..add('authorUsername', authorUsername)
          ..add('authorUrl', authorUrl)
          ..add('comments', comments))
        .toString();
  }
}

class ForumBuilder implements Builder<Forum, ForumBuilder> {
  _$Forum? _$v;

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

  int? _comments;
  int? get comments => _$this._comments;
  set comments(int? comments) => _$this._comments = comments;

  ForumBuilder();

  ForumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _title = $v.title;
      _date = $v.date;
      _authorUsername = $v.authorUsername;
      _authorUrl = $v.authorUrl;
      _comments = $v.comments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forum other) {
    _$v = other as _$Forum;
  }

  @override
  void update(void Function(ForumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Forum build() => _build();

  _$Forum _build() {
    final _$result = _$v ??
        _$Forum._(
          malId:
              BuiltValueNullFieldError.checkNotNull(malId, r'Forum', 'malId'),
          url: BuiltValueNullFieldError.checkNotNull(url, r'Forum', 'url'),
          title:
              BuiltValueNullFieldError.checkNotNull(title, r'Forum', 'title'),
          date: BuiltValueNullFieldError.checkNotNull(date, r'Forum', 'date'),
          authorUsername: BuiltValueNullFieldError.checkNotNull(
              authorUsername, r'Forum', 'authorUsername'),
          authorUrl: BuiltValueNullFieldError.checkNotNull(
              authorUrl, r'Forum', 'authorUrl'),
          comments: BuiltValueNullFieldError.checkNotNull(
              comments, r'Forum', 'comments'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
