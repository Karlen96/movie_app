import 'dart:math';

import 'package:mobx/mobx.dart';
import '../../entities/movie_entitiy/movie_entity.dart';
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

  @action
  Future<void> getMovies() async {
    final res = await moviesRepository.getMovies();
    movies = res.results.asObservable();
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
