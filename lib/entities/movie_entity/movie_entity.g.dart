// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieEntity _$$_MovieEntityFromJson(Map json) => _$_MovieEntity(
      id: json['id'] as int,
      title: json['title'] as String,
      videos: json['videos'] == null
          ? null
          : MetaVideosEntity.fromJson(
              Map<String, Object?>.from(json['videos'] as Map)),
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$_MovieEntityToJson(_$_MovieEntity instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('videos', instance.videos?.toJson());
  writeNotNull('overview', instance.overview);
  writeNotNull('poster_path', instance.posterPath);
  return val;
}
