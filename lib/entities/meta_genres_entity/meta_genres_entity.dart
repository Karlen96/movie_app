import 'package:freezed_annotation/freezed_annotation.dart';

import '../genre_entitiy/genre_entity.dart';

part 'meta_genres_entity.freezed.dart';

part 'meta_genres_entity.g.dart';

@freezed
class MetaGenresEntity with _$MetaGenresEntity {
  const factory MetaGenresEntity({
    @Default(<GenreEntity>[]) List<GenreEntity> genres,
  }) = _MetaGenresEntity;

  factory MetaGenresEntity.fromJson(Map<String, Object?> json) =>
      _$MetaGenresEntityFromJson(json);
}
