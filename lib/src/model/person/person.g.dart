// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Person> _$personSerializer = _$PersonSerializer();

class _$PersonSerializer implements StructuredSerializer<Person> {
  @override
  final Iterable<Type> types = const [Person, _$Person];
  @override
  final String wireName = 'Person';

  @override
  Iterable<Object?> serialize(Serializers serializers, Person object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'alternate_names',
      serializers.serialize(object.alternateNames,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'favorites',
      serializers.serialize(object.favorites,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.websiteUrl;
    if (value != null) {
      result
        ..add('website_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.givenName;
    if (value != null) {
      result
        ..add('given_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.familyName;
    if (value != null) {
      result
        ..add('family_name')
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
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.anime;
    if (value != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeMeta)])));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MangaMeta)])));
    }
    value = object.voices;
    if (value != null) {
      result
        ..add('voices')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(VoiceActor)])));
    }
    return result;
  }

  @override
  Person deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PersonBuilder();

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
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'website_url':
          result.websiteUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'given_name':
          result.givenName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'family_name':
          result.familyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alternate_names':
          result.alternateNames.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorites':
          result.favorites = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeMeta)]))!
              as BuiltList<Object?>);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MangaMeta)]))!
              as BuiltList<Object?>);
          break;
        case 'voices':
          result.voices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(VoiceActor)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Person extends Person {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String? websiteUrl;
  @override
  final String name;
  @override
  final String? givenName;
  @override
  final String? familyName;
  @override
  final BuiltList<String> alternateNames;
  @override
  final String? birthday;
  @override
  final int favorites;
  @override
  final String? about;
  @override
  final BuiltList<AnimeMeta>? anime;
  @override
  final BuiltList<MangaMeta>? manga;
  @override
  final BuiltList<VoiceActor>? voices;

  factory _$Person([void Function(PersonBuilder)? updates]) =>
      (PersonBuilder()..update(updates))._build();

  _$Person._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      this.websiteUrl,
      required this.name,
      this.givenName,
      this.familyName,
      required this.alternateNames,
      this.birthday,
      required this.favorites,
      this.about,
      this.anime,
      this.manga,
      this.voices})
      : super._();
  @override
  Person rebuild(void Function(PersonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonBuilder toBuilder() => PersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Person &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        websiteUrl == other.websiteUrl &&
        name == other.name &&
        givenName == other.givenName &&
        familyName == other.familyName &&
        alternateNames == other.alternateNames &&
        birthday == other.birthday &&
        favorites == other.favorites &&
        about == other.about &&
        anime == other.anime &&
        manga == other.manga &&
        voices == other.voices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, malId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, websiteUrl.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, givenName.hashCode);
    _$hash = $jc(_$hash, familyName.hashCode);
    _$hash = $jc(_$hash, alternateNames.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, favorites.hashCode);
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, anime.hashCode);
    _$hash = $jc(_$hash, manga.hashCode);
    _$hash = $jc(_$hash, voices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Person')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('websiteUrl', websiteUrl)
          ..add('name', name)
          ..add('givenName', givenName)
          ..add('familyName', familyName)
          ..add('alternateNames', alternateNames)
          ..add('birthday', birthday)
          ..add('favorites', favorites)
          ..add('about', about)
          ..add('anime', anime)
          ..add('manga', manga)
          ..add('voices', voices))
        .toString();
  }
}

class PersonBuilder implements Builder<Person, PersonBuilder> {
  _$Person? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _websiteUrl;
  String? get websiteUrl => _$this._websiteUrl;
  set websiteUrl(String? websiteUrl) => _$this._websiteUrl = websiteUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _givenName;
  String? get givenName => _$this._givenName;
  set givenName(String? givenName) => _$this._givenName = givenName;

  String? _familyName;
  String? get familyName => _$this._familyName;
  set familyName(String? familyName) => _$this._familyName = familyName;

  ListBuilder<String>? _alternateNames;
  ListBuilder<String> get alternateNames =>
      _$this._alternateNames ??= ListBuilder<String>();
  set alternateNames(ListBuilder<String>? alternateNames) =>
      _$this._alternateNames = alternateNames;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  int? _favorites;
  int? get favorites => _$this._favorites;
  set favorites(int? favorites) => _$this._favorites = favorites;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  ListBuilder<AnimeMeta>? _anime;
  ListBuilder<AnimeMeta> get anime =>
      _$this._anime ??= ListBuilder<AnimeMeta>();
  set anime(ListBuilder<AnimeMeta>? anime) => _$this._anime = anime;

  ListBuilder<MangaMeta>? _manga;
  ListBuilder<MangaMeta> get manga =>
      _$this._manga ??= ListBuilder<MangaMeta>();
  set manga(ListBuilder<MangaMeta>? manga) => _$this._manga = manga;

  ListBuilder<VoiceActor>? _voices;
  ListBuilder<VoiceActor> get voices =>
      _$this._voices ??= ListBuilder<VoiceActor>();
  set voices(ListBuilder<VoiceActor>? voices) => _$this._voices = voices;

  PersonBuilder();

  PersonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _websiteUrl = $v.websiteUrl;
      _name = $v.name;
      _givenName = $v.givenName;
      _familyName = $v.familyName;
      _alternateNames = $v.alternateNames.toBuilder();
      _birthday = $v.birthday;
      _favorites = $v.favorites;
      _about = $v.about;
      _anime = $v.anime?.toBuilder();
      _manga = $v.manga?.toBuilder();
      _voices = $v.voices?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Person other) {
    _$v = other as _$Person;
  }

  @override
  void update(void Function(PersonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Person build() => _build();

  _$Person _build() {
    _$Person _$result;
    try {
      _$result = _$v ??
          _$Person._(
            malId: BuiltValueNullFieldError.checkNotNull(
                malId, r'Person', 'malId'),
            url: BuiltValueNullFieldError.checkNotNull(url, r'Person', 'url'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'Person', 'imageUrl'),
            websiteUrl: websiteUrl,
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Person', 'name'),
            givenName: givenName,
            familyName: familyName,
            alternateNames: alternateNames.build(),
            birthday: birthday,
            favorites: BuiltValueNullFieldError.checkNotNull(
                favorites, r'Person', 'favorites'),
            about: about,
            anime: _anime?.build(),
            manga: _manga?.build(),
            voices: _voices?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alternateNames';
        alternateNames.build();

        _$failedField = 'anime';
        _anime?.build();
        _$failedField = 'manga';
        _manga?.build();
        _$failedField = 'voices';
        _voices?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Person', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
