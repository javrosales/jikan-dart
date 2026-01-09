// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EntryMeta> _$entryMetaSerializer = _$EntryMetaSerializer();

class _$EntryMetaSerializer implements StructuredSerializer<EntryMeta> {
  @override
  final Iterable<Type> types = const [EntryMeta, _$EntryMeta];
  @override
  final String wireName = 'EntryMeta';

  @override
  Iterable<Object?> serialize(Serializers serializers, EntryMeta object,
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

    return result;
  }

  @override
  EntryMeta deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = EntryMetaBuilder();

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
      }
    }

    return result.build();
  }
}

class _$EntryMeta extends EntryMeta {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String title;

  factory _$EntryMeta([void Function(EntryMetaBuilder)? updates]) =>
      (EntryMetaBuilder()..update(updates))._build();

  _$EntryMeta._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      required this.title})
      : super._();
  @override
  EntryMeta rebuild(void Function(EntryMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntryMetaBuilder toBuilder() => EntryMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntryMeta &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, malId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntryMeta')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('title', title))
        .toString();
  }
}

class EntryMetaBuilder implements Builder<EntryMeta, EntryMetaBuilder> {
  _$EntryMeta? _$v;

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

  EntryMetaBuilder();

  EntryMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntryMeta other) {
    _$v = other as _$EntryMeta;
  }

  @override
  void update(void Function(EntryMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntryMeta build() => _build();

  _$EntryMeta _build() {
    final _$result = _$v ??
        _$EntryMeta._(
          malId: BuiltValueNullFieldError.checkNotNull(
              malId, r'EntryMeta', 'malId'),
          url: BuiltValueNullFieldError.checkNotNull(url, r'EntryMeta', 'url'),
          imageUrl: BuiltValueNullFieldError.checkNotNull(
              imageUrl, r'EntryMeta', 'imageUrl'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'EntryMeta', 'title'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
