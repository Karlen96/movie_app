import 'dart:math';

import 'package:mobx/mobx.dart';
import '../../entities/genre_entitiy/genre_entity.dart';
import '../../entities/movie_entity/movie_entity.dart';
import '../../http/repositories/movies_repository.dart';
import '../loading_state/loading_state.dart';

part 'dashboard_state.g.dart';

class DashboardState = DashboardStateBase with _$DashboardState;

abstract class DashboardStateBase with Store {
  final loadingState = LoadingState();
  final moviesRepository = MoviesRepository();
  final random = Random();

  @observable
  ObservableList<MovieEntity> movies = ObservableList<MovieEntity>();

  @observable
  ObservableList<MovieEntity> topMovies = ObservableList<MovieEntity>();

  @observable
  ObservableList<MovieEntity> nowBroadcastMovies =
      ObservableList<MovieEntity>();

  @observable
  ObservableList<GenreEntity> genres = ObservableList<GenreEntity>();

  @action
  Future<void> getMovies() async {
    final res = await moviesRepository.getMovies();
    movies = res.results.asObservable();
  }

  @action
  Future<void> getGenres() async {
    final res = await moviesRepository.getGenres();
    genres = res.genres.asObservable();
  }

  @action
  Future<void> getTopMovies() async {
    final res = await moviesRepository.getMovies(page: 2);
    topMovies = res.results.asObservable();
  }

  @action
  Future<void> getBroadcastMovies() async {
    final res = await moviesRepository.getMovies(page: 3);
    nowBroadcastMovies = res.results.asObservable();
  }

  Future<void> getAllMovies() async {
    await Future.wait(
      [
        getMovies(),
        getTopMovies(),
        getBroadcastMovies(),
      ],
    );
    await loadingState.toggleLoading(val: false);
  }
}
