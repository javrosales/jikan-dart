// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reactions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Reactions> _$reactionsSerializer = _$ReactionsSerializer();

class _$ReactionsSerializer implements StructuredSerializer<Reactions> {
  @override
  final Iterable<Type> types = const [Reactions, _$Reactions];
  @override
  final String wireName = 'Reactions';

  @override
  Iterable<Object?> serialize(Serializers serializers, Reactions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'overall',
      serializers.serialize(object.overall, specifiedType: const FullType(int)),
      'nice',
      serializers.serialize(object.nice, specifiedType: const FullType(int)),
      'love_it',
      serializers.serialize(object.loveIt, specifiedType: const FullType(int)),
      'funny',
      serializers.serialize(object.funny, specifiedType: const FullType(int)),
      'confusing',
      serializers.serialize(object.confusing,
          specifiedType: const FullType(int)),
      'informative',
      serializers.serialize(object.informative,
          specifiedType: const FullType(int)),
      'well_written',
      serializers.serialize(object.wellWritten,
          specifiedType: const FullType(int)),
      'creative',
      serializers.serialize(object.creative,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Reactions deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ReactionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'overall':
          result.overall = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'nice':
          result.nice = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'love_it':
          result.loveIt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'funny':
          result.funny = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'confusing':
          result.confusing = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'informative':
          result.informative = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'well_written':
          result.wellWritten = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'creative':
          result.creative = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Reactions extends Reactions {
  @override
  final int overall;
  @override
  final int nice;
  @override
  final int loveIt;
  @override
  final int funny;
  @override
  final int confusing;
  @override
  final int informative;
  @override
  final int wellWritten;
  @override
  final int creative;

  factory _$Reactions([void Function(ReactionsBuilder)? updates]) =>
      (ReactionsBuilder()..update(updates))._build();

  _$Reactions._(
      {required this.overall,
      required this.nice,
      required this.loveIt,
      required this.funny,
      required this.confusing,
      required this.informative,
      required this.wellWritten,
      required this.creative})
      : super._();
  @override
  Reactions rebuild(void Function(ReactionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReactionsBuilder toBuilder() => ReactionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Reactions &&
        overall == other.overall &&
        nice == other.nice &&
        loveIt == other.loveIt &&
        funny == other.funny &&
        confusing == other.confusing &&
        informative == other.informative &&
        wellWritten == other.wellWritten &&
        creative == other.creative;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, overall.hashCode);
    _$hash = $jc(_$hash, nice.hashCode);
    _$hash = $jc(_$hash, loveIt.hashCode);
    _$hash = $jc(_$hash, funny.hashCode);
    _$hash = $jc(_$hash, confusing.hashCode);
    _$hash = $jc(_$hash, informative.hashCode);
    _$hash = $jc(_$hash, wellWritten.hashCode);
    _$hash = $jc(_$hash, creative.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Reactions')
          ..add('overall', overall)
          ..add('nice', nice)
          ..add('loveIt', loveIt)
          ..add('funny', funny)
          ..add('confusing', confusing)
          ..add('informative', informative)
          ..add('wellWritten', wellWritten)
          ..add('creative', creative))
        .toString();
  }
}

class ReactionsBuilder implements Builder<Reactions, ReactionsBuilder> {
  _$Reactions? _$v;

  int? _overall;
  int? get overall => _$this._overall;
  set overall(int? overall) => _$this._overall = overall;

  int? _nice;
  int? get nice => _$this._nice;
  set nice(int? nice) => _$this._nice = nice;

  int? _loveIt;
  int? get loveIt => _$this._loveIt;
  set loveIt(int? loveIt) => _$this._loveIt = loveIt;

  int? _funny;
  int? get funny => _$this._funny;
  set funny(int? funny) => _$this._funny = funny;

  int? _confusing;
  int? get confusing => _$this._confusing;
  set confusing(int? confusing) => _$this._confusing = confusing;

  int? _informative;
  int? get informative => _$this._informative;
  set informative(int? informative) => _$this._informative = informative;

  int? _wellWritten;
  int? get wellWritten => _$this._wellWritten;
  set wellWritten(int? wellWritten) => _$this._wellWritten = wellWritten;

  int? _creative;
  int? get creative => _$this._creative;
  set creative(int? creative) => _$this._creative = creative;

  ReactionsBuilder();

  ReactionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _overall = $v.overall;
      _nice = $v.nice;
      _loveIt = $v.loveIt;
      _funny = $v.funny;
      _confusing = $v.confusing;
      _informative = $v.informative;
      _wellWritten = $v.wellWritten;
      _creative = $v.creative;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Reactions other) {
    _$v = other as _$Reactions;
  }

  @override
  void update(void Function(ReactionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Reactions build() => _build();

  _$Reactions _build() {
    final _$result = _$v ??
        _$Reactions._(
          overall: BuiltValueNullFieldError.checkNotNull(
              overall, r'Reactions', 'overall'),
          nice:
              BuiltValueNullFieldError.checkNotNull(nice, r'Reactions', 'nice'),
          loveIt: BuiltValueNullFieldError.checkNotNull(
              loveIt, r'Reactions', 'loveIt'),
          funny: BuiltValueNullFieldError.checkNotNull(
              funny, r'Reactions', 'funny'),
          confusing: BuiltValueNullFieldError.checkNotNull(
              confusing, r'Reactions', 'confusing'),
          informative: BuiltValueNullFieldError.checkNotNull(
              informative, r'Reactions', 'informative'),
          wellWritten: BuiltValueNullFieldError.checkNotNull(
              wellWritten, r'Reactions', 'wellWritten'),
          creative: BuiltValueNullFieldError.checkNotNull(
              creative, r'Reactions', 'creative'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
