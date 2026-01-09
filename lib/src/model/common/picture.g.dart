// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Picture> _$pictureSerializer = _$PictureSerializer();

class _$PictureSerializer implements StructuredSerializer<Picture> {
  @override
  final Iterable<Type> types = const [Picture, _$Picture];
  @override
  final String wireName = 'Picture';

  @override
  Iterable<Object?> serialize(Serializers serializers, Picture object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.smallImageUrl;
    if (value != null) {
      result
        ..add('small_image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.largeImageUrl;
    if (value != null) {
      result
        ..add('large_image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Picture deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PictureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'small_image_url':
          result.smallImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'large_image_url':
          result.largeImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Picture extends Picture {
  @override
  final String imageUrl;
  @override
  final String? smallImageUrl;
  @override
  final String? largeImageUrl;

  factory _$Picture([void Function(PictureBuilder)? updates]) =>
      (PictureBuilder()..update(updates))._build();

  _$Picture._({required this.imageUrl, this.smallImageUrl, this.largeImageUrl})
      : super._();
  @override
  Picture rebuild(void Function(PictureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PictureBuilder toBuilder() => PictureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Picture &&
        imageUrl == other.imageUrl &&
        smallImageUrl == other.smallImageUrl &&
        largeImageUrl == other.largeImageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, smallImageUrl.hashCode);
    _$hash = $jc(_$hash, largeImageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Picture')
          ..add('imageUrl', imageUrl)
          ..add('smallImageUrl', smallImageUrl)
          ..add('largeImageUrl', largeImageUrl))
        .toString();
  }
}

class PictureBuilder implements Builder<Picture, PictureBuilder> {
  _$Picture? _$v;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _smallImageUrl;
  String? get smallImageUrl => _$this._smallImageUrl;
  set smallImageUrl(String? smallImageUrl) =>
      _$this._smallImageUrl = smallImageUrl;

  String? _largeImageUrl;
  String? get largeImageUrl => _$this._largeImageUrl;
  set largeImageUrl(String? largeImageUrl) =>
      _$this._largeImageUrl = largeImageUrl;

  PictureBuilder();

  PictureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageUrl = $v.imageUrl;
      _smallImageUrl = $v.smallImageUrl;
      _largeImageUrl = $v.largeImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Picture other) {
    _$v = other as _$Picture;
  }

  @override
  void update(void Function(PictureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Picture build() => _build();

  _$Picture _build() {
    final _$result = _$v ??
        _$Picture._(
          imageUrl: BuiltValueNullFieldError.checkNotNull(
              imageUrl, r'Picture', 'imageUrl'),
          smallImageUrl: smallImageUrl,
          largeImageUrl: largeImageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
