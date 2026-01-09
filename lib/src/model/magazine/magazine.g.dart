// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'magazine.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Magazine> _$magazineSerializer = _$MagazineSerializer();

class _$MagazineSerializer implements StructuredSerializer<Magazine> {
  @override
  final Iterable<Type> types = const [Magazine, _$Magazine];
  @override
  final String wireName = 'Magazine';

  @override
  Iterable<Object?> serialize(Serializers serializers, Magazine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Magazine deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MagazineBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Magazine extends Magazine {
  @override
  final int malId;
  @override
  final String name;
  @override
  final String url;
  @override
  final int count;

  factory _$Magazine([void Function(MagazineBuilder)? updates]) =>
      (MagazineBuilder()..update(updates))._build();

  _$Magazine._(
      {required this.malId,
      required this.name,
      required this.url,
      required this.count})
      : super._();
  @override
  Magazine rebuild(void Function(MagazineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MagazineBuilder toBuilder() => MagazineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Magazine &&
        malId == other.malId &&
        name == other.name &&
        url == other.url &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, malId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Magazine')
          ..add('malId', malId)
          ..add('name', name)
          ..add('url', url)
          ..add('count', count))
        .toString();
  }
}

class MagazineBuilder implements Builder<Magazine, MagazineBuilder> {
  _$Magazine? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  MagazineBuilder();

  MagazineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _name = $v.name;
      _url = $v.url;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Magazine other) {
    _$v = other as _$Magazine;
  }

  @override
  void update(void Function(MagazineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Magazine build() => _build();

  _$Magazine _build() {
    final _$result = _$v ??
        _$Magazine._(
          malId: BuiltValueNullFieldError.checkNotNull(
              malId, r'Magazine', 'malId'),
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'Magazine', 'name'),
          url: BuiltValueNullFieldError.checkNotNull(url, r'Magazine', 'url'),
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'Magazine', 'count'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
