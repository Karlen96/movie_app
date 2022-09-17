enum MovieType {
  popular,
  topRated,
  nowPlaying,
  upcoming,
}

extension MovieTypeTranslations on MovieType {
  String get title {
    switch (this) {
      case MovieType.popular:
        return 'movieTypes.popular';
      case MovieType.topRated:
        return 'movieTypes.topRated';
      case MovieType.nowPlaying:
        return 'movieTypes.nowPlaying';
      case MovieType.upcoming:
        return 'movieTypes.upcoming';
    }
  }
}
