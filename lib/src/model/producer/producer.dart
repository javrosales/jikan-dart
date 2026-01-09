// library producer;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'producer.g.dart';

abstract class Producer implements Built<Producer, ProducerBuilder> {
  Producer._();

  factory Producer([void Function(ProducerBuilder) updates]) = _$Producer;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'favorites')
  int get favorites;

  @BuiltValueField(wireName: 'established')
  String? get established;

  @BuiltValueField(wireName: 'about')
  String? get about;

  @BuiltValueField(wireName: 'count')
  int get count;

  String toJson() {
    return serializers.toJson(Producer.serializer, this);
  }

  static Producer fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['name'] = jsonMap['titles'][0]['title'];
    jsonMap['image_url'] = jsonMap['images']['jpg']['image_url'];
    return serializers.deserializeWith(Producer.serializer, jsonMap)!;
  }

  static Serializer<Producer> get serializer => _$producerSerializer;
}
