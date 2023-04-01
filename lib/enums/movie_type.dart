import '../consts/assets.dart';

enum MovieType {
  action,
  comedy,
  fantasy,
  romance,
}

extension MovieTypeTranslations on MovieType {
  String get title => 'enums.movieTypes.$name';
}

extension MovieTypeImage on MovieType {
  String get imagePath {
    switch (this) {
      case MovieType.action:
        return Assets.popular;
      case MovieType.comedy:
        return Assets.topRated;
      case MovieType.fantasy:
        return Assets.nowPlaying;
      case MovieType.romance:
        return Assets.upcoming;
    }
  }

  int get id {
    switch (this) {
      case MovieType.action:
        return 28;
      case MovieType.comedy:
        return 35;
      case MovieType.fantasy:
        return 14;
      case MovieType.romance:
        return 10749;
    }
  }
}
