# jikan_api

[Jikan](https://jikan.moe/) is an **Unofficial** MyAnimeList API. It scrapes the website to satisfy the need for a complete API - which MyAnimeList lacks.

[![Build Status](https://github.com/javrosales/jikan-dart/actions/workflows/dart.yml/badge.svg)](https://github.com/javrosales/jikan-dart/actions/workflows/dart.yml)
[![Pub Version](https://img.shields.io/pub/v/jikan_api)](https://pub.dev/packages/jikan_api)

### Anime

```dart
Future<Anime> getAnime(int id);
Future<List<CharacterMeta>> getAnimeCharacters(int id);
Future<List<PersonMeta>> getAnimeStaff(int id);
Future<List<Episode>> getAnimeEpisodes(int id, {int page = 1});
Future<List<Article>> getAnimeNews(int id, {int page = 1});
Future<List<Forum>> getAnimeForum(int id, {ForumType? type});
Future<List<Promo>> getAnimeVideos(int id);
Future<List<Picture>> getAnimePictures(int id);
Future<Stats> getAnimeStatistics(int id);
Future<String> getAnimeMoreInfo(int id);
Future<List<Recommendation>> getAnimeRecommendations(int id);
Future<List<UserUpdate>> getAnimeUserUpdates(int id, {int page = 1});
Future<List<Review>> getAnimeReviews(int id, {int page = 1});
```

### Manga

```dart
Future<Manga> getManga(int id);
Future<List<CharacterMeta>> getMangaCharacters(int id);
Future<List<Article>> getMangaNews(int id, {int page = 1});
Future<List<Forum>> getMangaForum(int id, {ForumType? type});
Future<List<Picture>> getMangaPictures(int id);
Future<Stats> getMangaStatistics(int id);
Future<String> getMangaMoreInfo(int id);
Future<List<Recommendation>> getMangaRecommendations(int id);
Future<List<UserUpdate>> getMangaUserUpdates(int id, {int page = 1});
Future<List<Review>> getMangaReviews(int id, {int page = 1});
```

### People

```dart
Future<Person> getPerson(int id);
Future<List<Picture>> getPersonPictures(int id);
```

### Characters

```dart
Future<Character> getCharacter(int id);
Future<List<Picture>> getCharacterPictures(int id);
```

### Search

```dart
Future<List<Anime>> searchAnime(
    {String? query, AnimeType? type, List<int>? genres, List<int>? producers, String? orderBy, String? sort, int page = 1});
Future<List<Manga>> searchManga(
    {String? query, MangaType? type, List<int>? genres, List<int>? magazines, String? orderBy, String? sort, int page = 1});
Future<List<Person>> searchPeople({String? query, String? orderBy, String? sort, int page = 1});
Future<List<Character>> searchCharacters({String? query, String? orderBy, String? sort, int page = 1});
```

### Seasons

```dart
Future<List<Anime>> getSeason({int? year, SeasonType? season, AnimeType? type, int page = 1});
Future<List<Anime>> getSeasonUpcoming({AnimeType? type, int page = 1});
Future<List<Archive>> getSeasonsList();
```

### Schedules

```dart
Future<List<Anime>> getSchedules({WeekDay? weekday, int page = 1});
```

### Top

```dart
Future<List<Anime>> getTopAnime({AnimeType? type, TopFilter? filter, int page = 1});
Future<List<Manga>> getTopManga({MangaType? type, TopFilter? filter, int page = 1});
Future<List<Person>> getTopPeople({int page = 1});
Future<List<Character>> getTopCharacters({int page = 1});
Future<List<UserReview>> getTopReviews({MediaType? type, int page = 1});
```

### Genres

```dart
Future<List<Genre>> getAnimeGenres({GenreType? type});
Future<List<Genre>> getMangaGenres({GenreType? type});
```

### Producers

```dart
Future<List<Producer>> getProducers({String? query, String? orderBy, String? sort, int page = 1});
```

### Magazines

```dart
Future<List<Magazine>> getMagazines({String? query, String? orderBy, String? sort, int page = 1});
```

### Users

```dart
Future<UserProfile> getUserProfile(String username);
Future<List<History>> getUserHistory(String username, {MediaType? type});
Future<List<Friend>> getUserFriends(String username, {int page = 1});
Future<List<UserReview>> getUserReviews(String username, {int page = 1});
Future<List<UserRecommendation>> getUserRecommendations(String username, {int page = 1});
```

### Reviews

```dart
Future<List<UserReview>> getRecentAnimeReviews({int page = 1});
Future<List<UserReview>> getRecentMangaReviews({int page = 1});
```

### Recommendations

```dart
Future<List<UserRecommendation>> getRecentAnimeRecommendations({int page = 1});
Future<List<UserRecommendation>> getRecentMangaRecommendations({int page = 1});
```

### Watch

```dart
Future<List<WatchEpisode>> getWatchEpisodes({bool popular = false});
Future<List<WatchPromo>> getWatchPromos({bool popular = false});
```
