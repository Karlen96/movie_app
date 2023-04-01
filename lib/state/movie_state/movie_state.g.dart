// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MovieState on MovieStateBase, Store {
  late final _$movieAtom = Atom(name: 'MovieStateBase.movie', context: context);

  @override
  MovieEntity get movie {
    _$movieAtom.reportRead();
    return super.movie;
  }

  @override
  set movie(MovieEntity value) {
    _$movieAtom.reportWrite(value, super.movie, () {
      super.movie = value;
    });
  }

  late final _$getMovieAsyncAction =
      AsyncAction('MovieStateBase.getMovie', context: context);

  @override
  Future<void> getMovie() {
    return _$getMovieAsyncAction.run(() => super.getMovie());
  }

  @override
  String toString() {
    return '''
movie: ${movie}
    ''';
  }
}
