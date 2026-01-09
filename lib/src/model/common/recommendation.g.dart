// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Recommendation> _$recommendationSerializer =
    _$RecommendationSerializer();

class _$RecommendationSerializer
    implements StructuredSerializer<Recommendation> {
  @override
  final Iterable<Type> types = const [Recommendation, _$Recommendation];
  @override
  final String wireName = 'Recommendation';

  @override
  Iterable<Object?> serialize(Serializers serializers, Recommendation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'entry',
      serializers.serialize(object.entry,
          specifiedType: const FullType(EntryMeta)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'votes',
      serializers.serialize(object.votes, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Recommendation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RecommendationBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'votes':
          result.votes = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Recommendation extends Recommendation {
  @override
  final EntryMeta entry;
  @override
  final String url;
  @override
  final int votes;

  factory _$Recommendation([void Function(RecommendationBuilder)? updates]) =>
      (RecommendationBuilder()..update(updates))._build();

  _$Recommendation._(
      {required this.entry, required this.url, required this.votes})
      : super._();
  @override
  Recommendation rebuild(void Function(RecommendationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendationBuilder toBuilder() => RecommendationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Recommendation &&
        entry == other.entry &&
        url == other.url &&
        votes == other.votes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entry.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, votes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Recommendation')
          ..add('entry', entry)
          ..add('url', url)
          ..add('votes', votes))
        .toString();
  }
}

class RecommendationBuilder
    implements Builder<Recommendation, RecommendationBuilder> {
  _$Recommendation? _$v;

  EntryMetaBuilder? _entry;
  EntryMetaBuilder get entry => _$this._entry ??= EntryMetaBuilder();
  set entry(EntryMetaBuilder? entry) => _$this._entry = entry;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _votes;
  int? get votes => _$this._votes;
  set votes(int? votes) => _$this._votes = votes;

  RecommendationBuilder();

  RecommendationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entry = $v.entry.toBuilder();
      _url = $v.url;
      _votes = $v.votes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Recommendation other) {
    _$v = other as _$Recommendation;
  }

  @override
  void update(void Function(RecommendationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Recommendation build() => _build();

  _$Recommendation _build() {
    _$Recommendation _$result;
    try {
      _$result = _$v ??
          _$Recommendation._(
            entry: entry.build(),
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'Recommendation', 'url'),
            votes: BuiltValueNullFieldError.checkNotNull(
                votes, r'Recommendation', 'votes'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entry';
        entry.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Recommendation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
