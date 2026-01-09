// library watch_promo;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/entry_meta.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'watch_promo.g.dart';

abstract class WatchPromo implements Built<WatchPromo, WatchPromoBuilder> {
  WatchPromo._();

  factory WatchPromo([void Function(WatchPromoBuilder) updates]) = _$WatchPromo;

  @BuiltValueField(wireName: 'entry')
  EntryMeta get entry;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'video_url')
  String get videoUrl;

  String toJson() {
    return serializers.toJson(WatchPromo.serializer, this);
  }

  static WatchPromo fromJson(Map<String, dynamic> jsonMap) {
    jsonMap['image_url'] = jsonMap['trailer']['images']['maximum_image_url'];
    jsonMap['video_url'] = jsonMap['trailer']['url'];
    jsonMap['entry']['image_url'] =
        jsonMap['entry']['images']['jpg']['large_image_url'];
    return serializers.deserializeWith(WatchPromo.serializer, jsonMap)!;
  }

  static Serializer<WatchPromo> get serializer => _$watchPromoSerializer;
}
