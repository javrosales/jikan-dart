// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_actor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VoiceActor> _$voiceActorSerializer = _$VoiceActorSerializer();

class _$VoiceActorSerializer implements StructuredSerializer<VoiceActor> {
  @override
  final Iterable<Type> types = const [VoiceActor, _$VoiceActor];
  @override
  final String wireName = 'VoiceActor';

  @override
  Iterable<Object?> serialize(Serializers serializers, VoiceActor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
      'anime',
      serializers.serialize(object.anime,
          specifiedType: const FullType(AnimeMeta)),
      'character',
      serializers.serialize(object.character,
          specifiedType: const FullType(CharacterMeta)),
    ];

    return result;
  }

  @override
  VoiceActor deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = VoiceActorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
              specifiedType: const FullType(AnimeMeta))! as AnimeMeta);
          break;
        case 'character':
          result.character.replace(serializers.deserialize(value,
              specifiedType: const FullType(CharacterMeta))! as CharacterMeta);
          break;
      }
    }

    return result.build();
  }
}

class _$VoiceActor extends VoiceActor {
  @override
  final String role;
  @override
  final AnimeMeta anime;
  @override
  final CharacterMeta character;

  factory _$VoiceActor([void Function(VoiceActorBuilder)? updates]) =>
      (VoiceActorBuilder()..update(updates))._build();

  _$VoiceActor._(
      {required this.role, required this.anime, required this.character})
      : super._();
  @override
  VoiceActor rebuild(void Function(VoiceActorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VoiceActorBuilder toBuilder() => VoiceActorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VoiceActor &&
        role == other.role &&
        anime == other.anime &&
        character == other.character;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, anime.hashCode);
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VoiceActor')
          ..add('role', role)
          ..add('anime', anime)
          ..add('character', character))
        .toString();
  }
}

class VoiceActorBuilder implements Builder<VoiceActor, VoiceActorBuilder> {
  _$VoiceActor? _$v;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  AnimeMetaBuilder? _anime;
  AnimeMetaBuilder get anime => _$this._anime ??= AnimeMetaBuilder();
  set anime(AnimeMetaBuilder? anime) => _$this._anime = anime;

  CharacterMetaBuilder? _character;
  CharacterMetaBuilder get character =>
      _$this._character ??= CharacterMetaBuilder();
  set character(CharacterMetaBuilder? character) =>
      _$this._character = character;

  VoiceActorBuilder();

  VoiceActorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _anime = $v.anime.toBuilder();
      _character = $v.character.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VoiceActor other) {
    _$v = other as _$VoiceActor;
  }

  @override
  void update(void Function(VoiceActorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VoiceActor build() => _build();

  _$VoiceActor _build() {
    _$VoiceActor _$result;
    try {
      _$result = _$v ??
          _$VoiceActor._(
            role: BuiltValueNullFieldError.checkNotNull(
                role, r'VoiceActor', 'role'),
            anime: anime.build(),
            character: character.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anime';
        anime.build();
        _$failedField = 'character';
        character.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VoiceActor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
