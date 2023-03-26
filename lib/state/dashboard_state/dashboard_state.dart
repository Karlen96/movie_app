import 'dart:math';

import 'package:faker/faker.dart';
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
  Future<void> getMoviesMock() async {
    await loadingState.toggleLoading();
    final moviesMockData = List.generate(
      random.nextInt(20) + 5,
      (index) {
        return MovieEntity(
          title: faker.company.suffix(),
          id: index,
          overview: faker.lorem.sentence(),
          imageUrl: faker.image.image(
            random: true,
          ),
        );
      },
    );
    final topMoviesData = List.generate(
      random.nextInt(50) + 26,
      (index) {
        return MovieEntity(
          title: faker.company.suffix(),
          id: 25 + index,
          overview: faker.lorem.sentence(),
          imageUrl: faker.image.image(
            random: true,
          ),
        );
      },
    );
    final nowBroadcastMoviesMockData = List.generate(
      random.nextInt(75) + 51,
      (index) {
        return MovieEntity(
          title: faker.company.suffix(),
          id: 50 + index,
          overview: faker.lorem.sentence(),
          imageUrl: faker.image.image(
            random: true,
          ),
        );
      },
    );
    await Future.delayed(
      const Duration(seconds: 2),
    );
    movies = moviesMockData.asObservable();
    topMovies = topMoviesData.asObservable();
    nowBroadcastMovies = nowBroadcastMoviesMockData.asObservable();
    await loadingState.toggleLoading(val: false);
  }

  ///TODO implement it in the future
// @action
// Future<void> getMovies() async {
//   final res = await moviesRepository.getMovies();
//   movies = res.results.asObservable();
// }
}
