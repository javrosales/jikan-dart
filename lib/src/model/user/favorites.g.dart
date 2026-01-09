// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Favorites> _$favoritesSerializer = _$FavoritesSerializer();

class _$FavoritesSerializer implements StructuredSerializer<Favorites> {
  @override
  final Iterable<Type> types = const [Favorites, _$Favorites];
  @override
  final String wireName = 'Favorites';

  @override
  Iterable<Object?> serialize(Serializers serializers, Favorites object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'anime',
      serializers.serialize(object.anime,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Favorite)])),
      'manga',
      serializers.serialize(object.manga,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Favorite)])),
      'characters',
      serializers.serialize(object.characters,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Favorite)])),
      'people',
      serializers.serialize(object.people,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Favorite)])),
    ];

    return result;
  }

  @override
  Favorites deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = FavoritesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Favorite)]))!
              as BuiltList<Object?>);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Favorite)]))!
              as BuiltList<Object?>);
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Favorite)]))!
              as BuiltList<Object?>);
          break;
        case 'people':
          result.people.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Favorite)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Favorites extends Favorites {
  @override
  final BuiltList<Favorite> anime;
  @override
  final BuiltList<Favorite> manga;
  @override
  final BuiltList<Favorite> characters;
  @override
  final BuiltList<Favorite> people;

  factory _$Favorites([void Function(FavoritesBuilder)? updates]) =>
      (FavoritesBuilder()..update(updates))._build();

  _$Favorites._(
      {required this.anime,
      required this.manga,
      required this.characters,
      required this.people})
      : super._();
  @override
  Favorites rebuild(void Function(FavoritesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoritesBuilder toBuilder() => FavoritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Favorites &&
        anime == other.anime &&
        manga == other.manga &&
        characters == other.characters &&
        people == other.people;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anime.hashCode);
    _$hash = $jc(_$hash, manga.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jc(_$hash, people.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Favorites')
          ..add('anime', anime)
          ..add('manga', manga)
          ..add('characters', characters)
          ..add('people', people))
        .toString();
  }
}

class FavoritesBuilder implements Builder<Favorites, FavoritesBuilder> {
  _$Favorites? _$v;

  ListBuilder<Favorite>? _anime;
  ListBuilder<Favorite> get anime => _$this._anime ??= ListBuilder<Favorite>();
  set anime(ListBuilder<Favorite>? anime) => _$this._anime = anime;

  ListBuilder<Favorite>? _manga;
  ListBuilder<Favorite> get manga => _$this._manga ??= ListBuilder<Favorite>();
  set manga(ListBuilder<Favorite>? manga) => _$this._manga = manga;

  ListBuilder<Favorite>? _characters;
  ListBuilder<Favorite> get characters =>
      _$this._characters ??= ListBuilder<Favorite>();
  set characters(ListBuilder<Favorite>? characters) =>
      _$this._characters = characters;

  ListBuilder<Favorite>? _people;
  ListBuilder<Favorite> get people =>
      _$this._people ??= ListBuilder<Favorite>();
  set people(ListBuilder<Favorite>? people) => _$this._people = people;

  FavoritesBuilder();

  FavoritesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anime = $v.anime.toBuilder();
      _manga = $v.manga.toBuilder();
      _characters = $v.characters.toBuilder();
      _people = $v.people.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Favorites other) {
    _$v = other as _$Favorites;
  }

  @override
  void update(void Function(FavoritesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Favorites build() => _build();

  _$Favorites _build() {
    _$Favorites _$result;
    try {
      _$result = _$v ??
          _$Favorites._(
            anime: anime.build(),
            manga: manga.build(),
            characters: characters.build(),
            people: people.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anime';
        anime.build();
        _$failedField = 'manga';
        manga.build();
        _$failedField = 'characters';
        characters.build();
        _$failedField = 'people';
        people.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Favorites', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
