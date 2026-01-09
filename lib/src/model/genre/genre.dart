// library genre;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'genre.g.dart';

abstract class Genre implements Built<Genre, GenreBuilder> {
  Genre._();

  factory Genre([void Function(GenreBuilder) updates]) = _$Genre;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'count')
  int? get count;

  String toJson() {
    return serializers.toJson(Genre.serializer, this);
  }

  static Genre fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Genre.serializer, jsonMap)!;
  }

  static Serializer<Genre> get serializer => _$genreSerializer;
}
