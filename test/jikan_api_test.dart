import 'dart:io';

import 'package:jikan_api/jikan_api.dart';
import 'package:test/test.dart';

void main() {
  late Jikan jikan;

  setUpAll(() {
    jikan = Jikan(debug: true);
  });

  setUp(() {
    // https://api.tenrai.org/documentation#description/auth-rate-limits
    sleep(const Duration(seconds: 5));
  });

  group('Anime Test', () {
    test('Anime full', () async {
      var anime = await jikan.getAnime(1);
      expect(anime.title, 'Cowboy Bebop');
      expect(anime.studios.first.name, 'Sunrise');
      expect(anime.genres.first.name, 'Action');
    });

    test('Anime characters', () async {
      var anime = await jikan.getAnimeCharacters(1);
      expect(anime.first.name, 'Black, Jet');
    });

    test('Anime staff', () async {
      var anime = await jikan.getAnimeStaff(1);
      expect(anime.first.name, 'Ikeguchi, Kazuhiko');
    });

    test('Anime episodes', () async {
      var anime = await jikan.getAnimeEpisodes(1);
      expect(anime.first.title, 'Asteroid Blues');
    });

    test('Anime news', () async {
      var anime = await jikan.getAnimeNews(1);
      expect(anime.first.title, isA<String>());
    });

    test('Anime forum', () async {
      var anime = await jikan.getAnimeForum(1);
      expect(anime.first.title, isA<String>());
    });

    test('Anime videos', () async {
      var anime = await jikan.getAnimeVideos(1);
      expect(anime.first.title, isA<String>());
    });

    test('Anime pictures', () async {
      var anime = await jikan.getAnimePictures(1);
      expect(anime.first.imageUrl, isA<String>());
    });

    test('Anime statistics', () async {
      var anime = await jikan.getAnimeStatistics(1);
      expect(anime.completed, greaterThan(500000));
    });

    test('Anime recommendations', () async {
      var anime = await jikan.getAnimeRecommendations(1);
      expect(anime.first.entry.title, isA<String>());
    });

    test('Anime reviews', () async {
      var anime = await jikan.getAnimeReviews(1);
      expect(anime.first.review, isA<String>());
    });
  });

  group('Manga Test', () {
    test('Manga full', () async {
      var manga = await jikan.getManga(1);
      expect(manga.title, 'Monster');
      expect(manga.authors.first.name, 'Urasawa, Naoki');
      expect(manga.genres.first.name, 'Award Winning');
    });

    test('Manga characters', () async {
      var manga = await jikan.getMangaCharacters(1);
      expect(manga.first.name, 'Liebert, Anna');
    });

    test('Manga news', () async {
      var manga = await jikan.getMangaNews(1);
      expect(manga.first.title, isA<String>());
    });

    // test('Manga forum', () async {
    //   var manga = await jikan.getMangaForum(1);
    //   expect(manga.first.title, isA<String>());
    // });

    test('Manga pictures', () async {
      var manga = await jikan.getMangaPictures(1);
      expect(manga.first.imageUrl, isA<String>());
    });

    test('Manga statistics', () async {
      var manga = await jikan.getMangaStatistics(1);
      expect(manga.completed, greaterThan(50000));
    });

    test('Manga recommendations', () async {
      var manga = await jikan.getMangaRecommendations(1);
      expect(manga.first.entry.title, isA<String>());
    });

    test('Manga reviews', () async {
      var manga = await jikan.getMangaReviews(1);
      expect(manga.first.review, isA<String>());
    });
  });

  group('Industry Test', () {
    test('Person full', () async {
      var person = await jikan.getPerson(1);
      expect(person.name, 'Seki, Tomokazu');
      expect(person.anime!.first.position, 'Theme Song Performance (ED)');
      expect(person.manga!, isEmpty);
      expect(person.voices!.first.role, anyOf(['Main', 'Supporting']));
    });

    test('Character full', () async {
      var character = await jikan.getCharacter(1);
      expect(character.name, 'Spiegel, Spike');
      expect(character.anime!.first.title, 'Cowboy Bebop');
      expect(character.manga!.first.title, 'Cowboy Bebop');
      expect(character.voices!.first.name, 'Yamadera, Kouichi');
    });

    test('Genres list', () async {
      var genres = await jikan.getAnimeGenres();
      expect(genres.first.name, 'Action');
    });

    test('Producers list', () async {
      var producers = await jikan.getProducers();
      expect(producers.first.name, 'Studio Pierrot');
    });

    test('Magazines list', () async {
      var magazines = await jikan.getMagazines();
      expect(magazines.first.name, 'Big Comic Original');
    });
  });

  group('Season Test', () {
    test('Season now list', () async {
      var season = await jikan.getSeason();
      expect(
          season.first.season, anyOf(['winter', 'spring', 'summer', 'fall']));
      expect(season.first.year, greaterThanOrEqualTo(2022));
    });

    test('Season upcoming list', () async {
      var season = await jikan.getSeasonUpcoming();
      expect(season.first.status, 'Not yet aired');
    });

    test('Schedules list', () async {
      var schedules = await jikan.getSchedules();
      expect(schedules.first.status, 'Currently Airing');
    });

    test('Top anime list', () async {
      var top = await jikan.getTopAnime(filter: TopFilter.favorite);
      expect(top.first.title, 'One Piece');
      expect(top.first.type, 'TV');
    });

    test('Search anime list', () async {
      var search =
          await jikan.searchAnime(query: 'shingeki', type: AnimeType.tv);
      expect(search.first.title, 'Shingeki no Kyojin');
      expect(search.first.type, 'TV');
    });
  });

  // group('User Test', () {
  //   test('User profile', () async {
  //     var user = await jikan.getUserProfile('javoeria');
  //     expect(user.username, 'javoeria');
  //     expect(user.animeStats.completed, greaterThan(0));
  //     expect(user.mangaStats.completed, greaterThan(0));
  //     expect(user.favorites.anime.first.title, 'FLCL');
  //     expect(user.favorites.manga.first.title, 'Oyasumi Punpun');
  //     expect(user.favorites.characters.first.name, 'Oshino, Ougi');
  //     expect(user.favorites.people.first.name, 'Kon, Satoshi');
  //   });

  //   test('User friends', () async {
  //     var friends = await jikan.getUserFriends('javoeria');
  //     expect(friends.first.user.username, isA<String>());
  //   });
  // });

  group('Recent Test', () {
    test('Recent reviews', () async {
      var recent = await jikan.getRecentAnimeReviews();
      expect(recent.first.review, isA<String>());
      expect(recent.first.entry.title, isA<String>());
    });

    test('Recent recommendations', () async {
      var recent = await jikan.getRecentAnimeRecommendations();
      expect(recent.first.content, isA<String>());
      expect(recent.first.entry.first.title, isA<String>());
    });
  });

  // group('Watch Test', () {
  //   test('Watch episodes', () async {
  //     var watch = await jikan.getWatchEpisodes();
  //     expect(watch.first.entry.title, isA<String>());
  //     expect(watch.first.episodes.first.title, isA<String>());
  //   });

  //   test('Watch promos', () async {
  //     var watch = await jikan.getWatchPromos();
  //     expect(watch.first.title, isA<String>());
  //     expect(watch.first.entry.title, isA<String>());
  //   });
  // });
}
