// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserUpdate> _$userUpdateSerializer = _$UserUpdateSerializer();

class _$UserUpdateSerializer implements StructuredSerializer<UserUpdate> {
  @override
  final Iterable<Type> types = const [UserUpdate, _$UserUpdate];
  @override
  final String wireName = 'UserUpdate';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserUpdate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UserMeta)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.episodesSeen;
    if (value != null) {
      result
        ..add('episodes_seen')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.episodesTotal;
    if (value != null) {
      result
        ..add('episodes_total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.volumesRead;
    if (value != null) {
      result
        ..add('volumes_read')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.volumesTotal;
    if (value != null) {
      result
        ..add('volumes_total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chaptersRead;
    if (value != null) {
      result
        ..add('chapters_read')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chaptersTotal;
    if (value != null) {
      result
        ..add('chapters_total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UserUpdate deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UserUpdateBuilder();

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
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'episodes_seen':
          result.episodesSeen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'episodes_total':
          result.episodesTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'volumes_read':
          result.volumesRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'volumes_total':
          result.volumesTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters_read':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters_total':
          result.chaptersTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserUpdate extends UserUpdate {
  @override
  final UserMeta user;
  @override
  final int? score;
  @override
  final String status;
  @override
  final int? episodesSeen;
  @override
  final int? episodesTotal;
  @override
  final int? volumesRead;
  @override
  final int? volumesTotal;
  @override
  final int? chaptersRead;
  @override
  final int? chaptersTotal;
  @override
  final String date;

  factory _$UserUpdate([void Function(UserUpdateBuilder)? updates]) =>
      (UserUpdateBuilder()..update(updates))._build();

  _$UserUpdate._(
      {required this.user,
      this.score,
      required this.status,
      this.episodesSeen,
      this.episodesTotal,
      this.volumesRead,
      this.volumesTotal,
      this.chaptersRead,
      this.chaptersTotal,
      required this.date})
      : super._();
  @override
  UserUpdate rebuild(void Function(UserUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserUpdateBuilder toBuilder() => UserUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserUpdate &&
        user == other.user &&
        score == other.score &&
        status == other.status &&
        episodesSeen == other.episodesSeen &&
        episodesTotal == other.episodesTotal &&
        volumesRead == other.volumesRead &&
        volumesTotal == other.volumesTotal &&
        chaptersRead == other.chaptersRead &&
        chaptersTotal == other.chaptersTotal &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, episodesSeen.hashCode);
    _$hash = $jc(_$hash, episodesTotal.hashCode);
    _$hash = $jc(_$hash, volumesRead.hashCode);
    _$hash = $jc(_$hash, volumesTotal.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, chaptersTotal.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserUpdate')
          ..add('user', user)
          ..add('score', score)
          ..add('status', status)
          ..add('episodesSeen', episodesSeen)
          ..add('episodesTotal', episodesTotal)
          ..add('volumesRead', volumesRead)
          ..add('volumesTotal', volumesTotal)
          ..add('chaptersRead', chaptersRead)
          ..add('chaptersTotal', chaptersTotal)
          ..add('date', date))
        .toString();
  }
}

class UserUpdateBuilder implements Builder<UserUpdate, UserUpdateBuilder> {
  _$UserUpdate? _$v;

  UserMetaBuilder? _user;
  UserMetaBuilder get user => _$this._user ??= UserMetaBuilder();
  set user(UserMetaBuilder? user) => _$this._user = user;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _episodesSeen;
  int? get episodesSeen => _$this._episodesSeen;
  set episodesSeen(int? episodesSeen) => _$this._episodesSeen = episodesSeen;

  int? _episodesTotal;
  int? get episodesTotal => _$this._episodesTotal;
  set episodesTotal(int? episodesTotal) =>
      _$this._episodesTotal = episodesTotal;

  int? _volumesRead;
  int? get volumesRead => _$this._volumesRead;
  set volumesRead(int? volumesRead) => _$this._volumesRead = volumesRead;

  int? _volumesTotal;
  int? get volumesTotal => _$this._volumesTotal;
  set volumesTotal(int? volumesTotal) => _$this._volumesTotal = volumesTotal;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  int? _chaptersTotal;
  int? get chaptersTotal => _$this._chaptersTotal;
  set chaptersTotal(int? chaptersTotal) =>
      _$this._chaptersTotal = chaptersTotal;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  UserUpdateBuilder();

  UserUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _score = $v.score;
      _status = $v.status;
      _episodesSeen = $v.episodesSeen;
      _episodesTotal = $v.episodesTotal;
      _volumesRead = $v.volumesRead;
      _volumesTotal = $v.volumesTotal;
      _chaptersRead = $v.chaptersRead;
      _chaptersTotal = $v.chaptersTotal;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserUpdate other) {
    _$v = other as _$UserUpdate;
  }

  @override
  void update(void Function(UserUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserUpdate build() => _build();

  _$UserUpdate _build() {
    _$UserUpdate _$result;
    try {
      _$result = _$v ??
          _$UserUpdate._(
            user: user.build(),
            score: score,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'UserUpdate', 'status'),
            episodesSeen: episodesSeen,
            episodesTotal: episodesTotal,
            volumesRead: volumesRead,
            volumesTotal: volumesTotal,
            chaptersRead: chaptersRead,
            chaptersTotal: chaptersTotal,
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'UserUpdate', 'date'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
