## 2.3.0

* All public methods return `List` instead of `BuiltList`.
* Update dependencies to latest versions.
* Fix promo trailer constructor.

## 2.2.1

* Fix user profile constructor.

## 2.2.0

* Requires Dart 3.0 or later.
* Replace `TopType` enum with `AnimeType` and `MangaType` respectively.

## 2.1.0

* Updated `Review` and `UserReview` models.
* Top subtype enum renamed to filter.

## 2.0.0

* **BREAKING**: Migrate to the new REST API v4.
* Most of the endpoints and models have been updated, check the official docs [here](https://docs.api.jikan.moe/).
* Only GET requests are supported and by default are cached for 24 hours.

## 1.7.0

* Removed deprecated user lists endpoints.
* Updated `GenreList.anime` and `GenreList.manga` entries again.

## 1.6.1

* Set `type` param to nullable.
* Add `themes`, `demographics` and `explicitGenres` fields to models.
* Updated `GenreList.anime` and `GenreList.manga` entries.

## 1.6.0

* Migrate to null safety.

## 1.5.0+1

* Internal changes and notes added to readme.

## 1.5.0

* Updated `getGenre` method to better use (breaking change).
* `GenreList` now returns the list of anime and manga genres.

## 1.4.0

* Add optional param `debug` to print url in the console, defaults false.
* Add optional param `custom` to allow advanced `search` method.
* Update lower bound of dart dependency to 2.7.0.

## 1.3.1

* Set `synopsis` param to nullable (fix issue [#1](https://github.com/javrosales/jikan-dart/issues/1)).

## 1.3.0

* Added club models.
* Set optional param `type` to `getAnimeForum` and `getMangaForum`.
* Set optional param `page` to `getUserFriends`.
* `getAnimeMoreInfo` and `getMangaMoreInfo` now returns `String`.

## 1.2.0

* Set `scoredBy` param to nullable.
* Fixed linter warnings.

## 1.1.0

* Updated http method to rescue server errors.

## 1.0.0+1

* Updated user list parameters.

## 1.0.0

* Fixed package suggestions.

## 0.0.1

* Initial release.
