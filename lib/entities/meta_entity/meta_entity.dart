import 'dart:developer';

import 'package:movie_app/entities/movie_entitiy/movie_entity.dart';

class MetaEntity {
  MetaEntity({
    this.page = 1,
    required this.results,
  });

  final int page;
  final List<MovieEntity> results;

  factory MetaEntity.fromJson(Map<String, dynamic> data) {
    final int page = data['page'] ?? 1;
    final results = data['results'] as List<dynamic>;

    return MetaEntity(
      results: results.map((e) => MovieEntity.fromJson(e)).toList(),
      page: page,
    );
  }
}
