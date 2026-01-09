// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Review> _$reviewSerializer = _$ReviewSerializer();

class _$ReviewSerializer implements StructuredSerializer<Review> {
  @override
  final Iterable<Type> types = const [Review, _$Review];
  @override
  final String wireName = 'Review';

  @override
  Iterable<Object?> serialize(Serializers serializers, Review object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'reactions',
      serializers.serialize(object.reactions,
          specifiedType: const FullType(Reactions)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'review',
      serializers.serialize(object.review,
          specifiedType: const FullType(String)),
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'is_spoiler',
      serializers.serialize(object.isSpoiler,
          specifiedType: const FullType(bool)),
      'is_preliminary',
      serializers.serialize(object.isPreliminary,
          specifiedType: const FullType(bool)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UserMeta)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.episodesWatched;
    if (value != null) {
      result
        ..add('episodes_watched')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chaptersRead;
    if (value != null) {
      result
        ..add('chapters_read')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Review deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ReviewBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reactions':
          result.reactions.replace(serializers.deserialize(value,
              specifiedType: const FullType(Reactions))! as Reactions);
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'is_spoiler':
          result.isSpoiler = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'is_preliminary':
          result.isPreliminary = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'episodes_watched':
          result.episodesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters_read':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserMeta))! as UserMeta);
          break;
      }
    }

    return result.build();
  }
}

class _$Review extends Review {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String? type;
  @override
  final Reactions reactions;
  @override
  final String date;
  @override
  final String review;
  @override
  final int score;
  @override
  final BuiltList<String> tags;
  @override
  final bool isSpoiler;
  @override
  final bool isPreliminary;
  @override
  final int? episodesWatched;
  @override
  final int? chaptersRead;
  @override
  final UserMeta user;

  factory _$Review([void Function(ReviewBuilder)? updates]) =>
      (ReviewBuilder()..update(updates))._build();

  _$Review._(
      {required this.malId,
      required this.url,
      this.type,
      required this.reactions,
      required this.date,
      required this.review,
      required this.score,
      required this.tags,
      required this.isSpoiler,
      required this.isPreliminary,
      this.episodesWatched,
      this.chaptersRead,
      required this.user})
      : super._();
  @override
  Review rebuild(void Function(ReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewBuilder toBuilder() => ReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
        malId == other.malId &&
        url == other.url &&
        type == other.type &&
        reactions == other.reactions &&
        date == other.date &&
        review == other.review &&
        score == other.score &&
        tags == other.tags &&
        isSpoiler == other.isSpoiler &&
        isPreliminary == other.isPreliminary &&
        episodesWatched == other.episodesWatched &&
        chaptersRead == other.chaptersRead &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, malId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, reactions.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, review.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, isSpoiler.hashCode);
    _$hash = $jc(_$hash, isPreliminary.hashCode);
    _$hash = $jc(_$hash, episodesWatched.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Review')
          ..add('malId', malId)
          ..add('url', url)
          ..add('type', type)
          ..add('reactions', reactions)
          ..add('date', date)
          ..add('review', review)
          ..add('score', score)
          ..add('tags', tags)
          ..add('isSpoiler', isSpoiler)
          ..add('isPreliminary', isPreliminary)
          ..add('episodesWatched', episodesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('user', user))
        .toString();
  }
}

class ReviewBuilder implements Builder<Review, ReviewBuilder> {
  _$Review? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ReactionsBuilder? _reactions;
  ReactionsBuilder get reactions => _$this._reactions ??= ReactionsBuilder();
  set reactions(ReactionsBuilder? reactions) => _$this._reactions = reactions;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _review;
  String? get review => _$this._review;
  set review(String? review) => _$this._review = review;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  bool? _isSpoiler;
  bool? get isSpoiler => _$this._isSpoiler;
  set isSpoiler(bool? isSpoiler) => _$this._isSpoiler = isSpoiler;

  bool? _isPreliminary;
  bool? get isPreliminary => _$this._isPreliminary;
  set isPreliminary(bool? isPreliminary) =>
      _$this._isPreliminary = isPreliminary;

  int? _episodesWatched;
  int? get episodesWatched => _$this._episodesWatched;
  set episodesWatched(int? episodesWatched) =>
      _$this._episodesWatched = episodesWatched;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  UserMetaBuilder? _user;
  UserMetaBuilder get user => _$this._user ??= UserMetaBuilder();
  set user(UserMetaBuilder? user) => _$this._user = user;

  ReviewBuilder();

  ReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _type = $v.type;
      _reactions = $v.reactions.toBuilder();
      _date = $v.date;
      _review = $v.review;
      _score = $v.score;
      _tags = $v.tags.toBuilder();
      _isSpoiler = $v.isSpoiler;
      _isPreliminary = $v.isPreliminary;
      _episodesWatched = $v.episodesWatched;
      _chaptersRead = $v.chaptersRead;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Review other) {
    _$v = other as _$Review;
  }

  @override
  void update(void Function(ReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Review build() => _build();

  _$Review _build() {
    _$Review _$result;
    try {
      _$result = _$v ??
          _$Review._(
            malId: BuiltValueNullFieldError.checkNotNull(
                malId, r'Review', 'malId'),
            url: BuiltValueNullFieldError.checkNotNull(url, r'Review', 'url'),
            type: type,
            reactions: reactions.build(),
            date:
                BuiltValueNullFieldError.checkNotNull(date, r'Review', 'date'),
            review: BuiltValueNullFieldError.checkNotNull(
                review, r'Review', 'review'),
            score: BuiltValueNullFieldError.checkNotNull(
                score, r'Review', 'score'),
            tags: tags.build(),
            isSpoiler: BuiltValueNullFieldError.checkNotNull(
                isSpoiler, r'Review', 'isSpoiler'),
            isPreliminary: BuiltValueNullFieldError.checkNotNull(
                isPreliminary, r'Review', 'isPreliminary'),
            episodesWatched: episodesWatched,
            chaptersRead: chaptersRead,
            user: user.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reactions';
        reactions.build();

        _$failedField = 'tags';
        tags.build();

        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Review', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
