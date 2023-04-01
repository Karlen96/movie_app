import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_entity.freezed.dart';

part 'video_entity.g.dart';

@freezed
class VideoEntity with _$VideoEntity {
  const factory VideoEntity({
    required String name,
    required String key,
    required String id,
  }) = _VideoEntity;

  factory VideoEntity.fromJson(Map<String, Object?> json) =>
      _$VideoEntityFromJson(json);
}
