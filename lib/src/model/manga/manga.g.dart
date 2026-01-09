// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Manga> _$mangaSerializer = _$MangaSerializer();

class _$MangaSerializer implements StructuredSerializer<Manga> {
  @override
  final Iterable<Type> types = const [Manga, _$Manga];
  @override
  final String wireName = 'Manga';

  @override
  Iterable<Object?> serialize(Serializers serializers, Manga object,
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
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'publishing',
      serializers.serialize(object.publishing,
          specifiedType: const FullType(bool)),
      'authors',
      serializers.serialize(object.authors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
      'serializations',
      serializers.serialize(object.serializations,
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.chapters;
    if (value != null) {
      result
        ..add('chapters')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.volumes;
    if (value != null) {
      result
        ..add('volumes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.published;
    if (value != null) {
      result
        ..add('published')
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
    value = object.relations;
    if (value != null) {
      result
        ..add('relations')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Relation)])));
    }
    return result;
  }

  @override
  Manga deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MangaBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'chapters':
          result.chapters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'volumes':
          result.volumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'publishing':
          result.publishing = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'published':
          result.published = serializers.deserialize(value,
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
        case 'authors':
          result.authors.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))!
              as BuiltList<Object?>);
          break;
        case 'serializations':
          result.serializations.replace(serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$Manga extends Manga {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final String? titleEnglish;
  @override
  final String? titleJapanese;
  @override
  final BuiltList<String> titleSynonyms;
  @override
  final String? type;
  @override
  final int? chapters;
  @override
  final int? volumes;
  @override
  final String status;
  @override
  final bool publishing;
  @override
  final String? published;
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
  final BuiltList<Meta> authors;
  @override
  final BuiltList<Meta> serializations;
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

  factory _$Manga([void Function(MangaBuilder)? updates]) =>
      (MangaBuilder()..update(updates))._build();

  _$Manga._(
      {required this.malId,
      required this.url,
      required this.imageUrl,
      required this.title,
      this.titleEnglish,
      this.titleJapanese,
      required this.titleSynonyms,
      this.type,
      this.chapters,
      this.volumes,
      required this.status,
      required this.publishing,
      this.published,
      this.score,
      this.scoredBy,
      this.rank,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      required this.authors,
      required this.serializations,
      required this.genres,
      required this.explicitGenres,
      required this.themes,
      required this.demographics,
      this.relations})
      : super._();
  @override
  Manga rebuild(void Function(MangaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MangaBuilder toBuilder() => MangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Manga &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        title == other.title &&
        titleEnglish == other.titleEnglish &&
        titleJapanese == other.titleJapanese &&
        titleSynonyms == other.titleSynonyms &&
        type == other.type &&
        chapters == other.chapters &&
        volumes == other.volumes &&
        status == other.status &&
        publishing == other.publishing &&
        published == other.published &&
        score == other.score &&
        scoredBy == other.scoredBy &&
        rank == other.rank &&
        popularity == other.popularity &&
        members == other.members &&
        favorites == other.favorites &&
        synopsis == other.synopsis &&
        background == other.background &&
        authors == other.authors &&
        serializations == other.serializations &&
        genres == other.genres &&
        explicitGenres == other.explicitGenres &&
        themes == other.themes &&
        demographics == other.demographics &&
        relations == other.relations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, malId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, titleEnglish.hashCode);
    _$hash = $jc(_$hash, titleJapanese.hashCode);
    _$hash = $jc(_$hash, titleSynonyms.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, chapters.hashCode);
    _$hash = $jc(_$hash, volumes.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, publishing.hashCode);
    _$hash = $jc(_$hash, published.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, scoredBy.hashCode);
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, favorites.hashCode);
    _$hash = $jc(_$hash, synopsis.hashCode);
    _$hash = $jc(_$hash, background.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, serializations.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, explicitGenres.hashCode);
    _$hash = $jc(_$hash, themes.hashCode);
    _$hash = $jc(_$hash, demographics.hashCode);
    _$hash = $jc(_$hash, relations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Manga')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('title', title)
          ..add('titleEnglish', titleEnglish)
          ..add('titleJapanese', titleJapanese)
          ..add('titleSynonyms', titleSynonyms)
          ..add('type', type)
          ..add('chapters', chapters)
          ..add('volumes', volumes)
          ..add('status', status)
          ..add('publishing', publishing)
          ..add('published', published)
          ..add('score', score)
          ..add('scoredBy', scoredBy)
          ..add('rank', rank)
          ..add('popularity', popularity)
          ..add('members', members)
          ..add('favorites', favorites)
          ..add('synopsis', synopsis)
          ..add('background', background)
          ..add('authors', authors)
          ..add('serializations', serializations)
          ..add('genres', genres)
          ..add('explicitGenres', explicitGenres)
          ..add('themes', themes)
          ..add('demographics', demographics)
          ..add('relations', relations))
        .toString();
  }
}

class MangaBuilder implements Builder<Manga, MangaBuilder> {
  _$Manga? _$v;

  int? _malId;
  int? get malId => _$this._malId;
  set malId(int? malId) => _$this._malId = malId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

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

  int? _chapters;
  int? get chapters => _$this._chapters;
  set chapters(int? chapters) => _$this._chapters = chapters;

  int? _volumes;
  int? get volumes => _$this._volumes;
  set volumes(int? volumes) => _$this._volumes = volumes;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _publishing;
  bool? get publishing => _$this._publishing;
  set publishing(bool? publishing) => _$this._publishing = publishing;

  String? _published;
  String? get published => _$this._published;
  set published(String? published) => _$this._published = published;

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

  ListBuilder<Meta>? _authors;
  ListBuilder<Meta> get authors => _$this._authors ??= ListBuilder<Meta>();
  set authors(ListBuilder<Meta>? authors) => _$this._authors = authors;

  ListBuilder<Meta>? _serializations;
  ListBuilder<Meta> get serializations =>
      _$this._serializations ??= ListBuilder<Meta>();
  set serializations(ListBuilder<Meta>? serializations) =>
      _$this._serializations = serializations;

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

  MangaBuilder();

  MangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _malId = $v.malId;
      _url = $v.url;
      _imageUrl = $v.imageUrl;
      _title = $v.title;
      _titleEnglish = $v.titleEnglish;
      _titleJapanese = $v.titleJapanese;
      _titleSynonyms = $v.titleSynonyms.toBuilder();
      _type = $v.type;
      _chapters = $v.chapters;
      _volumes = $v.volumes;
      _status = $v.status;
      _publishing = $v.publishing;
      _published = $v.published;
      _score = $v.score;
      _scoredBy = $v.scoredBy;
      _rank = $v.rank;
      _popularity = $v.popularity;
      _members = $v.members;
      _favorites = $v.favorites;
      _synopsis = $v.synopsis;
      _background = $v.background;
      _authors = $v.authors.toBuilder();
      _serializations = $v.serializations.toBuilder();
      _genres = $v.genres.toBuilder();
      _explicitGenres = $v.explicitGenres.toBuilder();
      _themes = $v.themes.toBuilder();
      _demographics = $v.demographics.toBuilder();
      _relations = $v.relations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Manga other) {
    _$v = other as _$Manga;
  }

  @override
  void update(void Function(MangaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Manga build() => _build();

  _$Manga _build() {
    _$Manga _$result;
    try {
      _$result = _$v ??
          _$Manga._(
            malId:
                BuiltValueNullFieldError.checkNotNull(malId, r'Manga', 'malId'),
            url: BuiltValueNullFieldError.checkNotNull(url, r'Manga', 'url'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'Manga', 'imageUrl'),
            title:
                BuiltValueNullFieldError.checkNotNull(title, r'Manga', 'title'),
            titleEnglish: titleEnglish,
            titleJapanese: titleJapanese,
            titleSynonyms: titleSynonyms.build(),
            type: type,
            chapters: chapters,
            volumes: volumes,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Manga', 'status'),
            publishing: BuiltValueNullFieldError.checkNotNull(
                publishing, r'Manga', 'publishing'),
            published: published,
            score: score,
            scoredBy: scoredBy,
            rank: rank,
            popularity: popularity,
            members: members,
            favorites: favorites,
            synopsis: synopsis,
            background: background,
            authors: authors.build(),
            serializations: serializations.build(),
            genres: genres.build(),
            explicitGenres: explicitGenres.build(),
            themes: themes.build(),
            demographics: demographics.build(),
            relations: _relations?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'titleSynonyms';
        titleSynonyms.build();

        _$failedField = 'authors';
        authors.build();
        _$failedField = 'serializations';
        serializations.build();
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
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Manga', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
