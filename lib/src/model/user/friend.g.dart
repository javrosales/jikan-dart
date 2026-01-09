// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Friend> _$friendSerializer = _$FriendSerializer();

class _$FriendSerializer implements StructuredSerializer<Friend> {
  @override
  final Iterable<Type> types = const [Friend, _$Friend];
  @override
  final String wireName = 'Friend';

  @override
  Iterable<Object?> serialize(Serializers serializers, Friend object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UserMeta)),
      'last_online',
      serializers.serialize(object.lastOnline,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.friendsSince;
    if (value != null) {
      result
        ..add('friends_since')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Friend deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = FriendBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserMeta))! as UserMeta);
          break;
        case 'last_online':
          result.lastOnline = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'friends_since':
          result.friendsSince = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Friend extends Friend {
  @override
  final UserMeta user;
  @override
  final String lastOnline;
  @override
  final String? friendsSince;

  factory _$Friend([void Function(FriendBuilder)? updates]) =>
      (FriendBuilder()..update(updates))._build();

  _$Friend._({required this.user, required this.lastOnline, this.friendsSince})
      : super._();
  @override
  Friend rebuild(void Function(FriendBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FriendBuilder toBuilder() => FriendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Friend &&
        user == other.user &&
        lastOnline == other.lastOnline &&
        friendsSince == other.friendsSince;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, lastOnline.hashCode);
    _$hash = $jc(_$hash, friendsSince.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Friend')
          ..add('user', user)
          ..add('lastOnline', lastOnline)
          ..add('friendsSince', friendsSince))
        .toString();
  }
}

class FriendBuilder implements Builder<Friend, FriendBuilder> {
  _$Friend? _$v;

  UserMetaBuilder? _user;
  UserMetaBuilder get user => _$this._user ??= UserMetaBuilder();
  set user(UserMetaBuilder? user) => _$this._user = user;

  String? _lastOnline;
  String? get lastOnline => _$this._lastOnline;
  set lastOnline(String? lastOnline) => _$this._lastOnline = lastOnline;

  String? _friendsSince;
  String? get friendsSince => _$this._friendsSince;
  set friendsSince(String? friendsSince) => _$this._friendsSince = friendsSince;

  FriendBuilder();

  FriendBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _lastOnline = $v.lastOnline;
      _friendsSince = $v.friendsSince;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Friend other) {
    _$v = other as _$Friend;
  }

  @override
  void update(void Function(FriendBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Friend build() => _build();

  _$Friend _build() {
    _$Friend _$result;
    try {
      _$result = _$v ??
          _$Friend._(
            user: user.build(),
            lastOnline: BuiltValueNullFieldError.checkNotNull(
                lastOnline, r'Friend', 'lastOnline'),
            friendsSince: friendsSince,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Friend', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
