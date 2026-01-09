// library picture;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'picture.g.dart';

abstract class Picture implements Built<Picture, PictureBuilder> {
  Picture._();

  factory Picture([void Function(PictureBuilder) updates]) = _$Picture;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'small_image_url')
  String? get smallImageUrl;

  @BuiltValueField(wireName: 'large_image_url')
  String? get largeImageUrl;

  String toJson() {
    return serializers.toJson(Picture.serializer, this);
  }

  static Picture fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Picture.serializer, jsonMap['jpg'])!;
  }

  static Serializer<Picture> get serializer => _$pictureSerializer;
}
