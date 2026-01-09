// library relation;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/meta.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'relation.g.dart';

abstract class Relation implements Built<Relation, RelationBuilder> {
  Relation._();

  factory Relation([void Function(RelationBuilder) updates]) = _$Relation;

  @BuiltValueField(wireName: 'relation')
  String get relation;

  @BuiltValueField(wireName: 'entry')
  BuiltList<Meta> get entry;

  String toJson() {
    return serializers.toJson(Relation.serializer, this);
  }

  static Relation fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(Relation.serializer, jsonMap)!;
  }

  static Serializer<Relation> get serializer => _$relationSerializer;
}
