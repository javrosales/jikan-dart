// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_episode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WatchEpisode> _$watchEpisodeSerializer = _$WatchEpisodeSerializer();

class _$WatchEpisodeSerializer implements StructuredSerializer<WatchEpisode> {
  @override
  final Iterable<Type> types = const [WatchEpisode, _$WatchEpisode];
  @override
  final String wireName = 'WatchEpisode';

  @override
  Iterable<Object?> serialize(Serializers serializers, WatchEpisode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'entry',
      serializers.serialize(object.entry,
          specifiedType: const FullType(EntryMeta)),
      'episodes',
      serializers.serialize(object.episodes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Episode)])),
      'region_locked',
      serializers.serialize(object.regionLocked,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  WatchEpisode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = WatchEpisodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'entry':
          result.entry.replace(serializers.deserialize(value,
              specifiedType: const FullType(EntryMeta))! as EntryMeta);
          break;
        case 'episodes':
          result.episodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Episode)]))!
              as BuiltList<Object?>);
          break;
        case 'region_locked':
          result.regionLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$WatchEpisode extends WatchEpisode {
  @override
  final EntryMeta entry;
  @override
  final BuiltList<Episode> episodes;
  @override
  final bool regionLocked;

  factory _$WatchEpisode([void Function(WatchEpisodeBuilder)? updates]) =>
      (WatchEpisodeBuilder()..update(updates))._build();

  _$WatchEpisode._(
      {required this.entry, required this.episodes, required this.regionLocked})
      : super._();
  @override
  WatchEpisode rebuild(void Function(WatchEpisodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchEpisodeBuilder toBuilder() => WatchEpisodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchEpisode &&
        entry == other.entry &&
        episodes == other.episodes &&
        regionLocked == other.regionLocked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entry.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, regionLocked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchEpisode')
          ..add('entry', entry)
          ..add('episodes', episodes)
          ..add('regionLocked', regionLocked))
        .toString();
  }
}

class WatchEpisodeBuilder
    implements Builder<WatchEpisode, WatchEpisodeBuilder> {
  _$WatchEpisode? _$v;

  EntryMetaBuilder? _entry;
  EntryMetaBuilder get entry => _$this._entry ??= EntryMetaBuilder();
  set entry(EntryMetaBuilder? entry) => _$this._entry = entry;

  ListBuilder<Episode>? _episodes;
  ListBuilder<Episode> get episodes =>
      _$this._episodes ??= ListBuilder<Episode>();
  set episodes(ListBuilder<Episode>? episodes) => _$this._episodes = episodes;

  bool? _regionLocked;
  bool? get regionLocked => _$this._regionLocked;
  set regionLocked(bool? regionLocked) => _$this._regionLocked = regionLocked;

  WatchEpisodeBuilder();

  WatchEpisodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entry = $v.entry.toBuilder();
      _episodes = $v.episodes.toBuilder();
      _regionLocked = $v.regionLocked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchEpisode other) {
    _$v = other as _$WatchEpisode;
  }

  @override
  void update(void Function(WatchEpisodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchEpisode build() => _build();

  _$WatchEpisode _build() {
    _$WatchEpisode _$result;
    try {
      _$result = _$v ??
          _$WatchEpisode._(
            entry: entry.build(),
            episodes: episodes.build(),
            regionLocked: BuiltValueNullFieldError.checkNotNull(
                regionLocked, r'WatchEpisode', 'regionLocked'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entry';
        entry.build();
        _$failedField = 'episodes';
        episodes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WatchEpisode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
