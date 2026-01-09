// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Score> _$scoreSerializer = _$ScoreSerializer();

class _$ScoreSerializer implements StructuredSerializer<Score> {
  @override
  final Iterable<Type> types = const [Score, _$Score];
  @override
  final String wireName = 'Score';

  @override
  Iterable<Object?> serialize(Serializers serializers, Score object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
      'votes',
      serializers.serialize(object.votes, specifiedType: const FullType(int)),
      'percentage',
      serializers.serialize(object.percentage,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Score deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ScoreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'votes':
          result.votes = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'percentage':
          result.percentage = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Score extends Score {
  @override
  final int score;
  @override
  final int votes;
  @override
  final double percentage;

  factory _$Score([void Function(ScoreBuilder)? updates]) =>
      (ScoreBuilder()..update(updates))._build();

  _$Score._(
      {required this.score, required this.votes, required this.percentage})
      : super._();
  @override
  Score rebuild(void Function(ScoreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScoreBuilder toBuilder() => ScoreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Score &&
        score == other.score &&
        votes == other.votes &&
        percentage == other.percentage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, votes.hashCode);
    _$hash = $jc(_$hash, percentage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Score')
          ..add('score', score)
          ..add('votes', votes)
          ..add('percentage', percentage))
        .toString();
  }
}

class ScoreBuilder implements Builder<Score, ScoreBuilder> {
  _$Score? _$v;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  int? _votes;
  int? get votes => _$this._votes;
  set votes(int? votes) => _$this._votes = votes;

  double? _percentage;
  double? get percentage => _$this._percentage;
  set percentage(double? percentage) => _$this._percentage = percentage;

  ScoreBuilder();

  ScoreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _score = $v.score;
      _votes = $v.votes;
      _percentage = $v.percentage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Score other) {
    _$v = other as _$Score;
  }

  @override
  void update(void Function(ScoreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Score build() => _build();

  _$Score _build() {
    final _$result = _$v ??
        _$Score._(
          score:
              BuiltValueNullFieldError.checkNotNull(score, r'Score', 'score'),
          votes:
              BuiltValueNullFieldError.checkNotNull(votes, r'Score', 'votes'),
          percentage: BuiltValueNullFieldError.checkNotNull(
              percentage, r'Score', 'percentage'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
