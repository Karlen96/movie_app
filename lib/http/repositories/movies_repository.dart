import '../../consts/configs.dart';
import '../../entities/meta_entity/meta_entity.dart';
import '../../entities/movie_entitiy/movie_entity.dart';
import '../dio.dart';

class MoviesRepository {
  Future<MetaEntity> getMovies() async {
    final uri =
        '${ConfigsEntity.baseUrl}/3/discover/movie?api_key=${ConfigsEntity.apiKey}';
    final res = await dio.get(uri);

    return MetaEntity.fromJson(res.data as Map<String, dynamic>);
  }

  Future<MovieEntity> getMovie(int movieId) async {
    final uri =
        '${ConfigsEntity.baseUrl}/3/movie/$movieId?api_key=${ConfigsEntity.apiKey}';
    final res = await dio.get(uri);

    return MovieEntity.fromJson(res.data as Map<String, dynamic>);
  }
}
