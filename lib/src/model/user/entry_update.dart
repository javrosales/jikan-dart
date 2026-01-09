// library entry_update;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jikan_api/src/model/common/entry_meta.dart';
import 'package:jikan_api/src/model/serializers.dart';

part 'entry_update.g.dart';

abstract class EntryUpdate implements Built<EntryUpdate, EntryUpdateBuilder> {
  EntryUpdate._();

  factory EntryUpdate([void Function(EntryUpdateBuilder) updates]) =
      _$EntryUpdate;

  @BuiltValueField(wireName: 'entry')
  EntryMeta get entry;

  @BuiltValueField(wireName: 'score')
  int? get score;

  @BuiltValueField(wireName: 'status')
  String get status;

  @BuiltValueField(wireName: 'episodes_seen')
  int? get episodesSeen;

  @BuiltValueField(wireName: 'episodes_total')
  int? get episodesTotal;

  @BuiltValueField(wireName: 'chapters_read')
  int? get chaptersRead;

  @BuiltValueField(wireName: 'chapters_total')
  int? get chaptersTotal;

  @BuiltValueField(wireName: 'date')
  String get date;

  String toJson() {
    return serializers.toJson(EntryUpdate.serializer, this);
  }

  static EntryUpdate fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(EntryUpdate.serializer, jsonMap)!;
  }

  static Serializer<EntryUpdate> get serializer => _$entryUpdateSerializer;
}
