import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jikan_api/src/model/anime/anime.dart';
import 'package:jikan_api/src/model/anime/episode.dart';
import 'package:jikan_api/src/model/anime/promo.dart';
import 'package:jikan_api/src/model/character/character.dart';
import 'package:jikan_api/src/model/character/character_meta.dart';
import 'package:jikan_api/src/model/common/archive.dart';
import 'package:jikan_api/src/model/common/article.dart';
import 'package:jikan_api/src/model/common/forum.dart';
import 'package:jikan_api/src/model/common/picture.dart';
import 'package:jikan_api/src/model/common/recommendation.dart';
import 'package:jikan_api/src/model/common/review.dart';
import 'package:jikan_api/src/model/common/stats.dart';
import 'package:jikan_api/src/model/common/user_update.dart';
import 'package:jikan_api/src/model/constants.dart';
import 'package:jikan_api/src/model/genre/genre.dart';
import 'package:jikan_api/src/model/magazine/magazine.dart';
import 'package:jikan_api/src/model/manga/manga.dart';
import 'package:jikan_api/src/model/person/person.dart';
import 'package:jikan_api/src/model/person/person_meta.dart';
import 'package:jikan_api/src/model/producer/producer.dart';
import 'package:jikan_api/src/model/user/friend.dart';
import 'package:jikan_api/src/model/user/history.dart';
import 'package:jikan_api/src/model/user/user_profile.dart';
import 'package:jikan_api/src/model/user/user_recommendation.dart';
import 'package:jikan_api/src/model/user/user_review.dart';
import 'package:jikan_api/src/model/watch/watch_episode.dart';
import 'package:jikan_api/src/model/watch/watch_promo.dart';

class Jikan {
  Jikan({this.debug = false});

  final bool debug;

  Future<Map<String, dynamic>> _getResponse(String url) async {
    http.Response response;
    if (debug) print(baseUrl + url);
    do {
      response = await http.get(Uri.parse(baseUrl + url));
    } while (response.statusCode == 429 || response.statusCode == 500);

    return json.decode(response.body);
  }

  Future<Anime> getAnime(int id) async {
    var url = id == 0 ? '/random/anime' : '/anime/$id/full';
    var response = await _getResponse(url);

    return Anime.fromJson(response['data']);
  }

  Future<List<CharacterMeta>> getAnimeCharacters(int id) async {
    var url = '/anime/$id/characters';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => CharacterMeta.fromJson(i)).toList();
  }

  Future<List<PersonMeta>> getAnimeStaff(int id) async {
    var url = '/anime/$id/staff';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => PersonMeta.fromJson(i)).toList();
  }

  Future<List<Episode>> getAnimeEpisodes(int id, {int page = 1}) async {
    var url = '/anime/$id/episodes?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Episode.fromJson(i)).toList();
  }

  Future<List<Article>> getAnimeNews(int id, {int page = 1}) async {
    var url = '/anime/$id/news?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Article.fromJson(i)).toList();
  }

  Future<List<Forum>> getAnimeForum(int id, {ForumType? type}) async {
    var url = '/anime/$id/forum';
    if (type != null) url += '?filter=${type.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Forum.fromJson(i)).toList();
  }

  Future<List<Promo>> getAnimeVideos(int id) async {
    var url = '/anime/$id/videos';
    var response = await _getResponse(url);

    final List data = response['data']['promo'] ?? [];
    return data.map((i) => Promo.fromJson(i)).toList();
  }

  Future<List<Picture>> getAnimePictures(int id) async {
    var url = '/anime/$id/pictures';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Picture.fromJson(i)).toList();
  }

  Future<Stats> getAnimeStatistics(int id) async {
    var url = '/anime/$id/statistics';
    var response = await _getResponse(url);

    return Stats.fromJson(response['data']);
  }

  Future<String> getAnimeMoreInfo(int id) async {
    var url = '/anime/$id/moreinfo';
    var response = await _getResponse(url);

    return response['data']['moreinfo'] ?? '';
  }

  Future<List<Recommendation>> getAnimeRecommendations(int id) async {
    var url = '/anime/$id/recommendations';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Recommendation.fromJson(i)).toList();
  }

  Future<List<UserUpdate>> getAnimeUserUpdates(int id, {int page = 1}) async {
    var url = '/anime/$id/userupdates?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => UserUpdate.fromJson(i)).toList();
  }

  Future<List<Review>> getAnimeReviews(int id, {int page = 1}) async {
    var url = '/anime/$id/reviews?page=$page&preliminary=true&spoilers=true';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Review.fromJson(i)).toList();
  }

  Future<Manga> getManga(int id) async {
    var url = id == 0 ? '/random/manga' : '/manga/$id/full';
    var response = await _getResponse(url);

    return Manga.fromJson(response['data']);
  }

  Future<List<CharacterMeta>> getMangaCharacters(int id) async {
    var url = '/manga/$id/characters';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => CharacterMeta.fromJson(i)).toList();
  }

  Future<List<Article>> getMangaNews(int id, {int page = 1}) async {
    var url = '/manga/$id/news?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Article.fromJson(i)).toList();
  }

  Future<List<Forum>> getMangaForum(int id, {ForumType? type}) async {
    var url = '/manga/$id/forum';
    if (type != null) url += '?filter=${type.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Forum.fromJson(i)).toList();
  }

  Future<List<Picture>> getMangaPictures(int id) async {
    var url = '/manga/$id/pictures';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Picture.fromJson(i)).toList();
  }

  Future<Stats> getMangaStatistics(int id) async {
    var url = '/manga/$id/statistics';
    var response = await _getResponse(url);

    return Stats.fromJson(response['data']);
  }

  Future<String> getMangaMoreInfo(int id) async {
    var url = '/manga/$id/moreinfo';
    var response = await _getResponse(url);

    return response['data']['moreinfo'] ?? '';
  }

  Future<List<Recommendation>> getMangaRecommendations(int id) async {
    var url = '/manga/$id/recommendations';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Recommendation.fromJson(i)).toList();
  }

  Future<List<UserUpdate>> getMangaUserUpdates(int id, {int page = 1}) async {
    var url = '/manga/$id/userupdates?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => UserUpdate.fromJson(i)).toList();
  }

  Future<List<Review>> getMangaReviews(int id, {int page = 1}) async {
    var url = '/manga/$id/reviews?page=$page&preliminary=true&spoilers=true';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Review.fromJson(i)).toList();
  }

  Future<Person> getPerson(int id) async {
    var url = id == 0 ? '/random/people' : '/people/$id/full';
    var response = await _getResponse(url);

    return Person.fromJson(response['data']);
  }

  Future<List<Picture>> getPersonPictures(int id) async {
    var url = '/people/$id/pictures';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Picture.fromJson(i)).toList();
  }

  Future<Character> getCharacter(int id) async {
    var url = id == 0 ? '/random/characters' : '/characters/$id/full';
    var response = await _getResponse(url);

    return Character.fromJson(response['data']);
  }

  Future<List<Picture>> getCharacterPictures(int id) async {
    var url = '/characters/$id/pictures';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Picture.fromJson(i)).toList();
  }

  Future<List<Anime>> searchAnime(
      {String? query,
      AnimeType? type,
      List<int>? genres,
      List<int>? producers,
      String? orderBy,
      String? sort,
      String? rawQuery,
      int page = 1}) async {
    var url = '/anime?page=$page';
    if (query != null) url += '&q=$query';
    if (type != null) url += '&type=${type.name}';
    if (genres != null) url += '&genres=${genres.join(',')}';
    if (producers != null) url += '&producers=${producers.join(',')}';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    if (rawQuery != null) url += rawQuery;
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Anime.fromJson(i)).toList();
  }

  Future<List<Manga>> searchManga(
      {String? query,
      MangaType? type,
      List<int>? genres,
      List<int>? magazines,
      String? orderBy,
      String? sort,
      String? rawQuery,
      int page = 1}) async {
    var url = '/manga?page=$page';
    if (query != null) url += '&q=$query';
    if (type != null) url += '&type=${type.name}';
    if (genres != null) url += '&genres=${genres.join(',')}';
    if (magazines != null) url += '&magazines=${magazines.join(',')}';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    if (rawQuery != null) url += rawQuery;
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Manga.fromJson(i)).toList();
  }

  Future<List<Person>> searchPeople(
      {String? query, String? orderBy, String? sort, int page = 1}) async {
    var url = '/people?page=$page';
    if (query != null) url += '&q=$query';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Person.fromJson(i)).toList();
  }

  Future<List<Character>> searchCharacters(
      {String? query, String? orderBy, String? sort, int page = 1}) async {
    var url = '/characters?page=$page';
    if (query != null) url += '&q=$query';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Character.fromJson(i)).toList();
  }

  Future<List<Anime>> getSeason(
      {int? year, SeasonType? season, AnimeType? type, int page = 1}) async {
    var url = '/seasons';
    if (year != null && season != null) {
      url += '/$year/${season.name}?page=$page';
    } else {
      url += '/now?page=$page';
    }
    if (type != null) url += '&filter=${type.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Anime.fromJson(i)).toList();
  }

  Future<List<Anime>> getSeasonUpcoming({AnimeType? type, int page = 1}) async {
    var url = '/seasons/upcoming?page=$page';
    if (type != null) url += '&filter=${type.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Anime.fromJson(i)).toList();
  }

  Future<List<Archive>> getSeasonsList() async {
    var url = '/seasons';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Archive.fromJson(i)).toList();
  }

  Future<List<Anime>> getSchedules({WeekDay? weekday, int page = 1}) async {
    var url = '/schedules?page=$page';
    if (weekday != null) url += '&filter=${weekday.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Anime.fromJson(i)).toList();
  }

  Future<List<Anime>> getTopAnime(
      {AnimeType? type, TopFilter? filter, int page = 1}) async {
    var url = '/top/anime?page=$page';
    if (type != null) url += '&type=${type.name}';
    if (filter != null) url += '&filter=${filter.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Anime.fromJson(i)).toList();
  }

  Future<List<Manga>> getTopManga(
      {MangaType? type, TopFilter? filter, int page = 1}) async {
    var url = '/top/manga?page=$page';
    if (type != null) url += '&type=${type.name}';
    if (filter != null) url += '&filter=${filter.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Manga.fromJson(i)).toList();
  }

  Future<List<Person>> getTopPeople({int page = 1}) async {
    var url = '/top/people?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Person.fromJson(i)).toList();
  }

  Future<List<Character>> getTopCharacters({int page = 1}) async {
    var url = '/top/characters?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Character.fromJson(i)).toList();
  }

  Future<List<UserReview>> getTopReviews(
      {MediaType? type, int page = 1}) async {
    var url = '/top/reviews?page=$page';
    if (type != null) url += '&type=${type.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => UserReview.fromJson(i)).toList();
  }

  Future<List<Genre>> getAnimeGenres({GenreType? type}) async {
    var url = '/genres/anime';
    if (type != null) url += '?filter=${type.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Genre.fromJson(i)).toList();
  }

  Future<List<Genre>> getMangaGenres({GenreType? type}) async {
    var url = '/genres/manga';
    if (type != null) url += '?filter=${type.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Genre.fromJson(i)).toList();
  }

  Future<List<Producer>> getProducers(
      {String? query, String? orderBy, String? sort, int page = 1}) async {
    var url = '/producers?page=$page';
    if (query != null) url += '&q=$query';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Producer.fromJson(i)).toList();
  }

  Future<List<Magazine>> getMagazines(
      {String? query, String? orderBy, String? sort, int page = 1}) async {
    var url = '/magazines?page=$page';
    if (query != null) url += '&q=$query';
    if (orderBy != null) url += '&order_by=$orderBy';
    if (sort != null) url += '&sort=$sort';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Magazine.fromJson(i)).toList();
  }

  Future<UserProfile> getUserProfile(String username) async {
    var url = '/users/$username/full';
    var response = await _getResponse(url);

    return UserProfile.fromJson(response['data']);
  }

  Future<List<History>> getUserHistory(String username,
      {MediaType? type}) async {
    var url = '/users/$username/history';
    if (type != null) url += '?type=${type.name}';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => History.fromJson(i)).toList();
  }

  Future<List<Friend>> getUserFriends(String username, {int page = 1}) async {
    var url = '/users/$username/friends?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => Friend.fromJson(i)).toList();
  }

  Future<List<UserReview>> getUserReviews(String username,
      {int page = 1}) async {
    var url = '/users/$username/reviews?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) {
      i['user'] ??= {
        'url': 'https://myanimelist.net/profile/$username',
        'username': username
      };
      return UserReview.fromJson(i);
    }).toList();
  }

  Future<List<UserRecommendation>> getUserRecommendations(String username,
      {int page = 1}) async {
    var url = '/users/$username/recommendations?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) {
      i['user'] ??= {
        'url': 'https://myanimelist.net/profile/$username',
        'username': username
      };
      return UserRecommendation.fromJson(i);
    }).toList();
  }

  Future<List<UserReview>> getRecentAnimeReviews({int page = 1}) async {
    var url = '/reviews/anime?page=$page&preliminary=true&spoilers=true';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => UserReview.fromJson(i)).toList();
  }

  Future<List<UserReview>> getRecentMangaReviews({int page = 1}) async {
    var url = '/reviews/manga?page=$page&preliminary=true&spoilers=true';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => UserReview.fromJson(i)).toList();
  }

  Future<List<UserRecommendation>> getRecentAnimeRecommendations(
      {int page = 1}) async {
    var url = '/recommendations/anime?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => UserRecommendation.fromJson(i)).toList();
  }

  Future<List<UserRecommendation>> getRecentMangaRecommendations(
      {int page = 1}) async {
    var url = '/recommendations/manga?page=$page';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => UserRecommendation.fromJson(i)).toList();
  }

  Future<List<WatchEpisode>> getWatchEpisodes({bool popular = false}) async {
    var url = popular ? '/watch/episodes/popular' : '/watch/episodes';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => WatchEpisode.fromJson(i)).toList();
  }

  Future<List<WatchPromo>> getWatchPromos({bool popular = false}) async {
    var url = popular ? '/watch/promos/popular' : '/watch/promos';
    var response = await _getResponse(url);

    final List data = response['data'] ?? [];
    return data.map((i) => WatchPromo.fromJson(i)).toList();
  }
}
