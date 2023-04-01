import 'package:freezed_annotation/freezed_annotation.dart';

import '../../consts/configs.dart';
import '../meta_videos_entity/meta_videos_entity.dart';

part 'movie_entity.freezed.dart';

part 'movie_entity.g.dart';

@freezed
class MovieEntity with _$MovieEntity {
  const MovieEntity._();

  const factory MovieEntity({
    required int id,
    required String title,
    MetaVideosEntity? videos,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
  }) = _MovieEntity;

  factory MovieEntity.fromJson(Map<String, Object?> json) =>
      _$MovieEntityFromJson(json);

  String get imageUrl => '${ConfigsEntity.baseImage}$posterPath';
}
