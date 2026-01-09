// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Promo> _$promoSerializer = _$PromoSerializer();

class _$PromoSerializer implements StructuredSerializer<Promo> {
  @override
  final Iterable<Type> types = const [Promo, _$Promo];
  @override
  final String wireName = 'Promo';

  @override
  Iterable<Object?> serialize(Serializers serializers, Promo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'video_url',
      serializers.serialize(object.videoUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Promo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PromoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'video_url':
          result.videoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Promo extends Promo {
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String videoUrl;

  factory _$Promo([void Function(PromoBuilder)? updates]) =>
      (PromoBuilder()..update(updates))._build();

  _$Promo._(
      {required this.title, required this.imageUrl, required this.videoUrl})
      : super._();
  @override
  Promo rebuild(void Function(PromoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PromoBuilder toBuilder() => PromoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Promo &&
        title == other.title &&
        imageUrl == other.imageUrl &&
        videoUrl == other.videoUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, videoUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Promo')
          ..add('title', title)
          ..add('imageUrl', imageUrl)
          ..add('videoUrl', videoUrl))
        .toString();
  }
}

class PromoBuilder implements Builder<Promo, PromoBuilder> {
  _$Promo? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _videoUrl;
  String? get videoUrl => _$this._videoUrl;
  set videoUrl(String? videoUrl) => _$this._videoUrl = videoUrl;

  PromoBuilder();

  PromoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _imageUrl = $v.imageUrl;
      _videoUrl = $v.videoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Promo other) {
    _$v = other as _$Promo;
  }

  @override
  void update(void Function(PromoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Promo build() => _build();

  _$Promo _build() {
    final _$result = _$v ??
        _$Promo._(
          title:
              BuiltValueNullFieldError.checkNotNull(title, r'Promo', 'title'),
          imageUrl: BuiltValueNullFieldError.checkNotNull(
              imageUrl, r'Promo', 'imageUrl'),
          videoUrl: BuiltValueNullFieldError.checkNotNull(
              videoUrl, r'Promo', 'videoUrl'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
