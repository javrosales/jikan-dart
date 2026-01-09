// library promo;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'promo.g.dart';

abstract class Promo implements Built<Promo, PromoBuilder> {
  Promo._();

  factory Promo([void Function(PromoBuilder) updates]) = _$Promo;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'video_url')
  String get videoUrl;

  String toJson() {
    return serializers.toJson(Promo.serializer, this);
  }

  static Promo fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['image_url'] = jsonMap['trailer']['images']['maximum_image_url'];
    jsonMap['video_url'] = jsonMap['trailer']['url'];
    return serializers.deserializeWith(Promo.serializer, jsonMap)!;
  }

  static Serializer<Promo> get serializer => _$promoSerializer;
}
