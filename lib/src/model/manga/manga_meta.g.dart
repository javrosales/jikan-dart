// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MangaMeta> _$mangaMetaSerializer = _$MangaMetaSerializer();

class _$MangaMetaSerializer implements StructuredSerializer<MangaMeta> {
  @override
  final Iterable<Type> types = const [MangaMeta, _$MangaMeta];
  @override
  final String wireName = 'MangaMeta';

  @override
  Iterable<Object?> serialize(Serializers serializers, MangaMeta object,
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
  MangaMeta deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MangaMetaBuilder();

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

class _$MangaMeta extends MangaMeta {
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

  factory _$MangaMeta([void Function(MangaMetaBuilder)? updates]) =>
      (MangaMetaBuilder()..update(updates))._build();

  _$MangaMeta._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      required this.title,
      this.role,
      this.position})
      : super._();
  @override
  MangaMeta rebuild(void Function(MangaMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MangaMetaBuilder toBuilder() => MangaMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MangaMeta &&
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
    return (newBuiltValueToStringHelper(r'MangaMeta')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('title', title)
          ..add('role', role)
          ..add('position', position))
        .toString();
  }
}

class MangaMetaBuilder implements Builder<MangaMeta, MangaMetaBuilder> {
  _$MangaMeta? _$v;

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

  MangaMetaBuilder();

  MangaMetaBuilder get _$this {
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
  void replace(MangaMeta other) {
    _$v = other as _$MangaMeta;
  }

  @override
  void update(void Function(MangaMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MangaMeta build() => _build();

  _$MangaMeta _build() {
    final _$result = _$v ??
        _$MangaMeta._(
          malId: BuiltValueNullFieldError.checkNotNull(
              malId, r'MangaMeta', 'malId'),
          url: BuiltValueNullFieldError.checkNotNull(url, r'MangaMeta', 'url'),
          imageUrl: BuiltValueNullFieldError.checkNotNull(
              imageUrl, r'MangaMeta', 'imageUrl'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'MangaMeta', 'title'),
          role: role,
          position: position,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
