import 'package:mobx/mobx.dart';
import '../../entities/movie_entitiy/movie_entity.dart';
import '../../http/repositories/movies_repository.dart';
import '../loading_state/loading_state.dart';

part 'movie_state.g.dart';

class MovieState = MovieStateBase with _$MovieState;

abstract class MovieStateBase with Store {
  MovieStateBase({
    required this.movie,
  });

  final moviesRepository = MoviesRepository();
  final loadingState = LoadingState();

  @observable
  MovieEntity movie;

  @action
  void setMovie(MovieEntity movieData) {
    movie = movieData;
  }

  Future<void> getMovie() async {
    await loadingState.toggleLoading();
    final res = await moviesRepository.getMovie(
      movie.id,
    );
    setMovie(res);
    await loadingState.toggleLoading(val: false);
  }
}
