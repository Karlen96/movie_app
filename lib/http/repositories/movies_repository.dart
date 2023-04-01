import '../../consts/configs.dart';
import '../../entities/meta_entity/meta_entity.dart';
import '../../entities/meta_genres_entity/meta_genres_entity.dart';
import '../../entities/movie_entity/movie_entity.dart';
import '../dio.dart';

class MoviesRepository {
  Future<MetaEntity> getMovies({
    int page = 1,
    int? genreId,
  }) async {
    final uri =
        '${ConfigsEntity.baseUrl}/3/discover/movie?api_key=${ConfigsEntity.apiKey}&page=$page&with_genres=$genreId';
    final res = await dio.get(uri);

    return MetaEntity.fromJson(res.data as Map<String, dynamic>);
  }

  Future<MovieEntity> getMovie(int movieId) async {
    final uri =
        '${ConfigsEntity.baseUrl}/3/movie/$movieId?api_key=${ConfigsEntity.apiKey}&append_to_response=videos';
    final res = await dio.get(uri);

    return MovieEntity.fromJson(res.data as Map<String, dynamic>);
  }

  Future<MetaGenresEntity> getGenres() async {
    final uri =
        '${ConfigsEntity.baseUrl}/3/genre/movie/list?api_key=${ConfigsEntity.apiKey}';
    final res = await dio.get(uri);

    return MetaGenresEntity.fromJson(res.data as Map<String, dynamic>);
  }
}
