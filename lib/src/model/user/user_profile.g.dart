// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserProfile> _$userProfileSerializer = _$UserProfileSerializer();

class _$UserProfileSerializer implements StructuredSerializer<UserProfile> {
  @override
  final Iterable<Type> types = const [UserProfile, _$UserProfile];
  @override
  final String wireName = 'UserProfile';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'anime_stats',
      serializers.serialize(object.animeStats,
          specifiedType: const FullType(UserStats)),
      'manga_stats',
      serializers.serialize(object.mangaStats,
          specifiedType: const FullType(UserStats)),
      'favorites',
      serializers.serialize(object.favorites,
          specifiedType: const FullType(Favorites)),
      'anime_updates',
      serializers.serialize(object.animeUpdates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(EntryUpdate)])),
      'manga_updates',
      serializers.serialize(object.mangaUpdates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(EntryUpdate)])),
    ];
    Object? value;
    value = object.malId;
    if (value != null) {
      result
        ..add('mal_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastOnline;
    if (value != null) {
      result
        ..add('last_online')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.joined;
    if (value != null) {
      result
        ..add('joined')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserProfile deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_online':
          result.lastOnline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'joined':
          result.joined = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'anime_stats':
          result.animeStats.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserStats))! as UserStats);
          break;
        case 'manga_stats':
          result.mangaStats.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserStats))! as UserStats);
          break;
        case 'favorites':
          result.favorites.replace(serializers.deserialize(value,
              specifiedType: const FullType(Favorites))! as Favorites);
          break;
        case 'anime_updates':
          result.animeUpdates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EntryUpdate)]))!
              as BuiltList<Object?>);
          break;
        case 'manga_updates':
          result.mangaUpdates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EntryUpdate)]))!
              as BuiltList<Object?>);
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserProfile extends UserProfile {
  @override
  final int? malId;
  @override
  final String username;
  @override
  final String url;
  @override
  final String? imageUrl;
  @override
  final String? lastOnline;
  @override
  final String? gender;
  @override
  final String? birthday;
  @override
  final String? location;
  @override
  final String? joined;
  @override
  final UserStats animeStats;
  @override
  final UserStats mangaStats;
  @override
  final Favorites favorites;
  @override
  final BuiltList<EntryUpdate> animeUpdates;
  @override
  final BuiltList<EntryUpdate> mangaUpdates;
  @override
  final String? about;

  factory _$UserProfile([void Function(UserProfileBuilder)? updates]) =>
      (UserProfileBuilder()..update(updates))._build();

  _$UserProfile._(
      {this.malId,
      required this.username,
      required this.url,
      this.imageUrl,
      this.lastOnline,
      this.gender,
      this.birthday,
      this.location,
      this.joined,
      required this.animeStats,
      required this.mangaStats,
      required this.favorites,
      required this.animeUpdates,
      required this.mangaUpdates,
      this.about})
      : super._();
  @override
  UserProfile rebuild(void Function(UserProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileBuilder toBuilder() => UserProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfile &&
        malId == other.malId &&
        username == other.username &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        lastOnline == other.lastOnline &&
        gender == other.gender &&
        birthday == other.birthday &&
        location == other.location &&
        joined == other.joined &&
        animeStats == other.animeStats &&
        mangaStats == other.mangaStats &&
        favorites == other.favorites &&
        animeUpdates == other.animeUpdates &&
        mangaUpdates == other.mangaUpdates &&
        about == other.about;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, malId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, lastOnline.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, joined.hashCode);
    _$hash = $jc(_$hash, animeStats.hashCode);
    _$hash = $jc(_$hash, mangaStats.hashCode);
    _$hash = $jc(_$hash, favorites.hashCode);
    _$hash = $jc(_$hash, animeUpdates.hashCode);
    _$hash = $jc(_$hash, mangaUpdates.hashCode);
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProfile')
          ..add('malId', malId)
          ..add('username', username)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('lastOnline', lastOnline)
          ..add('gender', gender)
          ..add('birthday', birthday)
          ..add('location', location)
          ..add('joined', joined)
          ..add('animeStats', animeStats)
          ..add('mangaStats', mangaStats)
          ..add('favorites', favorites)
          ..add('animeUpdates', animeUpdates)
          ..add('mangaUpdates', mangaUpdates)
          ..add('about', about))
        .toString();
  }
}

class UserProfileBuilder implements Builder<UserProfile, UserProfileBuilder> {
  _$UserProfile? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _lastOnline;
  String? get lastOnline => _$this._lastOnline;
  set lastOnline(String? lastOnline) => _$this._lastOnline = lastOnline;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _joined;
  String? get joined => _$this._joined;
  set joined(String? joined) => _$this._joined = joined;

  UserStatsBuilder? _animeStats;
  UserStatsBuilder get animeStats => _$this._animeStats ??= UserStatsBuilder();
  set animeStats(UserStatsBuilder? animeStats) =>
      _$this._animeStats = animeStats;

  UserStatsBuilder? _mangaStats;
  UserStatsBuilder get mangaStats => _$this._mangaStats ??= UserStatsBuilder();
  set mangaStats(UserStatsBuilder? mangaStats) =>
      _$this._mangaStats = mangaStats;

  FavoritesBuilder? _favorites;
  FavoritesBuilder get favorites => _$this._favorites ??= FavoritesBuilder();
  set favorites(FavoritesBuilder? favorites) => _$this._favorites = favorites;

  ListBuilder<EntryUpdate>? _animeUpdates;
  ListBuilder<EntryUpdate> get animeUpdates =>
      _$this._animeUpdates ??= ListBuilder<EntryUpdate>();
  set animeUpdates(ListBuilder<EntryUpdate>? animeUpdates) =>
      _$this._animeUpdates = animeUpdates;

  ListBuilder<EntryUpdate>? _mangaUpdates;
  ListBuilder<EntryUpdate> get mangaUpdates =>
      _$this._mangaUpdates ??= ListBuilder<EntryUpdate>();
  set mangaUpdates(ListBuilder<EntryUpdate>? mangaUpdates) =>
      _$this._mangaUpdates = mangaUpdates;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  UserProfileBuilder();

  UserProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _username = $v.username;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _lastOnline = $v.lastOnline;
      _gender = $v.gender;
      _birthday = $v.birthday;
      _location = $v.location;
      _joined = $v.joined;
      _animeStats = $v.animeStats.toBuilder();
      _mangaStats = $v.mangaStats.toBuilder();
      _favorites = $v.favorites.toBuilder();
      _animeUpdates = $v.animeUpdates.toBuilder();
      _mangaUpdates = $v.mangaUpdates.toBuilder();
      _about = $v.about;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfile other) {
    _$v = other as _$UserProfile;
  }

  @override
  void update(void Function(UserProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfile build() => _build();

  _$UserProfile _build() {
    _$UserProfile _$result;
    try {
      _$result = _$v ??
          _$UserProfile._(
            malId: malId,
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'UserProfile', 'username'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'UserProfile', 'url'),
            imageUrl: imageUrl,
            lastOnline: lastOnline,
            gender: gender,
            birthday: birthday,
            location: location,
            joined: joined,
            animeStats: animeStats.build(),
            mangaStats: mangaStats.build(),
            favorites: favorites.build(),
            animeUpdates: animeUpdates.build(),
            mangaUpdates: mangaUpdates.build(),
            about: about,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'animeStats';
        animeStats.build();
        _$failedField = 'mangaStats';
        mangaStats.build();
        _$failedField = 'favorites';
        favorites.build();
        _$failedField = 'animeUpdates';
        animeUpdates.build();
        _$failedField = 'mangaUpdates';
        mangaUpdates.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserProfile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
