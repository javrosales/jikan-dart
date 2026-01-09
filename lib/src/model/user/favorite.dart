// library favorite;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'favorite.g.dart';

abstract class Favorite implements Built<Favorite, FavoriteBuilder> {
  Favorite._();

  factory Favorite([void Function(FavoriteBuilder) updates]) = _$Favorite;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'type')
  String? get type;

  @BuiltValueField(wireName: 'start_year')
  int? get startYear;

  String toJson() {
    return serializers.toJson(Favorite.serializer, this);
  }

  static Favorite fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Favorite.serializer, jsonMap)!;
  }

  static Serializer<Favorite> get serializer => _$favoriteSerializer;
}
