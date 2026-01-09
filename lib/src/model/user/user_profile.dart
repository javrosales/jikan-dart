// library user_profile;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/user/entry_update.dart';
import 'package:jikan_api/src/model/user/favorites.dart';
import 'package:jikan_api/src/model/user/user_stats.dart';

part 'user_profile.g.dart';

abstract class UserProfile implements Built<UserProfile, UserProfileBuilder> {
  UserProfile._();

  factory UserProfile([void Function(UserProfileBuilder) updates]) =
      _$UserProfile;

  @BuiltValueField(wireName: 'mal_id')
  int? get malId;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: 'last_online')
  String? get lastOnline;

  @BuiltValueField(wireName: 'gender')
  String? get gender;

  @BuiltValueField(wireName: 'birthday')
  String? get birthday;

  @BuiltValueField(wireName: 'location')
  String? get location;

  @BuiltValueField(wireName: 'joined')
  String? get joined;

  @BuiltValueField(wireName: 'anime_stats')
  UserStats get animeStats;

  @BuiltValueField(wireName: 'manga_stats')
  UserStats get mangaStats;

  @BuiltValueField(wireName: 'favorites')
  Favorites get favorites;

  @BuiltValueField(wireName: 'anime_updates')
  BuiltList<EntryUpdate> get animeUpdates;

  @BuiltValueField(wireName: 'manga_updates')
  BuiltList<EntryUpdate> get mangaUpdates;

  @BuiltValueField(wireName: 'about')
  String? get about;

  String toJson() {
    return serializers.toJson(UserProfile.serializer, this);
  }

  static UserProfile fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['image_url'] = jsonMap['images']['jpg']['image_url'];
    jsonMap['anime_stats'] = jsonMap['statistics']['anime'];
    jsonMap['manga_stats'] = jsonMap['statistics']['manga'];
    for (var anime in jsonMap['favorites']['anime']) {
      anime['name'] = anime['title'];
      anime['image_url'] = anime['images']['jpg']['large_image_url'];
    }
    for (var manga in jsonMap['favorites']['manga']) {
      manga['name'] = manga['title'];
      manga['image_url'] = manga['images']['jpg']['large_image_url'];
    }
    for (var character in jsonMap['favorites']['characters']) {
      character['image_url'] = character['images']['jpg']['image_url'];
    }
    for (var person in jsonMap['favorites']['people']) {
      person['image_url'] = person['images']['jpg']['image_url'];
    }
    if (jsonMap['updates'] != null) {
      jsonMap['anime_updates'] = jsonMap['updates']['anime'];
      jsonMap['manga_updates'] = jsonMap['updates']['manga'];
      for (var update
          in (jsonMap['anime_updates'] + jsonMap['manga_updates'])) {
        update['entry']['image_url'] =
            update['entry']['images']['jpg']['large_image_url'];
      }
    }
    return serializers.deserializeWith(UserProfile.serializer, jsonMap)!;
  }

  static Serializer<UserProfile> get serializer => _$userProfileSerializer;
}
