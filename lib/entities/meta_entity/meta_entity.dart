import '../movie_entitiy/movie_entity.dart';

class MetaEntity {
  MetaEntity({
    required this.results,
    this.page = 1,
  });

  final int page;
  final List<MovieEntity> results;

  factory MetaEntity.fromJson(Map<String, dynamic> data) {
    final page = (data['page'] ?? 1) as int;
    final results = data['results'] as List<dynamic>;

    return MetaEntity(
      results: results
          .map((e) => MovieEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: page,
    );
  }
}
