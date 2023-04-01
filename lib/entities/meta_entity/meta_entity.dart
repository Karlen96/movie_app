import 'package:freezed_annotation/freezed_annotation.dart';

import '../movie_entity/movie_entity.dart';

part 'meta_entity.freezed.dart';

part 'meta_entity.g.dart';

@freezed
class MetaEntity with _$MetaEntity {
  const factory MetaEntity({
    @Default(1) int page,
    @Default(<MovieEntity>[]) List<MovieEntity> results,
  }) = _MetaEntity;

  factory MetaEntity.fromJson(Map<String, Object?> json) =>
      _$MetaEntityFromJson(json);
}
