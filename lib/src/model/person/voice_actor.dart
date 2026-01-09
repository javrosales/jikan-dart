// library voice_actor;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/anime/anime_meta.dart';
import 'package:jikan_api/src/model/character/character_meta.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'voice_actor.g.dart';

abstract class VoiceActor implements Built<VoiceActor, VoiceActorBuilder> {
  VoiceActor._();

  factory VoiceActor([void Function(VoiceActorBuilder) updates]) = _$VoiceActor;

  @BuiltValueField(wireName: 'role')
  String get role;

  @BuiltValueField(wireName: 'anime')
  AnimeMeta get anime;

  @BuiltValueField(wireName: 'character')
  CharacterMeta get character;

  String toJson() {
    return serializers.toJson(VoiceActor.serializer, this);
  }

  static VoiceActor fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(VoiceActor.serializer, jsonMap)!;
  }

  static Serializer<VoiceActor> get serializer => _$voiceActorSerializer;
}
