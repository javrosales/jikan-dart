// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnimeMeta> _$animeMetaSerializer = _$AnimeMetaSerializer();

class _$AnimeMetaSerializer implements StructuredSerializer<AnimeMeta> {
  @override
  final Iterable<Type> types = const [AnimeMeta, _$AnimeMeta];
  @override
  final String wireName = 'AnimeMeta';

  @override
  Iterable<Object?> serialize(Serializers serializers, AnimeMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AnimeMeta deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = AnimeMetaBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AnimeMeta extends AnimeMeta {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String? role;
  @override
  final String? position;

  factory _$AnimeMeta([void Function(AnimeMetaBuilder)? updates]) =>
      (AnimeMetaBuilder()..update(updates))._build();

  _$AnimeMeta._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      required this.title,
      this.role,
      this.position})
      : super._();
  @override
  AnimeMeta rebuild(void Function(AnimeMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeMetaBuilder toBuilder() => AnimeMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimeMeta &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        title == other.title &&
        role == other.role &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, malId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnimeMeta')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('title', title)
          ..add('role', role)
          ..add('position', position))
        .toString();
  }
}

class AnimeMetaBuilder implements Builder<AnimeMeta, AnimeMetaBuilder> {
  _$AnimeMeta? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  AnimeMetaBuilder();

  AnimeMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _title = $v.title;
      _role = $v.role;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimeMeta other) {
    _$v = other as _$AnimeMeta;
  }

  @override
  void update(void Function(AnimeMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnimeMeta build() => _build();

  _$AnimeMeta _build() {
    final _$result = _$v ??
        _$AnimeMeta._(
          malId: BuiltValueNullFieldError.checkNotNull(
              malId, r'AnimeMeta', 'malId'),
          url: BuiltValueNullFieldError.checkNotNull(url, r'AnimeMeta', 'url'),
          imageUrl: BuiltValueNullFieldError.checkNotNull(
              imageUrl, r'AnimeMeta', 'imageUrl'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'AnimeMeta', 'title'),
          role: role,
          position: position,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
