import 'package:mobx/mobx.dart';
import 'package:movie_app/entities/movie_entitiy/movie_entity.dart';
import 'package:movie_app/http/repositories/movies_repository.dart';

part 'dashboard_state.g.dart';

class DashboardState = DashboardStateBase with _$DashboardState;

abstract class DashboardStateBase with Store {
  final moviesRepository = MoviesRepository();

  @observable
  ObservableList<MovieEntity> movies = ObservableList<MovieEntity>();

  @action
  Future<void> getMovies() async {
    final res = await moviesRepository.getMovies();
    movies = res.asObservable();
  }
}
