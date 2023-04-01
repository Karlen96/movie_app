// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GenreState on GenreStateBase, Store {
  late final _$moviesAtom =
      Atom(name: 'GenreStateBase.movies', context: context);

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

  late final _$getMoviesByGenreAsyncAction =
      AsyncAction('GenreStateBase.getMoviesByGenre', context: context);

  @override
  Future<void> getMoviesByGenre() {
    return _$getMoviesByGenreAsyncAction.run(() => super.getMoviesByGenre());
  }

  @override
  String toString() {
    return '''
movies: ${movies}
    ''';
  }
}
