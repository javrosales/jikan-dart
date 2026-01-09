// library favorites;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';
import 'package:jikan_api/src/model/user/favorite.dart';

part 'favorites.g.dart';

abstract class Favorites implements Built<Favorites, FavoritesBuilder> {
  Favorites._();

  factory Favorites([void Function(FavoritesBuilder) updates]) = _$Favorites;

  @BuiltValueField(wireName: 'anime')
  BuiltList<Favorite> get anime;

  @BuiltValueField(wireName: 'manga')
  BuiltList<Favorite> get manga;

  @BuiltValueField(wireName: 'characters')
  BuiltList<Favorite> get characters;

  @BuiltValueField(wireName: 'people')
  BuiltList<Favorite> get people;

  String toJson() {
    return serializers.toJson(Favorites.serializer, this);
  }

  static Favorites fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Favorites.serializer, jsonMap)!;
  }

  static Serializer<Favorites> get serializer => _$favoritesSerializer;
}
