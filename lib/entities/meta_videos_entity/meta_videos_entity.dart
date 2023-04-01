import 'package:freezed_annotation/freezed_annotation.dart';

import '../video_entity/video_entity.dart';

part 'meta_videos_entity.freezed.dart';

part 'meta_videos_entity.g.dart';

@freezed
class MetaVideosEntity with _$MetaVideosEntity {
  const factory MetaVideosEntity({
    @Default(<VideoEntity>[]) List<VideoEntity> results,
  }) = _MetaVideosEntity;

  factory MetaVideosEntity.fromJson(Map<String, Object?> json) =>
      _$MetaVideosEntityFromJson(json);
}
