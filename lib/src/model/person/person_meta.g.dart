// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PersonMeta> _$personMetaSerializer = _$PersonMetaSerializer();

class _$PersonMetaSerializer implements StructuredSerializer<PersonMeta> {
  @override
  final Iterable<Type> types = const [PersonMeta, _$PersonMeta];
  @override
  final String wireName = 'PersonMeta';

  @override
  Iterable<Object?> serialize(Serializers serializers, PersonMeta object,
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
    ];
    Object? value;
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.positions;
    if (value != null) {
      result
        ..add('positions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  PersonMeta deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PersonMetaBuilder();

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
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'positions':
          result.positions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PersonMeta extends PersonMeta {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final String? language;
  @override
  final BuiltList<String>? positions;

  factory _$PersonMeta([void Function(PersonMetaBuilder)? updates]) =>
      (PersonMetaBuilder()..update(updates))._build();

  _$PersonMeta._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      required this.name,
      this.language,
      this.positions})
      : super._();
  @override
  PersonMeta rebuild(void Function(PersonMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonMetaBuilder toBuilder() => PersonMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonMeta &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        name == other.name &&
        language == other.language &&
        positions == other.positions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, malId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, positions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonMeta')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('name', name)
          ..add('language', language)
          ..add('positions', positions))
        .toString();
  }
}

class PersonMetaBuilder implements Builder<PersonMeta, PersonMetaBuilder> {
  _$PersonMeta? _$v;

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

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  ListBuilder<String>? _positions;
  ListBuilder<String> get positions =>
      _$this._positions ??= ListBuilder<String>();
  set positions(ListBuilder<String>? positions) =>
      _$this._positions = positions;

  PersonMetaBuilder();

  PersonMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _name = $v.name;
      _language = $v.language;
      _positions = $v.positions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonMeta other) {
    _$v = other as _$PersonMeta;
  }

  @override
  void update(void Function(PersonMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonMeta build() => _build();

  _$PersonMeta _build() {
    _$PersonMeta _$result;
    try {
      _$result = _$v ??
          _$PersonMeta._(
            malId: BuiltValueNullFieldError.checkNotNull(
                malId, r'PersonMeta', 'malId'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'PersonMeta', 'url'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'PersonMeta', 'imageUrl'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PersonMeta', 'name'),
            language: language,
            positions: _positions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'positions';
        _positions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PersonMeta', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
