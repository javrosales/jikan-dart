// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserMeta> _$userMetaSerializer = _$UserMetaSerializer();

class _$UserMetaSerializer implements StructuredSerializer<UserMeta> {
  @override
  final Iterable<Type> types = const [UserMeta, _$UserMeta];
  @override
  final String wireName = 'UserMeta';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserMeta deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserMetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserMeta extends UserMeta {
  @override
  final String username;
  @override
  final String url;
  @override
  final String? imageUrl;

  factory _$UserMeta([void Function(UserMetaBuilder)? updates]) =>
      (UserMetaBuilder()..update(updates))._build();

  _$UserMeta._({required this.username, required this.url, this.imageUrl})
      : super._();
  @override
  UserMeta rebuild(void Function(UserMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserMetaBuilder toBuilder() => UserMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserMeta &&
        username == other.username &&
        url == other.url &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserMeta')
          ..add('username', username)
          ..add('url', url)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class UserMetaBuilder implements Builder<UserMeta, UserMetaBuilder> {
  _$UserMeta? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  UserMetaBuilder();

  UserMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserMeta other) {
    _$v = other as _$UserMeta;
  }

  @override
  void update(void Function(UserMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserMeta build() => _build();

  _$UserMeta _build() {
    final _$result = _$v ??
        _$UserMeta._(
          username: BuiltValueNullFieldError.checkNotNull(
              username, r'UserMeta', 'username'),
          url: BuiltValueNullFieldError.checkNotNull(url, r'UserMeta', 'url'),
          imageUrl: imageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
