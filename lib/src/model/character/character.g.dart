// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Character> _$characterSerializer = _$CharacterSerializer();

class _$CharacterSerializer implements StructuredSerializer<Character> {
  @override
  final Iterable<Type> types = const [Character, _$Character];
  @override
  final String wireName = 'Character';

  @override
  Iterable<Object?> serialize(Serializers serializers, Character object,
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
      'nicknames',
      serializers.serialize(object.nicknames,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'favorites',
      serializers.serialize(object.favorites,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.nameKanji;
    if (value != null) {
      result
        ..add('name_kanji')
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
                const FullType(BuiltList, const [const FullType(PersonMeta)])));
    }
    return result;
  }

  @override
  Character deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = CharacterBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name_kanji':
          result.nameKanji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nicknames':
          result.nicknames.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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
                      BuiltList, const [const FullType(PersonMeta)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Character extends Character {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final String? nameKanji;
  @override
  final BuiltList<String> nicknames;
  @override
  final int favorites;
  @override
  final String? about;
  @override
  final BuiltList<AnimeMeta>? anime;
  @override
  final BuiltList<MangaMeta>? manga;
  @override
  final BuiltList<PersonMeta>? voices;

  factory _$Character([void Function(CharacterBuilder)? updates]) =>
      (CharacterBuilder()..update(updates))._build();

  _$Character._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      required this.name,
      this.nameKanji,
      required this.nicknames,
      required this.favorites,
      this.about,
      this.anime,
      this.manga,
      this.voices})
      : super._();
  @override
  Character rebuild(void Function(CharacterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterBuilder toBuilder() => CharacterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Character &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        name == other.name &&
        nameKanji == other.nameKanji &&
        nicknames == other.nicknames &&
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
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, nameKanji.hashCode);
    _$hash = $jc(_$hash, nicknames.hashCode);
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
    return (newBuiltValueToStringHelper(r'Character')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('name', name)
          ..add('nameKanji', nameKanji)
          ..add('nicknames', nicknames)
          ..add('favorites', favorites)
          ..add('about', about)
          ..add('anime', anime)
          ..add('manga', manga)
          ..add('voices', voices))
        .toString();
  }
}

class CharacterBuilder implements Builder<Character, CharacterBuilder> {
  _$Character? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _nameKanji;
  String? get nameKanji => _$this._nameKanji;
  set nameKanji(String? nameKanji) => _$this._nameKanji = nameKanji;

  ListBuilder<String>? _nicknames;
  ListBuilder<String> get nicknames =>
      _$this._nicknames ??= ListBuilder<String>();
  set nicknames(ListBuilder<String>? nicknames) =>
      _$this._nicknames = nicknames;

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

  ListBuilder<PersonMeta>? _voices;
  ListBuilder<PersonMeta> get voices =>
      _$this._voices ??= ListBuilder<PersonMeta>();
  set voices(ListBuilder<PersonMeta>? voices) => _$this._voices = voices;

  CharacterBuilder();

  CharacterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _name = $v.name;
      _nameKanji = $v.nameKanji;
      _nicknames = $v.nicknames.toBuilder();
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
  void replace(Character other) {
    _$v = other as _$Character;
  }

  @override
  void update(void Function(CharacterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Character build() => _build();

  _$Character _build() {
    _$Character _$result;
    try {
      _$result = _$v ??
          _$Character._(
            malId: BuiltValueNullFieldError.checkNotNull(
                malId, r'Character', 'malId'),
            url:
                BuiltValueNullFieldError.checkNotNull(url, r'Character', 'url'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'Character', 'imageUrl'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Character', 'name'),
            nameKanji: nameKanji,
            nicknames: nicknames.build(),
            favorites: BuiltValueNullFieldError.checkNotNull(
                favorites, r'Character', 'favorites'),
            about: about,
            anime: _anime?.build(),
            manga: _manga?.build(),
            voices: _voices?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nicknames';
        nicknames.build();

        _$failedField = 'anime';
        _anime?.build();
        _$failedField = 'manga';
        _manga?.build();
        _$failedField = 'voices';
        _voices?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Character', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
