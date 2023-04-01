// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DashboardState on DashboardStateBase, Store {
  late final _$moviesAtom =
      Atom(name: 'DashboardStateBase.movies', context: context);

  @override
  ObservableList<MovieEntity> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(ObservableList<MovieEntity> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  late final _$topMoviesAtom =
      Atom(name: 'DashboardStateBase.topMovies', context: context);

  @override
  ObservableList<MovieEntity> get topMovies {
    _$topMoviesAtom.reportRead();
    return super.topMovies;
  }

  @override
  set topMovies(ObservableList<MovieEntity> value) {
    _$topMoviesAtom.reportWrite(value, super.topMovies, () {
      super.topMovies = value;
    });
  }

  late final _$nowBroadcastMoviesAtom =
      Atom(name: 'DashboardStateBase.nowBroadcastMovies', context: context);

  @override
  ObservableList<MovieEntity> get nowBroadcastMovies {
    _$nowBroadcastMoviesAtom.reportRead();
    return super.nowBroadcastMovies;
  }

  @override
  set nowBroadcastMovies(ObservableList<MovieEntity> value) {
    _$nowBroadcastMoviesAtom.reportWrite(value, super.nowBroadcastMovies, () {
      super.nowBroadcastMovies = value;
    });
  }

  late final _$getMoviesAsyncAction =
      AsyncAction('DashboardStateBase.getMovies', context: context);

  @override
  Future<void> getMovies() {
    return _$getMoviesAsyncAction.run(() => super.getMovies());
  }

  @override
  String toString() {
    return '''
movies: ${movies},
topMovies: ${topMovies},
nowBroadcastMovies: ${nowBroadcastMovies}
    ''';
  }
}
