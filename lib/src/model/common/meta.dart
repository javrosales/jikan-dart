// library meta;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'meta.g.dart';

abstract class Meta implements Built<Meta, MetaBuilder> {
  Meta._();

  factory Meta([void Function(MetaBuilder) updates]) = _$Meta;

  @BuiltValueField(wireName: 'mal_id')
  int get malId;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'url')
  String get url;

  String toJson() {
    return serializers.toJson(Meta.serializer, this);
  }

  static Meta fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Meta.serializer, jsonMap)!;
  }

  static Serializer<Meta> get serializer => _$metaSerializer;
}
