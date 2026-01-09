// library entry_meta;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'entry_meta.g.dart';

abstract class EntryMeta implements Built<EntryMeta, EntryMetaBuilder> {
  EntryMeta._();

  factory EntryMeta([void Function(EntryMetaBuilder) updates]) = _$EntryMeta;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'image_url')
  String get imageUrl;

  @BuiltValueField(wireName: 'title')
  String get title;

  String toJson() {
    return serializers.toJson(EntryMeta.serializer, this);
  }

  static EntryMeta fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(EntryMeta.serializer, jsonMap)!;
  }

  static Serializer<EntryMeta> get serializer => _$entryMetaSerializer;
}
