import 'package:movie_app/consts/configs.dart';
import 'package:movie_app/entities/movie_entitiy/movie_entity.dart';

import '../../entities/meta_entity/meta_entity.dart';
import '../dio.dart';

class MoviesRepository {
  Future<MetaEntity> getMovies() async {
    final uri =
        '${ConfigsEntity.baseUrl}/3/discover/movie?api_key=${ConfigsEntity.apiKey}';
    final res = await dio.get(uri);

    return MetaEntity.fromJson(res.data);
  }

  Future<MovieEntity> getMovie(String movieId) async {
    final uri =
        '${ConfigsEntity.baseUrl}/3/movie/$movieId?api_key=${ConfigsEntity.apiKey}';
    final res = await dio.get(uri);

    return MovieEntity.fromJson(res.data);
  }
}
