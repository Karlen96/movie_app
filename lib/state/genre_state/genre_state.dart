import 'package:mobx/mobx.dart';
import '../../entities/movie_entity/movie_entity.dart';
import '../../enums/movie_type.dart';
import '../../http/repositories/movies_repository.dart';
import '../loading_state/loading_state.dart';

part 'genre_state.g.dart';

class GenreState = GenreStateBase with _$GenreState;

abstract class GenreStateBase with Store {
  final moviesRepository = MoviesRepository();
  final loadingState = LoadingState();

  MovieType genre;

  GenreStateBase({
    required this.genre,
  });

  @observable
  ObservableList<MovieEntity> movies = ObservableList<MovieEntity>();

  @action
  Future<void> getMoviesByGenre() async {
    final res = await moviesRepository.getMovies(
      genreId: genre.id,
    );
    movies = res.results.asObservable();
    await loadingState.toggleLoading(val: false);
  }
}
