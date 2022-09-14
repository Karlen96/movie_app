import 'package:movie_app/consts/configs.dart';
import 'package:movie_app/entities/movie_entitiy/movie_entity.dart';

import '../dio.dart';

class MoviesRepository {
  Future<List<MovieEntity>> getMovies() async {
    final uri =
        '${ConfigsEntity.baseUrl}/3/discover/movie?api_key=${ConfigsEntity.apiKey}';
    final res = await dio.get(uri);
    return List.generate(5, (index) => MovieEntity(name: 'name'));
  }
}
