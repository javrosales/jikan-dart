// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Anime> _$animeSerializer = _$AnimeSerializer();

class _$AnimeSerializer implements StructuredSerializer<Anime> {
  @override
  final Iterable<Type> types = const [Anime, _$Anime];
  @override
  final String wireName = 'Anime';

  @override
  Iterable<Object?> serialize(Serializers serializers, Anime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'title_synonyms',
      serializers.serialize(object.titleSynonyms,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'source',
      serializers.serialize(object.source,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'airing',
      serializers.serialize(object.airing, specifiedType: const FullType(bool)),
      'producers',
      serializers.serialize(object.producers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
      'licensors',
      serializers.serialize(object.licensors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
      'studios',
      serializers.serialize(object.studios,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
      'explicit_genres',
      serializers.serialize(object.explicitGenres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
      'themes',
      serializers.serialize(object.themes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
      'demographics',
      serializers.serialize(object.demographics,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
    ];
    Object? value;
    value = object.trailerUrl;
    if (value != null) {
      result
        ..add('trailer_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titleEnglish;
    if (value != null) {
      result
        ..add('title_english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titleJapanese;
    if (value != null) {
      result
        ..add('title_japanese')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.aired;
    if (value != null) {
      result
        ..add('aired')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.scoredBy;
    if (value != null) {
      result
        ..add('scored_by')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rank;
    if (value != null) {
      result
        ..add('rank')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.members;
    if (value != null) {
      result
        ..add('members')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.favorites;
    if (value != null) {
      result
        ..add('favorites')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.synopsis;
    if (value != null) {
      result
        ..add('synopsis')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.background;
    if (value != null) {
      result
        ..add('background')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.broadcast;
    if (value != null) {
      result
        ..add('broadcast')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.relations;
    if (value != null) {
      result
        ..add('relations')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Relation)])));
    }
    value = object.openingThemes;
    if (value != null) {
      result
        ..add('opening_themes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.endingThemes;
    if (value != null) {
      result
        ..add('ending_themes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.moreinfo;
    if (value != null) {
      result
        ..add('moreinfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Anime deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = AnimeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'trailer_url':
          result.trailerUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title_english':
          result.titleEnglish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title_japanese':
          result.titleJapanese = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title_synonyms':
          result.titleSynonyms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'airing':
          result.airing = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'aired':
          result.aired = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'scored_by':
          result.scoredBy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'members':
          result.members = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'favorites':
          result.favorites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'synopsis':
          result.synopsis = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'background':
          result.background = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'season':
          result.season = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'broadcast':
          result.broadcast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'producers':
          result.producers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))!
              as BuiltList<Object?>);
          break;
        case 'licensors':
          result.licensors.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))!
              as BuiltList<Object?>);
          break;
        case 'studios':
          result.studios.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))!
              as BuiltList<Object?>);
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))!
              as BuiltList<Object?>);
          break;
        case 'explicit_genres':
          result.explicitGenres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))!
              as BuiltList<Object?>);
          break;
        case 'themes':
          result.themes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))!
              as BuiltList<Object?>);
          break;
        case 'demographics':
          result.demographics.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))!
              as BuiltList<Object?>);
          break;
        case 'relations':
          result.relations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Relation)]))!
              as BuiltList<Object?>);
          break;
        case 'opening_themes':
          result.openingThemes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'ending_themes':
          result.endingThemes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'moreinfo':
          result.moreinfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Anime extends Anime {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String? trailerUrl;
  @override
  final String title;
  @override
  final String? titleEnglish;
  @override
  final String? titleJapanese;
  @override
  final BuiltList<String> titleSynonyms;
  @override
  final String type;
  @override
  final String source;
  @override
  final int? episodes;
  @override
  final String status;
  @override
  final bool airing;
  @override
  final String? aired;
  @override
  final String? duration;
  @override
  final String? rating;
  @override
  final double? score;
  @override
  final int? scoredBy;
  @override
  final int? rank;
  @override
  final int? popularity;
  @override
  final int? members;
  @override
  final int? favorites;
  @override
  final String? synopsis;
  @override
  final String? background;
  @override
  final String? season;
  @override
  final int? year;
  @override
  final String? broadcast;
  @override
  final BuiltList<Meta> producers;
  @override
  final BuiltList<Meta> licensors;
  @override
  final BuiltList<Meta> studios;
  @override
  final BuiltList<Meta> genres;
  @override
  final BuiltList<Meta> explicitGenres;
  @override
  final BuiltList<Meta> themes;
  @override
  final BuiltList<Meta> demographics;
  @override
  final BuiltList<Relation>? relations;
  @override
  final BuiltList<String>? openingThemes;
  @override
  final BuiltList<String>? endingThemes;
  @override
  final String? moreinfo;

  factory _$Anime([void Function(AnimeBuilder)? updates]) =>
      (AnimeBuilder()..update(updates))._build();

  _$Anime._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      this.trailerUrl,
      required this.title,
      this.titleEnglish,
      this.titleJapanese,
      required this.titleSynonyms,
      required this.type,
      required this.source,
      this.episodes,
      required this.status,
      required this.airing,
      this.aired,
      this.duration,
      this.rating,
      this.score,
      this.scoredBy,
      this.rank,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      this.season,
      this.year,
      this.broadcast,
      required this.producers,
      required this.licensors,
      required this.studios,
      required this.genres,
      required this.explicitGenres,
      required this.themes,
      required this.demographics,
      this.relations,
      this.openingThemes,
      this.endingThemes,
      this.moreinfo})
      : super._();
  @override
  Anime rebuild(void Function(AnimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeBuilder toBuilder() => AnimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Anime &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        trailerUrl == other.trailerUrl &&
        title == other.title &&
        titleEnglish == other.titleEnglish &&
        titleJapanese == other.titleJapanese &&
        titleSynonyms == other.titleSynonyms &&
        type == other.type &&
        source == other.source &&
        episodes == other.episodes &&
        status == other.status &&
        airing == other.airing &&
        aired == other.aired &&
        duration == other.duration &&
        rating == other.rating &&
        score == other.score &&
        scoredBy == other.scoredBy &&
        rank == other.rank &&
        popularity == other.popularity &&
        members == other.members &&
        favorites == other.favorites &&
        synopsis == other.synopsis &&
        background == other.background &&
        season == other.season &&
        year == other.year &&
        broadcast == other.broadcast &&
        producers == other.producers &&
        licensors == other.licensors &&
        studios == other.studios &&
        genres == other.genres &&
        explicitGenres == other.explicitGenres &&
        themes == other.themes &&
        demographics == other.demographics &&
        relations == other.relations &&
        openingThemes == other.openingThemes &&
        endingThemes == other.endingThemes &&
        moreinfo == other.moreinfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, malId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, trailerUrl.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, titleEnglish.hashCode);
    _$hash = $jc(_$hash, titleJapanese.hashCode);
    _$hash = $jc(_$hash, titleSynonyms.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, airing.hashCode);
    _$hash = $jc(_$hash, aired.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, scoredBy.hashCode);
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, favorites.hashCode);
    _$hash = $jc(_$hash, synopsis.hashCode);
    _$hash = $jc(_$hash, background.hashCode);
    _$hash = $jc(_$hash, season.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, broadcast.hashCode);
    _$hash = $jc(_$hash, producers.hashCode);
    _$hash = $jc(_$hash, licensors.hashCode);
    _$hash = $jc(_$hash, studios.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, explicitGenres.hashCode);
    _$hash = $jc(_$hash, themes.hashCode);
    _$hash = $jc(_$hash, demographics.hashCode);
    _$hash = $jc(_$hash, relations.hashCode);
    _$hash = $jc(_$hash, openingThemes.hashCode);
    _$hash = $jc(_$hash, endingThemes.hashCode);
    _$hash = $jc(_$hash, moreinfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Anime')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('trailerUrl', trailerUrl)
          ..add('title', title)
          ..add('titleEnglish', titleEnglish)
          ..add('titleJapanese', titleJapanese)
          ..add('titleSynonyms', titleSynonyms)
          ..add('type', type)
          ..add('source', source)
          ..add('episodes', episodes)
          ..add('status', status)
          ..add('airing', airing)
          ..add('aired', aired)
          ..add('duration', duration)
          ..add('rating', rating)
          ..add('score', score)
          ..add('scoredBy', scoredBy)
          ..add('rank', rank)
          ..add('popularity', popularity)
          ..add('members', members)
          ..add('favorites', favorites)
          ..add('synopsis', synopsis)
          ..add('background', background)
          ..add('season', season)
          ..add('year', year)
          ..add('broadcast', broadcast)
          ..add('producers', producers)
          ..add('licensors', licensors)
          ..add('studios', studios)
          ..add('genres', genres)
          ..add('explicitGenres', explicitGenres)
          ..add('themes', themes)
          ..add('demographics', demographics)
          ..add('relations', relations)
          ..add('openingThemes', openingThemes)
          ..add('endingThemes', endingThemes)
          ..add('moreinfo', moreinfo))
        .toString();
  }
}

class AnimeBuilder implements Builder<Anime, AnimeBuilder> {
  _$Anime? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _trailerUrl;
  String? get trailerUrl => _$this._trailerUrl;
  set trailerUrl(String? trailerUrl) => _$this._trailerUrl = trailerUrl;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _titleEnglish;
  String? get titleEnglish => _$this._titleEnglish;
  set titleEnglish(String? titleEnglish) => _$this._titleEnglish = titleEnglish;

  String? _titleJapanese;
  String? get titleJapanese => _$this._titleJapanese;
  set titleJapanese(String? titleJapanese) =>
      _$this._titleJapanese = titleJapanese;

  ListBuilder<String>? _titleSynonyms;
  ListBuilder<String> get titleSynonyms =>
      _$this._titleSynonyms ??= ListBuilder<String>();
  set titleSynonyms(ListBuilder<String>? titleSynonyms) =>
      _$this._titleSynonyms = titleSynonyms;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _source;
  String? get source => _$this._source;
  set source(String? source) => _$this._source = source;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _airing;
  bool? get airing => _$this._airing;
  set airing(bool? airing) => _$this._airing = airing;

  String? _aired;
  String? get aired => _$this._aired;
  set aired(String? aired) => _$this._aired = aired;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _rating;
  String? get rating => _$this._rating;
  set rating(String? rating) => _$this._rating = rating;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  int? _scoredBy;
  int? get scoredBy => _$this._scoredBy;
  set scoredBy(int? scoredBy) => _$this._scoredBy = scoredBy;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  int? _members;
  int? get members => _$this._members;
  set members(int? members) => _$this._members = members;

  int? _favorites;
  int? get favorites => _$this._favorites;
  set favorites(int? favorites) => _$this._favorites = favorites;

  String? _synopsis;
  String? get synopsis => _$this._synopsis;
  set synopsis(String? synopsis) => _$this._synopsis = synopsis;

  String? _background;
  String? get background => _$this._background;
  set background(String? background) => _$this._background = background;

  String? _season;
  String? get season => _$this._season;
  set season(String? season) => _$this._season = season;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  String? _broadcast;
  String? get broadcast => _$this._broadcast;
  set broadcast(String? broadcast) => _$this._broadcast = broadcast;

  ListBuilder<Meta>? _producers;
  ListBuilder<Meta> get producers => _$this._producers ??= ListBuilder<Meta>();
  set producers(ListBuilder<Meta>? producers) => _$this._producers = producers;

  ListBuilder<Meta>? _licensors;
  ListBuilder<Meta> get licensors => _$this._licensors ??= ListBuilder<Meta>();
  set licensors(ListBuilder<Meta>? licensors) => _$this._licensors = licensors;

  ListBuilder<Meta>? _studios;
  ListBuilder<Meta> get studios => _$this._studios ??= ListBuilder<Meta>();
  set studios(ListBuilder<Meta>? studios) => _$this._studios = studios;

  ListBuilder<Meta>? _genres;
  ListBuilder<Meta> get genres => _$this._genres ??= ListBuilder<Meta>();
  set genres(ListBuilder<Meta>? genres) => _$this._genres = genres;

  ListBuilder<Meta>? _explicitGenres;
  ListBuilder<Meta> get explicitGenres =>
      _$this._explicitGenres ??= ListBuilder<Meta>();
  set explicitGenres(ListBuilder<Meta>? explicitGenres) =>
      _$this._explicitGenres = explicitGenres;

  ListBuilder<Meta>? _themes;
  ListBuilder<Meta> get themes => _$this._themes ??= ListBuilder<Meta>();
  set themes(ListBuilder<Meta>? themes) => _$this._themes = themes;

  ListBuilder<Meta>? _demographics;
  ListBuilder<Meta> get demographics =>
      _$this._demographics ??= ListBuilder<Meta>();
  set demographics(ListBuilder<Meta>? demographics) =>
      _$this._demographics = demographics;

  ListBuilder<Relation>? _relations;
  ListBuilder<Relation> get relations =>
      _$this._relations ??= ListBuilder<Relation>();
  set relations(ListBuilder<Relation>? relations) =>
      _$this._relations = relations;

  ListBuilder<String>? _openingThemes;
  ListBuilder<String> get openingThemes =>
      _$this._openingThemes ??= ListBuilder<String>();
  set openingThemes(ListBuilder<String>? openingThemes) =>
      _$this._openingThemes = openingThemes;

  ListBuilder<String>? _endingThemes;
  ListBuilder<String> get endingThemes =>
      _$this._endingThemes ??= ListBuilder<String>();
  set endingThemes(ListBuilder<String>? endingThemes) =>
      _$this._endingThemes = endingThemes;

  String? _moreinfo;
  String? get moreinfo => _$this._moreinfo;
  set moreinfo(String? moreinfo) => _$this._moreinfo = moreinfo;

  AnimeBuilder();

  AnimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _trailerUrl = $v.trailerUrl;
      _title = $v.title;
      _titleEnglish = $v.titleEnglish;
      _titleJapanese = $v.titleJapanese;
      _titleSynonyms = $v.titleSynonyms.toBuilder();
      _type = $v.type;
      _source = $v.source;
      _episodes = $v.episodes;
      _status = $v.status;
      _airing = $v.airing;
      _aired = $v.aired;
      _duration = $v.duration;
      _rating = $v.rating;
      _score = $v.score;
      _scoredBy = $v.scoredBy;
      _rank = $v.rank;
      _popularity = $v.popularity;
      _members = $v.members;
      _favorites = $v.favorites;
      _synopsis = $v.synopsis;
      _background = $v.background;
      _season = $v.season;
      _year = $v.year;
      _broadcast = $v.broadcast;
      _producers = $v.producers.toBuilder();
      _licensors = $v.licensors.toBuilder();
      _studios = $v.studios.toBuilder();
      _genres = $v.genres.toBuilder();
      _explicitGenres = $v.explicitGenres.toBuilder();
      _themes = $v.themes.toBuilder();
      _demographics = $v.demographics.toBuilder();
      _relations = $v.relations?.toBuilder();
      _openingThemes = $v.openingThemes?.toBuilder();
      _endingThemes = $v.endingThemes?.toBuilder();
      _moreinfo = $v.moreinfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Anime other) {
    _$v = other as _$Anime;
  }

  @override
  void update(void Function(AnimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Anime build() => _build();

  _$Anime _build() {
    _$Anime _$result;
    try {
      _$result = _$v ??
          _$Anime._(
            malId:
                BuiltValueNullFieldError.checkNotNull(malId, r'Anime', 'malId'),
            url: BuiltValueNullFieldError.checkNotNull(url, r'Anime', 'url'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'Anime', 'imageUrl'),
            trailerUrl: trailerUrl,
            title:
                BuiltValueNullFieldError.checkNotNull(title, r'Anime', 'title'),
            titleEnglish: titleEnglish,
            titleJapanese: titleJapanese,
            titleSynonyms: titleSynonyms.build(),
            type: BuiltValueNullFieldError.checkNotNull(type, r'Anime', 'type'),
            source: BuiltValueNullFieldError.checkNotNull(
                source, r'Anime', 'source'),
            episodes: episodes,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Anime', 'status'),
            airing: BuiltValueNullFieldError.checkNotNull(
                airing, r'Anime', 'airing'),
            aired: aired,
            duration: duration,
            rating: rating,
            score: score,
            scoredBy: scoredBy,
            rank: rank,
            popularity: popularity,
            members: members,
            favorites: favorites,
            synopsis: synopsis,
            background: background,
            season: season,
            year: year,
            broadcast: broadcast,
            producers: producers.build(),
            licensors: licensors.build(),
            studios: studios.build(),
            genres: genres.build(),
            explicitGenres: explicitGenres.build(),
            themes: themes.build(),
            demographics: demographics.build(),
            relations: _relations?.build(),
            openingThemes: _openingThemes?.build(),
            endingThemes: _endingThemes?.build(),
            moreinfo: moreinfo,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'titleSynonyms';
        titleSynonyms.build();

        _$failedField = 'producers';
        producers.build();
        _$failedField = 'licensors';
        licensors.build();
        _$failedField = 'studios';
        studios.build();
        _$failedField = 'genres';
        genres.build();
        _$failedField = 'explicitGenres';
        explicitGenres.build();
        _$failedField = 'themes';
        themes.build();
        _$failedField = 'demographics';
        demographics.build();
        _$failedField = 'relations';
        _relations?.build();
        _$failedField = 'openingThemes';
        _openingThemes?.build();
        _$failedField = 'endingThemes';
        _endingThemes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Anime', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
